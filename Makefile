.DEFAULT_GOAL = help

export SHELL := /bin/bash

PROJECT ?= ${HOME}/${LOGNAME}/proj/esc
OPT ?=#

build: clean ## build
	cabal $(OPT) build --minimize-conflict-set --jobs='$$ncpus' | source-highlight --src-lang=haskell --out-format=esc

buildc: clean ## build continuously
	@cabal build 2>&1 | source-highlight --src-lang=haskell --out-format=esc
	@fswatcher --path . --include "\.hs$$|\.cabal$$" --throttle 31 cabal -- $(OPT) build 2>&1 \
	| source-highlight --src-lang=haskell --out-format=esc

dev: ## nix develop
	nix develop

test: ## test
	cabal $(OPT) test

lint: ## lint
	hlint app src

clean: ## clean
	cabal clean
	@rm -f pom.xml

clobber: clean ## cleanpq
	rm -rf dist-newstyle
	rm -rf tmp/*

run: ## run BIN, e.g. make run BIN=<binary>
	cabal $(OPT) run $(BIN) -- $(ARG)

repl: ## repl
	cabal $(OPT) repl

update: ## update project depedencies
	cabal update

help: ## help
	-@grep --extended-regexp '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	  | sed 's/^Makefile://1' \a
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'
	-@ghc --version
	-@cabal --version
	-@hlint --version

openapi-client: ## generate es client code
	@rm -rf tmp/src
	./bin/openapi3-code-generator-exe \
		--do-not-generate-stack-project \
		--convert-to-camel-case \
		--module-name=Model/Private/Elasticsearch \
		--output-dir=tmp \
		--specification=etc/es/es-v1-spec.yaml
	cp -a tmp/src/Model src

openapi-spec-yaml:
	./bin/openapi-generator-cli generate \
		--input-spec=etc/es/es-v1-spec.json \
		--generator-name haskell-http-client \
		--output=tmp/openapi
	cp tmp/openapi/openapi.yaml etc/es/es-v1-spec.yaml

openapi-spec: URL =  https://cloud.elastic.co/api/v1/api-docs/spec.json
openapi-spec: ## get elasticsearch API spec
	curl $(URL) --output etc/es/es-v1-spec.json

openap-install: ## install open API tools
openap-install: openapi-client-code-generator openapi-generator
	@rm -f pom.xml

# NB: hack to build openapi
openapi-client-code-generator: PKG = Haskell-OpenAPI-Client-Code-Generator
openapi-client-code-generator: URL = https://github.com/Haskell-OpenAPI-Code-Generator/$(PKG).git
openapi-client-code-generator: ## build openapi code generator
	mkdir -p tmp
	cd tmp && ([ -d $(PKG) ] || git clone $(URL))
	cd tmp/$(PKG) && git pull --rebase
	cd tmp/$(PKG) && nix-shell --run 'stack build'
	cd tmp/$(PKG) && nix-shell --run 'stack install --local-bin-path ./bin'

openapi-generator:
	curl https://raw.githubusercontent.com/OpenAPITools/openapi-generator/master/bin/utils/openapi-generator-cli.sh > bin/openapi-generator-cli
	chmod u+x bin/openapi-generator-cli
	rm -f pom.xml

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module Model/Private/Elasticsearch.Configuration where

import qualified Data.Text
import qualified GHC.Types 
import qualified Model/Private/Elasticsearch.Common

-- | The default url specified by the OpenAPI specification
-- 
-- @https://api.elastic-cloud.com/api/v1/@
defaultURL = Data.Text.pack "https://api.elastic-cloud.com/api/v1/"
-- | The default application name used in the @User-Agent@ header which is based on the @info.title@ field of the specification
-- 
-- @Elastic Cloud API@
defaultApplicationName = Data.Text.pack "Elastic Cloud API"
-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = Model/Private/Elasticsearch.Common.Configuration defaultURL Model/Private/Elasticsearch.Common.anonymousSecurityScheme GHC.Types.True defaultApplicationName

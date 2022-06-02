-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains all supported security schemes defined in the specification
module Model/Private/Elasticsearch.SecuritySchemes where

import qualified Data.Text.Internal
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Show
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Simple
import qualified Model/Private/Elasticsearch.Common

-- | Use this security scheme to use token in HTTP header for authentication. Should be used in a 'Model/Private/Elasticsearch.Common.Configuration'.
-- 
-- 
-- 
-- @
-- 'Model/Private/Elasticsearch.Configuration.defaultConfiguration'
--   { configSecurityScheme = 'apiKeyInHeaderAuthenticationSecurityScheme' "token"
--   }
-- @
apiKeyInHeaderAuthenticationSecurityScheme :: Data.Text.Internal.Text ->
                                              Model/Private/Elasticsearch.Common.SecurityScheme
apiKeyInHeaderAuthenticationSecurityScheme = Network.HTTP.Simple.addRequestHeader "Authorization" GHC.Base.. Model/Private/Elasticsearch.Common.textToByte

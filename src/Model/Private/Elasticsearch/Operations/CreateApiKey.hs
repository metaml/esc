-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation createApiKey
module Model/Private/Elasticsearch.Operations.CreateApiKey where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Model/Private/Elasticsearch.Common
import Model/Private/Elasticsearch.Types

-- | > POST /users/auth/keys
-- 
-- Creates a new API key.
createApiKey :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => CreateApiKeyRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response CreateApiKeyResponse) -- ^ Monadic computation which returns the result of the operation
createApiKey body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateApiKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse201
                                                                                                                                                           | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse400
                                                                                                                                                           | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse449
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/users/auth/keys") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'createApiKey'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateApiKeyResponseError' is used.
data CreateApiKeyResponse =
   CreateApiKeyResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | CreateApiKeyResponse201 -- ^ The API key is created and returned in the body of the response.
  | CreateApiKeyResponse400 -- ^ The request is invalid. Specify a different request, then try again. (code: \`api_keys.invalid_input\`)
  | CreateApiKeyResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /users/auth/keys
-- 
-- The same as 'createApiKey' but accepts an explicit configuration.
createApiKeyWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> CreateApiKeyRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response CreateApiKeyResponse) -- ^ Monadic computation which returns the result of the operation
createApiKeyWithConfiguration config
                              body = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either CreateApiKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse201
                                                                                                                                                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse400
                                                                                                                                                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateApiKeyResponse449
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/users/auth/keys") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /users/auth/keys
-- 
-- The same as 'createApiKey' but returns the raw 'Data.ByteString.Char8.ByteString'.
createApiKeyRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => CreateApiKeyRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
createApiKeyRaw body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/users/auth/keys") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /users/auth/keys
-- 
-- The same as 'createApiKey' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
createApiKeyWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> CreateApiKeyRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
createApiKeyWithConfigurationRaw config
                                 body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/users/auth/keys") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

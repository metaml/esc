-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation update_extension
module Model/Private/Elasticsearch.Operations.Update_extension where

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

-- | > POST /deployments/extensions/{extension_id}
-- 
-- Updates an extension.
update_extension :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ extension_id: Id of an extension
  -> UpdateExtensionRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Update_extensionResponse) -- ^ Monadic computation which returns the result of the operation
update_extension extension_id
                 body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Update_extensionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse200
                                                                                                                                                                   | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse400
                                                                                                                                                                   | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse401
                                                                                                                                                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse404
                                                                                                                                                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 409) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse409
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/extensions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel extension_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'update_extension'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_extensionResponseError' is used.
data Update_extensionResponse =
   Update_extensionResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Update_extensionResponse200 -- ^ Extension updated successfully.
  | Update_extensionResponse400 -- ^ Could not download the extension from the specified URL. (code: \`extensions.request_execution_failed\`)
  | Update_extensionResponse401 -- ^ * The extension does not belong to you. (code: \`extensions.unauthorised\`) * Your current session does not have a user id associated with it. (code: \`extensions.no_user_id\`)
  | Update_extensionResponse404 -- ^ The extension you want does not exist. (code: \`extensions.not_found\`)
  | Update_extensionResponse409 -- ^ The version you sent does not match the persisted version. (code: \`extensions.version_conflict\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/extensions/{extension_id}
-- 
-- The same as 'update_extension' but accepts an explicit configuration.
update_extensionWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ extension_id: Id of an extension
  -> UpdateExtensionRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Update_extensionResponse) -- ^ Monadic computation which returns the result of the operation
update_extensionWithConfiguration config
                                  extension_id
                                  body = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either Update_extensionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse200
                                                                                                                                                                                    | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse400
                                                                                                                                                                                    | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse401
                                                                                                                                                                                    | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse404
                                                                                                                                                                                    | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 409) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_extensionResponse409
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/extensions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel extension_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/extensions/{extension_id}
-- 
-- The same as 'update_extension' but returns the raw 'Data.ByteString.Char8.ByteString'.
update_extensionRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ extension_id: Id of an extension
  -> UpdateExtensionRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
update_extensionRaw extension_id
                    body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/extensions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel extension_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/extensions/{extension_id}
-- 
-- The same as 'update_extension' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
update_extensionWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ extension_id: Id of an extension
  -> UpdateExtensionRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
update_extensionWithConfigurationRaw config
                                     extension_id
                                     body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/extensions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel extension_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

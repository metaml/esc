-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation reset_elasticsearch_user_password
module Model/Private/Elasticsearch.Operations.Reset_elasticsearch_user_password where

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

-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_reset-password
-- 
-- Resets the password of the \'elastic\' user.
reset_elasticsearch_user_password :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Reset_elasticsearch_user_passwordParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Reset_elasticsearch_user_passwordResponse) -- ^ Monadic computation which returns the result of the operation
reset_elasticsearch_user_password parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Reset_elasticsearch_user_passwordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse200
                                                                                                                                                                                                           | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse404
                                                                                                                                                                                                           | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse449
                                                                                                                                                                                                           | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse500
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathRef_id parameters))) GHC.Base.++ "/_reset-password"))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/elasticsearch\/{ref_id}\/_reset-password.POST.parameters@ in the specification.
-- 
-- 
data Reset_elasticsearch_user_passwordParameters = Reset_elasticsearch_user_passwordParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  reset_elasticsearch_user_passwordParametersPathDeployment_id :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , reset_elasticsearch_user_passwordParametersPathRef_id :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reset_elasticsearch_user_passwordParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= reset_elasticsearch_user_passwordParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= reset_elasticsearch_user_passwordParametersPathRef_id obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= reset_elasticsearch_user_passwordParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= reset_elasticsearch_user_passwordParametersPathRef_id obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Reset_elasticsearch_user_passwordParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Reset_elasticsearch_user_passwordParameters" (\obj -> (GHC.Base.pure Reset_elasticsearch_user_passwordParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id"))
-- | Create a new 'Reset_elasticsearch_user_passwordParameters' with all required fields.
mkReset_elasticsearch_user_passwordParameters :: Data.Text.Internal.Text -- ^ 'reset_elasticsearch_user_passwordParametersPathDeployment_id'
  -> Data.Text.Internal.Text -- ^ 'reset_elasticsearch_user_passwordParametersPathRef_id'
  -> Reset_elasticsearch_user_passwordParameters
mkReset_elasticsearch_user_passwordParameters reset_elasticsearch_user_passwordParametersPathDeployment_id reset_elasticsearch_user_passwordParametersPathRef_id = Reset_elasticsearch_user_passwordParameters{reset_elasticsearch_user_passwordParametersPathDeployment_id = reset_elasticsearch_user_passwordParametersPathDeployment_id,
                                                                                                                                                                                                               reset_elasticsearch_user_passwordParametersPathRef_id = reset_elasticsearch_user_passwordParametersPathRef_id}
-- | Represents a response of the operation 'reset_elasticsearch_user_password'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Reset_elasticsearch_user_passwordResponseError' is used.
data Reset_elasticsearch_user_passwordResponse =
   Reset_elasticsearch_user_passwordResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Reset_elasticsearch_user_passwordResponse200 -- ^ The password reset was out carried successfully
  | Reset_elasticsearch_user_passwordResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | Reset_elasticsearch_user_passwordResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | Reset_elasticsearch_user_passwordResponse500 -- ^ Failed to reset the \'elastic\' user\'s password. (code: \`deployments.elasticsearch.password_reset_error\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_reset-password
-- 
-- The same as 'reset_elasticsearch_user_password' but accepts an explicit configuration.
reset_elasticsearch_user_passwordWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Reset_elasticsearch_user_passwordParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Reset_elasticsearch_user_passwordResponse) -- ^ Monadic computation which returns the result of the operation
reset_elasticsearch_user_passwordWithConfiguration config
                                                   parameters = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either Reset_elasticsearch_user_passwordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse200
                                                                                                                                                                                                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse404
                                                                                                                                                                                                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse449
                                                                                                                                                                                                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Reset_elasticsearch_user_passwordResponse500
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathRef_id parameters))) GHC.Base.++ "/_reset-password"))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_reset-password
-- 
-- The same as 'reset_elasticsearch_user_password' but returns the raw 'Data.ByteString.Char8.ByteString'.
reset_elasticsearch_user_passwordRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Reset_elasticsearch_user_passwordParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
reset_elasticsearch_user_passwordRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathRef_id parameters))) GHC.Base.++ "/_reset-password"))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_reset-password
-- 
-- The same as 'reset_elasticsearch_user_password' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
reset_elasticsearch_user_passwordWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Reset_elasticsearch_user_passwordParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
reset_elasticsearch_user_passwordWithConfigurationRaw config
                                                      parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (reset_elasticsearch_user_passwordParametersPathRef_id parameters))) GHC.Base.++ "/_reset-password"))))) GHC.Base.mempty)
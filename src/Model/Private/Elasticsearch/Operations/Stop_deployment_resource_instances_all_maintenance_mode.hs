-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation stop_deployment_resource_instances_all_maintenance_mode
module Model/Private/Elasticsearch.Operations.Stop_deployment_resource_instances_all_maintenance_mode where

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

-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/instances/maintenance-mode/_stop
-- 
-- Stops maintenance mode of all instances belonging to a Deployment Resource.
stop_deployment_resource_instances_all_maintenance_mode :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Stop_deployment_resource_instances_all_maintenance_modeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Stop_deployment_resource_instances_all_maintenance_modeResponse) -- ^ Monadic computation which returns the result of the operation
stop_deployment_resource_instances_all_maintenance_mode parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Stop_deployment_resource_instances_all_maintenance_modeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse202
                                                                                                                                                                                                                                                       | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse403
                                                                                                                                                                                                                                                       | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse404
                                                                                                                                                                                                                                                       | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse449
                                                                                                                                                                                                                                                       | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse500
                                                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id parameters))) GHC.Base.++ "/instances/maintenance-mode/_stop"))))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/{resource_kind}\/{ref_id}\/instances\/maintenance-mode\/_stop.POST.parameters@ in the specification.
-- 
-- 
data Stop_deployment_resource_instances_all_maintenance_modeParameters = Stop_deployment_resource_instances_all_maintenance_modeParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id :: Data.Text.Internal.Text
  -- | pathResource_kind: Represents the parameter named \'resource_kind\'
  -- 
  -- The kind of resource (one of elasticsearch, kibana, apm, or integrations_server).
  , stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Stop_deployment_resource_instances_all_maintenance_modeParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id obj] : ["pathResource_kind" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id obj] : ["pathResource_kind" Data.Aeson.Types.ToJSON..= stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Stop_deployment_resource_instances_all_maintenance_modeParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Stop_deployment_resource_instances_all_maintenance_modeParameters" (\obj -> ((GHC.Base.pure Stop_deployment_resource_instances_all_maintenance_modeParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathResource_kind"))
-- | Create a new 'Stop_deployment_resource_instances_all_maintenance_modeParameters' with all required fields.
mkStop_deployment_resource_instances_all_maintenance_modeParameters :: Data.Text.Internal.Text -- ^ 'stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id'
  -> Data.Text.Internal.Text -- ^ 'stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id'
  -> Data.Text.Internal.Text -- ^ 'stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind'
  -> Stop_deployment_resource_instances_all_maintenance_modeParameters
mkStop_deployment_resource_instances_all_maintenance_modeParameters stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind = Stop_deployment_resource_instances_all_maintenance_modeParameters{stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id = stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id,
                                                                                                                                                                                                                                                                                                                                                                                          stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id = stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id,
                                                                                                                                                                                                                                                                                                                                                                                          stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind = stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind}
-- | Represents a response of the operation 'stop_deployment_resource_instances_all_maintenance_mode'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Stop_deployment_resource_instances_all_maintenance_modeResponseError' is used.
data Stop_deployment_resource_instances_all_maintenance_modeResponse =
   Stop_deployment_resource_instances_all_maintenance_modeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Stop_deployment_resource_instances_all_maintenance_modeResponse202 -- ^ The stop maintenance mode command was issued successfully.
  | Stop_deployment_resource_instances_all_maintenance_modeResponse403 -- ^ The stop maintenance mode command was prohibited for the given Resource. (code: \`deployments.instance_update_prohibited_error\`)
  | Stop_deployment_resource_instances_all_maintenance_modeResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`) * One or more instances of the given resource type are missing. (code: \`deployments.instances_missing_on_update_error\`)
  | Stop_deployment_resource_instances_all_maintenance_modeResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | Stop_deployment_resource_instances_all_maintenance_modeResponse500 -- ^ A Resource that was previously stored no longer exists. (code: \`deployments.deployment_resource_no_longer_exists\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/instances/maintenance-mode/_stop
-- 
-- The same as 'stop_deployment_resource_instances_all_maintenance_mode' but accepts an explicit configuration.
stop_deployment_resource_instances_all_maintenance_modeWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Stop_deployment_resource_instances_all_maintenance_modeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Stop_deployment_resource_instances_all_maintenance_modeResponse) -- ^ Monadic computation which returns the result of the operation
stop_deployment_resource_instances_all_maintenance_modeWithConfiguration config
                                                                         parameters = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either Stop_deployment_resource_instances_all_maintenance_modeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse202
                                                                                                                                                                                                                                                                        | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse403
                                                                                                                                                                                                                                                                        | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse404
                                                                                                                                                                                                                                                                        | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse449
                                                                                                                                                                                                                                                                        | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Stop_deployment_resource_instances_all_maintenance_modeResponse500
                                                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id parameters))) GHC.Base.++ "/instances/maintenance-mode/_stop"))))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/instances/maintenance-mode/_stop
-- 
-- The same as 'stop_deployment_resource_instances_all_maintenance_mode' but returns the raw 'Data.ByteString.Char8.ByteString'.
stop_deployment_resource_instances_all_maintenance_modeRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Stop_deployment_resource_instances_all_maintenance_modeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
stop_deployment_resource_instances_all_maintenance_modeRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id parameters))) GHC.Base.++ "/instances/maintenance-mode/_stop"))))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/instances/maintenance-mode/_stop
-- 
-- The same as 'stop_deployment_resource_instances_all_maintenance_mode' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
stop_deployment_resource_instances_all_maintenance_modeWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Stop_deployment_resource_instances_all_maintenance_modeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
stop_deployment_resource_instances_all_maintenance_modeWithConfigurationRaw config
                                                                            parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathDeployment_id parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathResource_kind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (stop_deployment_resource_instances_all_maintenance_modeParametersPathRef_id parameters))) GHC.Base.++ "/instances/maintenance-mode/_stop"))))))) GHC.Base.mempty)
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation restoreDeploymentResource
module Model/Private/Elasticsearch.Operations.RestoreDeploymentResource where

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

-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/_restore
-- 
-- Restores a shutdown resource belonging to a given Deployment.
restoreDeploymentResource :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => RestoreDeploymentResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response RestoreDeploymentResourceResponse) -- ^ Monadic computation which returns the result of the operation
restoreDeploymentResource parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either RestoreDeploymentResourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse200
                                                                                                                                                                                           | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse400
                                                                                                                                                                                           | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse404
                                                                                                                                                                                           | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse449
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathRefId parameters))) GHC.Base.++ "/_restore"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "restore_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> restoreDeploymentResourceParametersQueryRestoreSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/{resource_kind}\/{ref_id}\/_restore.POST.parameters@ in the specification.
-- 
-- 
data RestoreDeploymentResourceParameters = RestoreDeploymentResourceParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment
  restoreDeploymentResourceParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource
  , restoreDeploymentResourceParametersPathRefId :: Data.Text.Internal.Text
  -- | pathResource_kind: Represents the parameter named \'resource_kind\'
  -- 
  -- The kind of resource
  , restoreDeploymentResourceParametersPathResourceKind :: RestoreDeploymentResourceParametersPathResourceKind
  -- | queryRestore_snapshot: Represents the parameter named \'restore_snapshot\'
  -- 
  -- Whether or not to restore a snapshot for those resources that allow it.
  , restoreDeploymentResourceParametersQueryRestoreSnapshot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RestoreDeploymentResourceParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathRefId obj] : ["pathResource_kind" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathResourceKind obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRestore_snapshot" Data.Aeson.Types.ToJSON..=)) (restoreDeploymentResourceParametersQueryRestoreSnapshot obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathRefId obj] : ["pathResource_kind" Data.Aeson.Types.ToJSON..= restoreDeploymentResourceParametersPathResourceKind obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRestore_snapshot" Data.Aeson.Types.ToJSON..=)) (restoreDeploymentResourceParametersQueryRestoreSnapshot obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON RestoreDeploymentResourceParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RestoreDeploymentResourceParameters" (\obj -> (((GHC.Base.pure RestoreDeploymentResourceParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathResource_kind")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRestore_snapshot"))
-- | Create a new 'RestoreDeploymentResourceParameters' with all required fields.
mkRestoreDeploymentResourceParameters :: Data.Text.Internal.Text -- ^ 'restoreDeploymentResourceParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'restoreDeploymentResourceParametersPathRefId'
  -> RestoreDeploymentResourceParametersPathResourceKind -- ^ 'restoreDeploymentResourceParametersPathResourceKind'
  -> RestoreDeploymentResourceParameters
mkRestoreDeploymentResourceParameters restoreDeploymentResourceParametersPathDeploymentId restoreDeploymentResourceParametersPathRefId restoreDeploymentResourceParametersPathResourceKind = RestoreDeploymentResourceParameters{restoreDeploymentResourceParametersPathDeploymentId = restoreDeploymentResourceParametersPathDeploymentId,
                                                                                                                                                                                                                                 restoreDeploymentResourceParametersPathRefId = restoreDeploymentResourceParametersPathRefId,
                                                                                                                                                                                                                                 restoreDeploymentResourceParametersPathResourceKind = restoreDeploymentResourceParametersPathResourceKind,
                                                                                                                                                                                                                                 restoreDeploymentResourceParametersQueryRestoreSnapshot = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/deployments\/{deployment_id}\/{resource_kind}\/{ref_id}\/_restore.POST.parameters.properties.pathResource_kind@ in the specification.
-- 
-- Represents the parameter named \'resource_kind\'
-- 
-- The kind of resource
data RestoreDeploymentResourceParametersPathResourceKind =
   RestoreDeploymentResourceParametersPathResourceKindOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RestoreDeploymentResourceParametersPathResourceKindTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RestoreDeploymentResourceParametersPathResourceKindEnumElasticsearch -- ^ Represents the JSON value @"elasticsearch"@
  | RestoreDeploymentResourceParametersPathResourceKindEnumKibana -- ^ Represents the JSON value @"kibana"@
  | RestoreDeploymentResourceParametersPathResourceKindEnumApm -- ^ Represents the JSON value @"apm"@
  | RestoreDeploymentResourceParametersPathResourceKindEnumAppsearch -- ^ Represents the JSON value @"appsearch"@
  | RestoreDeploymentResourceParametersPathResourceKindEnumEnterpriseSearch -- ^ Represents the JSON value @"enterprise_search"@
  | RestoreDeploymentResourceParametersPathResourceKindEnumIntegrationsServer -- ^ Represents the JSON value @"integrations_server"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RestoreDeploymentResourceParametersPathResourceKind
    where toJSON (RestoreDeploymentResourceParametersPathResourceKindOther val) = val
          toJSON (RestoreDeploymentResourceParametersPathResourceKindTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumElasticsearch) = "elasticsearch"
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumKibana) = "kibana"
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumApm) = "apm"
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumAppsearch) = "appsearch"
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumEnterpriseSearch) = "enterprise_search"
          toJSON (RestoreDeploymentResourceParametersPathResourceKindEnumIntegrationsServer) = "integrations_server"
instance Data.Aeson.Types.FromJSON.FromJSON RestoreDeploymentResourceParametersPathResourceKind
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "elasticsearch" -> RestoreDeploymentResourceParametersPathResourceKindEnumElasticsearch
                                            | val GHC.Classes.== "kibana" -> RestoreDeploymentResourceParametersPathResourceKindEnumKibana
                                            | val GHC.Classes.== "apm" -> RestoreDeploymentResourceParametersPathResourceKindEnumApm
                                            | val GHC.Classes.== "appsearch" -> RestoreDeploymentResourceParametersPathResourceKindEnumAppsearch
                                            | val GHC.Classes.== "enterprise_search" -> RestoreDeploymentResourceParametersPathResourceKindEnumEnterpriseSearch
                                            | val GHC.Classes.== "integrations_server" -> RestoreDeploymentResourceParametersPathResourceKindEnumIntegrationsServer
                                            | GHC.Base.otherwise -> RestoreDeploymentResourceParametersPathResourceKindOther val)
-- | Represents a response of the operation 'restoreDeploymentResource'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'RestoreDeploymentResourceResponseError' is used.
data RestoreDeploymentResourceResponse =
   RestoreDeploymentResourceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | RestoreDeploymentResourceResponse200 -- ^ Standard Deployment Resource Crud Response
  | RestoreDeploymentResourceResponse400 -- ^ * The Resource does not have a pending plan. (code: \`deployments.resource_does_not_have_a_pending_plan\`) * The resource is not shut down. (code: \`deployments.resource_not_shutdown\`)
  | RestoreDeploymentResourceResponse404 -- ^ The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`)
  | RestoreDeploymentResourceResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/_restore
-- 
-- The same as 'restoreDeploymentResource' but accepts an explicit configuration.
restoreDeploymentResourceWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> RestoreDeploymentResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response RestoreDeploymentResourceResponse) -- ^ Monadic computation which returns the result of the operation
restoreDeploymentResourceWithConfiguration config
                                           parameters = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either RestoreDeploymentResourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse200
                                                                                                                                                                                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse400
                                                                                                                                                                                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse404
                                                                                                                                                                                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right RestoreDeploymentResourceResponse449
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathRefId parameters))) GHC.Base.++ "/_restore"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "restore_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> restoreDeploymentResourceParametersQueryRestoreSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/_restore
-- 
-- The same as 'restoreDeploymentResource' but returns the raw 'Data.ByteString.Char8.ByteString'.
restoreDeploymentResourceRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => RestoreDeploymentResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
restoreDeploymentResourceRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathRefId parameters))) GHC.Base.++ "/_restore"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "restore_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> restoreDeploymentResourceParametersQueryRestoreSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/{resource_kind}/{ref_id}/_restore
-- 
-- The same as 'restoreDeploymentResource' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
restoreDeploymentResourceWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> RestoreDeploymentResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
restoreDeploymentResourceWithConfigurationRaw config
                                              parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (restoreDeploymentResourceParametersPathRefId parameters))) GHC.Base.++ "/_restore"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "restore_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> restoreDeploymentResourceParametersQueryRestoreSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])

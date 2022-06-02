-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation shutdownDeploymentStatelessResource
module Model/Private/Elasticsearch.Operations.ShutdownDeploymentStatelessResource where

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

-- | > POST /deployments/{deployment_id}/{stateless_resource_kind}/{ref_id}/_shutdown
-- 
-- Shut down Stateless Resource belonging to a given Deployment.
-- Kibana cannot be shut down on Elasticsearch Service as it is required for Elasticsearch administrative functions, such as Snapshot Lifecycle Management and version upgrades.
shutdownDeploymentStatelessResource :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => ShutdownDeploymentStatelessResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response ShutdownDeploymentStatelessResourceResponse) -- ^ Monadic computation which returns the result of the operation
shutdownDeploymentStatelessResource parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ShutdownDeploymentStatelessResourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse200
                                                                                                                                                                                                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse400
                                                                                                                                                                                                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse404
                                                                                                                                                                                                               | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse449
                                                                                                                                                                                                               | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse500
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathRefId parameters))) GHC.Base.++ "/_shutdown"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "hide") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQueryHide parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "skip_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/{stateless_resource_kind}\/{ref_id}\/_shutdown.POST.parameters@ in the specification.
-- 
-- 
data ShutdownDeploymentStatelessResourceParameters = ShutdownDeploymentStatelessResourceParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  shutdownDeploymentStatelessResourceParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , shutdownDeploymentStatelessResourceParametersPathRefId :: Data.Text.Internal.Text
  -- | pathStateless_resource_kind: Represents the parameter named \'stateless_resource_kind\'
  -- 
  -- The kind of stateless resource
  , shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind :: ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKind
  -- | queryHide: Represents the parameter named \'hide\'
  -- 
  -- Hide cluster on shutdown. Hidden clusters are not listed by default. Only applicable for Platform administrators.
  , shutdownDeploymentStatelessResourceParametersQueryHide :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | querySkip_snapshot: Represents the parameter named \'skip_snapshot\'
  -- 
  -- If true, will skip taking a snapshot of the cluster before shutting the cluster down (if even possible)
  , shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShutdownDeploymentStatelessResourceParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathRefId obj] : ["pathStateless_resource_kind" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHide" Data.Aeson.Types.ToJSON..=)) (shutdownDeploymentStatelessResourceParametersQueryHide obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySkip_snapshot" Data.Aeson.Types.ToJSON..=)) (shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathRefId obj] : ["pathStateless_resource_kind" Data.Aeson.Types.ToJSON..= shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHide" Data.Aeson.Types.ToJSON..=)) (shutdownDeploymentStatelessResourceParametersQueryHide obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySkip_snapshot" Data.Aeson.Types.ToJSON..=)) (shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ShutdownDeploymentStatelessResourceParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShutdownDeploymentStatelessResourceParameters" (\obj -> ((((GHC.Base.pure ShutdownDeploymentStatelessResourceParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathStateless_resource_kind")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryHide")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySkip_snapshot"))
-- | Create a new 'ShutdownDeploymentStatelessResourceParameters' with all required fields.
mkShutdownDeploymentStatelessResourceParameters :: Data.Text.Internal.Text -- ^ 'shutdownDeploymentStatelessResourceParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'shutdownDeploymentStatelessResourceParametersPathRefId'
  -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKind -- ^ 'shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind'
  -> ShutdownDeploymentStatelessResourceParameters
mkShutdownDeploymentStatelessResourceParameters shutdownDeploymentStatelessResourceParametersPathDeploymentId shutdownDeploymentStatelessResourceParametersPathRefId shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind = ShutdownDeploymentStatelessResourceParameters{shutdownDeploymentStatelessResourceParametersPathDeploymentId = shutdownDeploymentStatelessResourceParametersPathDeploymentId,
                                                                                                                                                                                                                                                                                            shutdownDeploymentStatelessResourceParametersPathRefId = shutdownDeploymentStatelessResourceParametersPathRefId,
                                                                                                                                                                                                                                                                                            shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind = shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind,
                                                                                                                                                                                                                                                                                            shutdownDeploymentStatelessResourceParametersQueryHide = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/deployments\/{deployment_id}\/{stateless_resource_kind}\/{ref_id}\/_shutdown.POST.parameters.properties.pathStateless_resource_kind@ in the specification.
-- 
-- Represents the parameter named \'stateless_resource_kind\'
-- 
-- The kind of stateless resource
data ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKind =
   ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumKibana -- ^ Represents the JSON value @"kibana"@
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumApm -- ^ Represents the JSON value @"apm"@
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumAppsearch -- ^ Represents the JSON value @"appsearch"@
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumEnterpriseSearch -- ^ Represents the JSON value @"enterprise_search"@
  | ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumIntegrationsServer -- ^ Represents the JSON value @"integrations_server"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKind
    where toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindOther val) = val
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumKibana) = "kibana"
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumApm) = "apm"
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumAppsearch) = "appsearch"
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumEnterpriseSearch) = "enterprise_search"
          toJSON (ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumIntegrationsServer) = "integrations_server"
instance Data.Aeson.Types.FromJSON.FromJSON ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKind
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "kibana" -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumKibana
                                            | val GHC.Classes.== "apm" -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumApm
                                            | val GHC.Classes.== "appsearch" -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumAppsearch
                                            | val GHC.Classes.== "enterprise_search" -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumEnterpriseSearch
                                            | val GHC.Classes.== "integrations_server" -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindEnumIntegrationsServer
                                            | GHC.Base.otherwise -> ShutdownDeploymentStatelessResourceParametersPathStatelessResourceKindOther val)
-- | Represents a response of the operation 'shutdownDeploymentStatelessResource'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ShutdownDeploymentStatelessResourceResponseError' is used.
data ShutdownDeploymentStatelessResourceResponse =
   ShutdownDeploymentStatelessResourceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ShutdownDeploymentStatelessResourceResponse200 -- ^ Standard response
  | ShutdownDeploymentStatelessResourceResponse400 -- ^ Parameter is restricted and can only be set by a Platform administrator. (code: \`deployments.restricted_parameter\`)
  | ShutdownDeploymentStatelessResourceResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | ShutdownDeploymentStatelessResourceResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | ShutdownDeploymentStatelessResourceResponse500 -- ^ We have failed you. (code: \`deployments.deployment_resource_no_longer_exists\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/{stateless_resource_kind}/{ref_id}/_shutdown
-- 
-- The same as 'shutdownDeploymentStatelessResource' but accepts an explicit configuration.
shutdownDeploymentStatelessResourceWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> ShutdownDeploymentStatelessResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response ShutdownDeploymentStatelessResourceResponse) -- ^ Monadic computation which returns the result of the operation
shutdownDeploymentStatelessResourceWithConfiguration config
                                                     parameters = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either ShutdownDeploymentStatelessResourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse200
                                                                                                                                                                                                                                | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse400
                                                                                                                                                                                                                                | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse404
                                                                                                                                                                                                                                | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse449
                                                                                                                                                                                                                                | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ShutdownDeploymentStatelessResourceResponse500
                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathRefId parameters))) GHC.Base.++ "/_shutdown"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "hide") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQueryHide parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "skip_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/{stateless_resource_kind}/{ref_id}/_shutdown
-- 
-- The same as 'shutdownDeploymentStatelessResource' but returns the raw 'Data.ByteString.Char8.ByteString'.
shutdownDeploymentStatelessResourceRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => ShutdownDeploymentStatelessResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
shutdownDeploymentStatelessResourceRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathRefId parameters))) GHC.Base.++ "/_shutdown"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "hide") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQueryHide parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "skip_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/{stateless_resource_kind}/{ref_id}/_shutdown
-- 
-- The same as 'shutdownDeploymentStatelessResource' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
shutdownDeploymentStatelessResourceWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> ShutdownDeploymentStatelessResourceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
shutdownDeploymentStatelessResourceWithConfigurationRaw config
                                                        parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathDeploymentId parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathStatelessResourceKind parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (shutdownDeploymentStatelessResourceParametersPathRefId parameters))) GHC.Base.++ "/_shutdown"))))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "hide") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQueryHide parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "skip_snapshot") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> shutdownDeploymentStatelessResourceParametersQuerySkipSnapshot parameters) (Data.Text.pack "form") GHC.Types.False])
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation setDeploymentEsResourceRemoteClusters
module Model/Private/Elasticsearch.Operations.SetDeploymentEsResourceRemoteClusters where

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

-- | > PUT /deployments/{deployment_id}/elasticsearch/{ref_id}/remote-clusters
-- 
-- Overwrites or creates the remote clusters for the elasticsearch resource.
setDeploymentEsResourceRemoteClusters :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => SetDeploymentEsResourceRemoteClustersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> RemoteResources -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response SetDeploymentEsResourceRemoteClustersResponse) -- ^ Monadic computation which returns the result of the operation
setDeploymentEsResourceRemoteClusters parameters
                                      body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either SetDeploymentEsResourceRemoteClustersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse202
                                                                                                                                                                                                             | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse404
                                                                                                                                                                                                             | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse449
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathRefId parameters))) GHC.Base.++ "/remote-clusters"))))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/elasticsearch\/{ref_id}\/remote-clusters.PUT.parameters@ in the specification.
-- 
-- 
data SetDeploymentEsResourceRemoteClustersParameters = SetDeploymentEsResourceRemoteClustersParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  setDeploymentEsResourceRemoteClustersParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , setDeploymentEsResourceRemoteClustersParametersPathRefId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetDeploymentEsResourceRemoteClustersParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= setDeploymentEsResourceRemoteClustersParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= setDeploymentEsResourceRemoteClustersParametersPathRefId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= setDeploymentEsResourceRemoteClustersParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= setDeploymentEsResourceRemoteClustersParametersPathRefId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetDeploymentEsResourceRemoteClustersParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetDeploymentEsResourceRemoteClustersParameters" (\obj -> (GHC.Base.pure SetDeploymentEsResourceRemoteClustersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id"))
-- | Create a new 'SetDeploymentEsResourceRemoteClustersParameters' with all required fields.
mkSetDeploymentEsResourceRemoteClustersParameters :: Data.Text.Internal.Text -- ^ 'setDeploymentEsResourceRemoteClustersParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'setDeploymentEsResourceRemoteClustersParametersPathRefId'
  -> SetDeploymentEsResourceRemoteClustersParameters
mkSetDeploymentEsResourceRemoteClustersParameters setDeploymentEsResourceRemoteClustersParametersPathDeploymentId setDeploymentEsResourceRemoteClustersParametersPathRefId = SetDeploymentEsResourceRemoteClustersParameters{setDeploymentEsResourceRemoteClustersParametersPathDeploymentId = setDeploymentEsResourceRemoteClustersParametersPathDeploymentId,
                                                                                                                                                                                                                             setDeploymentEsResourceRemoteClustersParametersPathRefId = setDeploymentEsResourceRemoteClustersParametersPathRefId}
-- | Represents a response of the operation 'setDeploymentEsResourceRemoteClusters'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'SetDeploymentEsResourceRemoteClustersResponseError' is used.
data SetDeploymentEsResourceRemoteClustersResponse =
   SetDeploymentEsResourceRemoteClustersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | SetDeploymentEsResourceRemoteClustersResponse202 -- ^ The Remote Clusters were updated
  | SetDeploymentEsResourceRemoteClustersResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | SetDeploymentEsResourceRemoteClustersResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > PUT /deployments/{deployment_id}/elasticsearch/{ref_id}/remote-clusters
-- 
-- The same as 'setDeploymentEsResourceRemoteClusters' but accepts an explicit configuration.
setDeploymentEsResourceRemoteClustersWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> SetDeploymentEsResourceRemoteClustersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> RemoteResources -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response SetDeploymentEsResourceRemoteClustersResponse) -- ^ Monadic computation which returns the result of the operation
setDeploymentEsResourceRemoteClustersWithConfiguration config
                                                       parameters
                                                       body = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either SetDeploymentEsResourceRemoteClustersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse202
                                                                                                                                                                                                                              | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse404
                                                                                                                                                                                                                              | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right SetDeploymentEsResourceRemoteClustersResponse449
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathRefId parameters))) GHC.Base.++ "/remote-clusters"))))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > PUT /deployments/{deployment_id}/elasticsearch/{ref_id}/remote-clusters
-- 
-- The same as 'setDeploymentEsResourceRemoteClusters' but returns the raw 'Data.ByteString.Char8.ByteString'.
setDeploymentEsResourceRemoteClustersRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => SetDeploymentEsResourceRemoteClustersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> RemoteResources -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
setDeploymentEsResourceRemoteClustersRaw parameters
                                         body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathRefId parameters))) GHC.Base.++ "/remote-clusters"))))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > PUT /deployments/{deployment_id}/elasticsearch/{ref_id}/remote-clusters
-- 
-- The same as 'setDeploymentEsResourceRemoteClusters' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
setDeploymentEsResourceRemoteClustersWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> SetDeploymentEsResourceRemoteClustersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> RemoteResources -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
setDeploymentEsResourceRemoteClustersWithConfigurationRaw config
                                                          parameters
                                                          body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (setDeploymentEsResourceRemoteClustersParametersPathRefId parameters))) GHC.Base.++ "/remote-clusters"))))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

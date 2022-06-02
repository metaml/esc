-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deploymentApmResetSecretToken
module Model/Private/Elasticsearch.Operations.DeploymentApmResetSecretToken where

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

-- | > POST /deployments/{deployment_id}/apm/{ref_id}/_reset-token
-- 
-- Reset the token of an APM resource.
deploymentApmResetSecretToken :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => DeploymentApmResetSecretTokenParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response DeploymentApmResetSecretTokenResponse) -- ^ Monadic computation which returns the result of the operation
deploymentApmResetSecretToken parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeploymentApmResetSecretTokenResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse202
                                                                                                                                                                                                   | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse400
                                                                                                                                                                                                   | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse404
                                                                                                                                                                                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse449
                                                                                                                                                                                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse500
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathDeploymentId parameters))) GHC.Base.++ ("/apm/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathRefId parameters))) GHC.Base.++ "/_reset-token"))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/apm\/{ref_id}\/_reset-token.POST.parameters@ in the specification.
-- 
-- 
data DeploymentApmResetSecretTokenParameters = DeploymentApmResetSecretTokenParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  deploymentApmResetSecretTokenParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , deploymentApmResetSecretTokenParametersPathRefId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeploymentApmResetSecretTokenParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= deploymentApmResetSecretTokenParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= deploymentApmResetSecretTokenParametersPathRefId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= deploymentApmResetSecretTokenParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= deploymentApmResetSecretTokenParametersPathRefId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeploymentApmResetSecretTokenParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeploymentApmResetSecretTokenParameters" (\obj -> (GHC.Base.pure DeploymentApmResetSecretTokenParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id"))
-- | Create a new 'DeploymentApmResetSecretTokenParameters' with all required fields.
mkDeploymentApmResetSecretTokenParameters :: Data.Text.Internal.Text -- ^ 'deploymentApmResetSecretTokenParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'deploymentApmResetSecretTokenParametersPathRefId'
  -> DeploymentApmResetSecretTokenParameters
mkDeploymentApmResetSecretTokenParameters deploymentApmResetSecretTokenParametersPathDeploymentId deploymentApmResetSecretTokenParametersPathRefId = DeploymentApmResetSecretTokenParameters{deploymentApmResetSecretTokenParametersPathDeploymentId = deploymentApmResetSecretTokenParametersPathDeploymentId,
                                                                                                                                                                                             deploymentApmResetSecretTokenParametersPathRefId = deploymentApmResetSecretTokenParametersPathRefId}
-- | Represents a response of the operation 'deploymentApmResetSecretToken'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeploymentApmResetSecretTokenResponseError' is used.
data DeploymentApmResetSecretTokenResponse =
   DeploymentApmResetSecretTokenResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeploymentApmResetSecretTokenResponse202 -- ^ Response containing the new secret token, plan to apply it starts
  | DeploymentApmResetSecretTokenResponse400 -- ^ Reset token is not supported when APM is managed by Elastic Agent. (code: \`clusters.cluster_plan_state_error\`)
  | DeploymentApmResetSecretTokenResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | DeploymentApmResetSecretTokenResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | DeploymentApmResetSecretTokenResponse500 -- ^ We have failed you. (code: \`deployments.deployment_resource_no_longer_exists\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/apm/{ref_id}/_reset-token
-- 
-- The same as 'deploymentApmResetSecretToken' but accepts an explicit configuration.
deploymentApmResetSecretTokenWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> DeploymentApmResetSecretTokenParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response DeploymentApmResetSecretTokenResponse) -- ^ Monadic computation which returns the result of the operation
deploymentApmResetSecretTokenWithConfiguration config
                                               parameters = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either DeploymentApmResetSecretTokenResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse202
                                                                                                                                                                                                                    | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse400
                                                                                                                                                                                                                    | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse404
                                                                                                                                                                                                                    | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse449
                                                                                                                                                                                                                    | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeploymentApmResetSecretTokenResponse500
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathDeploymentId parameters))) GHC.Base.++ ("/apm/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathRefId parameters))) GHC.Base.++ "/_reset-token"))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/apm/{ref_id}/_reset-token
-- 
-- The same as 'deploymentApmResetSecretToken' but returns the raw 'Data.ByteString.Char8.ByteString'.
deploymentApmResetSecretTokenRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => DeploymentApmResetSecretTokenParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deploymentApmResetSecretTokenRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathDeploymentId parameters))) GHC.Base.++ ("/apm/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathRefId parameters))) GHC.Base.++ "/_reset-token"))))) GHC.Base.mempty)
-- | > POST /deployments/{deployment_id}/apm/{ref_id}/_reset-token
-- 
-- The same as 'deploymentApmResetSecretToken' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deploymentApmResetSecretTokenWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> DeploymentApmResetSecretTokenParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deploymentApmResetSecretTokenWithConfigurationRaw config
                                                  parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathDeploymentId parameters))) GHC.Base.++ ("/apm/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deploymentApmResetSecretTokenParametersPathRefId parameters))) GHC.Base.++ "/_reset-token"))))) GHC.Base.mempty)

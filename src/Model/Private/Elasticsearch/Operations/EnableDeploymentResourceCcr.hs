-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation enableDeploymentResourceCcr
module Model/Private/Elasticsearch.Operations.EnableDeploymentResourceCcr where

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

-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ccr
-- 
-- Migrates the specified Elasticsearch resource and its associated Kibana to enable CCR (if supported).
enableDeploymentResourceCcr :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => EnableDeploymentResourceCcrParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response EnableDeploymentResourceCcrResponse) -- ^ Monadic computation which returns the result of the operation
enableDeploymentResourceCcr parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either EnableDeploymentResourceCcrResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse200
                                                                                                                                                                                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse404
                                                                                                                                                                                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse449
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathRefId parameters))) GHC.Base.++ "/_enable-ccr"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enableDeploymentResourceCcrParametersQueryValidateOnly parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/elasticsearch\/{ref_id}\/_enable-ccr.POST.parameters@ in the specification.
-- 
-- 
data EnableDeploymentResourceCcrParameters = EnableDeploymentResourceCcrParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  enableDeploymentResourceCcrParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , enableDeploymentResourceCcrParametersPathRefId :: Data.Text.Internal.Text
  -- | queryValidate_only: Represents the parameter named \'validate_only\'
  -- 
  -- When \`true\`, will not enable CCR but returns warnings if any elements may lose availability during CCR enablement
  , enableDeploymentResourceCcrParametersQueryValidateOnly :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EnableDeploymentResourceCcrParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= enableDeploymentResourceCcrParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= enableDeploymentResourceCcrParametersPathRefId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValidate_only" Data.Aeson.Types.ToJSON..=)) (enableDeploymentResourceCcrParametersQueryValidateOnly obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= enableDeploymentResourceCcrParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= enableDeploymentResourceCcrParametersPathRefId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValidate_only" Data.Aeson.Types.ToJSON..=)) (enableDeploymentResourceCcrParametersQueryValidateOnly obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON EnableDeploymentResourceCcrParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EnableDeploymentResourceCcrParameters" (\obj -> ((GHC.Base.pure EnableDeploymentResourceCcrParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryValidate_only"))
-- | Create a new 'EnableDeploymentResourceCcrParameters' with all required fields.
mkEnableDeploymentResourceCcrParameters :: Data.Text.Internal.Text -- ^ 'enableDeploymentResourceCcrParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'enableDeploymentResourceCcrParametersPathRefId'
  -> EnableDeploymentResourceCcrParameters
mkEnableDeploymentResourceCcrParameters enableDeploymentResourceCcrParametersPathDeploymentId enableDeploymentResourceCcrParametersPathRefId = EnableDeploymentResourceCcrParameters{enableDeploymentResourceCcrParametersPathDeploymentId = enableDeploymentResourceCcrParametersPathDeploymentId,
                                                                                                                                                                                     enableDeploymentResourceCcrParametersPathRefId = enableDeploymentResourceCcrParametersPathRefId,
                                                                                                                                                                                     enableDeploymentResourceCcrParametersQueryValidateOnly = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'enableDeploymentResourceCcr'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'EnableDeploymentResourceCcrResponseError' is used.
data EnableDeploymentResourceCcrResponse =
   EnableDeploymentResourceCcrResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | EnableDeploymentResourceCcrResponse200 -- ^ Standard response
  | EnableDeploymentResourceCcrResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | EnableDeploymentResourceCcrResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ccr
-- 
-- The same as 'enableDeploymentResourceCcr' but accepts an explicit configuration.
enableDeploymentResourceCcrWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> EnableDeploymentResourceCcrParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response EnableDeploymentResourceCcrResponse) -- ^ Monadic computation which returns the result of the operation
enableDeploymentResourceCcrWithConfiguration config
                                             parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either EnableDeploymentResourceCcrResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse200
                                                                                                                                                                                                                | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse404
                                                                                                                                                                                                                | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right EnableDeploymentResourceCcrResponse449
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathRefId parameters))) GHC.Base.++ "/_enable-ccr"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enableDeploymentResourceCcrParametersQueryValidateOnly parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ccr
-- 
-- The same as 'enableDeploymentResourceCcr' but returns the raw 'Data.ByteString.Char8.ByteString'.
enableDeploymentResourceCcrRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => EnableDeploymentResourceCcrParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
enableDeploymentResourceCcrRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathRefId parameters))) GHC.Base.++ "/_enable-ccr"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enableDeploymentResourceCcrParametersQueryValidateOnly parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ccr
-- 
-- The same as 'enableDeploymentResourceCcr' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
enableDeploymentResourceCcrWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> EnableDeploymentResourceCcrParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
enableDeploymentResourceCcrWithConfigurationRaw config
                                                parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enableDeploymentResourceCcrParametersPathRefId parameters))) GHC.Base.++ "/_enable-ccr"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enableDeploymentResourceCcrParametersQueryValidateOnly parameters) (Data.Text.pack "form") GHC.Types.False])

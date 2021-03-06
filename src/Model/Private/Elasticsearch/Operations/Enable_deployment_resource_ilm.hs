-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation enable_deployment_resource_ilm
module Model/Private/Elasticsearch.Operations.Enable_deployment_resource_ilm where

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

-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ilm
-- 
-- Migrates the specified Elasticsearch resource to use ILM.
enable_deployment_resource_ilm :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Enable_deployment_resource_ilmParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> EnableIlmRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Enable_deployment_resource_ilmResponse) -- ^ Monadic computation which returns the result of the operation
enable_deployment_resource_ilm parameters
                               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Enable_deployment_resource_ilmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse200
                                                                                                                                                                                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse404
                                                                                                                                                                                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse449
                                                                                                                                                                                               | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse500
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathRef_id parameters))) GHC.Base.++ "/_enable-ilm"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enable_deployment_resource_ilmParametersQueryValidate_only parameters) (Data.Text.pack "form") GHC.Types.False] (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/elasticsearch\/{ref_id}\/_enable-ilm.POST.parameters@ in the specification.
-- 
-- 
data Enable_deployment_resource_ilmParameters = Enable_deployment_resource_ilmParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  enable_deployment_resource_ilmParametersPathDeployment_id :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , enable_deployment_resource_ilmParametersPathRef_id :: Data.Text.Internal.Text
  -- | queryValidate_only: Represents the parameter named \'validate_only\'
  -- 
  -- When \`true\`, does not enable ILM but returns warnings if any applications may lose availability during ILM migration.
  , enable_deployment_resource_ilmParametersQueryValidate_only :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Enable_deployment_resource_ilmParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= enable_deployment_resource_ilmParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= enable_deployment_resource_ilmParametersPathRef_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValidate_only" Data.Aeson.Types.ToJSON..=)) (enable_deployment_resource_ilmParametersQueryValidate_only obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= enable_deployment_resource_ilmParametersPathDeployment_id obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= enable_deployment_resource_ilmParametersPathRef_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValidate_only" Data.Aeson.Types.ToJSON..=)) (enable_deployment_resource_ilmParametersQueryValidate_only obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Enable_deployment_resource_ilmParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Enable_deployment_resource_ilmParameters" (\obj -> ((GHC.Base.pure Enable_deployment_resource_ilmParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryValidate_only"))
-- | Create a new 'Enable_deployment_resource_ilmParameters' with all required fields.
mkEnable_deployment_resource_ilmParameters :: Data.Text.Internal.Text -- ^ 'enable_deployment_resource_ilmParametersPathDeployment_id'
  -> Data.Text.Internal.Text -- ^ 'enable_deployment_resource_ilmParametersPathRef_id'
  -> Enable_deployment_resource_ilmParameters
mkEnable_deployment_resource_ilmParameters enable_deployment_resource_ilmParametersPathDeployment_id enable_deployment_resource_ilmParametersPathRef_id = Enable_deployment_resource_ilmParameters{enable_deployment_resource_ilmParametersPathDeployment_id = enable_deployment_resource_ilmParametersPathDeployment_id,
                                                                                                                                                                                                   enable_deployment_resource_ilmParametersPathRef_id = enable_deployment_resource_ilmParametersPathRef_id,
                                                                                                                                                                                                   enable_deployment_resource_ilmParametersQueryValidate_only = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'enable_deployment_resource_ilm'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Enable_deployment_resource_ilmResponseError' is used.
data Enable_deployment_resource_ilmResponse =
   Enable_deployment_resource_ilmResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Enable_deployment_resource_ilmResponse200 -- ^ Standard response
  | Enable_deployment_resource_ilmResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | Enable_deployment_resource_ilmResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | Enable_deployment_resource_ilmResponse500 -- ^ We have failed you. (code: \`deployments.deployment_resource_no_longer_exists\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ilm
-- 
-- The same as 'enable_deployment_resource_ilm' but accepts an explicit configuration.
enable_deployment_resource_ilmWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Enable_deployment_resource_ilmParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> EnableIlmRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Enable_deployment_resource_ilmResponse) -- ^ Monadic computation which returns the result of the operation
enable_deployment_resource_ilmWithConfiguration config
                                                parameters
                                                body = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either Enable_deployment_resource_ilmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse200
                                                                                                                                                                                                                | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse404
                                                                                                                                                                                                                | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse449
                                                                                                                                                                                                                | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Enable_deployment_resource_ilmResponse500
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathRef_id parameters))) GHC.Base.++ "/_enable-ilm"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enable_deployment_resource_ilmParametersQueryValidate_only parameters) (Data.Text.pack "form") GHC.Types.False] (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ilm
-- 
-- The same as 'enable_deployment_resource_ilm' but returns the raw 'Data.ByteString.Char8.ByteString'.
enable_deployment_resource_ilmRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Enable_deployment_resource_ilmParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> EnableIlmRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
enable_deployment_resource_ilmRaw parameters
                                  body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathRef_id parameters))) GHC.Base.++ "/_enable-ilm"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enable_deployment_resource_ilmParametersQueryValidate_only parameters) (Data.Text.pack "form") GHC.Types.False] (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/{deployment_id}/elasticsearch/{ref_id}/_enable-ilm
-- 
-- The same as 'enable_deployment_resource_ilm' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
enable_deployment_resource_ilmWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Enable_deployment_resource_ilmParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> EnableIlmRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
enable_deployment_resource_ilmWithConfigurationRaw config
                                                   parameters
                                                   body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathDeployment_id parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (enable_deployment_resource_ilmParametersPathRef_id parameters))) GHC.Base.++ "/_enable-ilm"))))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "validate_only") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> enable_deployment_resource_ilmParametersQueryValidate_only parameters) (Data.Text.pack "form") GHC.Types.False] (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getDeploymentEsResourceKeystore
module Model/Private/Elasticsearch.Operations.GetDeploymentEsResourceKeystore where

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

-- | > GET /deployments/{deployment_id}/elasticsearch/{ref_id}/keystore
-- 
-- Fetches the current values of the keystore for the Elasticsearch resource.
getDeploymentEsResourceKeystore :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentEsResourceKeystoreParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetDeploymentEsResourceKeystoreResponse) -- ^ Monadic computation which returns the result of the operation
getDeploymentEsResourceKeystore parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetDeploymentEsResourceKeystoreResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse200
                                                                                                                                                                                                       | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse404
                                                                                                                                                                                                       | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse449
                                                                                                                                                                                                       | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse500
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathRefId parameters))) GHC.Base.++ "/keystore"))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/elasticsearch\/{ref_id}\/keystore.GET.parameters@ in the specification.
-- 
-- 
data GetDeploymentEsResourceKeystoreParameters = GetDeploymentEsResourceKeystoreParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment
  getDeploymentEsResourceKeystoreParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource
  , getDeploymentEsResourceKeystoreParametersPathRefId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDeploymentEsResourceKeystoreParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= getDeploymentEsResourceKeystoreParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= getDeploymentEsResourceKeystoreParametersPathRefId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= getDeploymentEsResourceKeystoreParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= getDeploymentEsResourceKeystoreParametersPathRefId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetDeploymentEsResourceKeystoreParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDeploymentEsResourceKeystoreParameters" (\obj -> (GHC.Base.pure GetDeploymentEsResourceKeystoreParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id"))
-- | Create a new 'GetDeploymentEsResourceKeystoreParameters' with all required fields.
mkGetDeploymentEsResourceKeystoreParameters :: Data.Text.Internal.Text -- ^ 'getDeploymentEsResourceKeystoreParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'getDeploymentEsResourceKeystoreParametersPathRefId'
  -> GetDeploymentEsResourceKeystoreParameters
mkGetDeploymentEsResourceKeystoreParameters getDeploymentEsResourceKeystoreParametersPathDeploymentId getDeploymentEsResourceKeystoreParametersPathRefId = GetDeploymentEsResourceKeystoreParameters{getDeploymentEsResourceKeystoreParametersPathDeploymentId = getDeploymentEsResourceKeystoreParametersPathDeploymentId,
                                                                                                                                                                                                     getDeploymentEsResourceKeystoreParametersPathRefId = getDeploymentEsResourceKeystoreParametersPathRefId}
-- | Represents a response of the operation 'getDeploymentEsResourceKeystore'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDeploymentEsResourceKeystoreResponseError' is used.
data GetDeploymentEsResourceKeystoreResponse =
   GetDeploymentEsResourceKeystoreResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetDeploymentEsResourceKeystoreResponse200 -- ^ The contents of the Elasticsearch keystore
  | GetDeploymentEsResourceKeystoreResponse404 -- ^ * The Deployment specified by {deployment_id} cannot be found. (code: \`deployments.deployment_not_found\`) * The Resource specified by {ref_id} cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | GetDeploymentEsResourceKeystoreResponse449 -- ^ Elevated permissions are required. (code: \`root.unauthorized.rbac.elevated_permissions_required\`)
  | GetDeploymentEsResourceKeystoreResponse500 -- ^ We have failed you. (code: \`deployments.metadata_internal_error\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/{deployment_id}/elasticsearch/{ref_id}/keystore
-- 
-- The same as 'getDeploymentEsResourceKeystore' but accepts an explicit configuration.
getDeploymentEsResourceKeystoreWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentEsResourceKeystoreParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetDeploymentEsResourceKeystoreResponse) -- ^ Monadic computation which returns the result of the operation
getDeploymentEsResourceKeystoreWithConfiguration config
                                                 parameters = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either GetDeploymentEsResourceKeystoreResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse200
                                                                                                                                                                                                                        | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse404
                                                                                                                                                                                                                        | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 449) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse449
                                                                                                                                                                                                                        | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentEsResourceKeystoreResponse500
                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathRefId parameters))) GHC.Base.++ "/keystore"))))) GHC.Base.mempty)
-- | > GET /deployments/{deployment_id}/elasticsearch/{ref_id}/keystore
-- 
-- The same as 'getDeploymentEsResourceKeystore' but returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentEsResourceKeystoreRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentEsResourceKeystoreParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentEsResourceKeystoreRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathRefId parameters))) GHC.Base.++ "/keystore"))))) GHC.Base.mempty)
-- | > GET /deployments/{deployment_id}/elasticsearch/{ref_id}/keystore
-- 
-- The same as 'getDeploymentEsResourceKeystore' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentEsResourceKeystoreWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentEsResourceKeystoreParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentEsResourceKeystoreWithConfigurationRaw config
                                                    parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathDeploymentId parameters))) GHC.Base.++ ("/elasticsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentEsResourceKeystoreParametersPathRefId parameters))) GHC.Base.++ "/keystore"))))) GHC.Base.mempty)
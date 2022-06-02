-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getAppsearchReadOnlyMode
module Model/Private/Elasticsearch.Operations.GetAppsearchReadOnlyMode where

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

-- | > GET /deployments/{deployment_id}/appsearch/{ref_id}/read_only_mode
-- 
-- Enable\/Disable read-only mode on the given App Search resource.
getAppsearchReadOnlyMode :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetAppsearchReadOnlyModeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetAppsearchReadOnlyModeResponse) -- ^ Monadic computation which returns the result of the operation
getAppsearchReadOnlyMode parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAppsearchReadOnlyModeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse200
                                                                                                                                                                                         | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse404
                                                                                                                                                                                         | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse500
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathDeploymentId parameters))) GHC.Base.++ ("/appsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathRefId parameters))) GHC.Base.++ "/read_only_mode"))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/{deployment_id}\/appsearch\/{ref_id}\/read_only_mode.GET.parameters@ in the specification.
-- 
-- 
data GetAppsearchReadOnlyModeParameters = GetAppsearchReadOnlyModeParameters {
  -- | pathDeployment_id: Represents the parameter named \'deployment_id\'
  -- 
  -- Identifier for the Deployment.
  getAppsearchReadOnlyModeParametersPathDeploymentId :: Data.Text.Internal.Text
  -- | pathRef_id: Represents the parameter named \'ref_id\'
  -- 
  -- User-specified RefId for the Resource.
  , getAppsearchReadOnlyModeParametersPathRefId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAppsearchReadOnlyModeParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= getAppsearchReadOnlyModeParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= getAppsearchReadOnlyModeParametersPathRefId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDeployment_id" Data.Aeson.Types.ToJSON..= getAppsearchReadOnlyModeParametersPathDeploymentId obj] : ["pathRef_id" Data.Aeson.Types.ToJSON..= getAppsearchReadOnlyModeParametersPathRefId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAppsearchReadOnlyModeParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAppsearchReadOnlyModeParameters" (\obj -> (GHC.Base.pure GetAppsearchReadOnlyModeParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeployment_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRef_id"))
-- | Create a new 'GetAppsearchReadOnlyModeParameters' with all required fields.
mkGetAppsearchReadOnlyModeParameters :: Data.Text.Internal.Text -- ^ 'getAppsearchReadOnlyModeParametersPathDeploymentId'
  -> Data.Text.Internal.Text -- ^ 'getAppsearchReadOnlyModeParametersPathRefId'
  -> GetAppsearchReadOnlyModeParameters
mkGetAppsearchReadOnlyModeParameters getAppsearchReadOnlyModeParametersPathDeploymentId getAppsearchReadOnlyModeParametersPathRefId = GetAppsearchReadOnlyModeParameters{getAppsearchReadOnlyModeParametersPathDeploymentId = getAppsearchReadOnlyModeParametersPathDeploymentId,
                                                                                                                                                                         getAppsearchReadOnlyModeParametersPathRefId = getAppsearchReadOnlyModeParametersPathRefId}
-- | Represents a response of the operation 'getAppsearchReadOnlyMode'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAppsearchReadOnlyModeResponseError' is used.
data GetAppsearchReadOnlyModeResponse =
   GetAppsearchReadOnlyModeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetAppsearchReadOnlyModeResponse200 -- ^ Standard response
  | GetAppsearchReadOnlyModeResponse404 -- ^ The Resource specified by ref_id cannot be found. (code: \`deployments.deployment_resource_not_found\`)
  | GetAppsearchReadOnlyModeResponse500 -- ^ We have failed you. (code: \`deployments.deployment_resource_no_longer_exists\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/{deployment_id}/appsearch/{ref_id}/read_only_mode
-- 
-- The same as 'getAppsearchReadOnlyMode' but accepts an explicit configuration.
getAppsearchReadOnlyModeWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetAppsearchReadOnlyModeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetAppsearchReadOnlyModeResponse) -- ^ Monadic computation which returns the result of the operation
getAppsearchReadOnlyModeWithConfiguration config
                                          parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either GetAppsearchReadOnlyModeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse200
                                                                                                                                                                                                          | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse404
                                                                                                                                                                                                          | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetAppsearchReadOnlyModeResponse500
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathDeploymentId parameters))) GHC.Base.++ ("/appsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathRefId parameters))) GHC.Base.++ "/read_only_mode"))))) GHC.Base.mempty)
-- | > GET /deployments/{deployment_id}/appsearch/{ref_id}/read_only_mode
-- 
-- The same as 'getAppsearchReadOnlyMode' but returns the raw 'Data.ByteString.Char8.ByteString'.
getAppsearchReadOnlyModeRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetAppsearchReadOnlyModeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getAppsearchReadOnlyModeRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathDeploymentId parameters))) GHC.Base.++ ("/appsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathRefId parameters))) GHC.Base.++ "/read_only_mode"))))) GHC.Base.mempty)
-- | > GET /deployments/{deployment_id}/appsearch/{ref_id}/read_only_mode
-- 
-- The same as 'getAppsearchReadOnlyMode' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getAppsearchReadOnlyModeWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetAppsearchReadOnlyModeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getAppsearchReadOnlyModeWithConfigurationRaw config
                                             parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathDeploymentId parameters))) GHC.Base.++ ("/appsearch/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getAppsearchReadOnlyModeParametersPathRefId parameters))) GHC.Base.++ "/read_only_mode"))))) GHC.Base.mempty)

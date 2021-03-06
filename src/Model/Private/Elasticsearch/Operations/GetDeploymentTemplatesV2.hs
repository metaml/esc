-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getDeploymentTemplatesV2
module Model/Private/Elasticsearch.Operations.GetDeploymentTemplatesV2 where

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

-- | > GET /deployments/templates
-- 
-- Retrieves all deployment templates.
getDeploymentTemplatesV2 :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentTemplatesV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetDeploymentTemplatesV2Response) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplatesV2 parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetDeploymentTemplatesV2ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response200
                                                                                                                                                                                         | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response400
                                                                                                                                                                                         | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response401
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/deployments/templates") [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "metadata") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryMetadata parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplatesV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/templates.GET.parameters@ in the specification.
-- 
-- 
data GetDeploymentTemplatesV2Parameters = GetDeploymentTemplatesV2Parameters {
  -- | queryMetadata: Represents the parameter named \'metadata\'
  -- 
  -- An optional key\/value pair in the form of (key:value) that will act as a filter and exclude any templates that do not have a matching metadata item associated.
  getDeploymentTemplatesV2ParametersQueryMetadata :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryRegion: Represents the parameter named \'region\'
  -- 
  -- Region of the deployment templates
  , getDeploymentTemplatesV2ParametersQueryRegion :: Data.Text.Internal.Text
  -- | queryShow_instance_configurations: Represents the parameter named \'show_instance_configurations\'
  -- 
  -- If true, will return details for each instance configuration referenced by the template.
  , getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryShow_max_zones: Represents the parameter named \'show_max_zones\'
  -- 
  -- If true, will populate the max_zones field in the instance configurations. Only relevant if show_instance_configurations=true.
  , getDeploymentTemplatesV2ParametersQueryShowMaxZones :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryStack_version: Represents the parameter named \'stack_version\'
  -- 
  -- If present, it will cause the returned deployment templates to be adapted to return only the elements allowed in that version.
  , getDeploymentTemplatesV2ParametersQueryStackVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDeploymentTemplatesV2Parameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMetadata" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryMetadata obj) : ["queryRegion" Data.Aeson.Types.ToJSON..= getDeploymentTemplatesV2ParametersQueryRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_instance_configurations" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_max_zones" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryShowMaxZones obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStack_version" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryStackVersion obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMetadata" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryMetadata obj) : ["queryRegion" Data.Aeson.Types.ToJSON..= getDeploymentTemplatesV2ParametersQueryRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_instance_configurations" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_max_zones" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryShowMaxZones obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStack_version" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplatesV2ParametersQueryStackVersion obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetDeploymentTemplatesV2Parameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDeploymentTemplatesV2Parameters" (\obj -> ((((GHC.Base.pure GetDeploymentTemplatesV2Parameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryMetadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryRegion")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryShow_instance_configurations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryShow_max_zones")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStack_version"))
-- | Create a new 'GetDeploymentTemplatesV2Parameters' with all required fields.
mkGetDeploymentTemplatesV2Parameters :: Data.Text.Internal.Text -- ^ 'getDeploymentTemplatesV2ParametersQueryRegion'
  -> GetDeploymentTemplatesV2Parameters
mkGetDeploymentTemplatesV2Parameters getDeploymentTemplatesV2ParametersQueryRegion = GetDeploymentTemplatesV2Parameters{getDeploymentTemplatesV2ParametersQueryMetadata = GHC.Maybe.Nothing,
                                                                                                                        getDeploymentTemplatesV2ParametersQueryRegion = getDeploymentTemplatesV2ParametersQueryRegion,
                                                                                                                        getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations = GHC.Maybe.Nothing,
                                                                                                                        getDeploymentTemplatesV2ParametersQueryShowMaxZones = GHC.Maybe.Nothing,
                                                                                                                        getDeploymentTemplatesV2ParametersQueryStackVersion = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getDeploymentTemplatesV2'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDeploymentTemplatesV2ResponseError' is used.
data GetDeploymentTemplatesV2Response =
   GetDeploymentTemplatesV2ResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetDeploymentTemplatesV2Response200 -- ^ The deployment templates were returned successfully.
  | GetDeploymentTemplatesV2Response400 -- ^ The requested region was not found. (code: \`templates.region_not_found\`)
  | GetDeploymentTemplatesV2Response401 -- ^ The user is not authorized to access requested region. (code: \`templates.region_not_allowed\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/templates
-- 
-- The same as 'getDeploymentTemplatesV2' but accepts an explicit configuration.
getDeploymentTemplatesV2WithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentTemplatesV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetDeploymentTemplatesV2Response) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplatesV2WithConfiguration config
                                          parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either GetDeploymentTemplatesV2ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response200
                                                                                                                                                                                                          | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response400
                                                                                                                                                                                                          | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplatesV2Response401
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/deployments/templates") [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "metadata") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryMetadata parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplatesV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/templates
-- 
-- The same as 'getDeploymentTemplatesV2' but returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentTemplatesV2Raw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentTemplatesV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplatesV2Raw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/deployments/templates") [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "metadata") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryMetadata parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                             Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                             Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                             Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                             Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplatesV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/templates
-- 
-- The same as 'getDeploymentTemplatesV2' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentTemplatesV2WithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentTemplatesV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplatesV2WithConfigurationRaw config
                                             parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/deployments/templates") [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "metadata") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryMetadata parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                    Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                    Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                    Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplatesV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                    Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplatesV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])

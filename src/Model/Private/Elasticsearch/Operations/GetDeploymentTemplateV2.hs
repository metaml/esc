-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getDeploymentTemplateV2
module Model/Private/Elasticsearch.Operations.GetDeploymentTemplateV2 where

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

-- | > GET /deployments/templates/{template_id}
-- 
-- Retrieves a deployment template by id.
getDeploymentTemplateV2 :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentTemplateV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetDeploymentTemplateV2Response) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplateV2 parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetDeploymentTemplateV2ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response200
                                                                                                                                                                                       | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response400
                                                                                                                                                                                       | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response401
                                                                                                                                                                                       | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response404
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/templates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentTemplateV2ParametersPathTemplateId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplateV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/templates\/{template_id}.GET.parameters@ in the specification.
-- 
-- 
data GetDeploymentTemplateV2Parameters = GetDeploymentTemplateV2Parameters {
  -- | pathTemplate_id: Represents the parameter named \'template_id\'
  -- 
  -- The identifier for the deployment template.
  getDeploymentTemplateV2ParametersPathTemplateId :: Data.Text.Internal.Text
  -- | queryRegion: Represents the parameter named \'region\'
  -- 
  -- Region of the deployment template
  , getDeploymentTemplateV2ParametersQueryRegion :: Data.Text.Internal.Text
  -- | queryShow_instance_configurations: Represents the parameter named \'show_instance_configurations\'
  -- 
  -- If true, will return details for each instance configuration referenced by the template.
  , getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryShow_max_zones: Represents the parameter named \'show_max_zones\'
  -- 
  -- If true, will populate the max_zones field in the instance configurations. Only relevant if show_instance_configurations=true.
  , getDeploymentTemplateV2ParametersQueryShowMaxZones :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryStack_version: Represents the parameter named \'stack_version\'
  -- 
  -- If present, it will cause the returned deployment template to be adapted to return only the elements allowed in that version.
  , getDeploymentTemplateV2ParametersQueryStackVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDeploymentTemplateV2Parameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathTemplate_id" Data.Aeson.Types.ToJSON..= getDeploymentTemplateV2ParametersPathTemplateId obj] : ["queryRegion" Data.Aeson.Types.ToJSON..= getDeploymentTemplateV2ParametersQueryRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_instance_configurations" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_max_zones" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryShowMaxZones obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStack_version" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryStackVersion obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathTemplate_id" Data.Aeson.Types.ToJSON..= getDeploymentTemplateV2ParametersPathTemplateId obj] : ["queryRegion" Data.Aeson.Types.ToJSON..= getDeploymentTemplateV2ParametersQueryRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_instance_configurations" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryShow_max_zones" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryShowMaxZones obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStack_version" Data.Aeson.Types.ToJSON..=)) (getDeploymentTemplateV2ParametersQueryStackVersion obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetDeploymentTemplateV2Parameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDeploymentTemplateV2Parameters" (\obj -> ((((GHC.Base.pure GetDeploymentTemplateV2Parameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathTemplate_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryRegion")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryShow_instance_configurations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryShow_max_zones")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStack_version"))
-- | Create a new 'GetDeploymentTemplateV2Parameters' with all required fields.
mkGetDeploymentTemplateV2Parameters :: Data.Text.Internal.Text -- ^ 'getDeploymentTemplateV2ParametersPathTemplateId'
  -> Data.Text.Internal.Text -- ^ 'getDeploymentTemplateV2ParametersQueryRegion'
  -> GetDeploymentTemplateV2Parameters
mkGetDeploymentTemplateV2Parameters getDeploymentTemplateV2ParametersPathTemplateId getDeploymentTemplateV2ParametersQueryRegion = GetDeploymentTemplateV2Parameters{getDeploymentTemplateV2ParametersPathTemplateId = getDeploymentTemplateV2ParametersPathTemplateId,
                                                                                                                                                                     getDeploymentTemplateV2ParametersQueryRegion = getDeploymentTemplateV2ParametersQueryRegion,
                                                                                                                                                                     getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations = GHC.Maybe.Nothing,
                                                                                                                                                                     getDeploymentTemplateV2ParametersQueryShowMaxZones = GHC.Maybe.Nothing,
                                                                                                                                                                     getDeploymentTemplateV2ParametersQueryStackVersion = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getDeploymentTemplateV2'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDeploymentTemplateV2ResponseError' is used.
data GetDeploymentTemplateV2Response =
   GetDeploymentTemplateV2ResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetDeploymentTemplateV2Response200 -- ^ The deployment template was found and returned successfully.
  | GetDeploymentTemplateV2Response400 -- ^ The requested region is not supported. (code: \`templates.region_not_found\`)
  | GetDeploymentTemplateV2Response401 -- ^ The user is not authorized to access requested region. (code: \`templates.region_not_allowed\`)
  | GetDeploymentTemplateV2Response404 -- ^ The deployment template specified by {template_id} cannot be found. (code: \`templates.template_not_found\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/templates/{template_id}
-- 
-- The same as 'getDeploymentTemplateV2' but accepts an explicit configuration.
getDeploymentTemplateV2WithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentTemplateV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetDeploymentTemplateV2Response) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplateV2WithConfiguration config
                                         parameters = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either GetDeploymentTemplateV2ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response200
                                                                                                                                                                                                        | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response400
                                                                                                                                                                                                        | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response401
                                                                                                                                                                                                        | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetDeploymentTemplateV2Response404
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/templates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentTemplateV2ParametersPathTemplateId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplateV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/templates/{template_id}
-- 
-- The same as 'getDeploymentTemplateV2' but returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentTemplateV2Raw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetDeploymentTemplateV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplateV2Raw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/templates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentTemplateV2ParametersPathTemplateId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplateV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/templates/{template_id}
-- 
-- The same as 'getDeploymentTemplateV2' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getDeploymentTemplateV2WithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetDeploymentTemplateV2Parameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getDeploymentTemplateV2WithConfigurationRaw config
                                            parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/templates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getDeploymentTemplateV2ParametersPathTemplateId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_instance_configurations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowInstanceConfigurations parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "show_max_zones") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryShowMaxZones parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "stack_version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDeploymentTemplateV2ParametersQueryStackVersion parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "region") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getDeploymentTemplateV2ParametersQueryRegion parameters)) (Data.Text.pack "form") GHC.Types.False])

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTrafficFilterDeploymentRulesetAssociations
module Model/Private/Elasticsearch.Operations.GetTrafficFilterDeploymentRulesetAssociations where

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

-- | > GET /deployments/traffic-filter/associations/{association_type}/{associated_entity_id}/rulesets
-- 
-- Retrieves the rulesets associated with a deployment.
getTrafficFilterDeploymentRulesetAssociations :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetTrafficFilterDeploymentRulesetAssociationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetTrafficFilterDeploymentRulesetAssociationsResponse) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterDeploymentRulesetAssociations parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTrafficFilterDeploymentRulesetAssociationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse200
                                                                                                                                                                                                                                   | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse400
                                                                                                                                                                                                                                   | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse500
                                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId parameters))) GHC.Base.++ "/rulesets"))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/traffic-filter\/associations\/{association_type}\/{associated_entity_id}\/rulesets.GET.parameters@ in the specification.
-- 
-- 
data GetTrafficFilterDeploymentRulesetAssociationsParameters = GetTrafficFilterDeploymentRulesetAssociationsParameters {
  -- | pathAssociated_entity_id: Represents the parameter named \'associated_entity_id\'
  -- 
  -- Associated entity ID
  getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId :: Data.Text.Internal.Text
  -- | pathAssociation_type: Represents the parameter named \'association_type\'
  -- 
  -- Association type
  , getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTrafficFilterDeploymentRulesetAssociationsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAssociated_entity_id" Data.Aeson.Types.ToJSON..= getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId obj] : ["pathAssociation_type" Data.Aeson.Types.ToJSON..= getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAssociated_entity_id" Data.Aeson.Types.ToJSON..= getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId obj] : ["pathAssociation_type" Data.Aeson.Types.ToJSON..= getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTrafficFilterDeploymentRulesetAssociationsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTrafficFilterDeploymentRulesetAssociationsParameters" (\obj -> (GHC.Base.pure GetTrafficFilterDeploymentRulesetAssociationsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssociated_entity_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssociation_type"))
-- | Create a new 'GetTrafficFilterDeploymentRulesetAssociationsParameters' with all required fields.
mkGetTrafficFilterDeploymentRulesetAssociationsParameters :: Data.Text.Internal.Text -- ^ 'getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId'
  -> Data.Text.Internal.Text -- ^ 'getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType'
  -> GetTrafficFilterDeploymentRulesetAssociationsParameters
mkGetTrafficFilterDeploymentRulesetAssociationsParameters getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType = GetTrafficFilterDeploymentRulesetAssociationsParameters{getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId = getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId,
                                                                                                                                                                                                                                                                             getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType = getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType}
-- | Represents a response of the operation 'getTrafficFilterDeploymentRulesetAssociations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTrafficFilterDeploymentRulesetAssociationsResponseError' is used.
data GetTrafficFilterDeploymentRulesetAssociationsResponse =
   GetTrafficFilterDeploymentRulesetAssociationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTrafficFilterDeploymentRulesetAssociationsResponse200 -- ^ Rulesets in the deployment were successfully returned
  | GetTrafficFilterDeploymentRulesetAssociationsResponse400 -- ^ Invalid association type. (code: \`traffic_filter.invalid_association_type\`)
  | GetTrafficFilterDeploymentRulesetAssociationsResponse500 -- ^ Error fetching traffic filter rulesets. (code: \`traffic_filter.request_execution_failed\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/traffic-filter/associations/{association_type}/{associated_entity_id}/rulesets
-- 
-- The same as 'getTrafficFilterDeploymentRulesetAssociations' but accepts an explicit configuration.
getTrafficFilterDeploymentRulesetAssociationsWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetTrafficFilterDeploymentRulesetAssociationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetTrafficFilterDeploymentRulesetAssociationsResponse) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterDeploymentRulesetAssociationsWithConfiguration config
                                                               parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either GetTrafficFilterDeploymentRulesetAssociationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse200
                                                                                                                                                                                                                                                    | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse400
                                                                                                                                                                                                                                                    | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterDeploymentRulesetAssociationsResponse500
                                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId parameters))) GHC.Base.++ "/rulesets"))))) GHC.Base.mempty)
-- | > GET /deployments/traffic-filter/associations/{association_type}/{associated_entity_id}/rulesets
-- 
-- The same as 'getTrafficFilterDeploymentRulesetAssociations' but returns the raw 'Data.ByteString.Char8.ByteString'.
getTrafficFilterDeploymentRulesetAssociationsRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetTrafficFilterDeploymentRulesetAssociationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterDeploymentRulesetAssociationsRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId parameters))) GHC.Base.++ "/rulesets"))))) GHC.Base.mempty)
-- | > GET /deployments/traffic-filter/associations/{association_type}/{associated_entity_id}/rulesets
-- 
-- The same as 'getTrafficFilterDeploymentRulesetAssociations' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getTrafficFilterDeploymentRulesetAssociationsWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetTrafficFilterDeploymentRulesetAssociationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterDeploymentRulesetAssociationsWithConfigurationRaw config
                                                                  parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterDeploymentRulesetAssociationsParametersPathAssociatedEntityId parameters))) GHC.Base.++ "/rulesets"))))) GHC.Base.mempty)

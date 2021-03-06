-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteTrafficFilterRulesetAssociation
module Model/Private/Elasticsearch.Operations.DeleteTrafficFilterRulesetAssociation where

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

-- | > DELETE /deployments/traffic-filter/rulesets/{ruleset_id}/associations/{association_type}/{associated_entity_id}
-- 
-- Deletes the traffic rules in the ruleset from the deployment.
deleteTrafficFilterRulesetAssociation :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => DeleteTrafficFilterRulesetAssociationParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteTrafficFilterRulesetAssociationResponse) -- ^ Monadic computation which returns the result of the operation
deleteTrafficFilterRulesetAssociation parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteTrafficFilterRulesetAssociationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse200
                                                                                                                                                                                                                   | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse404
                                                                                                                                                                                                                   | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse500
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathRulesetId parameters))) GHC.Base.++ ("/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId parameters))) GHC.Base.++ ""))))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/deployments\/traffic-filter\/rulesets\/{ruleset_id}\/associations\/{association_type}\/{associated_entity_id}.DELETE.parameters@ in the specification.
-- 
-- 
data DeleteTrafficFilterRulesetAssociationParameters = DeleteTrafficFilterRulesetAssociationParameters {
  -- | pathAssociated_entity_id: Represents the parameter named \'associated_entity_id\'
  -- 
  -- Associated entity ID
  deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId :: Data.Text.Internal.Text
  -- | pathAssociation_type: Represents the parameter named \'association_type\'
  -- 
  -- Association type
  , deleteTrafficFilterRulesetAssociationParametersPathAssociationType :: Data.Text.Internal.Text
  -- | pathRuleset_id: Represents the parameter named \'ruleset_id\'
  -- 
  -- The mandatory ruleset ID.
  , deleteTrafficFilterRulesetAssociationParametersPathRulesetId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteTrafficFilterRulesetAssociationParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAssociated_entity_id" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId obj] : ["pathAssociation_type" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathAssociationType obj] : ["pathRuleset_id" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathRulesetId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAssociated_entity_id" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId obj] : ["pathAssociation_type" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathAssociationType obj] : ["pathRuleset_id" Data.Aeson.Types.ToJSON..= deleteTrafficFilterRulesetAssociationParametersPathRulesetId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteTrafficFilterRulesetAssociationParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteTrafficFilterRulesetAssociationParameters" (\obj -> ((GHC.Base.pure DeleteTrafficFilterRulesetAssociationParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssociated_entity_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssociation_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRuleset_id"))
-- | Create a new 'DeleteTrafficFilterRulesetAssociationParameters' with all required fields.
mkDeleteTrafficFilterRulesetAssociationParameters :: Data.Text.Internal.Text -- ^ 'deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId'
  -> Data.Text.Internal.Text -- ^ 'deleteTrafficFilterRulesetAssociationParametersPathAssociationType'
  -> Data.Text.Internal.Text -- ^ 'deleteTrafficFilterRulesetAssociationParametersPathRulesetId'
  -> DeleteTrafficFilterRulesetAssociationParameters
mkDeleteTrafficFilterRulesetAssociationParameters deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId deleteTrafficFilterRulesetAssociationParametersPathAssociationType deleteTrafficFilterRulesetAssociationParametersPathRulesetId = DeleteTrafficFilterRulesetAssociationParameters{deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId = deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId,
                                                                                                                                                                                                                                                                                                          deleteTrafficFilterRulesetAssociationParametersPathAssociationType = deleteTrafficFilterRulesetAssociationParametersPathAssociationType,
                                                                                                                                                                                                                                                                                                          deleteTrafficFilterRulesetAssociationParametersPathRulesetId = deleteTrafficFilterRulesetAssociationParametersPathRulesetId}
-- | Represents a response of the operation 'deleteTrafficFilterRulesetAssociation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteTrafficFilterRulesetAssociationResponseError' is used.
data DeleteTrafficFilterRulesetAssociationResponse =
   DeleteTrafficFilterRulesetAssociationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteTrafficFilterRulesetAssociationResponse200 -- ^ Delete association request was valid and the association has been deleted
  | DeleteTrafficFilterRulesetAssociationResponse404 -- ^ The traffic filter ruleset association cannot be found. (code: \`traffic_filter.not_found\`)
  | DeleteTrafficFilterRulesetAssociationResponse500 -- ^ Deletion failed. (code: \`traffic_filter.request_execution_failed\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > DELETE /deployments/traffic-filter/rulesets/{ruleset_id}/associations/{association_type}/{associated_entity_id}
-- 
-- The same as 'deleteTrafficFilterRulesetAssociation' but accepts an explicit configuration.
deleteTrafficFilterRulesetAssociationWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> DeleteTrafficFilterRulesetAssociationParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response DeleteTrafficFilterRulesetAssociationResponse) -- ^ Monadic computation which returns the result of the operation
deleteTrafficFilterRulesetAssociationWithConfiguration config
                                                       parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either DeleteTrafficFilterRulesetAssociationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse200
                                                                                                                                                                                                                                    | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse404
                                                                                                                                                                                                                                    | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right DeleteTrafficFilterRulesetAssociationResponse500
                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathRulesetId parameters))) GHC.Base.++ ("/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId parameters))) GHC.Base.++ ""))))))) GHC.Base.mempty)
-- | > DELETE /deployments/traffic-filter/rulesets/{ruleset_id}/associations/{association_type}/{associated_entity_id}
-- 
-- The same as 'deleteTrafficFilterRulesetAssociation' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteTrafficFilterRulesetAssociationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => DeleteTrafficFilterRulesetAssociationParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deleteTrafficFilterRulesetAssociationRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathRulesetId parameters))) GHC.Base.++ ("/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId parameters))) GHC.Base.++ ""))))))) GHC.Base.mempty)
-- | > DELETE /deployments/traffic-filter/rulesets/{ruleset_id}/associations/{association_type}/{associated_entity_id}
-- 
-- The same as 'deleteTrafficFilterRulesetAssociation' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteTrafficFilterRulesetAssociationWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> DeleteTrafficFilterRulesetAssociationParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deleteTrafficFilterRulesetAssociationWithConfigurationRaw config
                                                          parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathRulesetId parameters))) GHC.Base.++ ("/associations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociationType parameters))) GHC.Base.++ ("/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (deleteTrafficFilterRulesetAssociationParametersPathAssociatedEntityId parameters))) GHC.Base.++ ""))))))) GHC.Base.mempty)

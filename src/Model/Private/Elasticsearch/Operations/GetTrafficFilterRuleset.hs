-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTrafficFilterRuleset
module Model/Private/Elasticsearch.Operations.GetTrafficFilterRuleset where

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

-- | > GET /deployments/traffic-filter/rulesets/{ruleset_id}
-- 
-- Retrieves a list of resources that are associated to the specified ruleset.
getTrafficFilterRuleset :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetTrafficFilterRulesetParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetTrafficFilterRulesetResponse) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterRuleset parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTrafficFilterRulesetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse200
                                                                                                                                                                                       | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse404
                                                                                                                                                                                       | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse500
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterRulesetParametersPathRulesetId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "include_associations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTrafficFilterRulesetParametersQueryIncludeAssociations parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/deployments\/traffic-filter\/rulesets\/{ruleset_id}.GET.parameters@ in the specification.
-- 
-- 
data GetTrafficFilterRulesetParameters = GetTrafficFilterRulesetParameters {
  -- | pathRuleset_id: Represents the parameter named \'ruleset_id\'
  -- 
  -- The mandatory ruleset ID.
  getTrafficFilterRulesetParametersPathRulesetId :: Data.Text.Internal.Text
  -- | queryInclude_associations: Represents the parameter named \'include_associations\'
  -- 
  -- Retrieves a list of resources that are associated to the specified ruleset.
  , getTrafficFilterRulesetParametersQueryIncludeAssociations :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTrafficFilterRulesetParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathRuleset_id" Data.Aeson.Types.ToJSON..= getTrafficFilterRulesetParametersPathRulesetId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_associations" Data.Aeson.Types.ToJSON..=)) (getTrafficFilterRulesetParametersQueryIncludeAssociations obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathRuleset_id" Data.Aeson.Types.ToJSON..= getTrafficFilterRulesetParametersPathRulesetId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_associations" Data.Aeson.Types.ToJSON..=)) (getTrafficFilterRulesetParametersQueryIncludeAssociations obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTrafficFilterRulesetParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTrafficFilterRulesetParameters" (\obj -> (GHC.Base.pure GetTrafficFilterRulesetParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRuleset_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryInclude_associations"))
-- | Create a new 'GetTrafficFilterRulesetParameters' with all required fields.
mkGetTrafficFilterRulesetParameters :: Data.Text.Internal.Text -- ^ 'getTrafficFilterRulesetParametersPathRulesetId'
  -> GetTrafficFilterRulesetParameters
mkGetTrafficFilterRulesetParameters getTrafficFilterRulesetParametersPathRulesetId = GetTrafficFilterRulesetParameters{getTrafficFilterRulesetParametersPathRulesetId = getTrafficFilterRulesetParametersPathRulesetId,
                                                                                                                       getTrafficFilterRulesetParametersQueryIncludeAssociations = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getTrafficFilterRuleset'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTrafficFilterRulesetResponseError' is used.
data GetTrafficFilterRulesetResponse =
   GetTrafficFilterRulesetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTrafficFilterRulesetResponse200 -- ^ The container for a set of traffic filter rules.
  | GetTrafficFilterRulesetResponse404 -- ^ The traffic filter ruleset specified by {ruleset_id} cannot be found. (code: \`traffic_filter.not_found\`)
  | GetTrafficFilterRulesetResponse500 -- ^ Error reading the traffic filter ruleset. (code: \`traffic_filter.request_execution_failed\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /deployments/traffic-filter/rulesets/{ruleset_id}
-- 
-- The same as 'getTrafficFilterRuleset' but accepts an explicit configuration.
getTrafficFilterRulesetWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetTrafficFilterRulesetParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetTrafficFilterRulesetResponse) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterRulesetWithConfiguration config
                                         parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either GetTrafficFilterRulesetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse200
                                                                                                                                                                                                        | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse404
                                                                                                                                                                                                        | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetTrafficFilterRulesetResponse500
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterRulesetParametersPathRulesetId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "include_associations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTrafficFilterRulesetParametersQueryIncludeAssociations parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/traffic-filter/rulesets/{ruleset_id}
-- 
-- The same as 'getTrafficFilterRuleset' but returns the raw 'Data.ByteString.Char8.ByteString'.
getTrafficFilterRulesetRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => GetTrafficFilterRulesetParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterRulesetRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterRulesetParametersPathRulesetId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "include_associations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTrafficFilterRulesetParametersQueryIncludeAssociations parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /deployments/traffic-filter/rulesets/{ruleset_id}
-- 
-- The same as 'getTrafficFilterRuleset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getTrafficFilterRulesetWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> GetTrafficFilterRulesetParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTrafficFilterRulesetWithConfigurationRaw config
                                            parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/deployments/traffic-filter/rulesets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (getTrafficFilterRulesetParametersPathRulesetId parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "include_associations") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTrafficFilterRulesetParametersQueryIncludeAssociations parameters) (Data.Text.pack "form") GHC.Types.False])

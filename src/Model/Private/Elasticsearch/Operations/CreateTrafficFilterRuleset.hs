-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation createTrafficFilterRuleset
module Model/Private/Elasticsearch.Operations.CreateTrafficFilterRuleset where

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

-- | > POST /deployments/traffic-filter/rulesets
-- 
-- Creates a ruleset that consists of a set of rules.
createTrafficFilterRuleset :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => TrafficFilterRulesetRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response CreateTrafficFilterRulesetResponse) -- ^ Monadic computation which returns the result of the operation
createTrafficFilterRuleset body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateTrafficFilterRulesetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateTrafficFilterRulesetResponse201
                                                                                                                                                                                       | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateTrafficFilterRulesetResponse500
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/deployments/traffic-filter/rulesets") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'createTrafficFilterRuleset'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateTrafficFilterRulesetResponseError' is used.
data CreateTrafficFilterRulesetResponse =
   CreateTrafficFilterRulesetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | CreateTrafficFilterRulesetResponse201 -- ^ The ruleset definition is valid and the creation has started.
  | CreateTrafficFilterRulesetResponse500 -- ^ Error creating the traffic filter ruleset. (code: \`traffic_filter.request_execution_failed\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /deployments/traffic-filter/rulesets
-- 
-- The same as 'createTrafficFilterRuleset' but accepts an explicit configuration.
createTrafficFilterRulesetWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> TrafficFilterRulesetRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response CreateTrafficFilterRulesetResponse) -- ^ Monadic computation which returns the result of the operation
createTrafficFilterRulesetWithConfiguration config
                                            body = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either CreateTrafficFilterRulesetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateTrafficFilterRulesetResponse201
                                                                                                                                                                                                        | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right CreateTrafficFilterRulesetResponse500
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/deployments/traffic-filter/rulesets") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/traffic-filter/rulesets
-- 
-- The same as 'createTrafficFilterRuleset' but returns the raw 'Data.ByteString.Char8.ByteString'.
createTrafficFilterRulesetRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => TrafficFilterRulesetRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
createTrafficFilterRulesetRaw body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/deployments/traffic-filter/rulesets") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > POST /deployments/traffic-filter/rulesets
-- 
-- The same as 'createTrafficFilterRuleset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
createTrafficFilterRulesetWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> TrafficFilterRulesetRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
createTrafficFilterRulesetWithConfigurationRaw config
                                               body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/deployments/traffic-filter/rulesets") GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

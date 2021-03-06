-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PlanStrategy
module Model/Private/Elasticsearch.Types.PlanStrategy where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Model/Private/Elasticsearch.Common
import Model/Private/Elasticsearch.TypeAlias
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.RollingStrategyConfig

-- | Defines the object schema located at @components.schemas.PlanStrategy@ in the specification.
-- 
-- The options for performing a plan change. Specify only one property each time. The default is \`grow_and_shrink\`.
data PlanStrategy = PlanStrategy {
  -- | autodetect: A strategy that lets constructor choose the most optimal way to execute the plan.
  planStrategyAutodetect :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | grow_and_shrink: A strategy that creates instances with the new plan, migrates data from the old instances, then shuts down the old instances. \`GrowShrinkStrategyConfig\` is safer than \'rolling\' and ensures single node availability during a plan change, but can be a lot slower on larger clusters.
  , planStrategyGrowAndShrink :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | rolling: Performs inline, rolling configuration changes that mutate existing containers. TIP: This is the fastest way to update a plan, but can fail for complex plan changes, such as topology changes. Also, this is less safe for configuration changes that leave a cluster in a non running state. NOTE: When you perform a major version upgrade, and \'group_by\' is set to \'pass:macros[__all__]\';, rolling is required.
  , planStrategyRolling :: (GHC.Maybe.Maybe RollingStrategyConfig)
  -- | rolling_grow_and_shrink: A strategy that creates new Elasticsearch instances, Kibana instances, and APM Servers with the new plan, then migrates the node data to minimize the amount of spare capacity.
  , planStrategyRollingGrowAndShrink :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PlanStrategy
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autodetect" Data.Aeson.Types.ToJSON..=)) (planStrategyAutodetect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grow_and_shrink" Data.Aeson.Types.ToJSON..=)) (planStrategyGrowAndShrink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolling" Data.Aeson.Types.ToJSON..=)) (planStrategyRolling obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolling_grow_and_shrink" Data.Aeson.Types.ToJSON..=)) (planStrategyRollingGrowAndShrink obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autodetect" Data.Aeson.Types.ToJSON..=)) (planStrategyAutodetect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grow_and_shrink" Data.Aeson.Types.ToJSON..=)) (planStrategyGrowAndShrink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolling" Data.Aeson.Types.ToJSON..=)) (planStrategyRolling obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolling_grow_and_shrink" Data.Aeson.Types.ToJSON..=)) (planStrategyRollingGrowAndShrink obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PlanStrategy
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PlanStrategy" (\obj -> (((GHC.Base.pure PlanStrategy GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "autodetect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "grow_and_shrink")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "rolling")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "rolling_grow_and_shrink"))
-- | Create a new 'PlanStrategy' with all required fields.
mkPlanStrategy :: PlanStrategy
mkPlanStrategy = PlanStrategy{planStrategyAutodetect = GHC.Maybe.Nothing,
                              planStrategyGrowAndShrink = GHC.Maybe.Nothing,
                              planStrategyRolling = GHC.Maybe.Nothing,
                              planStrategyRollingGrowAndShrink = GHC.Maybe.Nothing}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TransientApmPlanConfiguration
module Model/Private/Elasticsearch.Types.TransientApmPlanConfiguration where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ApmPlanControlConfiguration
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.PlanStrategy

-- | Defines the object schema located at @components.schemas.TransientApmPlanConfiguration@ in the specification.
-- 
-- Defines the configuration parameters that control how the plan is applied. For example, the Elasticsearch cluster topology and APM Server settings.
data TransientApmPlanConfiguration = TransientApmPlanConfiguration {
  -- | plan_configuration: The plan control configuration options for the APM Server.
  transientApmPlanConfigurationPlanConfiguration :: (GHC.Maybe.Maybe ApmPlanControlConfiguration)
  -- | strategy: The options for performing a plan change. Specify only one property each time. The default is \`grow_and_shrink\`.
  , transientApmPlanConfigurationStrategy :: (GHC.Maybe.Maybe PlanStrategy)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TransientApmPlanConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan_configuration" Data.Aeson.Types.ToJSON..=)) (transientApmPlanConfigurationPlanConfiguration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("strategy" Data.Aeson.Types.ToJSON..=)) (transientApmPlanConfigurationStrategy obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan_configuration" Data.Aeson.Types.ToJSON..=)) (transientApmPlanConfigurationPlanConfiguration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("strategy" Data.Aeson.Types.ToJSON..=)) (transientApmPlanConfigurationStrategy obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TransientApmPlanConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TransientApmPlanConfiguration" (\obj -> (GHC.Base.pure TransientApmPlanConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "plan_configuration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "strategy"))
-- | Create a new 'TransientApmPlanConfiguration' with all required fields.
mkTransientApmPlanConfiguration :: TransientApmPlanConfiguration
mkTransientApmPlanConfiguration = TransientApmPlanConfiguration{transientApmPlanConfigurationPlanConfiguration = GHC.Maybe.Nothing,
                                                                transientApmPlanConfigurationStrategy = GHC.Maybe.Nothing}
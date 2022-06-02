-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema KibanaClusterPlan
module Model/Private/Elasticsearch.Types.KibanaClusterPlan where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.KibanaClusterTopologyElement
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.KibanaConfiguration
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.TransientKibanaPlanConfiguration

-- | Defines the object schema located at @components.schemas.KibanaClusterPlan@ in the specification.
-- 
-- The plan for the Kibana instance.
data KibanaClusterPlan = KibanaClusterPlan {
  -- | cluster_topology
  kibanaClusterPlanClusterTopology :: (GHC.Maybe.Maybe ([KibanaClusterTopologyElement]))
  -- | kibana: The Kibana instance settings. When specified at the top level, provides a field-by-field default. When specified at the topology level, provides the override settings.
  , kibanaClusterPlanKibana :: KibanaConfiguration
  -- | transient: Defines the configuration parameters that control how the plan is applied. For example, the Elasticsearch cluster topology and Kibana instance settings.
  , kibanaClusterPlanTransient :: (GHC.Maybe.Maybe TransientKibanaPlanConfiguration)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON KibanaClusterPlan
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_topology" Data.Aeson.Types.ToJSON..=)) (kibanaClusterPlanClusterTopology obj) : ["kibana" Data.Aeson.Types.ToJSON..= kibanaClusterPlanKibana obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transient" Data.Aeson.Types.ToJSON..=)) (kibanaClusterPlanTransient obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_topology" Data.Aeson.Types.ToJSON..=)) (kibanaClusterPlanClusterTopology obj) : ["kibana" Data.Aeson.Types.ToJSON..= kibanaClusterPlanKibana obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transient" Data.Aeson.Types.ToJSON..=)) (kibanaClusterPlanTransient obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON KibanaClusterPlan
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "KibanaClusterPlan" (\obj -> ((GHC.Base.pure KibanaClusterPlan GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cluster_topology")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "kibana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transient"))
-- | Create a new 'KibanaClusterPlan' with all required fields.
mkKibanaClusterPlan :: KibanaConfiguration -- ^ 'kibanaClusterPlanKibana'
  -> KibanaClusterPlan
mkKibanaClusterPlan kibanaClusterPlanKibana = KibanaClusterPlan{kibanaClusterPlanClusterTopology = GHC.Maybe.Nothing,
                                                                kibanaClusterPlanKibana = kibanaClusterPlanKibana,
                                                                kibanaClusterPlanTransient = GHC.Maybe.Nothing}

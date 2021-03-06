-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchPlanControlConfiguration
module Model/Private/Elasticsearch.Types.ElasticsearchPlanControlConfiguration where

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

-- | Defines the object schema located at @components.schemas.ElasticsearchPlanControlConfiguration@ in the specification.
-- 
-- The configuration settings for the timeout and fallback parameters.
data ElasticsearchPlanControlConfiguration = ElasticsearchPlanControlConfiguration {
  -- | calm_wait_time: This timeout determines how long to give a cluster after it responds to API calls before performing actual operations on it. It defaults to 5s
  elasticsearchPlanControlConfigurationCalmWaitTime :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | cluster_reboot: Set to \'forced\' to force a reboot as part of the upgrade plan. NOTES: (ie taking an existing plan and leaving it alone except for setting \'transient.plan_configuration.cluster_reboot\': \'forced\' will reboot the cluster)
  , elasticsearchPlanControlConfigurationClusterReboot :: (GHC.Maybe.Maybe ElasticsearchPlanControlConfigurationClusterReboot)
  -- | extended_maintenance: If true (default false), does not clear the maintenance flag (which prevents its API from being accessed except by the constructor) on new instances added until after a snapshot has been restored, otherwise, the maintenance flag is cleared once the new instances successfully join the new cluster
  , elasticsearchPlanControlConfigurationExtendedMaintenance :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | max_snapshot_age: When you take a snapshot and \'skip_snapshots\' is false, specifies the maximum age in seconds of the most recent snapshot before a new snapshot is created. Default is 300
  , elasticsearchPlanControlConfigurationMaxSnapshotAge :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | max_snapshot_attempts: If taking a snapshot (ie unless \'skip_snapshots\': true) then will retry on failure at most this number of times (default: 5)
  , elasticsearchPlanControlConfigurationMaxSnapshotAttempts :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | skip_snapshot: If true (default: false), does not take (or require) a successful snapshot to be taken before performing any potentially destructive changes to this cluster
  , elasticsearchPlanControlConfigurationSkipSnapshot :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | timeout: The total timeout in seconds after which the plan is cancelled even if it is not complete. Defaults to 4x the max memory capacity per node (in MB). NOTES: A 3 zone cluster with 2 nodes of 2048 each would have a timeout of 4*2048=8192 seconds. Timeout does not include time required to run rollback actions.
  , elasticsearchPlanControlConfigurationTimeout :: (GHC.Maybe.Maybe GHC.Int.Int64)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchPlanControlConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_snapshot_age" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationMaxSnapshotAge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_snapshot_attempts" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationMaxSnapshotAttempts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("skip_snapshot" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationSkipSnapshot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationTimeout obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_snapshot_age" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationMaxSnapshotAge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_snapshot_attempts" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationMaxSnapshotAttempts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("skip_snapshot" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationSkipSnapshot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (elasticsearchPlanControlConfigurationTimeout obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchPlanControlConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchPlanControlConfiguration" (\obj -> ((((((GHC.Base.pure ElasticsearchPlanControlConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "calm_wait_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cluster_reboot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "extended_maintenance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "max_snapshot_age")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "max_snapshot_attempts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "skip_snapshot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timeout"))
-- | Create a new 'ElasticsearchPlanControlConfiguration' with all required fields.
mkElasticsearchPlanControlConfiguration :: ElasticsearchPlanControlConfiguration
mkElasticsearchPlanControlConfiguration = ElasticsearchPlanControlConfiguration{elasticsearchPlanControlConfigurationCalmWaitTime = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationClusterReboot = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationExtendedMaintenance = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationMaxSnapshotAge = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationMaxSnapshotAttempts = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationSkipSnapshot = GHC.Maybe.Nothing,
                                                                                elasticsearchPlanControlConfigurationTimeout = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.ElasticsearchPlanControlConfiguration.properties.cluster_reboot@ in the specification.
-- 
-- Set to \'forced\' to force a reboot as part of the upgrade plan. NOTES: (ie taking an existing plan and leaving it alone except for setting \'transient.plan_configuration.cluster_reboot\': \'forced\' will reboot the cluster)
data ElasticsearchPlanControlConfigurationClusterReboot =
   ElasticsearchPlanControlConfigurationClusterRebootOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ElasticsearchPlanControlConfigurationClusterRebootTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ElasticsearchPlanControlConfigurationClusterRebootEnumForced -- ^ Represents the JSON value @"forced"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchPlanControlConfigurationClusterReboot
    where toJSON (ElasticsearchPlanControlConfigurationClusterRebootOther val) = val
          toJSON (ElasticsearchPlanControlConfigurationClusterRebootTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ElasticsearchPlanControlConfigurationClusterRebootEnumForced) = "forced"
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchPlanControlConfigurationClusterReboot
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "forced" -> ElasticsearchPlanControlConfigurationClusterRebootEnumForced
                                            | GHC.Base.otherwise -> ElasticsearchPlanControlConfigurationClusterRebootOther val)

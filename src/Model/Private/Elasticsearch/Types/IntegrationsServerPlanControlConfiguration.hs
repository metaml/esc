-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IntegrationsServerPlanControlConfiguration
module Model/Private/Elasticsearch.Types.IntegrationsServerPlanControlConfiguration where

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

-- | Defines the object schema located at @components.schemas.IntegrationsServerPlanControlConfiguration@ in the specification.
-- 
-- The plan control configuration options for the Integrations Server.
data IntegrationsServerPlanControlConfiguration = IntegrationsServerPlanControlConfiguration {
  -- | calm_wait_time: This timeout determines how long to give a cluster after it responds to API calls before performing actual operations on it. It defaults to 5s
  integrationsServerPlanControlConfigurationCalmWaitTime :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | cluster_reboot: Set to \'forced\' to force a reboot as part of the upgrade plan
  , integrationsServerPlanControlConfigurationClusterReboot :: (GHC.Maybe.Maybe IntegrationsServerPlanControlConfigurationClusterReboot)
  -- | extended_maintenance: If true (default false), does not clear the maintenance flag (which prevents its API from being accessed except by the constructor) on new instances added until after a snapshot has been restored, otherwise, the maintenance flag is cleared once the new instances successfully join the new cluster
  , integrationsServerPlanControlConfigurationExtendedMaintenance :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | timeout: The total timeout in seconds after which the plan is cancelled even if it is not complete. Defaults to 4x the max memory capacity per node (in MB)
  , integrationsServerPlanControlConfigurationTimeout :: (GHC.Maybe.Maybe GHC.Int.Int64)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IntegrationsServerPlanControlConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationTimeout obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (integrationsServerPlanControlConfigurationTimeout obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON IntegrationsServerPlanControlConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IntegrationsServerPlanControlConfiguration" (\obj -> (((GHC.Base.pure IntegrationsServerPlanControlConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "calm_wait_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cluster_reboot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "extended_maintenance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timeout"))
-- | Create a new 'IntegrationsServerPlanControlConfiguration' with all required fields.
mkIntegrationsServerPlanControlConfiguration :: IntegrationsServerPlanControlConfiguration
mkIntegrationsServerPlanControlConfiguration = IntegrationsServerPlanControlConfiguration{integrationsServerPlanControlConfigurationCalmWaitTime = GHC.Maybe.Nothing,
                                                                                          integrationsServerPlanControlConfigurationClusterReboot = GHC.Maybe.Nothing,
                                                                                          integrationsServerPlanControlConfigurationExtendedMaintenance = GHC.Maybe.Nothing,
                                                                                          integrationsServerPlanControlConfigurationTimeout = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.IntegrationsServerPlanControlConfiguration.properties.cluster_reboot@ in the specification.
-- 
-- Set to \'forced\' to force a reboot as part of the upgrade plan
data IntegrationsServerPlanControlConfigurationClusterReboot =
   IntegrationsServerPlanControlConfigurationClusterRebootOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IntegrationsServerPlanControlConfigurationClusterRebootTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IntegrationsServerPlanControlConfigurationClusterRebootEnumForced -- ^ Represents the JSON value @"forced"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IntegrationsServerPlanControlConfigurationClusterReboot
    where toJSON (IntegrationsServerPlanControlConfigurationClusterRebootOther val) = val
          toJSON (IntegrationsServerPlanControlConfigurationClusterRebootTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (IntegrationsServerPlanControlConfigurationClusterRebootEnumForced) = "forced"
instance Data.Aeson.Types.FromJSON.FromJSON IntegrationsServerPlanControlConfigurationClusterReboot
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "forced" -> IntegrationsServerPlanControlConfigurationClusterRebootEnumForced
                                            | GHC.Base.otherwise -> IntegrationsServerPlanControlConfigurationClusterRebootOther val)

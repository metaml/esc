-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EnterpriseSearchPlanControlConfiguration
module Model/Private/Elasticsearch.Types.EnterpriseSearchPlanControlConfiguration where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.AllocatorMoveRequest
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.InstanceMoveRequest

-- | Defines the object schema located at @components.schemas.EnterpriseSearchPlanControlConfiguration@ in the specification.
-- 
-- 
data EnterpriseSearchPlanControlConfiguration = EnterpriseSearchPlanControlConfiguration {
  -- | calm_wait_time: This timeout determines how long to give a cluster after it responds to API calls before performing actual operations on it. It defaults to 5s
  enterpriseSearchPlanControlConfigurationCalmWaitTime :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | cluster_reboot: Set to \'forced\' to force a reboot as part of the upgrade plan
  , enterpriseSearchPlanControlConfigurationClusterReboot :: (GHC.Maybe.Maybe EnterpriseSearchPlanControlConfigurationClusterReboot)
  -- | extended_maintenance: If true (default false), does not clear the maintenance flag (which prevents its API from being accessed except by the constructor) on new instances added until after a snapshot has been restored, otherwise, the maintenance flag is cleared once the new instances successfully join the new cluster
  , enterpriseSearchPlanControlConfigurationExtendedMaintenance :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | move_allocators
  , enterpriseSearchPlanControlConfigurationMoveAllocators :: (GHC.Maybe.Maybe ([AllocatorMoveRequest]))
  -- | move_instances
  , enterpriseSearchPlanControlConfigurationMoveInstances :: (GHC.Maybe.Maybe ([InstanceMoveRequest]))
  -- | preferred_allocators: List of allocators on which instances are placed if possible (if not possible\/not specified then any available allocator with space is used)
  , enterpriseSearchPlanControlConfigurationPreferredAllocators :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | reallocate_instances: If true (default: false) does not allow re-using any existing instances currently in the cluster, i.e. even unchanged instances will be re-created
  , enterpriseSearchPlanControlConfigurationReallocateInstances :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | timeout: The total timeout in seconds after which the plan is cancelled even if it is not complete. Defaults to 4x the max memory capacity per node (in MB)
  , enterpriseSearchPlanControlConfigurationTimeout :: (GHC.Maybe.Maybe GHC.Int.Int64)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EnterpriseSearchPlanControlConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("move_allocators" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationMoveAllocators obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("move_instances" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationMoveInstances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_allocators" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationPreferredAllocators obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reallocate_instances" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationReallocateInstances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationTimeout obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("calm_wait_time" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationCalmWaitTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cluster_reboot" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationClusterReboot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("extended_maintenance" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationExtendedMaintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("move_allocators" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationMoveAllocators obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("move_instances" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationMoveInstances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_allocators" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationPreferredAllocators obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reallocate_instances" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationReallocateInstances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPlanControlConfigurationTimeout obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON EnterpriseSearchPlanControlConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EnterpriseSearchPlanControlConfiguration" (\obj -> (((((((GHC.Base.pure EnterpriseSearchPlanControlConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "calm_wait_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cluster_reboot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "extended_maintenance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "move_allocators")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "move_instances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_allocators")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reallocate_instances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timeout"))
-- | Create a new 'EnterpriseSearchPlanControlConfiguration' with all required fields.
mkEnterpriseSearchPlanControlConfiguration :: EnterpriseSearchPlanControlConfiguration
mkEnterpriseSearchPlanControlConfiguration = EnterpriseSearchPlanControlConfiguration{enterpriseSearchPlanControlConfigurationCalmWaitTime = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationClusterReboot = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationExtendedMaintenance = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationMoveAllocators = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationMoveInstances = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationPreferredAllocators = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationReallocateInstances = GHC.Maybe.Nothing,
                                                                                      enterpriseSearchPlanControlConfigurationTimeout = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.EnterpriseSearchPlanControlConfiguration.properties.cluster_reboot@ in the specification.
-- 
-- Set to \'forced\' to force a reboot as part of the upgrade plan
data EnterpriseSearchPlanControlConfigurationClusterReboot =
   EnterpriseSearchPlanControlConfigurationClusterRebootOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | EnterpriseSearchPlanControlConfigurationClusterRebootTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | EnterpriseSearchPlanControlConfigurationClusterRebootEnumForced -- ^ Represents the JSON value @"forced"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EnterpriseSearchPlanControlConfigurationClusterReboot
    where toJSON (EnterpriseSearchPlanControlConfigurationClusterRebootOther val) = val
          toJSON (EnterpriseSearchPlanControlConfigurationClusterRebootTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (EnterpriseSearchPlanControlConfigurationClusterRebootEnumForced) = "forced"
instance Data.Aeson.Types.FromJSON.FromJSON EnterpriseSearchPlanControlConfigurationClusterReboot
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "forced" -> EnterpriseSearchPlanControlConfigurationClusterRebootEnumForced
                                            | GHC.Base.otherwise -> EnterpriseSearchPlanControlConfigurationClusterRebootOther val)

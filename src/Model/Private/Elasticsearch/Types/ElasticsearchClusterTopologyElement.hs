-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchClusterTopologyElement
module Model/Private/Elasticsearch.Types.ElasticsearchClusterTopologyElement where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchConfiguration
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchNodeType
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.TopologyElementControl
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.TopologySize

-- | Defines the object schema located at @components.schemas.ElasticsearchClusterTopologyElement@ in the specification.
-- 
-- The topology of the Elasticsearch nodes, including the number, capacity, and type of nodes, and where they can be allocated.
data ElasticsearchClusterTopologyElement = ElasticsearchClusterTopologyElement {
  -- | autoscaling_max: Measured by the amount of a resource. The final cluster size is calculated using multipliers from the topology instance configuration.
  elasticsearchClusterTopologyElementAutoscalingMax :: (GHC.Maybe.Maybe TopologySize)
  -- | autoscaling_min: Measured by the amount of a resource. The final cluster size is calculated using multipliers from the topology instance configuration.
  , elasticsearchClusterTopologyElementAutoscalingMin :: (GHC.Maybe.Maybe TopologySize)
  -- | autoscaling_policy_override_json: An arbitrary JSON object overriding the default autoscaling policy. Don\'t set unless you really know what you are doing.
  , elasticsearchClusterTopologyElementAutoscalingPolicyOverrideJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | elasticsearch: The Elasticsearch cluster settings. When specified at the top level, provides a field-by-field default. When specified at the topology level, provides the override settings.
  , elasticsearchClusterTopologyElementElasticsearch :: (GHC.Maybe.Maybe ElasticsearchConfiguration)
  -- | id: Unique identifier of this topology element
  , elasticsearchClusterTopologyElementId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | instance_configuration_id: Controls the allocation of this topology element as well as allowed sizes and node_types. It needs to match the id of an existing instance configuration.
  , elasticsearchClusterTopologyElementInstanceConfigurationId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | node_roles: The list of node roles for this topology element (ES version >= 7.10). Allowable values are: master, ingest, ml, data_hot, data_content, data_warm, data_cold, data_frozen, remote_cluster_client, transform
  , elasticsearchClusterTopologyElementNodeRoles :: (GHC.Maybe.Maybe ([ElasticsearchClusterTopologyElementNodeRoles]))
  -- | node_type: Controls the combinations of Elasticsearch node types. TIP: By default, the Elasticsearch node is master eligible, can hold data, and run ingest pipelines. WARNING: Do not set for tiebreaker topologies.
  , elasticsearchClusterTopologyElementNodeType :: (GHC.Maybe.Maybe ElasticsearchNodeType)
  -- | size: Measured by the amount of a resource. The final cluster size is calculated using multipliers from the topology instance configuration.
  , elasticsearchClusterTopologyElementSize :: (GHC.Maybe.Maybe TopologySize)
  -- | topology_element_control: Controls for the topology element. Only used as part of the deployment template. Ignored if included as part of a deployment.
  , elasticsearchClusterTopologyElementTopologyElementControl :: (GHC.Maybe.Maybe TopologyElementControl)
  -- | zone_count: The default number of zones in which data nodes will be placed
  , elasticsearchClusterTopologyElementZoneCount :: (GHC.Maybe.Maybe GHC.Int.Int32)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchClusterTopologyElement
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_max" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingMax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_min" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingMin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_policy_override_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingPolicyOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementElasticsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instance_configuration_id" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementInstanceConfigurationId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_roles" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementNodeRoles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_type" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementNodeType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("topology_element_control" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementTopologyElementControl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("zone_count" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementZoneCount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_max" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingMax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_min" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingMin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("autoscaling_policy_override_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementAutoscalingPolicyOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementElasticsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instance_configuration_id" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementInstanceConfigurationId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_roles" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementNodeRoles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_type" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementNodeType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("topology_element_control" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementTopologyElementControl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("zone_count" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTopologyElementZoneCount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchClusterTopologyElement
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchClusterTopologyElement" (\obj -> ((((((((((GHC.Base.pure ElasticsearchClusterTopologyElement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "autoscaling_max")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "autoscaling_min")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "autoscaling_policy_override_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "elasticsearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instance_configuration_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "node_roles")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "node_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "topology_element_control")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "zone_count"))
-- | Create a new 'ElasticsearchClusterTopologyElement' with all required fields.
mkElasticsearchClusterTopologyElement :: ElasticsearchClusterTopologyElement
mkElasticsearchClusterTopologyElement = ElasticsearchClusterTopologyElement{elasticsearchClusterTopologyElementAutoscalingMax = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementAutoscalingMin = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementAutoscalingPolicyOverrideJson = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementElasticsearch = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementId = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementInstanceConfigurationId = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementNodeRoles = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementNodeType = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementSize = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementTopologyElementControl = GHC.Maybe.Nothing,
                                                                            elasticsearchClusterTopologyElementZoneCount = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.ElasticsearchClusterTopologyElement.properties.node_roles.items@ in the specification.
-- 
-- 
data ElasticsearchClusterTopologyElementNodeRoles =
   ElasticsearchClusterTopologyElementNodeRolesOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ElasticsearchClusterTopologyElementNodeRolesTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ElasticsearchClusterTopologyElementNodeRolesEnumMaster -- ^ Represents the JSON value @"master"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumIngest -- ^ Represents the JSON value @"ingest"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumMl -- ^ Represents the JSON value @"ml"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumDataHot -- ^ Represents the JSON value @"data_hot"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumDataContent -- ^ Represents the JSON value @"data_content"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumDataWarm -- ^ Represents the JSON value @"data_warm"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumDataCold -- ^ Represents the JSON value @"data_cold"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumDataFrozen -- ^ Represents the JSON value @"data_frozen"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumRemoteClusterClient -- ^ Represents the JSON value @"remote_cluster_client"@
  | ElasticsearchClusterTopologyElementNodeRolesEnumTransform -- ^ Represents the JSON value @"transform"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchClusterTopologyElementNodeRoles
    where toJSON (ElasticsearchClusterTopologyElementNodeRolesOther val) = val
          toJSON (ElasticsearchClusterTopologyElementNodeRolesTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumMaster) = "master"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumIngest) = "ingest"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumMl) = "ml"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumDataHot) = "data_hot"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumDataContent) = "data_content"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumDataWarm) = "data_warm"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumDataCold) = "data_cold"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumDataFrozen) = "data_frozen"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumRemoteClusterClient) = "remote_cluster_client"
          toJSON (ElasticsearchClusterTopologyElementNodeRolesEnumTransform) = "transform"
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchClusterTopologyElementNodeRoles
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "master" -> ElasticsearchClusterTopologyElementNodeRolesEnumMaster
                                            | val GHC.Classes.== "ingest" -> ElasticsearchClusterTopologyElementNodeRolesEnumIngest
                                            | val GHC.Classes.== "ml" -> ElasticsearchClusterTopologyElementNodeRolesEnumMl
                                            | val GHC.Classes.== "data_hot" -> ElasticsearchClusterTopologyElementNodeRolesEnumDataHot
                                            | val GHC.Classes.== "data_content" -> ElasticsearchClusterTopologyElementNodeRolesEnumDataContent
                                            | val GHC.Classes.== "data_warm" -> ElasticsearchClusterTopologyElementNodeRolesEnumDataWarm
                                            | val GHC.Classes.== "data_cold" -> ElasticsearchClusterTopologyElementNodeRolesEnumDataCold
                                            | val GHC.Classes.== "data_frozen" -> ElasticsearchClusterTopologyElementNodeRolesEnumDataFrozen
                                            | val GHC.Classes.== "remote_cluster_client" -> ElasticsearchClusterTopologyElementNodeRolesEnumRemoteClusterClient
                                            | val GHC.Classes.== "transform" -> ElasticsearchClusterTopologyElementNodeRolesEnumTransform
                                            | GHC.Base.otherwise -> ElasticsearchClusterTopologyElementNodeRolesOther val)
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ApmTopologyElement
module Model/Private/Elasticsearch.Types.ApmTopologyElement where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ApmConfiguration
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.TopologySize

-- | Defines the object schema located at @components.schemas.ApmTopologyElement@ in the specification.
-- 
-- Defines the topology of the APM Server nodes. For example, the number or capacity of the nodes, and where you can allocate the nodes.
data ApmTopologyElement = ApmTopologyElement {
  -- | apm: The configuration options for the APM Server.
  apmTopologyElementApm :: (GHC.Maybe.Maybe ApmConfiguration)
  -- | instance_configuration_id: Controls the allocation of this topology element as well as allowed sizes and node_types. It needs to match the id of an existing instance configuration.
  , apmTopologyElementInstanceConfigurationId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | size: Measured by the amount of a resource. The final cluster size is calculated using multipliers from the topology instance configuration.
  , apmTopologyElementSize :: (GHC.Maybe.Maybe TopologySize)
  -- | zone_count: number of zones in which nodes will be placed
  , apmTopologyElementZoneCount :: (GHC.Maybe.Maybe GHC.Int.Int32)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApmTopologyElement
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apm" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementApm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instance_configuration_id" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementInstanceConfigurationId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("zone_count" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementZoneCount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apm" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementApm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instance_configuration_id" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementInstanceConfigurationId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("zone_count" Data.Aeson.Types.ToJSON..=)) (apmTopologyElementZoneCount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ApmTopologyElement
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ApmTopologyElement" (\obj -> (((GHC.Base.pure ApmTopologyElement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "apm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instance_configuration_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "zone_count"))
-- | Create a new 'ApmTopologyElement' with all required fields.
mkApmTopologyElement :: ApmTopologyElement
mkApmTopologyElement = ApmTopologyElement{apmTopologyElementApm = GHC.Maybe.Nothing,
                                          apmTopologyElementInstanceConfigurationId = GHC.Maybe.Nothing,
                                          apmTopologyElementSize = GHC.Maybe.Nothing,
                                          apmTopologyElementZoneCount = GHC.Maybe.Nothing}

module Model/Private/Elasticsearch.Types.TopologySize where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data TopologySize
instance Show TopologySize
instance Eq TopologySize
instance FromJSON TopologySize
instance ToJSON TopologySize
data TopologySizeResource
instance Show TopologySizeResource
instance Eq TopologySizeResource
instance FromJSON TopologySizeResource
instance ToJSON TopologySizeResource

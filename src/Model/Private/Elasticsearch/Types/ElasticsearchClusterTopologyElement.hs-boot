module Model/Private/Elasticsearch.Types.ElasticsearchClusterTopologyElement where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchClusterTopologyElement
instance Show ElasticsearchClusterTopologyElement
instance Eq ElasticsearchClusterTopologyElement
instance FromJSON ElasticsearchClusterTopologyElement
instance ToJSON ElasticsearchClusterTopologyElement
data ElasticsearchClusterTopologyElementNodeRoles
instance Show ElasticsearchClusterTopologyElementNodeRoles
instance Eq ElasticsearchClusterTopologyElementNodeRoles
instance FromJSON ElasticsearchClusterTopologyElementNodeRoles
instance ToJSON ElasticsearchClusterTopologyElementNodeRoles

module Model/Private/Elasticsearch.Types.KibanaClusterTopologyElement where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaClusterTopologyElement
instance Show KibanaClusterTopologyElement
instance Eq KibanaClusterTopologyElement
instance FromJSON KibanaClusterTopologyElement
instance ToJSON KibanaClusterTopologyElement

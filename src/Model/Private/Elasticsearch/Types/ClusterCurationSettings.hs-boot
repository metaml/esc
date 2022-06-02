module Model/Private/Elasticsearch.Types.ClusterCurationSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ClusterCurationSettings
instance Show ClusterCurationSettings
instance Eq ClusterCurationSettings
instance FromJSON ClusterCurationSettings
instance ToJSON ClusterCurationSettings

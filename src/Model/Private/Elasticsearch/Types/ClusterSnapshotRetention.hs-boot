module Model/Private/Elasticsearch.Types.ClusterSnapshotRetention where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ClusterSnapshotRetention
instance Show ClusterSnapshotRetention
instance Eq ClusterSnapshotRetention
instance FromJSON ClusterSnapshotRetention
instance ToJSON ClusterSnapshotRetention

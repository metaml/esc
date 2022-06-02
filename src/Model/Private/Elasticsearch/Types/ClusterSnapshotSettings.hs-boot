module Model/Private/Elasticsearch.Types.ClusterSnapshotSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ClusterSnapshotSettings
instance Show ClusterSnapshotSettings
instance Eq ClusterSnapshotSettings
instance FromJSON ClusterSnapshotSettings
instance ToJSON ClusterSnapshotSettings

module Model/Private/Elasticsearch.Types.RestoreSnapshotApiConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data RestoreSnapshotApiConfiguration
instance Show RestoreSnapshotApiConfiguration
instance Eq RestoreSnapshotApiConfiguration
instance FromJSON RestoreSnapshotApiConfiguration
instance ToJSON RestoreSnapshotApiConfiguration
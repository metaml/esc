module Model/Private/Elasticsearch.Types.ClusterMetadataSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ClusterMetadataSettings
instance Show ClusterMetadataSettings
instance Eq ClusterMetadataSettings
instance FromJSON ClusterMetadataSettings
instance ToJSON ClusterMetadataSettings

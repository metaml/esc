module Model/Private/Elasticsearch.Types.ClusterCurationSpec where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ClusterCurationSpec
instance Show ClusterCurationSpec
instance Eq ClusterCurationSpec
instance FromJSON ClusterCurationSpec
instance ToJSON ClusterCurationSpec

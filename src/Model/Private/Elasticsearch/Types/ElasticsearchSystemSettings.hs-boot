module Model/Private/Elasticsearch.Types.ElasticsearchSystemSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchSystemSettings
instance Show ElasticsearchSystemSettings
instance Eq ElasticsearchSystemSettings
instance FromJSON ElasticsearchSystemSettings
instance ToJSON ElasticsearchSystemSettings

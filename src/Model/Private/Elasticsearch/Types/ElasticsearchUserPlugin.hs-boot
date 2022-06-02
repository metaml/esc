module Model/Private/Elasticsearch.Types.ElasticsearchUserPlugin where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchUserPlugin
instance Show ElasticsearchUserPlugin
instance Eq ElasticsearchUserPlugin
instance FromJSON ElasticsearchUserPlugin
instance ToJSON ElasticsearchUserPlugin

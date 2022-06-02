module Model/Private/Elasticsearch.Types.ElasticsearchUserBundle where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchUserBundle
instance Show ElasticsearchUserBundle
instance Eq ElasticsearchUserBundle
instance FromJSON ElasticsearchUserBundle
instance ToJSON ElasticsearchUserBundle

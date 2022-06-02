module Model/Private/Elasticsearch.Types.ElasticsearchNodeType where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchNodeType
instance Show ElasticsearchNodeType
instance Eq ElasticsearchNodeType
instance FromJSON ElasticsearchNodeType
instance ToJSON ElasticsearchNodeType

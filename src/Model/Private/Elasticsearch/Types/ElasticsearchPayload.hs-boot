module Model/Private/Elasticsearch.Types.ElasticsearchPayload where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchPayload
instance Show ElasticsearchPayload
instance Eq ElasticsearchPayload
instance FromJSON ElasticsearchPayload
instance ToJSON ElasticsearchPayload

module Model/Private/Elasticsearch.Types.ElasticsearchCuration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchCuration
instance Show ElasticsearchCuration
instance Eq ElasticsearchCuration
instance FromJSON ElasticsearchCuration
instance ToJSON ElasticsearchCuration

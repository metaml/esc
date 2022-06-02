module Model/Private/Elasticsearch.Types.BoolQuery where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data BoolQuery
instance Show BoolQuery
instance Eq BoolQuery
instance FromJSON BoolQuery
instance ToJSON BoolQuery

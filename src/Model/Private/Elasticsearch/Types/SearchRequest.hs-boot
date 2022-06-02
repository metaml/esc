module Model/Private/Elasticsearch.Types.SearchRequest where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data SearchRequest
instance Show SearchRequest
instance Eq SearchRequest
instance FromJSON SearchRequest
instance ToJSON SearchRequest

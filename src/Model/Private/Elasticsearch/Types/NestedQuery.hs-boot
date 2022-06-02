module Model/Private/Elasticsearch.Types.NestedQuery where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data NestedQuery
instance Show NestedQuery
instance Eq NestedQuery
instance FromJSON NestedQuery
instance ToJSON NestedQuery
data NestedQueryScoreMode
instance Show NestedQueryScoreMode
instance Eq NestedQueryScoreMode
instance FromJSON NestedQueryScoreMode
instance ToJSON NestedQueryScoreMode

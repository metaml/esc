module Model/Private/Elasticsearch.Types.ExistsQuery where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ExistsQuery
instance Show ExistsQuery
instance Eq ExistsQuery
instance FromJSON ExistsQuery
instance ToJSON ExistsQuery

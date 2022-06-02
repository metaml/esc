module Model/Private/Elasticsearch.Types.QueryStringQuery where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data QueryStringQuery
instance Show QueryStringQuery
instance Eq QueryStringQuery
instance FromJSON QueryStringQuery
instance ToJSON QueryStringQuery

module Model/Private/Elasticsearch.Types.QueryContainer where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data QueryContainer
instance Show QueryContainer
instance Eq QueryContainer
instance FromJSON QueryContainer
instance ToJSON QueryContainer

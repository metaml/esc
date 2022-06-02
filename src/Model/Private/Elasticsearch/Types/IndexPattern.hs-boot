module Model/Private/Elasticsearch.Types.IndexPattern where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data IndexPattern
instance Show IndexPattern
instance Eq IndexPattern
instance FromJSON IndexPattern
instance ToJSON IndexPattern

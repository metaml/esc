module Model/Private/Elasticsearch.Types.MetadataItem where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data MetadataItem
instance Show MetadataItem
instance Eq MetadataItem
instance FromJSON MetadataItem
instance ToJSON MetadataItem

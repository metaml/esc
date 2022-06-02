module Model/Private/Elasticsearch.Types.FilterAssociation where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data FilterAssociation
instance Show FilterAssociation
instance Eq FilterAssociation
instance FromJSON FilterAssociation
instance ToJSON FilterAssociation

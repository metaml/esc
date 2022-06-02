module Model/Private/Elasticsearch.Types.KeystoreContents where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KeystoreContents
instance Show KeystoreContents
instance Eq KeystoreContents
instance FromJSON KeystoreContents
instance ToJSON KeystoreContents

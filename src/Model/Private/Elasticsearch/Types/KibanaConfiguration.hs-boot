module Model/Private/Elasticsearch.Types.KibanaConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaConfiguration
instance Show KibanaConfiguration
instance Eq KibanaConfiguration
instance FromJSON KibanaConfiguration
instance ToJSON KibanaConfiguration

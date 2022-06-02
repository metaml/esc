module Model/Private/Elasticsearch.Types.KibanaSystemSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaSystemSettings
instance Show KibanaSystemSettings
instance Eq KibanaSystemSettings
instance FromJSON KibanaSystemSettings
instance ToJSON KibanaSystemSettings

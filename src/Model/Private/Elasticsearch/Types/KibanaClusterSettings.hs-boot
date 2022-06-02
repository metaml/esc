module Model/Private/Elasticsearch.Types.KibanaClusterSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaClusterSettings
instance Show KibanaClusterSettings
instance Eq KibanaClusterSettings
instance FromJSON KibanaClusterSettings
instance ToJSON KibanaClusterSettings

module Model/Private/Elasticsearch.Types.KibanaPayload where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaPayload
instance Show KibanaPayload
instance Eq KibanaPayload
instance FromJSON KibanaPayload
instance ToJSON KibanaPayload

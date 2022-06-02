module Model/Private/Elasticsearch.Types.ApmPayload where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmPayload
instance Show ApmPayload
instance Eq ApmPayload
instance FromJSON ApmPayload
instance ToJSON ApmPayload

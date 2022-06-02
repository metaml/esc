module Model/Private/Elasticsearch.Types.ApmSystemSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmSystemSettings
instance Show ApmSystemSettings
instance Eq ApmSystemSettings
instance FromJSON ApmSystemSettings
instance ToJSON ApmSystemSettings

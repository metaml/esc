module Model/Private/Elasticsearch.Types.ApmConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmConfiguration
instance Show ApmConfiguration
instance Eq ApmConfiguration
instance FromJSON ApmConfiguration
instance ToJSON ApmConfiguration

module Model/Private/Elasticsearch.Types.ApmSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmSettings
instance Show ApmSettings
instance Eq ApmSettings
instance FromJSON ApmSettings
instance ToJSON ApmSettings

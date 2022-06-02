module Model/Private/Elasticsearch.Types.ApmTopologyElement where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmTopologyElement
instance Show ApmTopologyElement
instance Eq ApmTopologyElement
instance FromJSON ApmTopologyElement
instance ToJSON ApmTopologyElement

module Model/Private/Elasticsearch.Types.ApmPlan where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ApmPlan
instance Show ApmPlan
instance Eq ApmPlan
instance FromJSON ApmPlan
instance ToJSON ApmPlan

module Model/Private/Elasticsearch.Types.IntegrationsServerPlan where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data IntegrationsServerPlan
instance Show IntegrationsServerPlan
instance Eq IntegrationsServerPlan
instance FromJSON IntegrationsServerPlan
instance ToJSON IntegrationsServerPlan

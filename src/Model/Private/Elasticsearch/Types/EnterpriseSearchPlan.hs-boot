module Model/Private/Elasticsearch.Types.EnterpriseSearchPlan where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data EnterpriseSearchPlan
instance Show EnterpriseSearchPlan
instance Eq EnterpriseSearchPlan
instance FromJSON EnterpriseSearchPlan
instance ToJSON EnterpriseSearchPlan

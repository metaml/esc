module Model/Private/Elasticsearch.Types.EnterpriseSearchSystemSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data EnterpriseSearchSystemSettings
instance Show EnterpriseSearchSystemSettings
instance Eq EnterpriseSearchSystemSettings
instance FromJSON EnterpriseSearchSystemSettings
instance ToJSON EnterpriseSearchSystemSettings
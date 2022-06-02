module Model/Private/Elasticsearch.Types.EnterpriseSearchPayload where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data EnterpriseSearchPayload
instance Show EnterpriseSearchPayload
instance Eq EnterpriseSearchPayload
instance FromJSON EnterpriseSearchPayload
instance ToJSON EnterpriseSearchPayload

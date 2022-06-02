module Model/Private/Elasticsearch.Types.EnterpriseSearchConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data EnterpriseSearchConfiguration
instance Show EnterpriseSearchConfiguration
instance Eq EnterpriseSearchConfiguration
instance FromJSON EnterpriseSearchConfiguration
instance ToJSON EnterpriseSearchConfiguration

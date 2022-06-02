module Model/Private/Elasticsearch.Types.OrganizationRequest where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data OrganizationRequest
instance Show OrganizationRequest
instance Eq OrganizationRequest
instance FromJSON OrganizationRequest
instance ToJSON OrganizationRequest

module Model/Private/Elasticsearch.Types.DeploymentCreateResources where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data DeploymentCreateResources
instance Show DeploymentCreateResources
instance Eq DeploymentCreateResources
instance FromJSON DeploymentCreateResources
instance ToJSON DeploymentCreateResources

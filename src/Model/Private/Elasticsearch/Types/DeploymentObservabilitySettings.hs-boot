module Model/Private/Elasticsearch.Types.DeploymentObservabilitySettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data DeploymentObservabilitySettings
instance Show DeploymentObservabilitySettings
instance Eq DeploymentObservabilitySettings
instance FromJSON DeploymentObservabilitySettings
instance ToJSON DeploymentObservabilitySettings

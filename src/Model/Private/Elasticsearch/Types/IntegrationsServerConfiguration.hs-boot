module Model/Private/Elasticsearch.Types.IntegrationsServerConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data IntegrationsServerConfiguration
instance Show IntegrationsServerConfiguration
instance Eq IntegrationsServerConfiguration
instance FromJSON IntegrationsServerConfiguration
instance ToJSON IntegrationsServerConfiguration
data IntegrationsServerConfigurationMode
instance Show IntegrationsServerConfigurationMode
instance Eq IntegrationsServerConfigurationMode
instance FromJSON IntegrationsServerConfigurationMode
instance ToJSON IntegrationsServerConfigurationMode

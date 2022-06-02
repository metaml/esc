module Model/Private/Elasticsearch.Types.IntegrationsServerSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data IntegrationsServerSettings
instance Show IntegrationsServerSettings
instance Eq IntegrationsServerSettings
instance FromJSON IntegrationsServerSettings
instance ToJSON IntegrationsServerSettings
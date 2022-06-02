module Model/Private/Elasticsearch.Types.AppSearchSystemSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchSystemSettings
instance Show AppSearchSystemSettings
instance Eq AppSearchSystemSettings
instance FromJSON AppSearchSystemSettings
instance ToJSON AppSearchSystemSettings

module Model/Private/Elasticsearch.Types.AppSearchSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchSettings
instance Show AppSearchSettings
instance Eq AppSearchSettings
instance FromJSON AppSearchSettings
instance ToJSON AppSearchSettings

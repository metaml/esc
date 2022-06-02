module Model/Private/Elasticsearch.Types.AppSearchConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchConfiguration
instance Show AppSearchConfiguration
instance Eq AppSearchConfiguration
instance FromJSON AppSearchConfiguration
instance ToJSON AppSearchConfiguration

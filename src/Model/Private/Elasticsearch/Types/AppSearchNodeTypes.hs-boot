module Model/Private/Elasticsearch.Types.AppSearchNodeTypes where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchNodeTypes
instance Show AppSearchNodeTypes
instance Eq AppSearchNodeTypes
instance FromJSON AppSearchNodeTypes
instance ToJSON AppSearchNodeTypes

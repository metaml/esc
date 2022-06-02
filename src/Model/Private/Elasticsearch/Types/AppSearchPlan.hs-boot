module Model/Private/Elasticsearch.Types.AppSearchPlan where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchPlan
instance Show AppSearchPlan
instance Eq AppSearchPlan
instance FromJSON AppSearchPlan
instance ToJSON AppSearchPlan

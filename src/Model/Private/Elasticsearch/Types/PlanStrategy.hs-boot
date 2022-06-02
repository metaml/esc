module Model/Private/Elasticsearch.Types.PlanStrategy where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data PlanStrategy
instance Show PlanStrategy
instance Eq PlanStrategy
instance FromJSON PlanStrategy
instance ToJSON PlanStrategy

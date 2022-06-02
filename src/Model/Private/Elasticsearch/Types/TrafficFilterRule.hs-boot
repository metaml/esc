module Model/Private/Elasticsearch.Types.TrafficFilterRule where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data TrafficFilterRule
instance Show TrafficFilterRule
instance Eq TrafficFilterRule
instance FromJSON TrafficFilterRule
instance ToJSON TrafficFilterRule

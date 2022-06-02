module Model/Private/Elasticsearch.Types.KibanaClusterPlan where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data KibanaClusterPlan
instance Show KibanaClusterPlan
instance Eq KibanaClusterPlan
instance FromJSON KibanaClusterPlan
instance ToJSON KibanaClusterPlan

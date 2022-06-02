module Model/Private/Elasticsearch.Types.RemoteResourceInfo where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data RemoteResourceInfo
instance Show RemoteResourceInfo
instance Eq RemoteResourceInfo
instance FromJSON RemoteResourceInfo
instance ToJSON RemoteResourceInfo

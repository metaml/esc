module Model/Private/Elasticsearch.Types.RemoteResourceRef where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data RemoteResourceRef
instance Show RemoteResourceRef
instance Eq RemoteResourceRef
instance FromJSON RemoteResourceRef
instance ToJSON RemoteResourceRef

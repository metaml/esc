module Model/Private/Elasticsearch.Types.ReadOnlyRequest where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ReadOnlyRequest
instance Show ReadOnlyRequest
instance Eq ReadOnlyRequest
instance FromJSON ReadOnlyRequest
instance ToJSON ReadOnlyRequest

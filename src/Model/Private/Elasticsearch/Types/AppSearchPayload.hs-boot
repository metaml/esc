module Model/Private/Elasticsearch.Types.AppSearchPayload where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AppSearchPayload
instance Show AppSearchPayload
instance Eq AppSearchPayload
instance FromJSON AppSearchPayload
instance ToJSON AppSearchPayload

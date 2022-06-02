module Model/Private/Elasticsearch.Types.AbsoluteRefId where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data AbsoluteRefId
instance Show AbsoluteRefId
instance Eq AbsoluteRefId
instance FromJSON AbsoluteRefId
instance ToJSON AbsoluteRefId

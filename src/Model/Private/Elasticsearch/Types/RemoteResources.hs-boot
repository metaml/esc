module Model/Private/Elasticsearch.Types.RemoteResources where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data RemoteResources
instance Show RemoteResources
instance Eq RemoteResources
instance FromJSON RemoteResources
instance ToJSON RemoteResources

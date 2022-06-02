module Model/Private/Elasticsearch.Types.ElasticsearchScriptingUserSettings where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data ElasticsearchScriptingUserSettings
instance Show ElasticsearchScriptingUserSettings
instance Eq ElasticsearchScriptingUserSettings
instance FromJSON ElasticsearchScriptingUserSettings
instance ToJSON ElasticsearchScriptingUserSettings

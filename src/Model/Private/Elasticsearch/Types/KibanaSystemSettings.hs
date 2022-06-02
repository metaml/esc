-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema KibanaSystemSettings
module Model/Private/Elasticsearch.Types.KibanaSystemSettings where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Model/Private/Elasticsearch.Common
import Model/Private/Elasticsearch.TypeAlias

-- | Defines the object schema located at @components.schemas.KibanaSystemSettings@ in the specification.
-- 
-- A subset of Kibana settings. TIP: To define the complete set of Elasticsearch settings, use \`KibanaSystemSettings\` with \`user_settings_override_\` and \`user_settings_\`.
data KibanaSystemSettings = KibanaSystemSettings {
  -- | elasticsearch_password: Optionally override the account within Elasticsearch - defaults to a system account that always exists (if specified, the username must also be specified). Note that this field is never returned from the API, it is write only.
  kibanaSystemSettingsElasticsearchPassword :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | elasticsearch_url: Optionally override the URL to which to send data (for advanced users only, if unspecified the system selects an internal URL)
  , kibanaSystemSettingsElasticsearchUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | elasticsearch_username: Optionally override the account within Elasticsearch - defaults to a system account that always exists (if specified, the password must also be specified). Note that this field is never returned from the API, it is write only.
  , kibanaSystemSettingsElasticsearchUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON KibanaSystemSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_password" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_url" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_username" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchUsername obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_password" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_url" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch_username" Data.Aeson.Types.ToJSON..=)) (kibanaSystemSettingsElasticsearchUsername obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON KibanaSystemSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "KibanaSystemSettings" (\obj -> ((GHC.Base.pure KibanaSystemSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "elasticsearch_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "elasticsearch_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "elasticsearch_username"))
-- | Create a new 'KibanaSystemSettings' with all required fields.
mkKibanaSystemSettings :: KibanaSystemSettings
mkKibanaSystemSettings = KibanaSystemSettings{kibanaSystemSettingsElasticsearchPassword = GHC.Maybe.Nothing,
                                              kibanaSystemSettingsElasticsearchUrl = GHC.Maybe.Nothing,
                                              kibanaSystemSettingsElasticsearchUsername = GHC.Maybe.Nothing}

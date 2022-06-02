-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ApmConfiguration
module Model/Private/Elasticsearch.Types.ApmConfiguration where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ApmSystemSettings

-- | Defines the object schema located at @components.schemas.ApmConfiguration@ in the specification.
-- 
-- The configuration options for the APM Server.
data ApmConfiguration = ApmConfiguration {
  -- | docker_image: A docker URI that allows overriding of the default docker image specified for this version
  apmConfigurationDockerImage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | system_settings: A structure that defines a curated subset of the APM Server settings. 
  -- TIP: To define the complete set of APM Server setting, use \`ApmSystemSettings\` with \`user_settings_override_\` and \`user_settings_\`.
  , apmConfigurationSystemSettings :: (GHC.Maybe.Maybe ApmSystemSettings)
  -- | user_settings_json: An arbitrary JSON object allowing (non-admin) cluster owners to set their parameters (only one of this and \'user_settings_yaml\' is allowed), provided the parameters are on the allowlist and not on the denylist. (This field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Apm settings)
  , apmConfigurationUserSettingsJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_json: An arbitrary JSON object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_yaml\' is allowed), ie in addition to the documented \'system_settings\'. (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Apm settings)
  , apmConfigurationUserSettingsOverrideJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_yaml: An arbitrary YAML object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_json\' is allowed), ie in addition to the documented \'system_settings\'. (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Apm settings)
  , apmConfigurationUserSettingsOverrideYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_settings_yaml: An arbitrary YAML object allowing (non-admin) cluster owners to set their parameters (only one of this and \'user_settings_json\' is allowed), provided the parameters are on the allowlist and not on the denylist. (These field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Apm settings)
  , apmConfigurationUserSettingsYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version: The version of the Apm cluster (must be one of the ECE supported versions, and won\'t work unless it matches the APM version. Leave blank to auto-detect version.)
  , apmConfigurationVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApmConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (apmConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (apmConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (apmConfigurationVersion obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (apmConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (apmConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (apmConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (apmConfigurationVersion obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ApmConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ApmConfiguration" (\obj -> ((((((GHC.Base.pure ApmConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "docker_image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "system_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "version"))
-- | Create a new 'ApmConfiguration' with all required fields.
mkApmConfiguration :: ApmConfiguration
mkApmConfiguration = ApmConfiguration{apmConfigurationDockerImage = GHC.Maybe.Nothing,
                                      apmConfigurationSystemSettings = GHC.Maybe.Nothing,
                                      apmConfigurationUserSettingsJson = GHC.Maybe.Nothing,
                                      apmConfigurationUserSettingsOverrideJson = GHC.Maybe.Nothing,
                                      apmConfigurationUserSettingsOverrideYaml = GHC.Maybe.Nothing,
                                      apmConfigurationUserSettingsYaml = GHC.Maybe.Nothing,
                                      apmConfigurationVersion = GHC.Maybe.Nothing}
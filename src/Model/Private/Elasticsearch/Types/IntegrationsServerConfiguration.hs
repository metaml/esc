-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IntegrationsServerConfiguration
module Model/Private/Elasticsearch.Types.IntegrationsServerConfiguration where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.IntegrationsServerSystemSettings

-- | Defines the object schema located at @components.schemas.IntegrationsServerConfiguration@ in the specification.
-- 
-- The configuration options for the Integrations Server.
data IntegrationsServerConfiguration = IntegrationsServerConfiguration {
  -- | docker_image: A docker URI that allows overriding of the default docker image specified for this version
  integrationsServerConfigurationDockerImage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mode: The mode the Integrations Server is operating in.
  , integrationsServerConfigurationMode :: (GHC.Maybe.Maybe IntegrationsServerConfigurationMode)
  -- | system_settings: A structure that defines a curated subset of the Integrations Server settings. 
  -- TIP: To define the complete set of Integrations Server setting, use \`IntegrationsSystemSettings\` with \`user_settings_override_\` and \`user_settings_\`.
  , integrationsServerConfigurationSystemSettings :: (GHC.Maybe.Maybe IntegrationsServerSystemSettings)
  -- | user_settings_json: An arbitrary JSON object allowing (non-admin) cluster owners to set their parameters (only one of this and \'user_settings_yaml\' is allowed), provided the parameters are on the allowlist and not on the denylist. (This field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Integrations Server settings)
  , integrationsServerConfigurationUserSettingsJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_json: An arbitrary JSON object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_yaml\' is allowed), ie in addition to the documented \'system_settings\'. (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Integrations Server settings)
  , integrationsServerConfigurationUserSettingsOverrideJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_yaml: An arbitrary YAML object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_json\' is allowed), ie in addition to the documented \'system_settings\'. (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Integrations Server settings)
  , integrationsServerConfigurationUserSettingsOverrideYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_settings_yaml: An arbitrary YAML object allowing (non-admin) cluster owners to set their parameters (only one of this and \'user_settings_json\' is allowed), provided the parameters are on the allowlist and not on the denylist. (These field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Integrations Server settings)
  , integrationsServerConfigurationUserSettingsYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version: The version of the Integrations Server cluster (must be one of the ECE supported versions, and won\'t work unless it matches the Integrations Server version. Leave blank to auto-detect version.)
  , integrationsServerConfigurationVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IntegrationsServerConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mode" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationVersion obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mode" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (integrationsServerConfigurationVersion obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON IntegrationsServerConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IntegrationsServerConfiguration" (\obj -> (((((((GHC.Base.pure IntegrationsServerConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "docker_image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "system_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "version"))
-- | Create a new 'IntegrationsServerConfiguration' with all required fields.
mkIntegrationsServerConfiguration :: IntegrationsServerConfiguration
mkIntegrationsServerConfiguration = IntegrationsServerConfiguration{integrationsServerConfigurationDockerImage = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationMode = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationSystemSettings = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationUserSettingsJson = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationUserSettingsOverrideJson = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationUserSettingsOverrideYaml = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationUserSettingsYaml = GHC.Maybe.Nothing,
                                                                    integrationsServerConfigurationVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.IntegrationsServerConfiguration.properties.mode@ in the specification.
-- 
-- The mode the Integrations Server is operating in.
data IntegrationsServerConfigurationMode =
   IntegrationsServerConfigurationModeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IntegrationsServerConfigurationModeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IntegrationsServerConfigurationModeEnumStandalone -- ^ Represents the JSON value @"standalone"@
  | IntegrationsServerConfigurationModeEnumManaged -- ^ Represents the JSON value @"managed"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IntegrationsServerConfigurationMode
    where toJSON (IntegrationsServerConfigurationModeOther val) = val
          toJSON (IntegrationsServerConfigurationModeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (IntegrationsServerConfigurationModeEnumStandalone) = "standalone"
          toJSON (IntegrationsServerConfigurationModeEnumManaged) = "managed"
instance Data.Aeson.Types.FromJSON.FromJSON IntegrationsServerConfigurationMode
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "standalone" -> IntegrationsServerConfigurationModeEnumStandalone
                                            | val GHC.Classes.== "managed" -> IntegrationsServerConfigurationModeEnumManaged
                                            | GHC.Base.otherwise -> IntegrationsServerConfigurationModeOther val)

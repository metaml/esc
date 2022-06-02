-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchConfiguration
module Model/Private/Elasticsearch.Types.ElasticsearchConfiguration where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchCuration
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchSystemSettings
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchUserBundle
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchUserPlugin

-- | Defines the object schema located at @components.schemas.ElasticsearchConfiguration@ in the specification.
-- 
-- The Elasticsearch cluster settings. When specified at the top level, provides a field-by-field default. When specified at the topology level, provides the override settings.
data ElasticsearchConfiguration = ElasticsearchConfiguration {
  -- | curation: The structure that defines the routing settings for index curation.
  elasticsearchConfigurationCuration :: (GHC.Maybe.Maybe ElasticsearchCuration)
  -- | docker_image: A docker URI that allows overriding of the default docker image specified for this version
  , elasticsearchConfigurationDockerImage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | enabled_built_in_plugins: A list of plugin names from the Elastic-supported subset that are bundled with the version images. NOTES: (Users should consult the Elastic stack objects to see what plugins are available, this is currently only available from the UI)
  , elasticsearchConfigurationEnabledBuiltInPlugins :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | node_attributes: Defines the Elasticsearch node attributes for the instances in the topology
  , elasticsearchConfigurationNodeAttributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | system_settings: A subset of Elasticsearch settings. TIP: To define the complete set of Elasticsearch settings, use \`ElasticsearchSystemSettings\` with \`user_settings_override*\` and \`user_settings*\`.
  , elasticsearchConfigurationSystemSettings :: (GHC.Maybe.Maybe ElasticsearchSystemSettings)
  -- | user_bundles: A list of admin-uploaded bundle objects (eg scripts, synonym files) that are available for this user.
  , elasticsearchConfigurationUserBundles :: (GHC.Maybe.Maybe ([ElasticsearchUserBundle]))
  -- | user_plugins: A list of admin-uploaded plugin objects that are available for this user.
  , elasticsearchConfigurationUserPlugins :: (GHC.Maybe.Maybe ([ElasticsearchUserPlugin]))
  -- | user_settings_json: An arbitrary JSON object allowing cluster owners to set their parameters (only one of this and \'user_settings_yaml\' is allowed), provided the parameters arey are on the allowlist and not on the denylist. NOTES: (This field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Elasticsearch settings)
  , elasticsearchConfigurationUserSettingsJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_json: An arbitrary JSON object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_yaml\' is allowed), ie in addition to the documented \'system_settings\'. NOTES: (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Elasticsearch settings)
  , elasticsearchConfigurationUserSettingsOverrideJson :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | user_settings_override_yaml: An arbitrary YAML object allowing ECE admins owners to set clusters\' parameters (only one of this and \'user_settings_override_json\' is allowed), ie in addition to the documented \'system_settings\'. NOTES: (This field together with \'system_settings\' and \'user_settings*\' defines the total set of Elasticsearch settings)
  , elasticsearchConfigurationUserSettingsOverrideYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_settings_yaml: An arbitrary YAML object allowing cluster owners to set their parameters (only one of this and \'user_settings_json\' is allowed), provided the parameters arey are on the allowlist and not on the denylist. NOTES: (This field together with \'user_settings_override*\' and \'system_settings\' defines the total set of Elasticsearch settings)
  , elasticsearchConfigurationUserSettingsYaml :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version: The version of the Elasticsearch cluster (must be one of the ECE supported versions). Currently cannot be different across the topology (and is generally specified in the globals). Defaults to the latest version if not specified.
  , elasticsearchConfigurationVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("curation" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationCuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled_built_in_plugins" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationEnabledBuiltInPlugins obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_attributes" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationNodeAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_bundles" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserBundles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_plugins" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserPlugins obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationVersion obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("curation" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationCuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("docker_image" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationDockerImage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled_built_in_plugins" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationEnabledBuiltInPlugins obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("node_attributes" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationNodeAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_settings" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationSystemSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_bundles" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserBundles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_plugins" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserPlugins obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_json" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsOverrideJson obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_override_yaml" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsOverrideYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_settings_yaml" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationUserSettingsYaml obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (elasticsearchConfigurationVersion obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchConfiguration" (\obj -> (((((((((((GHC.Base.pure ElasticsearchConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "curation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "docker_image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled_built_in_plugins")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "node_attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "system_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_bundles")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_plugins")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_json")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_override_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_settings_yaml")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "version"))
-- | Create a new 'ElasticsearchConfiguration' with all required fields.
mkElasticsearchConfiguration :: ElasticsearchConfiguration
mkElasticsearchConfiguration = ElasticsearchConfiguration{elasticsearchConfigurationCuration = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationDockerImage = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationEnabledBuiltInPlugins = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationNodeAttributes = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationSystemSettings = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserBundles = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserPlugins = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserSettingsJson = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserSettingsOverrideJson = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserSettingsOverrideYaml = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationUserSettingsYaml = GHC.Maybe.Nothing,
                                                          elasticsearchConfigurationVersion = GHC.Maybe.Nothing}
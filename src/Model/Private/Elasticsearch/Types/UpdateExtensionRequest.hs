-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema UpdateExtensionRequest
module Model/Private/Elasticsearch.Types.UpdateExtensionRequest where

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

-- | Defines the object schema located at @components.schemas.UpdateExtensionRequest@ in the specification.
-- 
-- The body of a request to update an extension
data UpdateExtensionRequest = UpdateExtensionRequest {
  -- | description: The extension description.
  updateExtensionRequestDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | download_url: The URL to download the extension archive.
  , updateExtensionRequestDownloadUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | extension_type: The extension type.
  , updateExtensionRequestExtensionType :: UpdateExtensionRequestExtensionType
  -- | name: The extension name.
  , updateExtensionRequestName :: Data.Text.Internal.Text
  -- | version: The Elasticsearch version.
  , updateExtensionRequestVersion :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateExtensionRequest
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (updateExtensionRequestDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("download_url" Data.Aeson.Types.ToJSON..=)) (updateExtensionRequestDownloadUrl obj) : ["extension_type" Data.Aeson.Types.ToJSON..= updateExtensionRequestExtensionType obj] : ["name" Data.Aeson.Types.ToJSON..= updateExtensionRequestName obj] : ["version" Data.Aeson.Types.ToJSON..= updateExtensionRequestVersion obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (updateExtensionRequestDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("download_url" Data.Aeson.Types.ToJSON..=)) (updateExtensionRequestDownloadUrl obj) : ["extension_type" Data.Aeson.Types.ToJSON..= updateExtensionRequestExtensionType obj] : ["name" Data.Aeson.Types.ToJSON..= updateExtensionRequestName obj] : ["version" Data.Aeson.Types.ToJSON..= updateExtensionRequestVersion obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateExtensionRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateExtensionRequest" (\obj -> ((((GHC.Base.pure UpdateExtensionRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "download_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "extension_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "version"))
-- | Create a new 'UpdateExtensionRequest' with all required fields.
mkUpdateExtensionRequest :: UpdateExtensionRequestExtensionType -- ^ 'updateExtensionRequestExtensionType'
  -> Data.Text.Internal.Text -- ^ 'updateExtensionRequestName'
  -> Data.Text.Internal.Text -- ^ 'updateExtensionRequestVersion'
  -> UpdateExtensionRequest
mkUpdateExtensionRequest updateExtensionRequestExtensionType updateExtensionRequestName updateExtensionRequestVersion = UpdateExtensionRequest{updateExtensionRequestDescription = GHC.Maybe.Nothing,
                                                                                                                                               updateExtensionRequestDownloadUrl = GHC.Maybe.Nothing,
                                                                                                                                               updateExtensionRequestExtensionType = updateExtensionRequestExtensionType,
                                                                                                                                               updateExtensionRequestName = updateExtensionRequestName,
                                                                                                                                               updateExtensionRequestVersion = updateExtensionRequestVersion}
-- | Defines the enum schema located at @components.schemas.UpdateExtensionRequest.properties.extension_type@ in the specification.
-- 
-- The extension type.
data UpdateExtensionRequestExtensionType =
   UpdateExtensionRequestExtensionTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | UpdateExtensionRequestExtensionTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | UpdateExtensionRequestExtensionTypeEnumPlugin -- ^ Represents the JSON value @"plugin"@
  | UpdateExtensionRequestExtensionTypeEnumBundle -- ^ Represents the JSON value @"bundle"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateExtensionRequestExtensionType
    where toJSON (UpdateExtensionRequestExtensionTypeOther val) = val
          toJSON (UpdateExtensionRequestExtensionTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (UpdateExtensionRequestExtensionTypeEnumPlugin) = "plugin"
          toJSON (UpdateExtensionRequestExtensionTypeEnumBundle) = "bundle"
instance Data.Aeson.Types.FromJSON.FromJSON UpdateExtensionRequestExtensionType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "plugin" -> UpdateExtensionRequestExtensionTypeEnumPlugin
                                            | val GHC.Classes.== "bundle" -> UpdateExtensionRequestExtensionTypeEnumBundle
                                            | GHC.Base.otherwise -> UpdateExtensionRequestExtensionTypeOther val)

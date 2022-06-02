-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AppSearchSettings
module Model/Private/Elasticsearch.Types.AppSearchSettings where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ClusterMetadataSettings

-- | Defines the object schema located at @components.schemas.AppSearchSettings@ in the specification.
-- 
-- The settings for the App Search.
data AppSearchSettings = AppSearchSettings {
  -- | metadata: The top-level configuration settings for the Elasticsearch cluster.
  appSearchSettingsMetadata :: (GHC.Maybe.Maybe ClusterMetadataSettings)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AppSearchSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (appSearchSettingsMetadata obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (appSearchSettingsMetadata obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AppSearchSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppSearchSettings" (\obj -> GHC.Base.pure AppSearchSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))
-- | Create a new 'AppSearchSettings' with all required fields.
mkAppSearchSettings :: AppSearchSettings
mkAppSearchSettings = AppSearchSettings{appSearchSettingsMetadata = GHC.Maybe.Nothing}
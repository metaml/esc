-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RestoreSnapshotRepoConfiguration
module Model/Private/Elasticsearch.Types.RestoreSnapshotRepoConfiguration where

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

-- | Defines the object schema located at @components.schemas.RestoreSnapshotRepoConfiguration@ in the specification.
-- 
-- Configures the location of a remote repository. The default is the system repository.
data RestoreSnapshotRepoConfiguration = RestoreSnapshotRepoConfiguration {
  -- | raw_settings: The remote snapshot settings raw JSON - see the Elasticsearch \'_snapshot\' documentation for more details on supported formats
  restoreSnapshotRepoConfigurationRawSettings :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RestoreSnapshotRepoConfiguration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("raw_settings" Data.Aeson.Types.ToJSON..=)) (restoreSnapshotRepoConfigurationRawSettings obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("raw_settings" Data.Aeson.Types.ToJSON..=)) (restoreSnapshotRepoConfigurationRawSettings obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON RestoreSnapshotRepoConfiguration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RestoreSnapshotRepoConfiguration" (\obj -> GHC.Base.pure RestoreSnapshotRepoConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "raw_settings"))
-- | Create a new 'RestoreSnapshotRepoConfiguration' with all required fields.
mkRestoreSnapshotRepoConfiguration :: RestoreSnapshotRepoConfiguration
mkRestoreSnapshotRepoConfiguration = RestoreSnapshotRepoConfiguration{restoreSnapshotRepoConfigurationRawSettings = GHC.Maybe.Nothing}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ClusterSnapshotSettings
module Model/Private/Elasticsearch.Types.ClusterSnapshotSettings where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ClusterSnapshotRetention

-- | Defines the object schema located at @components.schemas.ClusterSnapshotSettings@ in the specification.
-- 
-- The snapshot configuration settings for an Elasticsearch cluster.
data ClusterSnapshotSettings = ClusterSnapshotSettings {
  -- | cron_expression: Cron expression indicating when should snapshots be taken. This can be enabled only if SLM is enabled for the deployment and \'interval\' is not present
  clusterSnapshotSettingsCronExpression :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | interval: Interval between snapshots, with the format \'length unit\' (space is optional), where unit can be one of: d (day), h (hour), min (minute). Default is 30 minutes
  , clusterSnapshotSettingsInterval :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | retention: Information about the Elasticsearch cluster snapshot retention.
  , clusterSnapshotSettingsRetention :: (GHC.Maybe.Maybe ClusterSnapshotRetention)
  -- | slm: When set to true, the deployment will have SLM enabled. Default value is true.
  , clusterSnapshotSettingsSlm :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ClusterSnapshotSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cron_expression" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsCronExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("retention" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("slm" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsSlm obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cron_expression" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsCronExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("retention" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("slm" Data.Aeson.Types.ToJSON..=)) (clusterSnapshotSettingsSlm obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ClusterSnapshotSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ClusterSnapshotSettings" (\obj -> (((GHC.Base.pure ClusterSnapshotSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cron_expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "retention")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "slm"))
-- | Create a new 'ClusterSnapshotSettings' with all required fields.
mkClusterSnapshotSettings :: ClusterSnapshotSettings
mkClusterSnapshotSettings = ClusterSnapshotSettings{clusterSnapshotSettingsCronExpression = GHC.Maybe.Nothing,
                                                    clusterSnapshotSettingsInterval = GHC.Maybe.Nothing,
                                                    clusterSnapshotSettingsRetention = GHC.Maybe.Nothing,
                                                    clusterSnapshotSettingsSlm = GHC.Maybe.Nothing}
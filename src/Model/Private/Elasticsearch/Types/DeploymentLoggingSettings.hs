-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeploymentLoggingSettings
module Model/Private/Elasticsearch.Types.DeploymentLoggingSettings where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.AbsoluteRefId

-- | Defines the object schema located at @components.schemas.DeploymentLoggingSettings@ in the specification.
-- 
-- The logging settings for a deployment
data DeploymentLoggingSettings = DeploymentLoggingSettings {
  -- | destination: A reference to a specific resource of a deployment
  deploymentLoggingSettingsDestination :: AbsoluteRefId
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeploymentLoggingSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["destination" Data.Aeson.Types.ToJSON..= deploymentLoggingSettingsDestination obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["destination" Data.Aeson.Types.ToJSON..= deploymentLoggingSettingsDestination obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeploymentLoggingSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeploymentLoggingSettings" (\obj -> GHC.Base.pure DeploymentLoggingSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
-- | Create a new 'DeploymentLoggingSettings' with all required fields.
mkDeploymentLoggingSettings :: AbsoluteRefId -- ^ 'deploymentLoggingSettingsDestination'
  -> DeploymentLoggingSettings
mkDeploymentLoggingSettings deploymentLoggingSettingsDestination = DeploymentLoggingSettings{deploymentLoggingSettingsDestination = deploymentLoggingSettingsDestination}
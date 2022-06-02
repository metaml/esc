-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeploymentUpdateRequest
module Model/Private/Elasticsearch.Types.DeploymentUpdateRequest where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.DeploymentUpdateMetadata
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.DeploymentUpdateResources
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.DeploymentUpdateSettings

-- | Defines the object schema located at @components.schemas.DeploymentUpdateRequest@ in the specification.
-- 
-- A request for updating a Deployment consisting of multiple resources
data DeploymentUpdateRequest = DeploymentUpdateRequest {
  -- | alias: A user-defined alias to use in place of Cluster IDs for user-friendly URLs
  deploymentUpdateRequestAlias :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Additional information about the current deployment object.
  , deploymentUpdateRequestMetadata :: (GHC.Maybe.Maybe DeploymentUpdateMetadata)
  -- | name: A new name for the deployment, otherwise stays the same.
  , deploymentUpdateRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | prune_orphans: Whether or not to prune orphan resources that are no longer mentioned in this request. Note that resourcesare tracked by ref_id, and if a resource\'s ref_id is changed, any previous running resources created with that previousref_id are considered to be orphaned as well.
  , deploymentUpdateRequestPruneOrphans :: GHC.Types.Bool
  -- | resources: Describes the Deployment resource updates
  , deploymentUpdateRequestResources :: (GHC.Maybe.Maybe DeploymentUpdateResources)
  -- | settings: Additional configuration for the new deployment object.
  , deploymentUpdateRequestSettings :: (GHC.Maybe.Maybe DeploymentUpdateSettings)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeploymentUpdateRequest
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alias" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestAlias obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestName obj) : ["prune_orphans" Data.Aeson.Types.ToJSON..= deploymentUpdateRequestPruneOrphans obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resources" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestResources obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestSettings obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alias" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestAlias obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestName obj) : ["prune_orphans" Data.Aeson.Types.ToJSON..= deploymentUpdateRequestPruneOrphans obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resources" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestResources obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateRequestSettings obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeploymentUpdateRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeploymentUpdateRequest" (\obj -> (((((GHC.Base.pure DeploymentUpdateRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prune_orphans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "settings"))
-- | Create a new 'DeploymentUpdateRequest' with all required fields.
mkDeploymentUpdateRequest :: GHC.Types.Bool -- ^ 'deploymentUpdateRequestPruneOrphans'
  -> DeploymentUpdateRequest
mkDeploymentUpdateRequest deploymentUpdateRequestPruneOrphans = DeploymentUpdateRequest{deploymentUpdateRequestAlias = GHC.Maybe.Nothing,
                                                                                        deploymentUpdateRequestMetadata = GHC.Maybe.Nothing,
                                                                                        deploymentUpdateRequestName = GHC.Maybe.Nothing,
                                                                                        deploymentUpdateRequestPruneOrphans = deploymentUpdateRequestPruneOrphans,
                                                                                        deploymentUpdateRequestResources = GHC.Maybe.Nothing,
                                                                                        deploymentUpdateRequestSettings = GHC.Maybe.Nothing}

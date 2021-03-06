-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IntegrationsServerPayload
module Model/Private/Elasticsearch.Types.IntegrationsServerPayload where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.IntegrationsServerPlan
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.IntegrationsServerSettings

-- | Defines the object schema located at @components.schemas.IntegrationsServerPayload@ in the specification.
-- 
-- An Integrations Server creation request paired with the alias of the Elasticsearch cluster it should be paired with
data IntegrationsServerPayload = IntegrationsServerPayload {
  -- | display_name: The human readable name for the Integrations Server cluster (default: takes the name of its Elasticsearch cluster)
  integrationsServerPayloadDisplayName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | elasticsearch_cluster_ref_id: Alias to the Elasticsearch Cluster to attach the Integrations Server to
  , integrationsServerPayloadElasticsearchClusterRefId :: Data.Text.Internal.Text
  -- | plan: The plan for the Integrations Server.
  , integrationsServerPayloadPlan :: IntegrationsServerPlan
  -- | ref_id: A locally-unique user-specified id for the Integrations Server
  , integrationsServerPayloadRefId :: Data.Text.Internal.Text
  -- | region: The region where this resource exists
  , integrationsServerPayloadRegion :: Data.Text.Internal.Text
  -- | settings: The settings for the Integrations Server.
  , integrationsServerPayloadSettings :: (GHC.Maybe.Maybe IntegrationsServerSettings)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IntegrationsServerPayload
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (integrationsServerPayloadDisplayName obj) : ["elasticsearch_cluster_ref_id" Data.Aeson.Types.ToJSON..= integrationsServerPayloadElasticsearchClusterRefId obj] : ["plan" Data.Aeson.Types.ToJSON..= integrationsServerPayloadPlan obj] : ["ref_id" Data.Aeson.Types.ToJSON..= integrationsServerPayloadRefId obj] : ["region" Data.Aeson.Types.ToJSON..= integrationsServerPayloadRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (integrationsServerPayloadSettings obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (integrationsServerPayloadDisplayName obj) : ["elasticsearch_cluster_ref_id" Data.Aeson.Types.ToJSON..= integrationsServerPayloadElasticsearchClusterRefId obj] : ["plan" Data.Aeson.Types.ToJSON..= integrationsServerPayloadPlan obj] : ["ref_id" Data.Aeson.Types.ToJSON..= integrationsServerPayloadRefId obj] : ["region" Data.Aeson.Types.ToJSON..= integrationsServerPayloadRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (integrationsServerPayloadSettings obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON IntegrationsServerPayload
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IntegrationsServerPayload" (\obj -> (((((GHC.Base.pure IntegrationsServerPayload GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "elasticsearch_cluster_ref_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ref_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "settings"))
-- | Create a new 'IntegrationsServerPayload' with all required fields.
mkIntegrationsServerPayload :: Data.Text.Internal.Text -- ^ 'integrationsServerPayloadElasticsearchClusterRefId'
  -> IntegrationsServerPlan -- ^ 'integrationsServerPayloadPlan'
  -> Data.Text.Internal.Text -- ^ 'integrationsServerPayloadRefId'
  -> Data.Text.Internal.Text -- ^ 'integrationsServerPayloadRegion'
  -> IntegrationsServerPayload
mkIntegrationsServerPayload integrationsServerPayloadElasticsearchClusterRefId integrationsServerPayloadPlan integrationsServerPayloadRefId integrationsServerPayloadRegion = IntegrationsServerPayload{integrationsServerPayloadDisplayName = GHC.Maybe.Nothing,
                                                                                                                                                                                                        integrationsServerPayloadElasticsearchClusterRefId = integrationsServerPayloadElasticsearchClusterRefId,
                                                                                                                                                                                                        integrationsServerPayloadPlan = integrationsServerPayloadPlan,
                                                                                                                                                                                                        integrationsServerPayloadRefId = integrationsServerPayloadRefId,
                                                                                                                                                                                                        integrationsServerPayloadRegion = integrationsServerPayloadRegion,
                                                                                                                                                                                                        integrationsServerPayloadSettings = GHC.Maybe.Nothing}

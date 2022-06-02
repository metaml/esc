-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EnterpriseSearchPayload
module Model/Private/Elasticsearch.Types.EnterpriseSearchPayload where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.EnterpriseSearchPlan
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.EnterpriseSearchSettings

-- | Defines the object schema located at @components.schemas.EnterpriseSearchPayload@ in the specification.
-- 
-- An Enterprise Search creation request paired with the alias of the Elasticsearch cluster it should be paired with
data EnterpriseSearchPayload = EnterpriseSearchPayload {
  -- | display_name: The human readable name for the Enterprise Search cluster (default: takes the name of its Elasticsearch cluster)
  enterpriseSearchPayloadDisplayName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | elasticsearch_cluster_ref_id: Alias to the Elasticsearch Cluster to attach Enterprise Search to
  , enterpriseSearchPayloadElasticsearchClusterRefId :: Data.Text.Internal.Text
  -- | plan: The plan for the Enterprise Search cluster.
  , enterpriseSearchPayloadPlan :: EnterpriseSearchPlan
  -- | ref_id: A locally-unique user-specified id for Enterprise Search
  , enterpriseSearchPayloadRefId :: Data.Text.Internal.Text
  -- | region: The region where this resource exists
  , enterpriseSearchPayloadRegion :: Data.Text.Internal.Text
  -- | settings: The settings for the Enterprise Search.
  , enterpriseSearchPayloadSettings :: (GHC.Maybe.Maybe EnterpriseSearchSettings)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EnterpriseSearchPayload
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPayloadDisplayName obj) : ["elasticsearch_cluster_ref_id" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadElasticsearchClusterRefId obj] : ["plan" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadPlan obj] : ["ref_id" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadRefId obj] : ["region" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPayloadSettings obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPayloadDisplayName obj) : ["elasticsearch_cluster_ref_id" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadElasticsearchClusterRefId obj] : ["plan" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadPlan obj] : ["ref_id" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadRefId obj] : ["region" Data.Aeson.Types.ToJSON..= enterpriseSearchPayloadRegion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (enterpriseSearchPayloadSettings obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON EnterpriseSearchPayload
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EnterpriseSearchPayload" (\obj -> (((((GHC.Base.pure EnterpriseSearchPayload GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "elasticsearch_cluster_ref_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ref_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "settings"))
-- | Create a new 'EnterpriseSearchPayload' with all required fields.
mkEnterpriseSearchPayload :: Data.Text.Internal.Text -- ^ 'enterpriseSearchPayloadElasticsearchClusterRefId'
  -> EnterpriseSearchPlan -- ^ 'enterpriseSearchPayloadPlan'
  -> Data.Text.Internal.Text -- ^ 'enterpriseSearchPayloadRefId'
  -> Data.Text.Internal.Text -- ^ 'enterpriseSearchPayloadRegion'
  -> EnterpriseSearchPayload
mkEnterpriseSearchPayload enterpriseSearchPayloadElasticsearchClusterRefId enterpriseSearchPayloadPlan enterpriseSearchPayloadRefId enterpriseSearchPayloadRegion = EnterpriseSearchPayload{enterpriseSearchPayloadDisplayName = GHC.Maybe.Nothing,
                                                                                                                                                                                            enterpriseSearchPayloadElasticsearchClusterRefId = enterpriseSearchPayloadElasticsearchClusterRefId,
                                                                                                                                                                                            enterpriseSearchPayloadPlan = enterpriseSearchPayloadPlan,
                                                                                                                                                                                            enterpriseSearchPayloadRefId = enterpriseSearchPayloadRefId,
                                                                                                                                                                                            enterpriseSearchPayloadRegion = enterpriseSearchPayloadRegion,
                                                                                                                                                                                            enterpriseSearchPayloadSettings = GHC.Maybe.Nothing}
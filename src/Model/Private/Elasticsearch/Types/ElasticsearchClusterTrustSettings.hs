-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchClusterTrustSettings
module Model/Private/Elasticsearch.Types.ElasticsearchClusterTrustSettings where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.AccountTrustRelationship
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.DirectTrustRelationship
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ExternalTrustRelationship

-- | Defines the object schema located at @components.schemas.ElasticsearchClusterTrustSettings@ in the specification.
-- 
-- Configuration of trust with other clusters.
data ElasticsearchClusterTrustSettings = ElasticsearchClusterTrustSettings {
  -- | accounts: The list of trust relationships with different accounts
  elasticsearchClusterTrustSettingsAccounts :: (GHC.Maybe.Maybe ([AccountTrustRelationship]))
  -- | direct: The list of trust relationships where the certificate is bundled with the trust setting. Allows configuring trust for clusters running outside of an Elastic Cloud managed environment or in an Elastic Cloud environment without an environment level trust established.
  , elasticsearchClusterTrustSettingsDirect :: (GHC.Maybe.Maybe ([DirectTrustRelationship]))
  -- | external: The list of trust relationships with external entities
  , elasticsearchClusterTrustSettingsExternal :: (GHC.Maybe.Maybe ([ExternalTrustRelationship]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchClusterTrustSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounts" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsAccounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("direct" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsDirect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsExternal obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounts" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsAccounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("direct" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsDirect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external" Data.Aeson.Types.ToJSON..=)) (elasticsearchClusterTrustSettingsExternal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchClusterTrustSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchClusterTrustSettings" (\obj -> ((GHC.Base.pure ElasticsearchClusterTrustSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "accounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "direct")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "external"))
-- | Create a new 'ElasticsearchClusterTrustSettings' with all required fields.
mkElasticsearchClusterTrustSettings :: ElasticsearchClusterTrustSettings
mkElasticsearchClusterTrustSettings = ElasticsearchClusterTrustSettings{elasticsearchClusterTrustSettingsAccounts = GHC.Maybe.Nothing,
                                                                        elasticsearchClusterTrustSettingsDirect = GHC.Maybe.Nothing,
                                                                        elasticsearchClusterTrustSettingsExternal = GHC.Maybe.Nothing}

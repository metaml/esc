-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeploymentUpdateResources
module Model/Private/Elasticsearch.Types.DeploymentUpdateResources where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ApmPayload
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.AppSearchPayload
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ElasticsearchPayload
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.EnterpriseSearchPayload
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.IntegrationsServerPayload
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.KibanaPayload

-- | Defines the object schema located at @components.schemas.DeploymentUpdateResources@ in the specification.
-- 
-- Describes the Deployment resource updates
data DeploymentUpdateResources = DeploymentUpdateResources {
  -- | apm: A list of payloads for APM updates
  deploymentUpdateResourcesApm :: (GHC.Maybe.Maybe ([ApmPayload]))
  -- | appsearch: A list of payloads for AppSearch updates. AppSearch has been replaced by Enterprise Search in the Elastic Stack 7.7 and higher
  , deploymentUpdateResourcesAppsearch :: (GHC.Maybe.Maybe ([AppSearchPayload]))
  -- | elasticsearch: A list of payloads for Elasticsearch cluster updates
  , deploymentUpdateResourcesElasticsearch :: (GHC.Maybe.Maybe ([ElasticsearchPayload]))
  -- | enterprise_search: A list of payloads for Enterprise Search updates
  , deploymentUpdateResourcesEnterpriseSearch :: (GHC.Maybe.Maybe ([EnterpriseSearchPayload]))
  -- | integrations_server: A list of payloads for Integrations Server updates
  , deploymentUpdateResourcesIntegrationsServer :: (GHC.Maybe.Maybe ([IntegrationsServerPayload]))
  -- | kibana: A list of payloads for Kibana updates
  , deploymentUpdateResourcesKibana :: (GHC.Maybe.Maybe ([KibanaPayload]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeploymentUpdateResources
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apm" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesApm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("appsearch" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesAppsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesElasticsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enterprise_search" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesEnterpriseSearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("integrations_server" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesIntegrationsServer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kibana" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesKibana obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apm" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesApm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("appsearch" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesAppsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("elasticsearch" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesElasticsearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enterprise_search" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesEnterpriseSearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("integrations_server" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesIntegrationsServer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kibana" Data.Aeson.Types.ToJSON..=)) (deploymentUpdateResourcesKibana obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeploymentUpdateResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeploymentUpdateResources" (\obj -> (((((GHC.Base.pure DeploymentUpdateResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "apm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "appsearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "elasticsearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enterprise_search")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "integrations_server")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "kibana"))
-- | Create a new 'DeploymentUpdateResources' with all required fields.
mkDeploymentUpdateResources :: DeploymentUpdateResources
mkDeploymentUpdateResources = DeploymentUpdateResources{deploymentUpdateResourcesApm = GHC.Maybe.Nothing,
                                                        deploymentUpdateResourcesAppsearch = GHC.Maybe.Nothing,
                                                        deploymentUpdateResourcesElasticsearch = GHC.Maybe.Nothing,
                                                        deploymentUpdateResourcesEnterpriseSearch = GHC.Maybe.Nothing,
                                                        deploymentUpdateResourcesIntegrationsServer = GHC.Maybe.Nothing,
                                                        deploymentUpdateResourcesKibana = GHC.Maybe.Nothing}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchCuration
module Model/Private/Elasticsearch.Types.ElasticsearchCuration where

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

-- | Defines the object schema located at @components.schemas.ElasticsearchCuration@ in the specification.
-- 
-- The structure that defines the routing settings for index curation.
data ElasticsearchCuration = ElasticsearchCuration {
  -- | from_instance_configuration_id: The source instance configuration
  elasticsearchCurationFromInstanceConfigurationId :: Data.Text.Internal.Text
  -- | to_instance_configuration_id: The destination instance configuration
  , elasticsearchCurationToInstanceConfigurationId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchCuration
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["from_instance_configuration_id" Data.Aeson.Types.ToJSON..= elasticsearchCurationFromInstanceConfigurationId obj] : ["to_instance_configuration_id" Data.Aeson.Types.ToJSON..= elasticsearchCurationToInstanceConfigurationId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["from_instance_configuration_id" Data.Aeson.Types.ToJSON..= elasticsearchCurationFromInstanceConfigurationId obj] : ["to_instance_configuration_id" Data.Aeson.Types.ToJSON..= elasticsearchCurationToInstanceConfigurationId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchCuration
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchCuration" (\obj -> (GHC.Base.pure ElasticsearchCuration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "from_instance_configuration_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "to_instance_configuration_id"))
-- | Create a new 'ElasticsearchCuration' with all required fields.
mkElasticsearchCuration :: Data.Text.Internal.Text -- ^ 'elasticsearchCurationFromInstanceConfigurationId'
  -> Data.Text.Internal.Text -- ^ 'elasticsearchCurationToInstanceConfigurationId'
  -> ElasticsearchCuration
mkElasticsearchCuration elasticsearchCurationFromInstanceConfigurationId elasticsearchCurationToInstanceConfigurationId = ElasticsearchCuration{elasticsearchCurationFromInstanceConfigurationId = elasticsearchCurationFromInstanceConfigurationId,
                                                                                                                                                elasticsearchCurationToInstanceConfigurationId = elasticsearchCurationToInstanceConfigurationId}

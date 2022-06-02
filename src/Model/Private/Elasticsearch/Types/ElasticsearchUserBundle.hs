-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ElasticsearchUserBundle
module Model/Private/Elasticsearch.Types.ElasticsearchUserBundle where

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

-- | Defines the object schema located at @components.schemas.ElasticsearchUserBundle@ in the specification.
-- 
-- A list of admin-uploaded bundle objects, such as scripts and synonym files.
data ElasticsearchUserBundle = ElasticsearchUserBundle {
  -- | elasticsearch_version: The supported Elasticsearch version (must match the version in the plan)
  elasticsearchUserBundleElasticsearchVersion :: Data.Text.Internal.Text
  -- | name: The name of the bundle
  , elasticsearchUserBundleName :: Data.Text.Internal.Text
  -- | url: The URL of the bundle, which must be accessible from the ECE infrastructure. This URL could be cached by platform, make sure to change it when updating the bundle
  , elasticsearchUserBundleUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ElasticsearchUserBundle
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["elasticsearch_version" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleElasticsearchVersion obj] : ["name" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleName obj] : ["url" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleUrl obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["elasticsearch_version" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleElasticsearchVersion obj] : ["name" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleName obj] : ["url" Data.Aeson.Types.ToJSON..= elasticsearchUserBundleUrl obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ElasticsearchUserBundle
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElasticsearchUserBundle" (\obj -> ((GHC.Base.pure ElasticsearchUserBundle GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "elasticsearch_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'ElasticsearchUserBundle' with all required fields.
mkElasticsearchUserBundle :: Data.Text.Internal.Text -- ^ 'elasticsearchUserBundleElasticsearchVersion'
  -> Data.Text.Internal.Text -- ^ 'elasticsearchUserBundleName'
  -> Data.Text.Internal.Text -- ^ 'elasticsearchUserBundleUrl'
  -> ElasticsearchUserBundle
mkElasticsearchUserBundle elasticsearchUserBundleElasticsearchVersion elasticsearchUserBundleName elasticsearchUserBundleUrl = ElasticsearchUserBundle{elasticsearchUserBundleElasticsearchVersion = elasticsearchUserBundleElasticsearchVersion,
                                                                                                                                                       elasticsearchUserBundleName = elasticsearchUserBundleName,
                                                                                                                                                       elasticsearchUserBundleUrl = elasticsearchUserBundleUrl}

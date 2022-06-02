-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QueryContainer
module Model/Private/Elasticsearch.Types.QueryContainer where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.BoolQuery
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.ExistsQuery
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.NestedQuery
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.QueryStringQuery

-- | Defines the object schema located at @components.schemas.QueryContainer@ in the specification.
-- 
-- The container for all of the allowed Elasticsearch queries. Specify only one property each time.
data QueryContainer = QueryContainer {
  -- | bool: A query for documents that match boolean combinations of other queries.
  queryContainerBool :: (GHC.Maybe.Maybe BoolQuery)
  -- | exists: Matches documents that have at least one non-\`null\` value in the original field.
  , queryContainerExists :: (GHC.Maybe.Maybe ExistsQuery)
  -- | match
  , queryContainerMatch :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | match_all: A query that matches all documents.
  , queryContainerMatchAll :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | match_none: A query that doesn\'t match any documents.
  , queryContainerMatchNone :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | nested: A query that matches nested objects.
  , queryContainerNested :: (GHC.Maybe.Maybe NestedQuery)
  -- | prefix
  , queryContainerPrefix :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | query_string: A query that uses the \`SimpleQueryParser\` for parsing.
  , queryContainerQueryString :: (GHC.Maybe.Maybe QueryStringQuery)
  -- | range
  , queryContainerRange :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | term
  , queryContainerTerm :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QueryContainer
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bool" Data.Aeson.Types.ToJSON..=)) (queryContainerBool obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exists" Data.Aeson.Types.ToJSON..=)) (queryContainerExists obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match" Data.Aeson.Types.ToJSON..=)) (queryContainerMatch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match_all" Data.Aeson.Types.ToJSON..=)) (queryContainerMatchAll obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match_none" Data.Aeson.Types.ToJSON..=)) (queryContainerMatchNone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nested" Data.Aeson.Types.ToJSON..=)) (queryContainerNested obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prefix" Data.Aeson.Types.ToJSON..=)) (queryContainerPrefix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("query_string" Data.Aeson.Types.ToJSON..=)) (queryContainerQueryString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("range" Data.Aeson.Types.ToJSON..=)) (queryContainerRange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("term" Data.Aeson.Types.ToJSON..=)) (queryContainerTerm obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bool" Data.Aeson.Types.ToJSON..=)) (queryContainerBool obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exists" Data.Aeson.Types.ToJSON..=)) (queryContainerExists obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match" Data.Aeson.Types.ToJSON..=)) (queryContainerMatch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match_all" Data.Aeson.Types.ToJSON..=)) (queryContainerMatchAll obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("match_none" Data.Aeson.Types.ToJSON..=)) (queryContainerMatchNone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nested" Data.Aeson.Types.ToJSON..=)) (queryContainerNested obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prefix" Data.Aeson.Types.ToJSON..=)) (queryContainerPrefix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("query_string" Data.Aeson.Types.ToJSON..=)) (queryContainerQueryString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("range" Data.Aeson.Types.ToJSON..=)) (queryContainerRange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("term" Data.Aeson.Types.ToJSON..=)) (queryContainerTerm obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON QueryContainer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "QueryContainer" (\obj -> (((((((((GHC.Base.pure QueryContainer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bool")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exists")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "match")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "match_all")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "match_none")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "nested")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "query_string")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "range")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "term"))
-- | Create a new 'QueryContainer' with all required fields.
mkQueryContainer :: QueryContainer
mkQueryContainer = QueryContainer{queryContainerBool = GHC.Maybe.Nothing,
                                  queryContainerExists = GHC.Maybe.Nothing,
                                  queryContainerMatch = GHC.Maybe.Nothing,
                                  queryContainerMatchAll = GHC.Maybe.Nothing,
                                  queryContainerMatchNone = GHC.Maybe.Nothing,
                                  queryContainerNested = GHC.Maybe.Nothing,
                                  queryContainerPrefix = GHC.Maybe.Nothing,
                                  queryContainerQueryString = GHC.Maybe.Nothing,
                                  queryContainerRange = GHC.Maybe.Nothing,
                                  queryContainerTerm = GHC.Maybe.Nothing}
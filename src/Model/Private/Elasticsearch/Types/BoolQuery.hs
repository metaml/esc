-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BoolQuery
module Model/Private/Elasticsearch.Types.BoolQuery where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.QueryContainer

-- | Defines the object schema located at @components.schemas.BoolQuery@ in the specification.
-- 
-- A query for documents that match boolean combinations of other queries.
data BoolQuery = BoolQuery {
  -- | filter
  boolQueryFilter :: (GHC.Maybe.Maybe ([QueryContainer]))
  -- | minimum_should_match: The minimum number of optional should clauses to match.
  , boolQueryMinimumShouldMatch :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | must
  , boolQueryMust :: (GHC.Maybe.Maybe ([QueryContainer]))
  -- | must_not
  , boolQueryMustNot :: (GHC.Maybe.Maybe ([QueryContainer]))
  -- | should
  , boolQueryShould :: (GHC.Maybe.Maybe ([QueryContainer]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BoolQuery
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filter" Data.Aeson.Types.ToJSON..=)) (boolQueryFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_should_match" Data.Aeson.Types.ToJSON..=)) (boolQueryMinimumShouldMatch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("must" Data.Aeson.Types.ToJSON..=)) (boolQueryMust obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("must_not" Data.Aeson.Types.ToJSON..=)) (boolQueryMustNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("should" Data.Aeson.Types.ToJSON..=)) (boolQueryShould obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filter" Data.Aeson.Types.ToJSON..=)) (boolQueryFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_should_match" Data.Aeson.Types.ToJSON..=)) (boolQueryMinimumShouldMatch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("must" Data.Aeson.Types.ToJSON..=)) (boolQueryMust obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("must_not" Data.Aeson.Types.ToJSON..=)) (boolQueryMustNot obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("should" Data.Aeson.Types.ToJSON..=)) (boolQueryShould obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BoolQuery
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BoolQuery" (\obj -> ((((GHC.Base.pure BoolQuery GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum_should_match")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "must")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "must_not")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "should"))
-- | Create a new 'BoolQuery' with all required fields.
mkBoolQuery :: BoolQuery
mkBoolQuery = BoolQuery{boolQueryFilter = GHC.Maybe.Nothing,
                        boolQueryMinimumShouldMatch = GHC.Maybe.Nothing,
                        boolQueryMust = GHC.Maybe.Nothing,
                        boolQueryMustNot = GHC.Maybe.Nothing,
                        boolQueryShould = GHC.Maybe.Nothing}
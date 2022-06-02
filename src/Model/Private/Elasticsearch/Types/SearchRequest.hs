-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SearchRequest
module Model/Private/Elasticsearch.Types.SearchRequest where

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

-- | Defines the object schema located at @components.schemas.SearchRequest@ in the specification.
-- 
-- An Elasticsearch search request with a subset of options.
data SearchRequest = SearchRequest {
  -- | from
  searchRequestFrom :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | query: The container for all of the allowed Elasticsearch queries. Specify only one property each time.
  , searchRequestQuery :: (GHC.Maybe.Maybe QueryContainer)
  -- | size: The maximum number of search results to return.
  , searchRequestSize :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | sort: An array of fields to sort the search results by.
  , searchRequestSort :: (GHC.Maybe.Maybe ([Data.Aeson.Types.Internal.Object]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SearchRequest
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("from" Data.Aeson.Types.ToJSON..=)) (searchRequestFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("query" Data.Aeson.Types.ToJSON..=)) (searchRequestQuery obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (searchRequestSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sort" Data.Aeson.Types.ToJSON..=)) (searchRequestSort obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("from" Data.Aeson.Types.ToJSON..=)) (searchRequestFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("query" Data.Aeson.Types.ToJSON..=)) (searchRequestQuery obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (searchRequestSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sort" Data.Aeson.Types.ToJSON..=)) (searchRequestSort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SearchRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SearchRequest" (\obj -> (((GHC.Base.pure SearchRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "query")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sort"))
-- | Create a new 'SearchRequest' with all required fields.
mkSearchRequest :: SearchRequest
mkSearchRequest = SearchRequest{searchRequestFrom = GHC.Maybe.Nothing,
                                searchRequestQuery = GHC.Maybe.Nothing,
                                searchRequestSize = GHC.Maybe.Nothing,
                                searchRequestSort = GHC.Maybe.Nothing}
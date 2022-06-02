-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ExistsQuery
module Model/Private/Elasticsearch.Types.ExistsQuery where

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

-- | Defines the object schema located at @components.schemas.ExistsQuery@ in the specification.
-- 
-- Matches documents that have at least one non-\`null\` value in the original field.
data ExistsQuery = ExistsQuery {
  -- | field: The field to check for non-null values in.
  existsQueryField :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ExistsQuery
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["field" Data.Aeson.Types.ToJSON..= existsQueryField obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["field" Data.Aeson.Types.ToJSON..= existsQueryField obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExistsQuery
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExistsQuery" (\obj -> GHC.Base.pure ExistsQuery GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "field"))
-- | Create a new 'ExistsQuery' with all required fields.
mkExistsQuery :: Data.Text.Internal.Text -- ^ 'existsQueryField'
  -> ExistsQuery
mkExistsQuery existsQueryField = ExistsQuery{existsQueryField = existsQueryField}
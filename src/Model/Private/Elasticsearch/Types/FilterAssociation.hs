-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FilterAssociation
module Model/Private/Elasticsearch.Types.FilterAssociation where

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

-- | Defines the object schema located at @components.schemas.FilterAssociation@ in the specification.
-- 
-- The association with a ruleset or user auth token for a deployment, template, or product.
data FilterAssociation = FilterAssociation {
  -- | entity_type: Type of the traffic filter ruleset association, such as \'deployment\', \'cluster\'
  filterAssociationEntityType :: Data.Text.Internal.Text
  -- | id: ID of the entity, such as the deployment ID or Elasticsearch cluster ID.
  , filterAssociationId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FilterAssociation
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["entity_type" Data.Aeson.Types.ToJSON..= filterAssociationEntityType obj] : ["id" Data.Aeson.Types.ToJSON..= filterAssociationId obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["entity_type" Data.Aeson.Types.ToJSON..= filterAssociationEntityType obj] : ["id" Data.Aeson.Types.ToJSON..= filterAssociationId obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON FilterAssociation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FilterAssociation" (\obj -> (GHC.Base.pure FilterAssociation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entity_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))
-- | Create a new 'FilterAssociation' with all required fields.
mkFilterAssociation :: Data.Text.Internal.Text -- ^ 'filterAssociationEntityType'
  -> Data.Text.Internal.Text -- ^ 'filterAssociationId'
  -> FilterAssociation
mkFilterAssociation filterAssociationEntityType filterAssociationId = FilterAssociation{filterAssociationEntityType = filterAssociationEntityType,
                                                                                        filterAssociationId = filterAssociationId}

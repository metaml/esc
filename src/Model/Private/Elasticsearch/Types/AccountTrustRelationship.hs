-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountTrustRelationship
module Model/Private/Elasticsearch.Types.AccountTrustRelationship where

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

-- | Defines the object schema located at @components.schemas.AccountTrustRelationship@ in the specification.
-- 
-- The trust relationship with the clusters of one account.
data AccountTrustRelationship = AccountTrustRelationship {
  -- | account_id: the ID of the Account
  accountTrustRelationshipAccountId :: Data.Text.Internal.Text
  -- | trust_all: If true, all clusters in this account will by default be trusted and the \`trust_allowlist\` is ignored.
  , accountTrustRelationshipTrustAll :: GHC.Types.Bool
  -- | trust_allowlist: The list of clusters to trust. Only used when \`trust_all\` is false.
  , accountTrustRelationshipTrustAllowlist :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountTrustRelationship
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account_id" Data.Aeson.Types.ToJSON..= accountTrustRelationshipAccountId obj] : ["trust_all" Data.Aeson.Types.ToJSON..= accountTrustRelationshipTrustAll obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trust_allowlist" Data.Aeson.Types.ToJSON..=)) (accountTrustRelationshipTrustAllowlist obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account_id" Data.Aeson.Types.ToJSON..= accountTrustRelationshipAccountId obj] : ["trust_all" Data.Aeson.Types.ToJSON..= accountTrustRelationshipTrustAll obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trust_allowlist" Data.Aeson.Types.ToJSON..=)) (accountTrustRelationshipTrustAllowlist obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountTrustRelationship
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountTrustRelationship" (\obj -> ((GHC.Base.pure AccountTrustRelationship GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "trust_all")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trust_allowlist"))
-- | Create a new 'AccountTrustRelationship' with all required fields.
mkAccountTrustRelationship :: Data.Text.Internal.Text -- ^ 'accountTrustRelationshipAccountId'
  -> GHC.Types.Bool -- ^ 'accountTrustRelationshipTrustAll'
  -> AccountTrustRelationship
mkAccountTrustRelationship accountTrustRelationshipAccountId accountTrustRelationshipTrustAll = AccountTrustRelationship{accountTrustRelationshipAccountId = accountTrustRelationshipAccountId,
                                                                                                                         accountTrustRelationshipTrustAll = accountTrustRelationshipTrustAll,
                                                                                                                         accountTrustRelationshipTrustAllowlist = GHC.Maybe.Nothing}
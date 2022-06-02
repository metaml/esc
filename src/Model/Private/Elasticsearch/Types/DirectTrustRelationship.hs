-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DirectTrustRelationship
module Model/Private/Elasticsearch.Types.DirectTrustRelationship where

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
import {-# SOURCE #-} Model/Private/Elasticsearch.Types.TrustedCertificate

-- | Defines the object schema located at @components.schemas.DirectTrustRelationship@ in the specification.
-- 
-- The trust relationship with external entities (remote environments, remote accounts...).
data DirectTrustRelationship = DirectTrustRelationship {
  -- | additional_node_names: A list of node names trusted in addition to those deducible from trust_allowlist and scope id. Allows trusting nodes that don\'t have a scoped name at the cost of maintaining the list. Mandatory if scope id is not defined.
  directTrustRelationshipAdditionalNodeNames :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | certificates: The public ca certificate(s) to trust. Only one is required, but it is possible to specify multiple certificates in order to facilitate key rotation.
  , directTrustRelationshipCertificates :: ([TrustedCertificate])
  -- | name: a human readable name of the trust relationship
  , directTrustRelationshipName :: Data.Text.Internal.Text
  -- | scope_id: Usually an organization id or an environment id, but could really be any suitable suffix for clusters using the CA certificate of this trust. Required unless trust_all is false and trust_allowlist is empty.
  , directTrustRelationshipScopeId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | trust_all: If true, scope_id is required and the \`trust_allowlist\` is ignored and all clusters matching the scope id will be trusted.
  , directTrustRelationshipTrustAll :: GHC.Types.Bool
  -- | trust_allowlist: The list of clusters with matching scope to trust. Only used when \`trust_all\` is false. Providing one or more clusters makes scope_id mandatory.
  , directTrustRelationshipTrustAllowlist :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DirectTrustRelationship
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_node_names" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipAdditionalNodeNames obj) : ["certificates" Data.Aeson.Types.ToJSON..= directTrustRelationshipCertificates obj] : ["name" Data.Aeson.Types.ToJSON..= directTrustRelationshipName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("scope_id" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipScopeId obj) : ["trust_all" Data.Aeson.Types.ToJSON..= directTrustRelationshipTrustAll obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trust_allowlist" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipTrustAllowlist obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_node_names" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipAdditionalNodeNames obj) : ["certificates" Data.Aeson.Types.ToJSON..= directTrustRelationshipCertificates obj] : ["name" Data.Aeson.Types.ToJSON..= directTrustRelationshipName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("scope_id" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipScopeId obj) : ["trust_all" Data.Aeson.Types.ToJSON..= directTrustRelationshipTrustAll obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trust_allowlist" Data.Aeson.Types.ToJSON..=)) (directTrustRelationshipTrustAllowlist obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DirectTrustRelationship
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DirectTrustRelationship" (\obj -> (((((GHC.Base.pure DirectTrustRelationship GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_node_names")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "certificates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "scope_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "trust_all")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trust_allowlist"))
-- | Create a new 'DirectTrustRelationship' with all required fields.
mkDirectTrustRelationship :: [TrustedCertificate] -- ^ 'directTrustRelationshipCertificates'
  -> Data.Text.Internal.Text -- ^ 'directTrustRelationshipName'
  -> GHC.Types.Bool -- ^ 'directTrustRelationshipTrustAll'
  -> DirectTrustRelationship
mkDirectTrustRelationship directTrustRelationshipCertificates directTrustRelationshipName directTrustRelationshipTrustAll = DirectTrustRelationship{directTrustRelationshipAdditionalNodeNames = GHC.Maybe.Nothing,
                                                                                                                                                    directTrustRelationshipCertificates = directTrustRelationshipCertificates,
                                                                                                                                                    directTrustRelationshipName = directTrustRelationshipName,
                                                                                                                                                    directTrustRelationshipScopeId = GHC.Maybe.Nothing,
                                                                                                                                                    directTrustRelationshipTrustAll = directTrustRelationshipTrustAll,
                                                                                                                                                    directTrustRelationshipTrustAllowlist = GHC.Maybe.Nothing}

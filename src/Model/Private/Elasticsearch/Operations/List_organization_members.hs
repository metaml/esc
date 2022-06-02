-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation list_organization_members
module Model/Private/Elasticsearch.Operations.List_organization_members where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Model/Private/Elasticsearch.Common
import Model/Private/Elasticsearch.Types

-- | > GET /organizations/{organization_id}/members
-- 
-- Fetch users belonging to the selected organization. Currently unavailable in self-hosted ECE.
list_organization_members :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response List_organization_membersResponse) -- ^ Monadic computation which returns the result of the operation
list_organization_members organization_id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either List_organization_membersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right List_organization_membersResponse200
                                                                                                                                                                                                | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right List_organization_membersResponse404
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ "/members"))) GHC.Base.mempty)
-- | Represents a response of the operation 'list_organization_members'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_organization_membersResponseError' is used.
data List_organization_membersResponse =
   List_organization_membersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | List_organization_membersResponse200 -- ^ Organization members fetched successfully
  | List_organization_membersResponse404 -- ^ Organization not found. (code: \`organization.not_found\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /organizations/{organization_id}/members
-- 
-- The same as 'list_organization_members' but accepts an explicit configuration.
list_organization_membersWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> m (Network.HTTP.Client.Types.Response List_organization_membersResponse) -- ^ Monadic computation which returns the result of the operation
list_organization_membersWithConfiguration config
                                           organization_id = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either List_organization_membersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right List_organization_membersResponse200
                                                                                                                                                                                                                 | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right List_organization_membersResponse404
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ "/members"))) GHC.Base.mempty)
-- | > GET /organizations/{organization_id}/members
-- 
-- The same as 'list_organization_members' but returns the raw 'Data.ByteString.Char8.ByteString'.
list_organization_membersRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
list_organization_membersRaw organization_id = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ "/members"))) GHC.Base.mempty)
-- | > GET /organizations/{organization_id}/members
-- 
-- The same as 'list_organization_members' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
list_organization_membersWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
list_organization_membersWithConfigurationRaw config
                                              organization_id = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ "/members"))) GHC.Base.mempty)

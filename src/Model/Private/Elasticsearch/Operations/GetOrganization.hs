-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getOrganization
module Model/Private/Elasticsearch.Operations.GetOrganization where

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

-- | > GET /organizations/{organization_id}
-- 
-- Fetch a single organization by id. Currently unavailable in self-hosted ECE.
getOrganization :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response GetOrganizationResponse) -- ^ Monadic computation which returns the result of the operation
getOrganization organizationId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetOrganizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse200
                                                                                                                                                                           | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse401
                                                                                                                                                                           | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse403
                                                                                                                                                                           | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse404
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organizationId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'getOrganization'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetOrganizationResponseError' is used.
data GetOrganizationResponse =
   GetOrganizationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetOrganizationResponse200 -- ^ Organization fetched successfully
  | GetOrganizationResponse401 -- ^ User not found. (code: \`user.not_found\`)
  | GetOrganizationResponse403 -- ^ The current user does not have access to the requested organization. (code: \`organization.invalid_access\`)
  | GetOrganizationResponse404 -- ^ Organization not found. (code: \`organization.not_found\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /organizations/{organization_id}
-- 
-- The same as 'getOrganization' but accepts an explicit configuration.
getOrganizationWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> m (Network.HTTP.Client.Types.Response GetOrganizationResponse) -- ^ Monadic computation which returns the result of the operation
getOrganizationWithConfiguration config
                                 organizationId = GHC.Base.fmap (\response_5 -> GHC.Base.fmap (Data.Either.either GetOrganizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse200
                                                                                                                                                                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse401
                                                                                                                                                                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse403
                                                                                                                                                                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetOrganizationResponse404
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_5) response_5) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organizationId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /organizations/{organization_id}
-- 
-- The same as 'getOrganization' but returns the raw 'Data.ByteString.Char8.ByteString'.
getOrganizationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getOrganizationRaw organizationId = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organizationId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /organizations/{organization_id}
-- 
-- The same as 'getOrganization' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getOrganizationWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getOrganizationWithConfigurationRaw config
                                    organizationId = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organizationId)) GHC.Base.++ ""))) GHC.Base.mempty)

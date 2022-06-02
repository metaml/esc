-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation update_organization
module Model/Private/Elasticsearch.Operations.Update_organization where

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

-- | > PUT /organizations/{organization_id}
-- 
-- Updates an existing organization. Currently unavailable in self-hosted ECE.
update_organization :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> OrganizationRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Update_organizationResponse) -- ^ Monadic computation which returns the result of the operation
update_organization organization_id
                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Update_organizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse200
                                                                                                                                                                         | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse400
                                                                                                                                                                         | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse401
                                                                                                                                                                         | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse403
                                                                                                                                                                         | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse404
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'update_organization'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_organizationResponseError' is used.
data Update_organizationResponse =
   Update_organizationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Update_organizationResponse200 -- ^ Organization created successfully
  | Update_organizationResponse400 -- ^ * Name must be between 2 and 30 characters. (code: \`organization.invalid_name\`) * User already has an organization. (code: \`organization.user_organization_already_exists\`)
  | Update_organizationResponse401 -- ^ You are not authorized to perform this action
  | Update_organizationResponse403 -- ^ The current user does not have access to the requested organization. (code: \`organization.invalid_access\`)
  | Update_organizationResponse404 -- ^ Organization not found. (code: \`organization.not_found\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > PUT /organizations/{organization_id}
-- 
-- The same as 'update_organization' but accepts an explicit configuration.
update_organizationWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> OrganizationRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Update_organizationResponse) -- ^ Monadic computation which returns the result of the operation
update_organizationWithConfiguration config
                                     organization_id
                                     body = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either Update_organizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse200
                                                                                                                                                                                          | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse400
                                                                                                                                                                                          | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse401
                                                                                                                                                                                          | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse403
                                                                                                                                                                                          | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Update_organizationResponse404
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > PUT /organizations/{organization_id}
-- 
-- The same as 'update_organization' but returns the raw 'Data.ByteString.Char8.ByteString'.
update_organizationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> OrganizationRequest -- ^ The request body to send
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
update_organizationRaw organization_id
                       body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)
-- | > PUT /organizations/{organization_id}
-- 
-- The same as 'update_organization' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
update_organizationWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ organization_id: Identifier for the Organization
  -> OrganizationRequest -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
update_organizationWithConfigurationRaw config
                                        organization_id
                                        body = GHC.Base.id (Model/Private/Elasticsearch.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/organizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel organization_id)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Model/Private/Elasticsearch.Common.RequestBodyEncodingJSON)

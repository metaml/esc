-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_costs_overview
module Model/Private/Elasticsearch.Operations.Get_costs_overview where

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

-- | > GET /billing/costs/{organization_id}
-- 
-- EXPERIMENTAL (it may change in future versions): Retrieves an overview of the costs by organization ID.
get_costs_overview :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Get_costs_overviewParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Get_costs_overviewResponse) -- ^ Monadic computation which returns the result of the operation
get_costs_overview parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_costs_overviewResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse200
                                                                                                                                                                             | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse400
                                                                                                                                                                             | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse403
                                                                                                                                                                             | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse404
                                                                                                                                                                             | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse500
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/billing/costs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (get_costs_overviewParametersPathOrganization_id parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "from") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryFrom parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "to") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryTo parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/billing\/costs\/{organization_id}.GET.parameters@ in the specification.
-- 
-- 
data Get_costs_overviewParameters = Get_costs_overviewParameters {
  -- | pathOrganization_id: Represents the parameter named \'organization_id\'
  -- 
  -- Identifier for the organization
  get_costs_overviewParametersPathOrganization_id :: Data.Text.Internal.Text
  -- | queryFrom: Represents the parameter named \'from\'
  -- 
  -- A datetime for the beginning of the desired range for which to fetch costs. Defaults to start of current month.
  , get_costs_overviewParametersQueryFrom :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryTo: Represents the parameter named \'to\'
  -- 
  -- A datetime for the end of the desired range for which to fetch costs. Defaults to the current date.
  , get_costs_overviewParametersQueryTo :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_costs_overviewParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathOrganization_id" Data.Aeson.Types.ToJSON..= get_costs_overviewParametersPathOrganization_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFrom" Data.Aeson.Types.ToJSON..=)) (get_costs_overviewParametersQueryFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTo" Data.Aeson.Types.ToJSON..=)) (get_costs_overviewParametersQueryTo obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathOrganization_id" Data.Aeson.Types.ToJSON..= get_costs_overviewParametersPathOrganization_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFrom" Data.Aeson.Types.ToJSON..=)) (get_costs_overviewParametersQueryFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTo" Data.Aeson.Types.ToJSON..=)) (get_costs_overviewParametersQueryTo obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_costs_overviewParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_costs_overviewParameters" (\obj -> ((GHC.Base.pure Get_costs_overviewParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathOrganization_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryFrom")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryTo"))
-- | Create a new 'Get_costs_overviewParameters' with all required fields.
mkGet_costs_overviewParameters :: Data.Text.Internal.Text -- ^ 'get_costs_overviewParametersPathOrganization_id'
  -> Get_costs_overviewParameters
mkGet_costs_overviewParameters get_costs_overviewParametersPathOrganization_id = Get_costs_overviewParameters{get_costs_overviewParametersPathOrganization_id = get_costs_overviewParametersPathOrganization_id,
                                                                                                              get_costs_overviewParametersQueryFrom = GHC.Maybe.Nothing,
                                                                                                              get_costs_overviewParametersQueryTo = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_costs_overview'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_costs_overviewResponseError' is used.
data Get_costs_overviewResponse =
   Get_costs_overviewResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_costs_overviewResponse200 -- ^ Top-level cost overview for the organization
  | Get_costs_overviewResponse400 -- ^ The specified date range is invalid. (code: \`costs.invalid_date_range\`)
  | Get_costs_overviewResponse403 -- ^ The current user does not have access to the requested organization. (code: \`organization.invalid_access\`)
  | Get_costs_overviewResponse404 -- ^ Organization not found. (code: \`organization.not_found\`)
  | Get_costs_overviewResponse500 -- ^ An error occurred when fetching an overview of the costs for the organization. (code: \`billing_service.failed_request\`)
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /billing/costs/{organization_id}
-- 
-- The same as 'get_costs_overview' but accepts an explicit configuration.
get_costs_overviewWithConfiguration :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Get_costs_overviewParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_costs_overviewResponse) -- ^ Monadic computation which returns the result of the operation
get_costs_overviewWithConfiguration config
                                    parameters = GHC.Base.fmap (\response_6 -> GHC.Base.fmap (Data.Either.either Get_costs_overviewResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse200
                                                                                                                                                                                              | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse400
                                                                                                                                                                                              | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse403
                                                                                                                                                                                              | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse404
                                                                                                                                                                                              | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_costs_overviewResponse500
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_6) response_6) (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/billing/costs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (get_costs_overviewParametersPathOrganization_id parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "from") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryFrom parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "to") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryTo parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /billing/costs/{organization_id}
-- 
-- The same as 'get_costs_overview' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_costs_overviewRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Get_costs_overviewParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Model/Private/Elasticsearch.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_costs_overviewRaw parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/billing/costs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (get_costs_overviewParametersPathOrganization_id parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "from") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryFrom parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                            Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "to") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryTo parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /billing/costs/{organization_id}
-- 
-- The same as 'get_costs_overview' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_costs_overviewWithConfigurationRaw :: forall m . Model/Private/Elasticsearch.Common.MonadHTTP m => Model/Private/Elasticsearch.Common.Configuration -- ^ The configuration to use in the request
  -> Get_costs_overviewParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_costs_overviewWithConfigurationRaw config
                                       parameters = GHC.Base.id (Model/Private/Elasticsearch.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/billing/costs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Model/Private/Elasticsearch.Common.stringifyModel (get_costs_overviewParametersPathOrganization_id parameters))) GHC.Base.++ ""))) [Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "from") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryFrom parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Model/Private/Elasticsearch.Common.QueryParameter (Data.Text.pack "to") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_costs_overviewParametersQueryTo parameters) (Data.Text.pack "form") GHC.Types.False])

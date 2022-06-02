module Model/Private/Elasticsearch.Types.TrustedCertificate where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data TrustedCertificate
instance Show TrustedCertificate
instance Eq TrustedCertificate
instance FromJSON TrustedCertificate
instance ToJSON TrustedCertificate

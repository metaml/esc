module Model/Private/Elasticsearch.Types.CertificateMetaData where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Model/Private/Elasticsearch.Common
data CertificateMetaData
instance Show CertificateMetaData
instance Eq CertificateMetaData
instance FromJSON CertificateMetaData
instance ToJSON CertificateMetaData

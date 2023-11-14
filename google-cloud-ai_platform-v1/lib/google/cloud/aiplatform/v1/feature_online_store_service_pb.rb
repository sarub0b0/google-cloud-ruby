# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/feature_online_store_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/featurestore_online_service_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n=google/cloud/aiplatform/v1/feature_online_store_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a<google/cloud/aiplatform/v1/featurestore_online_service.proto\x1a\x1cgoogle/protobuf/struct.proto\"0\n\x12\x46\x65\x61tureViewDataKey\x12\r\n\x03key\x18\x01 \x01(\tH\x00\x42\x0b\n\tkey_oneof\"\xf4\x01\n\x19\x46\x65tchFeatureValuesRequest\x12\x43\n\x0c\x66\x65\x61ture_view\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%aiplatform.googleapis.com/FeatureView\x12\x45\n\x08\x64\x61ta_key\x18\x06 \x01(\x0b\x32..google.cloud.aiplatform.v1.FeatureViewDataKeyB\x03\xe0\x41\x01\x12K\n\x0b\x64\x61ta_format\x18\x07 \x01(\x0e\x32\x31.google.cloud.aiplatform.v1.FeatureViewDataFormatB\x03\xe0\x41\x01\"\xbc\x03\n\x1a\x46\x65tchFeatureValuesResponse\x12\x65\n\nkey_values\x18\x03 \x01(\x0b\x32O.google.cloud.aiplatform.v1.FetchFeatureValuesResponse.FeatureNameValuePairListH\x00\x12/\n\x0cproto_struct\x18\x02 \x01(\x0b\x32\x17.google.protobuf.StructH\x00\x1a\xfb\x01\n\x18\x46\x65\x61tureNameValuePairList\x12v\n\x08\x66\x65\x61tures\x18\x01 \x03(\x0b\x32\x64.google.cloud.aiplatform.v1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair\x1ag\n\x14\x46\x65\x61tureNameValuePair\x12\x39\n\x05value\x18\x02 \x01(\x0b\x32(.google.cloud.aiplatform.v1.FeatureValueH\x00\x12\x0c\n\x04name\x18\x01 \x01(\tB\x06\n\x04\x64\x61taB\x08\n\x06\x66ormat*b\n\x15\x46\x65\x61tureViewDataFormat\x12(\n$FEATURE_VIEW_DATA_FORMAT_UNSPECIFIED\x10\x00\x12\r\n\tKEY_VALUE\x10\x01\x12\x10\n\x0cPROTO_STRUCT\x10\x02\x32\xf8\x02\n\x19\x46\x65\x61tureOnlineStoreService\x12\x8b\x02\n\x12\x46\x65tchFeatureValues\x12\x35.google.cloud.aiplatform.v1.FetchFeatureValuesRequest\x1a\x36.google.cloud.aiplatform.v1.FetchFeatureValuesResponse\"\x85\x01\x82\xd3\xe4\x93\x02\x66\"a/v1/{feature_view=projects/*/locations/*/featureOnlineStores/*/featureViews/*}:fetchFeatureValues:\x01*\xda\x41\x16\x66\x65\x61ture_view, data_key\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xdc\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x1e\x46\x65\x61tureOnlineStoreServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.cloud.aiplatform.v1.FeatureValue", "google/cloud/aiplatform/v1/featurestore_online_service.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        FeatureViewDataKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureViewDataKey").msgclass
        FetchFeatureValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FetchFeatureValuesRequest").msgclass
        FetchFeatureValuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FetchFeatureValuesResponse").msgclass
        FetchFeatureValuesResponse::FeatureNameValuePairList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FetchFeatureValuesResponse.FeatureNameValuePairList").msgclass
        FetchFeatureValuesResponse::FeatureNameValuePairList::FeatureNameValuePair = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair").msgclass
        FeatureViewDataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureViewDataFormat").enummodule
      end
    end
  end
end

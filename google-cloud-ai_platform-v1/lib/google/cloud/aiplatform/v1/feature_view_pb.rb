# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/feature_view.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/cloud/aiplatform/v1/feature_view.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf5\x07\n\x0b\x46\x65\x61tureView\x12W\n\x10\x62ig_query_source\x18\x06 \x01(\x0b\x32\x36.google.cloud.aiplatform.v1.FeatureView.BigQuerySourceB\x03\xe0\x41\x01H\x00\x12\x65\n\x17\x66\x65\x61ture_registry_source\x18\t \x01(\x0b\x32=.google.cloud.aiplatform.v1.FeatureView.FeatureRegistrySourceB\x03\xe0\x41\x01H\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12H\n\x06labels\x18\x05 \x03(\x0b\x32\x33.google.cloud.aiplatform.v1.FeatureView.LabelsEntryB\x03\xe0\x41\x01\x12G\n\x0bsync_config\x18\x07 \x01(\x0b\x32\x32.google.cloud.aiplatform.v1.FeatureView.SyncConfig\x1a\x42\n\x0e\x42igQuerySource\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1e\n\x11\x65ntity_id_columns\x18\x02 \x03(\tB\x03\xe0\x41\x02\x1a\x1a\n\nSyncConfig\x12\x0c\n\x04\x63ron\x18\x01 \x01(\t\x1a\xc9\x01\n\x15\x46\x65\x61tureRegistrySource\x12g\n\x0e\x66\x65\x61ture_groups\x18\x01 \x03(\x0b\x32J.google.cloud.aiplatform.v1.FeatureView.FeatureRegistrySource.FeatureGroupB\x03\xe0\x41\x02\x1aG\n\x0c\x46\x65\x61tureGroup\x12\x1d\n\x10\x66\x65\x61ture_group_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x66\x65\x61ture_ids\x18\x02 \x03(\tB\x03\xe0\x41\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x9b\x01\xea\x41\x97\x01\n%aiplatform.googleapis.com/FeatureView\x12nprojects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}B\x08\n\x06sourceB\xce\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x10\x46\x65\x61tureViewProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
        FeatureView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureView").msgclass
        FeatureView::BigQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureView.BigQuerySource").msgclass
        FeatureView::SyncConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureView.SyncConfig").msgclass
        FeatureView::FeatureRegistrySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureView.FeatureRegistrySource").msgclass
        FeatureView::FeatureRegistrySource::FeatureGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureView.FeatureRegistrySource.FeatureGroup").msgclass
      end
    end
  end
end

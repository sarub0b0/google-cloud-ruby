# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/time_unit_enum.proto

require 'google/protobuf'


descriptor_data = "\n,google/ads/admanager/v1/time_unit_enum.proto\x12\x17google.ads.admanager.v1\"\x8c\x01\n\x0cTimeUnitEnum\"|\n\x08TimeUnit\x12\x19\n\x15TIME_UNIT_UNSPECIFIED\x10\x00\x12\n\n\x06MINUTE\x10\x01\x12\x08\n\x04HOUR\x10\x02\x12\x07\n\x03\x44\x41Y\x10\x03\x12\x08\n\x04WEEK\x10\x04\x12\t\n\x05MONTH\x10\x05\x12\x0c\n\x08LIFETIME\x10\x06\x12\x07\n\x03POD\x10\x07\x12\n\n\x06STREAM\x10\x08\x42\xc5\x01\n\x1b\x63om.google.ads.admanager.v1B\x11TimeUnitEnumProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
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
  module Ads
    module AdManager
      module V1
        TimeUnitEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.TimeUnitEnum").msgclass
        TimeUnitEnum::TimeUnit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.TimeUnitEnum.TimeUnit").enummodule
      end
    end
  end
end

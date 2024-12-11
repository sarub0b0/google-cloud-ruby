# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"
require "gapic/rest"
require "google/shopping/merchant/accounts/v1beta/programs_pb"
require "google/shopping/merchant/accounts/v1beta/programs_service/rest"


class ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_get_program
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::Program.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_program_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::ServiceStub.stub :transcode_get_program_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_program_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_program({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_program name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_program ::Google::Shopping::Merchant::Accounts::V1beta::GetProgramRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_program({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_program(::Google::Shopping::Merchant::Accounts::V1beta::GetProgramRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_program_client_stub.call_count
      end
    end
  end

  def test_list_programs
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::ListProgramsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_programs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::ServiceStub.stub :transcode_list_programs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_programs_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_programs({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_programs parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_programs ::Google::Shopping::Merchant::Accounts::V1beta::ListProgramsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_programs({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_programs(::Google::Shopping::Merchant::Accounts::V1beta::ListProgramsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_programs_client_stub.call_count
      end
    end
  end

  def test_enable_program
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::Program.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    enable_program_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::ServiceStub.stub :transcode_enable_program_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, enable_program_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.enable_program({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.enable_program name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.enable_program ::Google::Shopping::Merchant::Accounts::V1beta::EnableProgramRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.enable_program({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.enable_program(::Google::Shopping::Merchant::Accounts::V1beta::EnableProgramRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, enable_program_client_stub.call_count
      end
    end
  end

  def test_disable_program
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::Program.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    disable_program_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::ServiceStub.stub :transcode_disable_program_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, disable_program_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.disable_program({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.disable_program name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.disable_program ::Google::Shopping::Merchant::Accounts::V1beta::DisableProgramRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.disable_program({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.disable_program(::Google::Shopping::Merchant::Accounts::V1beta::DisableProgramRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, disable_program_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client::Configuration, config
  end
end

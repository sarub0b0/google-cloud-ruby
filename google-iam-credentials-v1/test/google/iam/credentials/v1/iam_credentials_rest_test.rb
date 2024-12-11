# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "google/iam/credentials/v1/iamcredentials_pb"
require "google/iam/credentials/v1/iam_credentials/rest"


class ::Google::Iam::Credentials::V1::IAMCredentials::Rest::ClientTest < Minitest::Test
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

  def test_generate_access_token
    # Create test objects.
    client_result = ::Google::Iam::Credentials::V1::GenerateAccessTokenResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    delegates = ["hello world"]
    scope = ["hello world"]
    lifetime = {}

    generate_access_token_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Iam::Credentials::V1::IAMCredentials::Rest::ServiceStub.stub :transcode_generate_access_token_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_access_token_client_stub do
        # Create client
        client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_access_token({ name: name, delegates: delegates, scope: scope, lifetime: lifetime }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_access_token name: name, delegates: delegates, scope: scope, lifetime: lifetime do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_access_token ::Google::Iam::Credentials::V1::GenerateAccessTokenRequest.new(name: name, delegates: delegates, scope: scope, lifetime: lifetime) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_access_token({ name: name, delegates: delegates, scope: scope, lifetime: lifetime }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_access_token(::Google::Iam::Credentials::V1::GenerateAccessTokenRequest.new(name: name, delegates: delegates, scope: scope, lifetime: lifetime), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_access_token_client_stub.call_count
      end
    end
  end

  def test_generate_id_token
    # Create test objects.
    client_result = ::Google::Iam::Credentials::V1::GenerateIdTokenResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    delegates = ["hello world"]
    audience = "hello world"
    include_email = true

    generate_id_token_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Iam::Credentials::V1::IAMCredentials::Rest::ServiceStub.stub :transcode_generate_id_token_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_id_token_client_stub do
        # Create client
        client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_id_token({ name: name, delegates: delegates, audience: audience, include_email: include_email }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_id_token name: name, delegates: delegates, audience: audience, include_email: include_email do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_id_token ::Google::Iam::Credentials::V1::GenerateIdTokenRequest.new(name: name, delegates: delegates, audience: audience, include_email: include_email) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_id_token({ name: name, delegates: delegates, audience: audience, include_email: include_email }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_id_token(::Google::Iam::Credentials::V1::GenerateIdTokenRequest.new(name: name, delegates: delegates, audience: audience, include_email: include_email), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_id_token_client_stub.call_count
      end
    end
  end

  def test_sign_blob
    # Create test objects.
    client_result = ::Google::Iam::Credentials::V1::SignBlobResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    delegates = ["hello world"]
    payload = "hello world"

    sign_blob_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Iam::Credentials::V1::IAMCredentials::Rest::ServiceStub.stub :transcode_sign_blob_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, sign_blob_client_stub do
        # Create client
        client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.sign_blob({ name: name, delegates: delegates, payload: payload }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.sign_blob name: name, delegates: delegates, payload: payload do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.sign_blob ::Google::Iam::Credentials::V1::SignBlobRequest.new(name: name, delegates: delegates, payload: payload) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.sign_blob({ name: name, delegates: delegates, payload: payload }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.sign_blob(::Google::Iam::Credentials::V1::SignBlobRequest.new(name: name, delegates: delegates, payload: payload), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, sign_blob_client_stub.call_count
      end
    end
  end

  def test_sign_jwt
    # Create test objects.
    client_result = ::Google::Iam::Credentials::V1::SignJwtResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    delegates = ["hello world"]
    payload = "hello world"

    sign_jwt_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Iam::Credentials::V1::IAMCredentials::Rest::ServiceStub.stub :transcode_sign_jwt_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, sign_jwt_client_stub do
        # Create client
        client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.sign_jwt({ name: name, delegates: delegates, payload: payload }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.sign_jwt name: name, delegates: delegates, payload: payload do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.sign_jwt ::Google::Iam::Credentials::V1::SignJwtRequest.new(name: name, delegates: delegates, payload: payload) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.sign_jwt({ name: name, delegates: delegates, payload: payload }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.sign_jwt(::Google::Iam::Credentials::V1::SignJwtRequest.new(name: name, delegates: delegates, payload: payload), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, sign_jwt_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client::Configuration, config
  end
end

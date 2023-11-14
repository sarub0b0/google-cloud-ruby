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

require "gapic/grpc/service_stub"

require "google/cloud/aiplatform/v1/feature_online_store_admin_service_pb"
require "google/cloud/aiplatform/v1/feature_online_store_admin_service_services_pb"
require "google/cloud/ai_platform/v1/feature_online_store_admin_service"

class ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_feature_online_store
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature_online_store = {}
    feature_online_store_id = "hello world"

    create_feature_online_store_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_feature_online_store, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateFeatureOnlineStoreRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureOnlineStore), request["feature_online_store"]
      assert_equal "hello world", request["feature_online_store_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_feature_online_store_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_feature_online_store({ parent: parent, feature_online_store: feature_online_store, feature_online_store_id: feature_online_store_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_feature_online_store parent: parent, feature_online_store: feature_online_store, feature_online_store_id: feature_online_store_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_feature_online_store ::Google::Cloud::AIPlatform::V1::CreateFeatureOnlineStoreRequest.new(parent: parent, feature_online_store: feature_online_store, feature_online_store_id: feature_online_store_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_feature_online_store({ parent: parent, feature_online_store: feature_online_store, feature_online_store_id: feature_online_store_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_feature_online_store(::Google::Cloud::AIPlatform::V1::CreateFeatureOnlineStoreRequest.new(parent: parent, feature_online_store: feature_online_store, feature_online_store_id: feature_online_store_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_feature_online_store_client_stub.call_rpc_count
    end
  end

  def test_get_feature_online_store
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStore.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_online_store_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature_online_store, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetFeatureOnlineStoreRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_online_store_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature_online_store({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature_online_store name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature_online_store ::Google::Cloud::AIPlatform::V1::GetFeatureOnlineStoreRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature_online_store({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature_online_store(::Google::Cloud::AIPlatform::V1::GetFeatureOnlineStoreRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_online_store_client_stub.call_rpc_count
    end
  end

  def test_list_feature_online_stores
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"

    list_feature_online_stores_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_feature_online_stores, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_feature_online_stores_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_feature_online_stores({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_feature_online_stores parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_feature_online_stores ::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_feature_online_stores({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_feature_online_stores(::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_feature_online_stores_client_stub.call_rpc_count
    end
  end

  def test_update_feature_online_store
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    feature_online_store = {}
    update_mask = {}

    update_feature_online_store_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_feature_online_store, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::UpdateFeatureOnlineStoreRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureOnlineStore), request["feature_online_store"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_feature_online_store_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_feature_online_store({ feature_online_store: feature_online_store, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_feature_online_store feature_online_store: feature_online_store, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_feature_online_store ::Google::Cloud::AIPlatform::V1::UpdateFeatureOnlineStoreRequest.new(feature_online_store: feature_online_store, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_feature_online_store({ feature_online_store: feature_online_store, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_feature_online_store(::Google::Cloud::AIPlatform::V1::UpdateFeatureOnlineStoreRequest.new(feature_online_store: feature_online_store, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_feature_online_store_client_stub.call_rpc_count
    end
  end

  def test_delete_feature_online_store
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_feature_online_store_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_feature_online_store, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteFeatureOnlineStoreRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_feature_online_store_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_feature_online_store({ name: name, force: force }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_feature_online_store name: name, force: force do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_feature_online_store ::Google::Cloud::AIPlatform::V1::DeleteFeatureOnlineStoreRequest.new(name: name, force: force) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_feature_online_store({ name: name, force: force }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_feature_online_store(::Google::Cloud::AIPlatform::V1::DeleteFeatureOnlineStoreRequest.new(name: name, force: force), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_feature_online_store_client_stub.call_rpc_count
    end
  end

  def test_create_feature_view
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature_view = {}
    feature_view_id = "hello world"
    run_sync_immediately = true

    create_feature_view_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_feature_view, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateFeatureViewRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureView), request["feature_view"]
      assert_equal "hello world", request["feature_view_id"]
      assert_equal true, request["run_sync_immediately"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_feature_view_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_feature_view({ parent: parent, feature_view: feature_view, feature_view_id: feature_view_id, run_sync_immediately: run_sync_immediately }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_feature_view parent: parent, feature_view: feature_view, feature_view_id: feature_view_id, run_sync_immediately: run_sync_immediately do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_feature_view ::Google::Cloud::AIPlatform::V1::CreateFeatureViewRequest.new(parent: parent, feature_view: feature_view, feature_view_id: feature_view_id, run_sync_immediately: run_sync_immediately) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_feature_view({ parent: parent, feature_view: feature_view, feature_view_id: feature_view_id, run_sync_immediately: run_sync_immediately }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_feature_view(::Google::Cloud::AIPlatform::V1::CreateFeatureViewRequest.new(parent: parent, feature_view: feature_view, feature_view_id: feature_view_id, run_sync_immediately: run_sync_immediately), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_feature_view_client_stub.call_rpc_count
    end
  end

  def test_get_feature_view
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::FeatureView.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_view_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature_view, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetFeatureViewRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_view_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature_view({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature_view name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature_view ::Google::Cloud::AIPlatform::V1::GetFeatureViewRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature_view({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature_view(::Google::Cloud::AIPlatform::V1::GetFeatureViewRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_view_client_stub.call_rpc_count
    end
  end

  def test_list_feature_views
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListFeatureViewsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"

    list_feature_views_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_feature_views, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListFeatureViewsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_feature_views_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_feature_views({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_feature_views parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_feature_views ::Google::Cloud::AIPlatform::V1::ListFeatureViewsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_feature_views({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_feature_views(::Google::Cloud::AIPlatform::V1::ListFeatureViewsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_feature_views_client_stub.call_rpc_count
    end
  end

  def test_update_feature_view
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    feature_view = {}
    update_mask = {}

    update_feature_view_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_feature_view, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::UpdateFeatureViewRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureView), request["feature_view"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_feature_view_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_feature_view({ feature_view: feature_view, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_feature_view feature_view: feature_view, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_feature_view ::Google::Cloud::AIPlatform::V1::UpdateFeatureViewRequest.new(feature_view: feature_view, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_feature_view({ feature_view: feature_view, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_feature_view(::Google::Cloud::AIPlatform::V1::UpdateFeatureViewRequest.new(feature_view: feature_view, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_feature_view_client_stub.call_rpc_count
    end
  end

  def test_delete_feature_view
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_feature_view_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_feature_view, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteFeatureViewRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_feature_view_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_feature_view({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_feature_view name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_feature_view ::Google::Cloud::AIPlatform::V1::DeleteFeatureViewRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_feature_view({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_feature_view(::Google::Cloud::AIPlatform::V1::DeleteFeatureViewRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_feature_view_client_stub.call_rpc_count
    end
  end

  def test_sync_feature_view
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::SyncFeatureViewResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    feature_view = "hello world"

    sync_feature_view_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :sync_feature_view, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::SyncFeatureViewRequest, request
      assert_equal "hello world", request["feature_view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, sync_feature_view_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.sync_feature_view({ feature_view: feature_view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.sync_feature_view feature_view: feature_view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.sync_feature_view ::Google::Cloud::AIPlatform::V1::SyncFeatureViewRequest.new(feature_view: feature_view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.sync_feature_view({ feature_view: feature_view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.sync_feature_view(::Google::Cloud::AIPlatform::V1::SyncFeatureViewRequest.new(feature_view: feature_view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, sync_feature_view_client_stub.call_rpc_count
    end
  end

  def test_get_feature_view_sync
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Aiplatform::V1::FeatureViewSync.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_view_sync_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature_view_sync, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetFeatureViewSyncRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_view_sync_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature_view_sync({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature_view_sync name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature_view_sync ::Google::Cloud::AIPlatform::V1::GetFeatureViewSyncRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature_view_sync({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature_view_sync(::Google::Cloud::AIPlatform::V1::GetFeatureViewSyncRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_view_sync_client_stub.call_rpc_count
    end
  end

  def test_list_feature_view_syncs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"

    list_feature_view_syncs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_feature_view_syncs, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_feature_view_syncs_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_feature_view_syncs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_feature_view_syncs parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_feature_view_syncs ::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_feature_view_syncs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_feature_view_syncs(::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_feature_view_syncs_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreAdminService::Operations, client.operations_client
  end
end

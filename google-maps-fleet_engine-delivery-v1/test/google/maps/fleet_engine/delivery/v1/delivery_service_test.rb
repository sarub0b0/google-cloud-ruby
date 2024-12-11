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

require "gapic/grpc/service_stub"

require "google/maps/fleetengine/delivery/v1/delivery_api_pb"
require "google/maps/fleetengine/delivery/v1/delivery_api_services_pb"
require "google/maps/fleet_engine/delivery/v1/delivery_service"

class ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::ClientTest < Minitest::Test
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

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
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

  def test_create_delivery_vehicle
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    delivery_vehicle_id = "hello world"
    delivery_vehicle = {}

    create_delivery_vehicle_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_delivery_vehicle, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["delivery_vehicle_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle), request["delivery_vehicle"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_delivery_vehicle_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_delivery_vehicle({ header: header, parent: parent, delivery_vehicle_id: delivery_vehicle_id, delivery_vehicle: delivery_vehicle }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_delivery_vehicle header: header, parent: parent, delivery_vehicle_id: delivery_vehicle_id, delivery_vehicle: delivery_vehicle do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_delivery_vehicle ::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest.new(header: header, parent: parent, delivery_vehicle_id: delivery_vehicle_id, delivery_vehicle: delivery_vehicle) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_delivery_vehicle({ header: header, parent: parent, delivery_vehicle_id: delivery_vehicle_id, delivery_vehicle: delivery_vehicle }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_delivery_vehicle(::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest.new(header: header, parent: parent, delivery_vehicle_id: delivery_vehicle_id, delivery_vehicle: delivery_vehicle), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_delivery_vehicle_client_stub.call_rpc_count
    end
  end

  def test_get_delivery_vehicle
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"

    get_delivery_vehicle_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_delivery_vehicle, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_delivery_vehicle_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_delivery_vehicle({ header: header, name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_delivery_vehicle header: header, name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_delivery_vehicle ::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest.new(header: header, name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_delivery_vehicle({ header: header, name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_delivery_vehicle(::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest.new(header: header, name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_delivery_vehicle_client_stub.call_rpc_count
    end
  end

  def test_update_delivery_vehicle
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    delivery_vehicle = {}
    update_mask = {}

    update_delivery_vehicle_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_delivery_vehicle, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle), request["delivery_vehicle"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_delivery_vehicle_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_delivery_vehicle({ header: header, delivery_vehicle: delivery_vehicle, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_delivery_vehicle header: header, delivery_vehicle: delivery_vehicle, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_delivery_vehicle ::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest.new(header: header, delivery_vehicle: delivery_vehicle, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_delivery_vehicle({ header: header, delivery_vehicle: delivery_vehicle, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_delivery_vehicle(::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest.new(header: header, delivery_vehicle: delivery_vehicle, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_delivery_vehicle_client_stub.call_rpc_count
    end
  end

  def test_batch_create_tasks
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    requests = [{}]

    batch_create_tasks_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_tasks, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_tasks_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_tasks({ header: header, parent: parent, requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_tasks header: header, parent: parent, requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_tasks ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest.new(header: header, parent: parent, requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_tasks({ header: header, parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_tasks(::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest.new(header: header, parent: parent, requests: requests), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_tasks_client_stub.call_rpc_count
    end
  end

  def test_create_task
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::Task.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    task_id = "hello world"
    task = {}

    create_task_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_task, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["task_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::Task), request["task"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_task_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_task({ header: header, parent: parent, task_id: task_id, task: task }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_task header: header, parent: parent, task_id: task_id, task: task do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_task ::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest.new(header: header, parent: parent, task_id: task_id, task: task) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_task({ header: header, parent: parent, task_id: task_id, task: task }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_task(::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest.new(header: header, parent: parent, task_id: task_id, task: task), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_task_client_stub.call_rpc_count
    end
  end

  def test_get_task
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::Task.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"

    get_task_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_task, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_task_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_task({ header: header, name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_task header: header, name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_task ::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest.new(header: header, name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_task({ header: header, name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_task(::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest.new(header: header, name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_task_client_stub.call_rpc_count
    end
  end

  def test_update_task
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::Task.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    task = {}
    update_mask = {}

    update_task_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_task, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::Task), request["task"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_task_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_task({ header: header, task: task, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_task header: header, task: task, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_task ::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest.new(header: header, task: task, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_task({ header: header, task: task, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_task(::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest.new(header: header, task: task, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_task_client_stub.call_rpc_count
    end
  end

  def test_list_tasks
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::ListTasksResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_tasks_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tasks, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tasks_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tasks({ header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tasks header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tasks ::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tasks({ header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tasks(::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tasks_client_stub.call_rpc_count
    end
  end

  def test_get_task_tracking_info
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingInfo.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"

    get_task_tracking_info_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_task_tracking_info, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_task_tracking_info_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_task_tracking_info({ header: header, name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_task_tracking_info header: header, name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_task_tracking_info ::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest.new(header: header, name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_task_tracking_info({ header: header, name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_task_tracking_info(::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest.new(header: header, name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_task_tracking_info_client_stub.call_rpc_count
    end
  end

  def test_list_delivery_vehicles
    # Create GRPC objects.
    grpc_response = ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    viewport = {}

    list_delivery_vehicles_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_delivery_vehicles, name
      assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Geo::Type::Viewport), request["viewport"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_delivery_vehicles_client_stub do
      # Create client
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_delivery_vehicles({ header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter, viewport: viewport }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_delivery_vehicles header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter, viewport: viewport do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_delivery_vehicles ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter, viewport: viewport) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_delivery_vehicles({ header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter, viewport: viewport }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_delivery_vehicles(::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, filter: filter, viewport: viewport), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_delivery_vehicles_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Maps::FleetEngine::Delivery::V1::DeliveryService::Client::Configuration, config
  end
end

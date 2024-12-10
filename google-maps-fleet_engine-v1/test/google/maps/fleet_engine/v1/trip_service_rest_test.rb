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
require "google/maps/fleetengine/v1/trip_api_pb"
require "google/maps/fleet_engine/v1/trip_service/rest"


class ::Google::Maps::FleetEngine::V1::TripService::Rest::ClientTest < Minitest::Test
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
  end

  def test_create_trip
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Trip.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    trip_id = "hello world"
    trip = {}

    create_trip_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::TripService::Rest::ServiceStub.stub :transcode_create_trip_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_trip_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_trip({ header: header, parent: parent, trip_id: trip_id, trip: trip }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_trip header: header, parent: parent, trip_id: trip_id, trip: trip do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_trip ::Google::Maps::FleetEngine::V1::CreateTripRequest.new(header: header, parent: parent, trip_id: trip_id, trip: trip) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_trip({ header: header, parent: parent, trip_id: trip_id, trip: trip }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_trip(::Google::Maps::FleetEngine::V1::CreateTripRequest.new(header: header, parent: parent, trip_id: trip_id, trip: trip), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_trip_client_stub.call_count
      end
    end
  end

  def test_get_trip
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Trip.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    view = :TRIP_VIEW_UNSPECIFIED
    current_route_segment_version = {}
    remaining_waypoints_version = {}
    route_format_type = :UNKNOWN_FORMAT_TYPE
    current_route_segment_traffic_version = {}
    remaining_waypoints_route_version = {}

    get_trip_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::TripService::Rest::ServiceStub.stub :transcode_get_trip_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_trip_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_trip({ header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_trip header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_trip ::Google::Maps::FleetEngine::V1::GetTripRequest.new(header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_trip({ header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_trip(::Google::Maps::FleetEngine::V1::GetTripRequest.new(header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_trip_client_stub.call_count
      end
    end
  end

  def test_report_billable_trip
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    country_code = "hello world"
    platform = :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED
    related_ids = ["hello world"]
    solution_type = :SOLUTION_TYPE_UNSPECIFIED

    report_billable_trip_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::TripService::Rest::ServiceStub.stub :transcode_report_billable_trip_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, report_billable_trip_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.report_billable_trip({ name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.report_billable_trip name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.report_billable_trip ::Google::Maps::FleetEngine::V1::ReportBillableTripRequest.new(name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.report_billable_trip({ name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.report_billable_trip(::Google::Maps::FleetEngine::V1::ReportBillableTripRequest.new(name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, report_billable_trip_client_stub.call_count
      end
    end
  end

  def test_search_trips
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::SearchTripsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    vehicle_id = "hello world"
    active_trips_only = true
    page_size = 42
    page_token = "hello world"
    minimum_staleness = {}

    search_trips_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::TripService::Rest::ServiceStub.stub :transcode_search_trips_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_trips_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_trips({ header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_trips header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_trips ::Google::Maps::FleetEngine::V1::SearchTripsRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_trips({ header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_trips(::Google::Maps::FleetEngine::V1::SearchTripsRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_trips_client_stub.call_count
      end
    end
  end

  def test_update_trip
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Trip.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    trip = {}
    update_mask = {}

    update_trip_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::TripService::Rest::ServiceStub.stub :transcode_update_trip_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_trip_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_trip({ header: header, name: name, trip: trip, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_trip header: header, name: name, trip: trip, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_trip ::Google::Maps::FleetEngine::V1::UpdateTripRequest.new(header: header, name: name, trip: trip, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_trip({ header: header, name: name, trip: trip, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_trip(::Google::Maps::FleetEngine::V1::UpdateTripRequest.new(header: header, name: name, trip: trip, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_trip_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Maps::FleetEngine::V1::TripService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Maps::FleetEngine::V1::TripService::Rest::Client::Configuration, config
  end
end

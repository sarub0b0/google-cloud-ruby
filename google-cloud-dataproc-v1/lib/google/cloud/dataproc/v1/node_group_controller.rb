# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dataproc/v1/version"

require "google/cloud/dataproc/v1/node_group_controller/credentials"
require "google/cloud/dataproc/v1/node_group_controller/paths"
require "google/cloud/dataproc/v1/node_group_controller/operations"
require "google/cloud/dataproc/v1/node_group_controller/client"
require "google/cloud/dataproc/v1/node_group_controller/rest"

module Google
  module Cloud
    module Dataproc
      module V1
        ##
        # The `NodeGroupControllerService` provides methods to manage node groups
        # of Compute Engine managed instances.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/dataproc/v1/node_group_controller"
        #     client = ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/dataproc/v1/node_group_controller/rest"
        #     client = ::Google::Cloud::Dataproc::V1::NodeGroupController::Rest::Client.new
        #
        module NodeGroupController
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "node_group_controller", "helpers.rb"
require "google/cloud/dataproc/v1/node_group_controller/helpers" if ::File.file? helper_path

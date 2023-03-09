# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/analytics/admin/version"

require "googleauth"

module Google
  module Analytics
    module Admin
      ##
      # Create a new client object for AnalyticsAdminService.
      #
      # By default, this returns an instance of
      # [Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client](https://rubydoc.info/gems/google-analytics-admin-v1alpha/Google/Analytics/Admin/V1alpha/AnalyticsAdminService/Client)
      # for a gRPC client for version V1alpha of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the AnalyticsAdminService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About AnalyticsAdminService
      #
      # Service Interface for the Analytics Admin API (GA4).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1alpha`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.analytics_admin_service version: :v1alpha, transport: :grpc, &block
        require "google/analytics/admin/#{version.to_s.downcase}"

        package_name = Google::Analytics::Admin
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Analytics::Admin.const_get(package_name).const_get(:AnalyticsAdminService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "admin", "helpers.rb"
require "google/analytics/admin/helpers" if ::File.file? helper_path

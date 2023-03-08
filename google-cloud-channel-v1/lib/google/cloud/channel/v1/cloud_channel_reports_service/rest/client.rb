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

require "google/cloud/errors"
require "google/cloud/channel/v1/reports_service_pb"
require "google/cloud/channel/v1/cloud_channel_reports_service/rest/service_stub"

module Google
  module Cloud
    module Channel
      module V1
        module CloudChannelReportsService
          module Rest
            ##
            # REST client for the CloudChannelReportsService service.
            #
            # CloudChannelReportsService lets Google Cloud resellers and
            # distributors retrieve and combine a variety of data in Cloud Channel for
            # multiple products (Google Cloud Platform (GCP), Google Voice, and
            # Google Workspace.)
            #
            class Client
              include Paths

              # @private
              attr_reader :cloud_channel_reports_service_stub

              ##
              # Configure the CloudChannelReportsService Client class.
              #
              # See {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all CloudChannelReportsService clients
              #   ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Channel", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the CloudChannelReportsService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new CloudChannelReportsService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the CloudChannelReportsService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @cloud_channel_reports_service_stub = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Begins generation of data for a given report. The report
              # identifier is a UID (for example, `613bf59q`).
              #
              # Possible error codes:
              #
              # * PERMISSION_DENIED: The user doesn't have access to this report.
              # * INVALID_ARGUMENT: Required request parameters are missing
              #   or invalid.
              # * NOT_FOUND: The report identifier was not found.
              # * INTERNAL: Any non-user error related to a technical issue
              #   in the backend. Contact Cloud Channel support.
              # * UNKNOWN: Any non-user error related to a technical issue
              #   in the backend. Contact Cloud Channel support.
              #
              # Return value:
              # The ID of a long-running operation.
              #
              # To get the results of the operation, call the GetOperation method of
              # CloudChannelOperationsService. The Operation metadata contains an
              # instance of {::Google::Cloud::Channel::V1::OperationMetadata OperationMetadata}.
              #
              # To get the results of report generation, call
              # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}
              # with the
              # {::Google::Cloud::Channel::V1::RunReportJobResponse#report_job RunReportJobResponse.report_job}.
              #
              # @overload run_report_job(request, options = nil)
              #   Pass arguments to `run_report_job` via a request object, either of type
              #   {::Google::Cloud::Channel::V1::RunReportJobRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Channel::V1::RunReportJobRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload run_report_job(name: nil, date_range: nil, filter: nil, language_code: nil)
              #   Pass arguments to `run_report_job` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The report's resource name. Specifies the account and report used
              #     to generate report data. The report_id identifier is a UID (for example,
              #     `613bf59q`).
              #     Name uses the format:
              #     accounts/\\{account_id}/reports/\\{report_id}
              #   @param date_range [::Google::Cloud::Channel::V1::DateRange, ::Hash]
              #     Optional. The range of usage or invoice dates to include in the result.
              #   @param filter [::String]
              #     Optional. A structured string that defines conditions on dimension columns
              #     to restrict the report output.
              #
              #     Filters support logical operators (AND, OR, NOT) and conditional operators
              #     (=, !=, <, >, <=, and >=) using `column_id` as keys.
              #
              #     For example:
              #     `(customer:"accounts/C123abc/customers/S456def" OR
              #     customer:"accounts/C123abc/customers/S789ghi") AND
              #     invoice_start_date.year >= 2022`
              #   @param language_code [::String]
              #     Optional. The BCP-47 language code, such as "en-US".  If specified, the
              #     response is localized to the corresponding language code if the
              #     original data sources support it.
              #     Default is "en-US".
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def run_report_job request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Channel::V1::RunReportJobRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.run_report_job.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Channel::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.run_report_job.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.run_report_job.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @cloud_channel_reports_service_stub.run_report_job request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Retrieves data generated by
              # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client#run_report_job CloudChannelReportsService.RunReportJob}.
              #
              # @overload fetch_report_results(request, options = nil)
              #   Pass arguments to `fetch_report_results` via a request object, either of type
              #   {::Google::Cloud::Channel::V1::FetchReportResultsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Channel::V1::FetchReportResultsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload fetch_report_results(report_job: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `fetch_report_results` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param report_job [::String]
              #     Required. The report job created by
              #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client#run_report_job CloudChannelReportsService.RunReportJob}.
              #     Report_job uses the format:
              #     accounts/\\{account_id}/reportJobs/\\{report_job_id}
              #   @param page_size [::Integer]
              #     Optional. Requested page size of the report. The server may return fewer
              #     results than requested. If you don't specify a page size, the server uses a
              #     sensible default (may change over time).
              #
              #     The maximum value is 30,000; the server will change larger values to
              #     30,000.
              #   @param page_token [::String]
              #     Optional. A token that specifies a page of results beyond the first page.
              #     Obtained through
              #     {::Google::Cloud::Channel::V1::FetchReportResultsResponse#next_page_token FetchReportResultsResponse.next_page_token}
              #     of the previous
              #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}
              #     call.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Channel::V1::Row>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Channel::V1::Row>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def fetch_report_results request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Channel::V1::FetchReportResultsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.fetch_report_results.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Channel::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.fetch_report_results.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.fetch_report_results.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @cloud_channel_reports_service_stub.fetch_report_results request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @cloud_channel_reports_service_stub, :fetch_report_results, "rows", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists the reports that RunReportJob can run. These reports include an ID,
              # a description, and the list of columns that will be in the result.
              #
              # @overload list_reports(request, options = nil)
              #   Pass arguments to `list_reports` via a request object, either of type
              #   {::Google::Cloud::Channel::V1::ListReportsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Channel::V1::ListReportsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_reports(parent: nil, page_size: nil, page_token: nil, language_code: nil)
              #   Pass arguments to `list_reports` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The resource name of the partner account to list available
              #     reports for. Parent uses the format: accounts/\\{account_id}
              #   @param page_size [::Integer]
              #     Optional. Requested page size of the report. The server might return fewer
              #     results than requested. If unspecified, returns 20 reports. The maximum
              #     value is 100.
              #   @param page_token [::String]
              #     Optional. A token that specifies a page of results beyond the first page.
              #     Obtained through
              #     {::Google::Cloud::Channel::V1::ListReportsResponse#next_page_token ListReportsResponse.next_page_token}
              #     of the previous
              #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client#list_reports CloudChannelReportsService.ListReports}
              #     call.
              #   @param language_code [::String]
              #     Optional. The BCP-47 language code, such as "en-US".  If specified, the
              #     response is localized to the corresponding language code if the
              #     original data sources support it.
              #     Default is "en-US".
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Channel::V1::Report>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Channel::V1::Report>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_reports request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Channel::V1::ListReportsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_reports.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Channel::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_reports.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_reports.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @cloud_channel_reports_service_stub.list_reports request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @cloud_channel_reports_service_stub, :list_reports, "reports", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the CloudChannelReportsService REST API.
              #
              # This class represents the configuration for CloudChannelReportsService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # run_report_job to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.run_report_job.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.run_report_job.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"cloudchannel.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "cloudchannel.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the CloudChannelReportsService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `run_report_job`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :run_report_job
                  ##
                  # RPC-specific configuration for `fetch_report_results`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :fetch_report_results
                  ##
                  # RPC-specific configuration for `list_reports`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_reports

                  # @private
                  def initialize parent_rpcs = nil
                    run_report_job_config = parent_rpcs.run_report_job if parent_rpcs.respond_to? :run_report_job
                    @run_report_job = ::Gapic::Config::Method.new run_report_job_config
                    fetch_report_results_config = parent_rpcs.fetch_report_results if parent_rpcs.respond_to? :fetch_report_results
                    @fetch_report_results = ::Gapic::Config::Method.new fetch_report_results_config
                    list_reports_config = parent_rpcs.list_reports if parent_rpcs.respond_to? :list_reports
                    @list_reports = ::Gapic::Config::Method.new list_reports_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

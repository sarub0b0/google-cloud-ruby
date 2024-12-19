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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/contact_center_insights/v1/contact_center_insights"

class ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_analysis_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.analysis_path project: "value0", location: "value1", conversation: "value2", analysis: "value3"
      assert_equal "projects/value0/locations/value1/conversations/value2/analyses/value3", path

      path = client.analysis_path project: "value0", location: "value1", authorized_view_set: "value2", authorized_view: "value3", conversation: "value4", analysis: "value5"
      assert_equal "projects/value0/locations/value1/authorizedViewSets/value2/authorizedViews/value3/conversations/value4/analyses/value5", path
    end
  end

  def test_analysis_rule_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.analysis_rule_path project: "value0", location: "value1", analysis_rule: "value2"
      assert_equal "projects/value0/locations/value1/analysisRules/value2", path
    end
  end

  def test_conversation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_path project: "value0", location: "value1", conversation: "value2"
      assert_equal "projects/value0/locations/value1/conversations/value2", path

      path = client.conversation_path project: "value0", location: "value1", authorized_view_set: "value2", authorized_view: "value3", conversation: "value4"
      assert_equal "projects/value0/locations/value1/authorizedViewSets/value2/authorizedViews/value3/conversations/value4", path
    end
  end

  def test_conversation_profile_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_profile_path project: "value0", location: "value1", conversation_profile: "value2"
      assert_equal "projects/value0/locations/value1/conversationProfiles/value2", path
    end
  end

  def test_encryption_spec_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.encryption_spec_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1/encryptionSpec", path
    end
  end

  def test_feedback_label_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.feedback_label_path project: "value0", location: "value1", conversation: "value2", feedback_label: "value3"
      assert_equal "projects/value0/locations/value1/conversations/value2/feedbackLabels/value3", path

      path = client.feedback_label_path project: "value0", location: "value1", authorized_view_set: "value2", authorized_view: "value3", conversation: "value4", feedback_label: "value5"
      assert_equal "projects/value0/locations/value1/authorizedViewSets/value2/authorizedViews/value3/conversations/value4/feedbackLabels/value5", path
    end
  end

  def test_issue_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.issue_path project: "value0", location: "value1", issue_model: "value2", issue: "value3"
      assert_equal "projects/value0/locations/value1/issueModels/value2/issues/value3", path
    end
  end

  def test_issue_model_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.issue_model_path project: "value0", location: "value1", issue_model: "value2"
      assert_equal "projects/value0/locations/value1/issueModels/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_participant_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.participant_path project: "value0", conversation: "value1", participant: "value2"
      assert_equal "projects/value0/conversations/value1/participants/value2", path

      path = client.participant_path project: "value0", location: "value1", conversation: "value2", participant: "value3"
      assert_equal "projects/value0/locations/value1/conversations/value2/participants/value3", path
    end
  end

  def test_phrase_matcher_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.phrase_matcher_path project: "value0", location: "value1", phrase_matcher: "value2"
      assert_equal "projects/value0/locations/value1/phraseMatchers/value2", path
    end
  end

  def test_qa_question_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.qa_question_path project: "value0", location: "value1", qa_scorecard: "value2", revision: "value3", qa_question: "value4"
      assert_equal "projects/value0/locations/value1/qaScorecards/value2/revisions/value3/qaQuestions/value4", path
    end
  end

  def test_qa_scorecard_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.qa_scorecard_path project: "value0", location: "value1", qa_scorecard: "value2"
      assert_equal "projects/value0/locations/value1/qaScorecards/value2", path
    end
  end

  def test_qa_scorecard_result_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.qa_scorecard_result_path project: "value0", location: "value1", qa_scorecard_result: "value2"
      assert_equal "projects/value0/locations/value1/qaScorecardResults/value2", path
    end
  end

  def test_qa_scorecard_revision_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.qa_scorecard_revision_path project: "value0", location: "value1", qa_scorecard: "value2", revision: "value3"
      assert_equal "projects/value0/locations/value1/qaScorecards/value2/revisions/value3", path
    end
  end

  def test_recognizer_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.recognizer_path project: "value0", location: "value1", recognizer: "value2"
      assert_equal "projects/value0/locations/value1/recognizers/value2", path
    end
  end

  def test_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.settings_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1/settings", path
    end
  end

  def test_view_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.view_path project: "value0", location: "value1", view: "value2"
      assert_equal "projects/value0/locations/value1/views/value2", path
    end
  end
end

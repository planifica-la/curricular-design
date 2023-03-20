require "test_helper"

class ConceptTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concept_topic = concept_topics(:one)
  end

  test "should get index" do
    get concept_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_concept_topic_url
    assert_response :success
  end

  test "should create concept_topic" do
    assert_difference("ConceptTopic.count") do
      post concept_topics_url, params: { concept_topic: { grade_id: @concept_topic.grade_id, level_id: @concept_topic.level_id, subject_id: @concept_topic.subject_id, topic: @concept_topic.topic } }
    end

    assert_redirected_to concept_topic_url(ConceptTopic.last)
  end

  test "should show concept_topic" do
    get concept_topic_url(@concept_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_concept_topic_url(@concept_topic)
    assert_response :success
  end

  test "should update concept_topic" do
    patch concept_topic_url(@concept_topic), params: { concept_topic: { grade_id: @concept_topic.grade_id, level_id: @concept_topic.level_id, subject_id: @concept_topic.subject_id, topic: @concept_topic.topic } }
    assert_redirected_to concept_topic_url(@concept_topic)
  end

  test "should destroy concept_topic" do
    assert_difference("ConceptTopic.count", -1) do
      delete concept_topic_url(@concept_topic)
    end

    assert_redirected_to concept_topics_url
  end
end

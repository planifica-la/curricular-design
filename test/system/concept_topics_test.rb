require "application_system_test_case"

class ConceptTopicsTest < ApplicationSystemTestCase
  setup do
    @concept_topic = concept_topics(:one)
  end

  test "visiting the index" do
    visit concept_topics_url
    assert_selector "h1", text: "Concept topics"
  end

  test "should create concept topic" do
    visit concept_topics_url
    click_on "New concept topic"

    fill_in "Grade", with: @concept_topic.grade_id
    fill_in "Level", with: @concept_topic.level_id
    fill_in "Subject", with: @concept_topic.subject_id
    fill_in "Topic", with: @concept_topic.topic
    click_on "Create Concept topic"

    assert_text "Concept topic was successfully created"
    click_on "Back"
  end

  test "should update Concept topic" do
    visit concept_topic_url(@concept_topic)
    click_on "Edit this concept topic", match: :first

    fill_in "Grade", with: @concept_topic.grade_id
    fill_in "Level", with: @concept_topic.level_id
    fill_in "Subject", with: @concept_topic.subject_id
    fill_in "Topic", with: @concept_topic.topic
    click_on "Update Concept topic"

    assert_text "Concept topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Concept topic" do
    visit concept_topic_url(@concept_topic)
    click_on "Destroy this concept topic", match: :first

    assert_text "Concept topic was successfully destroyed"
  end
end

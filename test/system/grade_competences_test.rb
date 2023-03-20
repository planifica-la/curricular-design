require "application_system_test_case"

class GradeCompetencesTest < ApplicationSystemTestCase
  setup do
    @grade_competence = grade_competences(:one)
  end

  test "visiting the index" do
    visit grade_competences_url
    assert_selector "h1", text: "Grade competences"
  end

  test "should create grade competence" do
    visit grade_competences_url
    click_on "New grade competence"

    fill_in "Fundamental competence", with: @grade_competence.fundamental_competence_id
    fill_in "Grade", with: @grade_competence.grade
    fill_in "Level", with: @grade_competence.level_id
    fill_in "Name", with: @grade_competence.name
    click_on "Create Grade competence"

    assert_text "Grade competence was successfully created"
    click_on "Back"
  end

  test "should update Grade competence" do
    visit grade_competence_url(@grade_competence)
    click_on "Edit this grade competence", match: :first

    fill_in "Fundamental competence", with: @grade_competence.fundamental_competence_id
    fill_in "Grade", with: @grade_competence.grade
    fill_in "Level", with: @grade_competence.level_id
    fill_in "Name", with: @grade_competence.name
    click_on "Update Grade competence"

    assert_text "Grade competence was successfully updated"
    click_on "Back"
  end

  test "should destroy Grade competence" do
    visit grade_competence_url(@grade_competence)
    click_on "Destroy this grade competence", match: :first

    assert_text "Grade competence was successfully destroyed"
  end
end

require "application_system_test_case"

class FundamentalCompetencesTest < ApplicationSystemTestCase
  setup do
    @fundamental_competence = fundamental_competences(:one)
  end

  test "visiting the index" do
    visit fundamental_competences_url
    assert_selector "h1", text: "Fundamental competences"
  end

  test "should create fundamental competence" do
    visit fundamental_competences_url
    click_on "New fundamental competence"

    fill_in "Name", with: @fundamental_competence.name
    click_on "Create Fundamental competence"

    assert_text "Fundamental competence was successfully created"
    click_on "Back"
  end

  test "should update Fundamental competence" do
    visit fundamental_competence_url(@fundamental_competence)
    click_on "Edit this fundamental competence", match: :first

    fill_in "Name", with: @fundamental_competence.name
    click_on "Update Fundamental competence"

    assert_text "Fundamental competence was successfully updated"
    click_on "Back"
  end

  test "should destroy Fundamental competence" do
    visit fundamental_competence_url(@fundamental_competence)
    click_on "Destroy this fundamental competence", match: :first

    assert_text "Fundamental competence was successfully destroyed"
  end
end

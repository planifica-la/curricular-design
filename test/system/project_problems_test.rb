require "application_system_test_case"

class ProjectProblemsTest < ApplicationSystemTestCase
  setup do
    @project_problem = project_problems(:one)
  end

  test "visiting the index" do
    visit project_problems_url
    assert_selector "h1", text: "Project problems"
  end

  test "should create project problem" do
    visit project_problems_url
    click_on "New project problem"

    fill_in "Level", with: @project_problem.level_id
    fill_in "Problem", with: @project_problem.problem
    click_on "Create Project problem"

    assert_text "Project problem was successfully created"
    click_on "Back"
  end

  test "should update Project problem" do
    visit project_problem_url(@project_problem)
    click_on "Edit this project problem", match: :first

    fill_in "Level", with: @project_problem.level_id
    fill_in "Problem", with: @project_problem.problem
    click_on "Update Project problem"

    assert_text "Project problem was successfully updated"
    click_on "Back"
  end

  test "should destroy Project problem" do
    visit project_problem_url(@project_problem)
    click_on "Destroy this project problem", match: :first

    assert_text "Project problem was successfully destroyed"
  end
end

require "test_helper"

class ProjectProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_problem = project_problems(:one)
  end

  test "should get index" do
    get project_problems_url
    assert_response :success
  end

  test "should get new" do
    get new_project_problem_url
    assert_response :success
  end

  test "should create project_problem" do
    assert_difference("ProjectProblem.count") do
      post project_problems_url, params: { project_problem: { level_id: @project_problem.level_id, problem: @project_problem.problem } }
    end

    assert_redirected_to project_problem_url(ProjectProblem.last)
  end

  test "should show project_problem" do
    get project_problem_url(@project_problem)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_problem_url(@project_problem)
    assert_response :success
  end

  test "should update project_problem" do
    patch project_problem_url(@project_problem), params: { project_problem: { level_id: @project_problem.level_id, problem: @project_problem.problem } }
    assert_redirected_to project_problem_url(@project_problem)
  end

  test "should destroy project_problem" do
    assert_difference("ProjectProblem.count", -1) do
      delete project_problem_url(@project_problem)
    end

    assert_redirected_to project_problems_url
  end
end

require "test_helper"

class GradeCompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_competence = grade_competences(:one)
  end

  test "should get index" do
    get grade_competences_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_competence_url
    assert_response :success
  end

  test "should create grade_competence" do
    assert_difference("GradeCompetence.count") do
      post grade_competences_url, params: { grade_competence: { fundamental_competence_id: @grade_competence.fundamental_competence_id, grade: @grade_competence.grade, level_id: @grade_competence.level_id, name: @grade_competence.name } }
    end

    assert_redirected_to grade_competence_url(GradeCompetence.last)
  end

  test "should show grade_competence" do
    get grade_competence_url(@grade_competence)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_competence_url(@grade_competence)
    assert_response :success
  end

  test "should update grade_competence" do
    patch grade_competence_url(@grade_competence), params: { grade_competence: { fundamental_competence_id: @grade_competence.fundamental_competence_id, grade: @grade_competence.grade, level_id: @grade_competence.level_id, name: @grade_competence.name } }
    assert_redirected_to grade_competence_url(@grade_competence)
  end

  test "should destroy grade_competence" do
    assert_difference("GradeCompetence.count", -1) do
      delete grade_competence_url(@grade_competence)
    end

    assert_redirected_to grade_competences_url
  end
end

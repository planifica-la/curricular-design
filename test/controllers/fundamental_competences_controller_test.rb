require "test_helper"

class FundamentalCompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundamental_competence = fundamental_competences(:one)
  end

  test "should get index" do
    get fundamental_competences_url
    assert_response :success
  end

  test "should get new" do
    get new_fundamental_competence_url
    assert_response :success
  end

  test "should create fundamental_competence" do
    assert_difference("FundamentalCompetence.count") do
      post fundamental_competences_url, params: { fundamental_competence: { name: @fundamental_competence.name } }
    end

    assert_redirected_to fundamental_competence_url(FundamentalCompetence.last)
  end

  test "should show fundamental_competence" do
    get fundamental_competence_url(@fundamental_competence)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundamental_competence_url(@fundamental_competence)
    assert_response :success
  end

  test "should update fundamental_competence" do
    patch fundamental_competence_url(@fundamental_competence), params: { fundamental_competence: { name: @fundamental_competence.name } }
    assert_redirected_to fundamental_competence_url(@fundamental_competence)
  end

  test "should destroy fundamental_competence" do
    assert_difference("FundamentalCompetence.count", -1) do
      delete fundamental_competence_url(@fundamental_competence)
    end

    assert_redirected_to fundamental_competences_url
  end
end

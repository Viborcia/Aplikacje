require "test_helper"

class DissertationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dissertation = dissertations(:one)
  end

  test "should get index" do
    get dissertations_url
    assert_response :success
  end

  test "should get new" do
    get new_dissertation_url
    assert_response :success
  end

  test "should create dissertation" do
    assert_difference("Dissertation.count") do
      post dissertations_url, params: { dissertation: { feedback: @dissertation.feedback, index: @dissertation.index, mark: @dissertation.mark, promoter_index: @dissertation.promoter_index, review: @dissertation.review, sending_date: @dissertation.sending_date, student_index: @dissertation.student_index } }
    end

    assert_redirected_to dissertation_url(Dissertation.last)
  end

  test "should show dissertation" do
    get dissertation_url(@dissertation)
    assert_response :success
  end

  test "should get edit" do
    get edit_dissertation_url(@dissertation)
    assert_response :success
  end

  test "should update dissertation" do
    patch dissertation_url(@dissertation), params: { dissertation: { feedback: @dissertation.feedback, index: @dissertation.index, mark: @dissertation.mark, promoter_index: @dissertation.promoter_index, review: @dissertation.review, sending_date: @dissertation.sending_date, student_index: @dissertation.student_index } }
    assert_redirected_to dissertation_url(@dissertation)
  end

  test "should destroy dissertation" do
    assert_difference("Dissertation.count", -1) do
      delete dissertation_url(@dissertation)
    end

    assert_redirected_to dissertations_url
  end
end

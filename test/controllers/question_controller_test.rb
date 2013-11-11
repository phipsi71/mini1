require 'test_helper'

class QuestionControllerTest < ActionController::TestCase
  test "should get question:string" do
    get :question:string
    assert_response :success
  end

  test "should get is_active:boolean" do
    get :is_active:boolean
    assert_response :success
  end

end

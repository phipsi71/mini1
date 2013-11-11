require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get poke" do
    get :poke
    assert_response :success
  end

end

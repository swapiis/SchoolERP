require 'test_helper'

class ExamSettingControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end
end

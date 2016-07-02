require 'test_helper'

class QusetionTypesControllerTest < ActionController::TestCase
  setup do
    @qusetion_type = qusetion_types(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:qusetion_types)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create qusetion_type' do
    assert_difference('QusetionType.count') do
      post :create, qusetion_type: { type: @qusetion_type.type }
    end

    assert_redirected_to qusetion_type_path(assigns(:qusetion_type))
  end

  test 'should show qusetion_type' do
    get :show, id: @qusetion_type
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @qusetion_type
    assert_response :success
  end

  test 'should update qusetion_type' do
    patch :update, id: @qusetion_type, qusetion_type: { type: @qusetion_type.type }
    assert_redirected_to qusetion_type_path(assigns(:qusetion_type))
  end

  test 'should destroy qusetion_type' do
    assert_difference('QusetionType.count', -1) do
      delete :destroy, id: @qusetion_type
    end

    assert_redirected_to qusetion_types_path
  end
end

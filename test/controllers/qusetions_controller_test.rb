require 'test_helper'

class QusetionsControllerTest < ActionController::TestCase
  setup do
    @qusetion = qusetions(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:qusetions)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create qusetion' do
    assert_difference('Qusetion.count') do
      post :create, qusetion: { question: @qusetion.question, question_count: @qusetion.question_count, question_type_id: @qusetion.question_type_id }
    end

    assert_redirected_to qusetion_path(assigns(:qusetion))
  end

  test 'should show qusetion' do
    get :show, id: @qusetion
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @qusetion
    assert_response :success
  end

  test 'should update qusetion' do
    patch :update, id: @qusetion, qusetion: { question: @qusetion.question, question_count: @qusetion.question_count, question_type_id: @qusetion.question_type_id }
    assert_redirected_to qusetion_path(assigns(:qusetion))
  end

  test 'should destroy qusetion' do
    assert_difference('Qusetion.count', -1) do
      delete :destroy, id: @qusetion
    end

    assert_redirected_to qusetions_path
  end
end

require 'test_helper'

class PlacementNewsControllerTest < ActionController::TestCase
  setup do
    @placement_news = placement_news(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:placement_news)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create placement_news' do
    assert_difference('PlacementNews.count') do
      post :create, placement_news: { content: @placement_news.content, title: @placement_news.title }
    end

    assert_redirected_to placement_news_path(assigns(:placement_news))
  end

  test 'should show placement_news' do
    get :show, id: @placement_news
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @placement_news
    assert_response :success
  end

  test 'should update placement_news' do
    patch :update, id: @placement_news, placement_news: { content: @placement_news.content, title: @placement_news.title }
    assert_redirected_to placement_news_path(assigns(:placement_news))
  end

  test 'should destroy placement_news' do
    assert_difference('PlacementNews.count', -1) do
      delete :destroy, id: @placement_news
    end

    assert_redirected_to placement_news_index_path
  end
end

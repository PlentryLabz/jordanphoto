require 'test_helper'

class Admin::ReviewsControllerTest < ActionController::TestCase

  test '#index' do
    get :index
    assert_response :success
  end

  test '#new' do
    get :new
    assert_response :success
  end

  test '#index' do
    get :edit
    assert_response :success
  end

end
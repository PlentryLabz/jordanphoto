require 'test_helper'

class Admin::ContactsControllerTest < ActionController::TestCase

  test '#index' do
    get :index
    assert_response :success
  end

  test '#show' do
    get :show
    assert_response :success
  end

end
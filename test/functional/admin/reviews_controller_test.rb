require 'test_helper'

class Admin::ReviewsControllerTest < ActionController::TestCase

  test '#index' do
    get :index
    assert_response :success
  end

end
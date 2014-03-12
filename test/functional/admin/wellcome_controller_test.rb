require 'test_helper'

class Admin::WellcomeControllerTest < ActionController::TestCase

  test '#show' do
    get :show
    assert_response :success
  end

end
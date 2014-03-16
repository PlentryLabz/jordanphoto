require 'test_helper'

class Admin::ReviewsControllerTest < ActionController::TestCase

  def setup
    @review = create :review
    @attrs = attributes_for :review, title: 'edited title'
  end

  test '#index' do
    get :index
    assert_response :success
  end

  test '#new' do
    get :new
    assert_response :success
  end

  test '#edit' do
    get :edit, id: @review
    assert_response :success
  end

  test '#create' do
    attrs = attributes_for :review
    post :create, review: attrs

    assert_response :redirect
    review = Review.where(title: attrs[:title]).first
    assert review
  end

  test '#update' do
    put :update, id: @review, review: @attrs
    assert_response :redirect
    @review.reload
    assert @attrs[:title] == @review.title
  end

  test '#destroy' do
    delete :destroy, id: @review

    assert_response :redirect
    assert !Review.exists?(@review)
  end

end
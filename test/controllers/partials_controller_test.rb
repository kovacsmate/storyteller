require 'test_helper'

class PartialsControllerTest < ActionController::TestCase
  setup do
    @partial = partials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partial" do
    assert_difference('Partial.count') do
      post :create, partial: { background_color: @partial.background_color, post_id: @partial.post_id, text: @partial.text, user_id: @partial.user_id }
    end

    assert_redirected_to partial_path(assigns(:partial))
  end

  test "should show partial" do
    get :show, id: @partial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partial
    assert_response :success
  end

  test "should update partial" do
    patch :update, id: @partial, partial: { background_color: @partial.background_color, post_id: @partial.post_id, text: @partial.text, user_id: @partial.user_id }
    assert_redirected_to partial_path(assigns(:partial))
  end

  test "should destroy partial" do
    assert_difference('Partial.count', -1) do
      delete :destroy, id: @partial
    end

    assert_redirected_to partials_path
  end
end

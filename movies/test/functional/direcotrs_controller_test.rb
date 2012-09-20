require 'test_helper'

class DirecotrsControllerTest < ActionController::TestCase
  setup do
    @direcotr = direcotrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direcotrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direcotr" do
    assert_difference('Direcotr.count') do
      post :create, direcotr: { age: @direcotr.age, country: @direcotr.country, first_name: @direcotr.first_name, last_name: @direcotr.last_name, movies: @direcotr.movies }
    end

    assert_redirected_to direcotr_path(assigns(:direcotr))
  end

  test "should show direcotr" do
    get :show, id: @direcotr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direcotr
    assert_response :success
  end

  test "should update direcotr" do
    put :update, id: @direcotr, direcotr: { age: @direcotr.age, country: @direcotr.country, first_name: @direcotr.first_name, last_name: @direcotr.last_name, movies: @direcotr.movies }
    assert_redirected_to direcotr_path(assigns(:direcotr))
  end

  test "should destroy direcotr" do
    assert_difference('Direcotr.count', -1) do
      delete :destroy, id: @direcotr
    end

    assert_redirected_to direcotrs_path
  end
end

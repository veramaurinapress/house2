require 'test_helper'

class GridsControllerTest < ActionController::TestCase
  setup do
    @grid = grids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grid" do
    assert_difference('Grid.count') do
      post :create, grid: { description: @grid.description, picture: @grid.picture, title: @grid.title }
    end

    assert_redirected_to grid_path(assigns(:grid))
  end

  test "should show grid" do
    get :show, id: @grid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grid
    assert_response :success
  end

  test "should update grid" do
    patch :update, id: @grid, grid: { description: @grid.description, picture: @grid.picture, title: @grid.title }
    assert_redirected_to grid_path(assigns(:grid))
  end

  test "should destroy grid" do
    assert_difference('Grid.count', -1) do
      delete :destroy, id: @grid
    end

    assert_redirected_to grids_path
  end
end

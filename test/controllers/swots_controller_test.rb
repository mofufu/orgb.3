require 'test_helper'

class SwotsControllerTest < ActionController::TestCase
  setup do
    @swot = swots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swot" do
    assert_difference('Swot.count') do
      post :create, swot: { company_name: @swot.company_name, opportunity: @swot.opportunity, strength: @swot.strength, threat: @swot.threat, weak: @swot.weak }
    end

    assert_redirected_to swot_path(assigns(:swot))
  end

  test "should show swot" do
    get :show, id: @swot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swot
    assert_response :success
  end

  test "should update swot" do
    patch :update, id: @swot, swot: { company_name: @swot.company_name, opportunity: @swot.opportunity, strength: @swot.strength, threat: @swot.threat, weak: @swot.weak }
    assert_redirected_to swot_path(assigns(:swot))
  end

  test "should destroy swot" do
    assert_difference('Swot.count', -1) do
      delete :destroy, id: @swot
    end

    assert_redirected_to swots_path
  end
end

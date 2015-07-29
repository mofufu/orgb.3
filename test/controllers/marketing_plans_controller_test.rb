require 'test_helper'

class MarketingPlansControllerTest < ActionController::TestCase
  setup do
    @marketing_plan = marketing_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketing_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketing_plan" do
    assert_difference('MarketingPlan.count') do
      post :create, marketing_plan: { buyer_profile_id: @marketing_plan.buyer_profile_id, title: @marketing_plan.title }
    end

    assert_redirected_to marketing_plan_path(assigns(:marketing_plan))
  end

  test "should show marketing_plan" do
    get :show, id: @marketing_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marketing_plan
    assert_response :success
  end

  test "should update marketing_plan" do
    patch :update, id: @marketing_plan, marketing_plan: { buyer_profile_id: @marketing_plan.buyer_profile_id, title: @marketing_plan.title }
    assert_redirected_to marketing_plan_path(assigns(:marketing_plan))
  end

  test "should destroy marketing_plan" do
    assert_difference('MarketingPlan.count', -1) do
      delete :destroy, id: @marketing_plan
    end

    assert_redirected_to marketing_plans_path
  end
end

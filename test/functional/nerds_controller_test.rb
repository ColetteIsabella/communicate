require 'test_helper'

class NerdsControllerTest < ActionController::TestCase
  setup do
    @nerd = nerds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nerds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nerd" do
    assert_difference('Nerd.count') do
      post :create, nerd: { answer: @nerd.answer, nameA: @nerd.nameA, nameB: @nerd.nameB, question: @nerd.question }
    end

    assert_redirected_to nerd_path(assigns(:nerd))
  end

  test "should show nerd" do
    get :show, id: @nerd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nerd
    assert_response :success
  end

  test "should update nerd" do
    put :update, id: @nerd, nerd: { answer: @nerd.answer, nameA: @nerd.nameA, nameB: @nerd.nameB, question: @nerd.question }
    assert_redirected_to nerd_path(assigns(:nerd))
  end

  test "should destroy nerd" do
    assert_difference('Nerd.count', -1) do
      delete :destroy, id: @nerd
    end

    assert_redirected_to nerds_path
  end
end

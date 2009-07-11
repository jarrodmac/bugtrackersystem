require File.dirname(__FILE__) + '/../test_helper'

class BugsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bugs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bug
    assert_difference('Bug.count') do
      post :create, :bug => { }
    end

    assert_redirected_to bug_path(assigns(:bug))
  end

  def test_should_show_bug
    get :show, :id => bugs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bugs(:one).id
    assert_response :success
  end

  def test_should_update_bug
    put :update, :id => bugs(:one).id, :bug => { }
    assert_redirected_to bug_path(assigns(:bug))
  end

  def test_should_destroy_bug
    assert_difference('Bug.count', -1) do
      delete :destroy, :id => bugs(:one).id
    end

    assert_redirected_to bugs_path
  end
end

require 'test_helper'

class IpAddressCollectionsControllerTest < ActionController::TestCase
  setup do
    @ip_address_collection = ip_address_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_address_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_address_collection" do
    assert_difference('IpAddressCollection.count') do
      post :create, ip_address_collection: { ip_address: @ip_address_collection.ip_address, items: @ip_address_collection.items }
    end

    assert_redirected_to ip_address_collection_path(assigns(:ip_address_collection))
  end

  test "should show ip_address_collection" do
    get :show, id: @ip_address_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip_address_collection
    assert_response :success
  end

  test "should update ip_address_collection" do
    put :update, id: @ip_address_collection, ip_address_collection: { ip_address: @ip_address_collection.ip_address, items: @ip_address_collection.items }
    assert_redirected_to ip_address_collection_path(assigns(:ip_address_collection))
  end

  test "should destroy ip_address_collection" do
    assert_difference('IpAddressCollection.count', -1) do
      delete :destroy, id: @ip_address_collection
    end

    assert_redirected_to ip_address_collections_path
  end
end

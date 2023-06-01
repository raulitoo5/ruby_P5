require "test_helper"

class RefrescosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refresco = refrescos(:one)
  end

  test "should get index" do
    get refrescos_url
    assert_response :success
  end

  test "should get new" do
    get new_refresco_url
    assert_response :success
  end

  test "should create refresco" do
    assert_difference("Refresco.count") do
      post refrescos_url, params: { refresco: { nombre: @refresco.nombre } }
    end

    assert_redirected_to refresco_url(Refresco.last)
  end

  test "should show refresco" do
    get refresco_url(@refresco)
    assert_response :success
  end

  test "should get edit" do
    get edit_refresco_url(@refresco)
    assert_response :success
  end

  test "should update refresco" do
    patch refresco_url(@refresco), params: { refresco: { nombre: @refresco.nombre } }
    assert_redirected_to refresco_url(@refresco)
  end

  test "should destroy refresco" do
    assert_difference("Refresco.count", -1) do
      delete refresco_url(@refresco)
    end

    assert_redirected_to refrescos_url
  end
end

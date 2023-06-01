require "test_helper"

class ZumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zumo = zumos(:one)
  end

  test "should get index" do
    get zumos_url
    assert_response :success
  end

  test "should get new" do
    get new_zumo_url
    assert_response :success
  end

  test "should create zumo" do
    assert_difference("Zumo.count") do
      post zumos_url, params: { zumo: { nombre: @zumo.nombre } }
    end

    assert_redirected_to zumo_url(Zumo.last)
  end

  test "should show zumo" do
    get zumo_url(@zumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_zumo_url(@zumo)
    assert_response :success
  end

  test "should update zumo" do
    patch zumo_url(@zumo), params: { zumo: { nombre: @zumo.nombre } }
    assert_redirected_to zumo_url(@zumo)
  end

  test "should destroy zumo" do
    assert_difference("Zumo.count", -1) do
      delete zumo_url(@zumo)
    end

    assert_redirected_to zumos_url
  end
end

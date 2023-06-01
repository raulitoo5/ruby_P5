require "test_helper"

class BebidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bebida = bebidas(:one)
  end

  test "should get index" do
    get bebidas_url
    assert_response :success
  end

  test "should get new" do
    get new_bebida_url
    assert_response :success
  end

  test "should create bebida" do
    assert_difference("Bebida.count") do
      post bebidas_url, params: { bebida: { alcohol_id: @bebida.alcohol_id, nombre: @bebida.nombre, precio: @bebida.precio, refresco_id: @bebida.refresco_id, tipo: @bebida.tipo, zumo_id: @bebida.zumo_id } }
    end

    assert_redirected_to bebida_url(Bebida.last)
  end

  test "should show bebida" do
    get bebida_url(@bebida)
    assert_response :success
  end

  test "should get edit" do
    get edit_bebida_url(@bebida)
    assert_response :success
  end

  test "should update bebida" do
    patch bebida_url(@bebida), params: { bebida: { alcohol_id: @bebida.alcohol_id, nombre: @bebida.nombre, precio: @bebida.precio, refresco_id: @bebida.refresco_id, tipo: @bebida.tipo, zumo_id: @bebida.zumo_id } }
    assert_redirected_to bebida_url(@bebida)
  end

  test "should destroy bebida" do
    assert_difference("Bebida.count", -1) do
      delete bebida_url(@bebida)
    end

    assert_redirected_to bebidas_url
  end
end

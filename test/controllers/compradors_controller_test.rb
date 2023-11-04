require "test_helper"

class CompradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comprador = compradors(:one)
  end

  test "should get index" do
    get compradors_url
    assert_response :success
  end

  test "should get new" do
    get new_comprador_url
    assert_response :success
  end

  test "should create comprador" do
    assert_difference("Comprador.count") do
      post compradors_url, params: { comprador: { cpf_cnpj: @comprador.cpf_cnpj, nome: @comprador.nome } }
    end

    assert_redirected_to comprador_url(Comprador.last)
  end

  test "should show comprador" do
    get comprador_url(@comprador)
    assert_response :success
  end

  test "should get edit" do
    get edit_comprador_url(@comprador)
    assert_response :success
  end

  test "should update comprador" do
    patch comprador_url(@comprador), params: { comprador: { cpf_cnpj: @comprador.cpf_cnpj, nome: @comprador.nome } }
    assert_redirected_to comprador_url(@comprador)
  end

  test "should destroy comprador" do
    assert_difference("Comprador.count", -1) do
      delete comprador_url(@comprador)
    end

    assert_redirected_to compradors_url
  end
end

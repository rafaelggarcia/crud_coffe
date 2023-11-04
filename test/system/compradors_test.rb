require "application_system_test_case"

class CompradorsTest < ApplicationSystemTestCase
  setup do
    @comprador = compradors(:one)
  end

  test "visiting the index" do
    visit compradors_url
    assert_selector "h1", text: "Compradors"
  end

  test "should create comprador" do
    visit compradors_url
    click_on "New comprador"

    fill_in "Cpf cnpj", with: @comprador.cpf_cnpj
    fill_in "Nome", with: @comprador.nome
    click_on "Create Comprador"

    assert_text "Comprador was successfully created"
    click_on "Back"
  end

  test "should update Comprador" do
    visit comprador_url(@comprador)
    click_on "Edit this comprador", match: :first

    fill_in "Cpf cnpj", with: @comprador.cpf_cnpj
    fill_in "Nome", with: @comprador.nome
    click_on "Update Comprador"

    assert_text "Comprador was successfully updated"
    click_on "Back"
  end

  test "should destroy Comprador" do
    visit comprador_url(@comprador)
    click_on "Destroy this comprador", match: :first

    assert_text "Comprador was successfully destroyed"
  end
end

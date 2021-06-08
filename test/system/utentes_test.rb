require "application_system_test_case"

class UtentesTest < ApplicationSystemTestCase
  setup do
    @utente = utentes(:one)
  end

  test "visiting the index" do
    visit utentes_url
    assert_selector "h1", text: "Utentes"
  end

  test "creating a Utente" do
    visit utentes_url
    click_on "New Utente"

    fill_in "Annotazioni", with: @utente.annotazioni
    fill_in "Cognome", with: @utente.cognome
    fill_in "Indirizzo", with: @utente.indirizzo
    fill_in "Nome", with: @utente.nome
    fill_in "Numero", with: @utente.numero
    click_on "Create Utente"

    assert_text "Utente was successfully created"
    click_on "Back"
  end

  test "updating a Utente" do
    visit utentes_url
    click_on "Edit", match: :first

    fill_in "Annotazioni", with: @utente.annotazioni
    fill_in "Cognome", with: @utente.cognome
    fill_in "Indirizzo", with: @utente.indirizzo
    fill_in "Nome", with: @utente.nome
    fill_in "Numero", with: @utente.numero
    click_on "Update Utente"

    assert_text "Utente was successfully updated"
    click_on "Back"
  end

  test "destroying a Utente" do
    visit utentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utente was successfully destroyed"
  end
end

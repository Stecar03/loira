require "application_system_test_case"

class TappesTest < ApplicationSystemTestCase
  setup do
    @tappe = tappes(:one)
  end

  test "visiting the index" do
    visit tappes_url
    assert_selector "h1", text: "Tappes"
  end

  test "creating a Tappe" do
    visit tappes_url
    click_on "New Tappe"

    fill_in "Denominazione", with: @tappe.denominazione
    fill_in "Descing", with: @tappe.descing
    fill_in "Descita", with: @tappe.descita
    fill_in "Durata", with: @tappe.durata
    fill_in "Orari partenza", with: @tappe.orari_partenza
    fill_in "Partecipanti", with: @tappe.partecipanti
    fill_in "Partenza", with: @tappe.partenza
    click_on "Create Tappe"

    assert_text "Tappe was successfully created"
    click_on "Back"
  end

  test "updating a Tappe" do
    visit tappes_url
    click_on "Edit", match: :first

    fill_in "Denominazione", with: @tappe.denominazione
    fill_in "Descing", with: @tappe.descing
    fill_in "Descita", with: @tappe.descita
    fill_in "Durata", with: @tappe.durata
    fill_in "Orari partenza", with: @tappe.orari_partenza
    fill_in "Partecipanti", with: @tappe.partecipanti
    fill_in "Partenza", with: @tappe.partenza
    click_on "Update Tappe"

    assert_text "Tappe was successfully updated"
    click_on "Back"
  end

  test "destroying a Tappe" do
    visit tappes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tappe was successfully destroyed"
  end
end

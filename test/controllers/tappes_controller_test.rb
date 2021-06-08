require "test_helper"

class TappesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tappe = tappes(:one)
  end

  test "should get index" do
    get tappes_url
    assert_response :success
  end

  test "should get new" do
    get new_tappe_url
    assert_response :success
  end

  test "should create tappe" do
    assert_difference('Tappe.count') do
      post tappes_url, params: { tappe: { denominazione: @tappe.denominazione, descing: @tappe.descing, descita: @tappe.descita, durata: @tappe.durata, orari_partenza: @tappe.orari_partenza, partecipanti: @tappe.partecipanti, partenza: @tappe.partenza } }
    end

    assert_redirected_to tappe_url(Tappe.last)
  end

  test "should show tappe" do
    get tappe_url(@tappe)
    assert_response :success
  end

  test "should get edit" do
    get edit_tappe_url(@tappe)
    assert_response :success
  end

  test "should update tappe" do
    patch tappe_url(@tappe), params: { tappe: { denominazione: @tappe.denominazione, descing: @tappe.descing, descita: @tappe.descita, durata: @tappe.durata, orari_partenza: @tappe.orari_partenza, partecipanti: @tappe.partecipanti, partenza: @tappe.partenza } }
    assert_redirected_to tappe_url(@tappe)
  end

  test "should destroy tappe" do
    assert_difference('Tappe.count', -1) do
      delete tappe_url(@tappe)
    end

    assert_redirected_to tappes_url
  end
end

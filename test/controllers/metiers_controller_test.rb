require 'test_helper'

class MetiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metier = metiers(:one)
  end

  test "should get index" do
    get metiers_url
    assert_response :success
  end

  test "should get new" do
    get new_metier_url
    assert_response :success
  end

  test "should create metier" do
    assert_difference('Metier.count') do
      post metiers_url, params: { metier: { label: @metier.label, specialite: @metier.specialite } }
    end

    assert_redirected_to metier_url(Metier.last)
  end

  test "should show metier" do
    get metier_url(@metier)
    assert_response :success
  end

  test "should get edit" do
    get edit_metier_url(@metier)
    assert_response :success
  end

  test "should update metier" do
    patch metier_url(@metier), params: { metier: { label: @metier.label, specialite: @metier.specialite } }
    assert_redirected_to metier_url(@metier)
  end

  test "should destroy metier" do
    assert_difference('Metier.count', -1) do
      delete metier_url(@metier)
    end

    assert_redirected_to metiers_url
  end
end

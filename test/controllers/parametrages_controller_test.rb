require 'test_helper'

class ParametragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parametrage = parametrages(:one)
  end

  test "should get index" do
    get parametrages_url
    assert_response :success
  end

  test "should get new" do
    get new_parametrage_url
    assert_response :success
  end

  test "should create parametrage" do
    assert_difference('Parametrage.count') do
      post parametrages_url, params: { parametrage: { libelle: @parametrage.libelle, typeParam: @parametrage.typeParam } }
    end

    assert_redirected_to parametrage_url(Parametrage.last)
  end

  test "should show parametrage" do
    get parametrage_url(@parametrage)
    assert_response :success
  end

  test "should get edit" do
    get edit_parametrage_url(@parametrage)
    assert_response :success
  end

  test "should update parametrage" do
    patch parametrage_url(@parametrage), params: { parametrage: { libelle: @parametrage.libelle, typeParam: @parametrage.typeParam } }
    assert_redirected_to parametrage_url(@parametrage)
  end

  test "should destroy parametrage" do
    assert_difference('Parametrage.count', -1) do
      delete parametrage_url(@parametrage)
    end

    assert_redirected_to parametrages_url
  end
end

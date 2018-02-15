require 'test_helper'

class EstDuTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @est_du_type = est_du_types(:one)
  end

  test "should get index" do
    get est_du_types_url
    assert_response :success
  end

  test "should get new" do
    get new_est_du_type_url
    assert_response :success
  end

  test "should create est_du_type" do
    assert_difference('EstDuType.count') do
      post est_du_types_url, params: { est_du_type: { etablissement_id: @est_du_type.etablissement_id, parametrage_id: @est_du_type.parametrage_id } }
    end

    assert_redirected_to est_du_type_url(EstDuType.last)
  end

  test "should show est_du_type" do
    get est_du_type_url(@est_du_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_est_du_type_url(@est_du_type)
    assert_response :success
  end

  test "should update est_du_type" do
    patch est_du_type_url(@est_du_type), params: { est_du_type: { etablissement_id: @est_du_type.etablissement_id, parametrage_id: @est_du_type.parametrage_id } }
    assert_redirected_to est_du_type_url(@est_du_type)
  end

  test "should destroy est_du_type" do
    assert_difference('EstDuType.count', -1) do
      delete est_du_type_url(@est_du_type)
    end

    assert_redirected_to est_du_types_url
  end
end

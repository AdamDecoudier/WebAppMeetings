require 'test_helper'

class IntervientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervient = intervients(:one)
  end

  test "should get index" do
    get intervients_url
    assert_response :success
  end

  test "should get new" do
    get new_intervient_url
    assert_response :success
  end

  test "should create intervient" do
    assert_difference('Intervient.count') do
      post intervients_url, params: { intervient: { intervenant_id: @intervient.intervenant_id, intervention_id: @intervient.intervention_id } }
    end

    assert_redirected_to intervient_url(Intervient.last)
  end

  test "should show intervient" do
    get intervient_url(@intervient)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervient_url(@intervient)
    assert_response :success
  end

  test "should update intervient" do
    patch intervient_url(@intervient), params: { intervient: { intervenant_id: @intervient.intervenant_id, intervention_id: @intervient.intervention_id } }
    assert_redirected_to intervient_url(@intervient)
  end

  test "should destroy intervient" do
    assert_difference('Intervient.count', -1) do
      delete intervient_url(@intervient)
    end

    assert_redirected_to intervients_url
  end
end

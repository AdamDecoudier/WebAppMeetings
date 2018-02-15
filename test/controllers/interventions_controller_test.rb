require 'test_helper'

class InterventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervention = interventions(:one)
  end

  test "should get index" do
    get interventions_url
    assert_response :success
  end

  test "should get new" do
    get new_intervention_url
    assert_response :success
  end

  test "should create intervention" do
    assert_difference('Intervention.count') do
      post interventions_url, params: { intervention: { date: @intervention.date, description: @intervention.description, duree: @intervention.duree, etablissement_id: @intervention.etablissement_id, heureDebut: @intervention.heureDebut, nbElevesPresents: @intervention.nbElevesPresents, nbElevesPrevison: @intervention.nbElevesPrevison, nbFille: @intervention.nbFille, nbGarcon: @intervention.nbGarcon, nbIntApres: @intervention.nbIntApres, nbIntAvant: @intervention.nbIntAvant, parametrage_id: @intervention.parametrage_id, titre: @intervention.titre } }
    end

    assert_redirected_to intervention_url(Intervention.last)
  end

  test "should show intervention" do
    get intervention_url(@intervention)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervention_url(@intervention)
    assert_response :success
  end

  test "should update intervention" do
    patch intervention_url(@intervention), params: { intervention: { date: @intervention.date, description: @intervention.description, duree: @intervention.duree, etablissement_id: @intervention.etablissement_id, heureDebut: @intervention.heureDebut, nbElevesPresents: @intervention.nbElevesPresents, nbElevesPrevison: @intervention.nbElevesPrevison, nbFille: @intervention.nbFille, nbGarcon: @intervention.nbGarcon, nbIntApres: @intervention.nbIntApres, nbIntAvant: @intervention.nbIntAvant, parametrage_id: @intervention.parametrage_id, titre: @intervention.titre } }
    assert_redirected_to intervention_url(@intervention)
  end

  test "should destroy intervention" do
    assert_difference('Intervention.count', -1) do
      delete intervention_url(@intervention)
    end

    assert_redirected_to interventions_url
  end
end

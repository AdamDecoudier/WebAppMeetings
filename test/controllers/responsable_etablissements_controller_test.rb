require 'test_helper'

class ResponsableEtablissementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsable_etablissement = responsable_etablissements(:one)
  end

  test "should get index" do
    get responsable_etablissements_url
    assert_response :success
  end

  test "should get new" do
    get new_responsable_etablissement_url
    assert_response :success
  end

  test "should create responsable_etablissement" do
    assert_difference('ResponsableEtablissement.count') do
      post responsable_etablissements_url, params: { responsable_etablissement: { etablissement_id: @responsable_etablissement.etablissement_id, fonction: @responsable_etablissement.fonction, mail: @responsable_etablissement.mail, mdp: @responsable_etablissement.mdp, nom: @responsable_etablissement.nom, prenom: @responsable_etablissement.prenom, pseudo: @responsable_etablissement.pseudo, tel: @responsable_etablissement.tel } }
    end

    assert_redirected_to responsable_etablissement_url(ResponsableEtablissement.last)
  end

  test "should show responsable_etablissement" do
    get responsable_etablissement_url(@responsable_etablissement)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsable_etablissement_url(@responsable_etablissement)
    assert_response :success
  end

  test "should update responsable_etablissement" do
    patch responsable_etablissement_url(@responsable_etablissement), params: { responsable_etablissement: { etablissement_id: @responsable_etablissement.etablissement_id, fonction: @responsable_etablissement.fonction, mail: @responsable_etablissement.mail, mdp: @responsable_etablissement.mdp, nom: @responsable_etablissement.nom, prenom: @responsable_etablissement.prenom, pseudo: @responsable_etablissement.pseudo, tel: @responsable_etablissement.tel } }
    assert_redirected_to responsable_etablissement_url(@responsable_etablissement)
  end

  test "should destroy responsable_etablissement" do
    assert_difference('ResponsableEtablissement.count', -1) do
      delete responsable_etablissement_url(@responsable_etablissement)
    end

    assert_redirected_to responsable_etablissements_url
  end
end

require 'test_helper'

class IntervenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervenant = intervenants(:one)
  end

  test "should get index" do
    get intervenants_url
    assert_response :success
  end

  test "should get new" do
    get new_intervenant_url
    assert_response :success
  end

  test "should create intervenant" do
    assert_difference('Intervenant.count') do
      post intervenants_url, params: { intervenant: { adressePerso1: @intervenant.adressePerso1, adressePerso2: @intervenant.adressePerso2, adressePersoCp: @intervenant.adressePersoCp, adressePersoVille: @intervenant.adressePersoVille, adressePro1: @intervenant.adressePro1, adressePro2: @intervenant.adressePro2, adresseProCp: @intervenant.adresseProCp, adresseProVille: @intervenant.adresseProVille, estResponsablePmis: @intervenant.estResponsablePmis, mail: @intervenant.mail, mdp: @intervenant.mdp, metier_id: @intervenant.metier_id, nom: @intervenant.nom, prenom: @intervenant.prenom, pseudo: @intervenant.pseudo, tel: @intervenant.tel } }
    end

    assert_redirected_to intervenant_url(Intervenant.last)
  end

  test "should show intervenant" do
    get intervenant_url(@intervenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervenant_url(@intervenant)
    assert_response :success
  end

  test "should update intervenant" do
    patch intervenant_url(@intervenant), params: { intervenant: { adressePerso1: @intervenant.adressePerso1, adressePerso2: @intervenant.adressePerso2, adressePersoCp: @intervenant.adressePersoCp, adressePersoVille: @intervenant.adressePersoVille, adressePro1: @intervenant.adressePro1, adressePro2: @intervenant.adressePro2, adresseProCp: @intervenant.adresseProCp, adresseProVille: @intervenant.adresseProVille, estResponsablePmis: @intervenant.estResponsablePmis, mail: @intervenant.mail, mdp: @intervenant.mdp, metier_id: @intervenant.metier_id, nom: @intervenant.nom, prenom: @intervenant.prenom, pseudo: @intervenant.pseudo, tel: @intervenant.tel } }
    assert_redirected_to intervenant_url(@intervenant)
  end

  test "should destroy intervenant" do
    assert_difference('Intervenant.count', -1) do
      delete intervenant_url(@intervenant)
    end

    assert_redirected_to intervenants_url
  end
end

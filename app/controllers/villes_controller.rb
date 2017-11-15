class VillesController < ApplicationController

  def show_indicateurs
    find_ville
    find_years

    if @ville[:decile_revenu] == 1
      @decile_comp = "dans les 10% des revenus médians les plus faibles du pays"
    elsif @ville[:decile_revenu] == 10
      @decile_comp = "dans les 10% des revenus médians les plus élevés du pays"
    elsif @ville[:decile_revenu] <= 5
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus faibles du pays"
    else
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus élevés du pays"
    end

    @charges_fonctionnement_2016 = @comptes_2016[:achats_charges_externes_6].to_i+@comptes_2016[:autres_6].to_i+@comptes_2016[:exceptionnel_6].to_i+@comptes_2016[:frais_elus_6].to_i+@comptes_2016[:frais_financiers_6].to_i+@comptes_2016[:impots_6].to_i+@comptes_2016[:intervention_hors_subventions_6].to_i+@comptes_2016[:personnel_6].to_i+@comptes_2016[:subventions_versees_6]
    @charges_fonctionnement_moy_2016 = @comptes_moy_2016[:achats_charges_externes_6].to_i+@comptes_moy_2016[:autres_6].to_i+@comptes_moy_2016[:exceptionnel_6].to_i+@comptes_moy_2016[:frais_elus_6].to_i+@comptes_moy_2016[:frais_financiers_6].to_i+@comptes_moy_2016[:impots_6].to_i+@comptes_moy_2016[:intervention_hors_subventions_6].to_i+@comptes_moy_2016[:personnel_6].to_i+@comptes_moy_2016[:subventions_versees_6]

  end

  def search
   @ville = Ville.where(nom_propre_et_dep: params[:search]).first
   find_years

    if @ville[:decile_revenu] == 1
      @decile_comp = "dans les 10% des revenus médians les plus faibles du pays"
    elsif @ville[:decile_revenu] == 10
      @decile_comp = "dans les 10% des revenus médians les plus élevés du pays"
    elsif @ville[:decile_revenu] <= 5
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus faibles du pays"
    else
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus élevés du pays"
    end

    @charges_fonctionnement_2016 = @comptes_2016[:achats_charges_externes_6].to_i+@comptes_2016[:autres_6].to_i+@comptes_2016[:exceptionnel_6].to_i+@comptes_2016[:frais_elus_6].to_i+@comptes_2016[:frais_financiers_6].to_i+@comptes_2016[:impots_6].to_i+@comptes_2016[:intervention_hors_subventions_6].to_i+@comptes_2016[:personnel_6].to_i+@comptes_2016[:subventions_versees_6]
    @charges_fonctionnement_moy_2016 = @comptes_moy_2016[:achats_charges_externes_6].to_i+@comptes_moy_2016[:autres_6].to_i+@comptes_moy_2016[:exceptionnel_6].to_i+@comptes_moy_2016[:frais_elus_6].to_i+@comptes_moy_2016[:frais_financiers_6].to_i+@comptes_moy_2016[:impots_6].to_i+@comptes_moy_2016[:intervention_hors_subventions_6].to_i+@comptes_moy_2016[:personnel_6].to_i+@comptes_moy_2016[:subventions_versees_6]

   render action: 'show_indicateurs'

  end

  def show_fiscalite
    find_ville
    find_years
  end

  def show_synthese
    find_ville
    find_years
  end

  def show_depenses
    find_ville
    find_years
    @charges_fonctionnement_2016 = @comptes_2016[:achats_charges_externes_6].to_i+@comptes_2016[:autres_6].to_i+@comptes_2016[:exceptionnel_6].to_i+@comptes_2016[:frais_elus_6].to_i+@comptes_2016[:frais_financiers_6].to_i+@comptes_2016[:impots_6].to_i+@comptes_2016[:intervention_hors_subventions_6].to_i+@comptes_2016[:personnel_6].to_i+@comptes_2016[:subventions_versees_6]
    @charges_fonctionnement_moy_2016 = @comptes_moy_2016[:achats_charges_externes_6].to_i+@comptes_moy_2016[:autres_6].to_i+@comptes_moy_2016[:exceptionnel_6].to_i+@comptes_moy_2016[:frais_elus_6].to_i+@comptes_moy_2016[:frais_financiers_6].to_i+@comptes_moy_2016[:impots_6].to_i+@comptes_moy_2016[:intervention_hors_subventions_6].to_i+@comptes_moy_2016[:personnel_6].to_i+@comptes_moy_2016[:subventions_versees_6]
    @charges_fonctionnement_2015 = @comptes_2015[:achats_charges_externes_6].to_i+@comptes_2015[:autres_6].to_i+@comptes_2015[:exceptionnel_6].to_i+@comptes_2015[:frais_elus_6].to_i+@comptes_2015[:frais_financiers_6].to_i+@comptes_2015[:impots_6].to_i+@comptes_2015[:intervention_hors_subventions_6].to_i+@comptes_2015[:personnel_6].to_i+@comptes_2015[:subventions_versees_6]
    @charges_fonctionnement_moy_2015 = @comptes_moy_2015[:achats_charges_externes_6].to_i+@comptes_moy_2015[:autres_6].to_i+@comptes_moy_2015[:exceptionnel_6].to_i+@comptes_moy_2015[:frais_elus_6].to_i+@comptes_moy_2015[:frais_financiers_6].to_i+@comptes_moy_2015[:impots_6].to_i+@comptes_moy_2015[:intervention_hors_subventions_6].to_i+@comptes_moy_2015[:personnel_6].to_i+@comptes_moy_2015[:subventions_versees_6]
    @charges_fonctionnement_2014 = @comptes_2014[:achats_charges_externes_6].to_i+@comptes_2014[:autres_6].to_i+@comptes_2014[:exceptionnel_6].to_i+@comptes_2014[:frais_elus_6].to_i+@comptes_2014[:frais_financiers_6].to_i+@comptes_2014[:impots_6].to_i+@comptes_2014[:intervention_hors_subventions_6].to_i+@comptes_2014[:personnel_6].to_i+@comptes_2014[:subventions_versees_6]
    @charges_fonctionnement_moy_2014 = @comptes_moy_2014[:achats_charges_externes_6].to_i+@comptes_moy_2014[:autres_6].to_i+@comptes_moy_2014[:exceptionnel_6].to_i+@comptes_moy_2014[:frais_elus_6].to_i+@comptes_moy_2014[:frais_financiers_6].to_i+@comptes_moy_2014[:impots_6].to_i+@comptes_moy_2014[:intervention_hors_subventions_6].to_i+@comptes_moy_2014[:personnel_6].to_i+@comptes_moy_2014[:subventions_versees_6]
    @charges_fonctionnement_2013 = @comptes_2013[:achats_charges_externes_6].to_i+@comptes_2013[:autres_6].to_i+@comptes_2013[:exceptionnel_6].to_i+@comptes_2013[:frais_elus_6].to_i+@comptes_2013[:frais_financiers_6].to_i+@comptes_2013[:impots_6].to_i+@comptes_2013[:intervention_hors_subventions_6].to_i+@comptes_2013[:personnel_6].to_i+@comptes_2013[:subventions_versees_6]
    @charges_fonctionnement_moy_2013 = @comptes_moy_2013[:achats_charges_externes_6].to_i+@comptes_moy_2013[:autres_6].to_i+@comptes_moy_2013[:exceptionnel_6].to_i+@comptes_moy_2013[:frais_elus_6].to_i+@comptes_moy_2013[:frais_financiers_6].to_i+@comptes_moy_2013[:impots_6].to_i+@comptes_moy_2013[:intervention_hors_subventions_6].to_i+@comptes_moy_2013[:personnel_6].to_i+@comptes_moy_2013[:subventions_versees_6]
    @charges_fonctionnement_2012 = @comptes_2012[:achats_charges_externes_6].to_i+@comptes_2012[:autres_6].to_i+@comptes_2012[:exceptionnel_6].to_i+@comptes_2012[:frais_elus_6].to_i+@comptes_2012[:frais_financiers_6].to_i+@comptes_2012[:impots_6].to_i+@comptes_2012[:intervention_hors_subventions_6].to_i+@comptes_2012[:personnel_6].to_i+@comptes_2012[:subventions_versees_6]
    @charges_fonctionnement_moy_2012 = @comptes_moy_2012[:achats_charges_externes_6].to_i+@comptes_moy_2012[:autres_6].to_i+@comptes_moy_2012[:exceptionnel_6].to_i+@comptes_moy_2012[:frais_elus_6].to_i+@comptes_moy_2012[:frais_financiers_6].to_i+@comptes_moy_2012[:impots_6].to_i+@comptes_moy_2012[:intervention_hors_subventions_6].to_i+@comptes_moy_2012[:personnel_6].to_i+@comptes_moy_2012[:subventions_versees_6]
    @charges_fonctionnement_2011 = @comptes_2011[:achats_charges_externes_6].to_i+@comptes_2011[:autres_6].to_i+@comptes_2011[:exceptionnel_6].to_i+@comptes_2011[:frais_elus_6].to_i+@comptes_2011[:frais_financiers_6].to_i+@comptes_2011[:impots_6].to_i+@comptes_2011[:intervention_hors_subventions_6].to_i+@comptes_2011[:personnel_6].to_i+@comptes_2011[:subventions_versees_6]
    @charges_fonctionnement_moy_2011 = @comptes_moy_2011[:achats_charges_externes_6].to_i+@comptes_moy_2011[:autres_6].to_i+@comptes_moy_2011[:exceptionnel_6].to_i+@comptes_moy_2011[:frais_elus_6].to_i+@comptes_moy_2011[:frais_financiers_6].to_i+@comptes_moy_2011[:impots_6].to_i+@comptes_moy_2011[:intervention_hors_subventions_6].to_i+@comptes_moy_2011[:personnel_6].to_i+@comptes_moy_2011[:subventions_versees_6]

    @charges_investissement_2016 = @comptes_2016[:depenses_equipement_2].to_i+@comptes_2016[:subventions_equipement_versees_2].to_i+@comptes_2016[:autres_depenses_equipement_1].to_i+@comptes_2016[:autres_depenses_equipement_2].to_i+@comptes_2016[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2016 = @comptes_moy_2016[:depenses_equipement_2].to_i+@comptes_moy_2016[:subventions_equipement_versees_2].to_i+@comptes_moy_2016[:autres_depenses_equipement_1].to_i+@comptes_moy_2016[:autres_depenses_equipement_2].to_i+@comptes_moy_2016[:depenses_operations_tiers_4].to_i
    @charges_investissement_2015 = @comptes_2015[:depenses_equipement_2].to_i+@comptes_2015[:subventions_equipement_versees_2].to_i+@comptes_2015[:autres_depenses_equipement_1].to_i+@comptes_2015[:autres_depenses_equipement_2].to_i+@comptes_2015[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2015 = @comptes_moy_2015[:depenses_equipement_2].to_i+@comptes_moy_2015[:subventions_equipement_versees_2].to_i+@comptes_moy_2015[:autres_depenses_equipement_1].to_i+@comptes_moy_2015[:autres_depenses_equipement_2].to_i+@comptes_moy_2015[:depenses_operations_tiers_4].to_i
    @charges_investissement_2014 = @comptes_2014[:depenses_equipement_2].to_i+@comptes_2014[:subventions_equipement_versees_2].to_i+@comptes_2014[:autres_depenses_equipement_1].to_i+@comptes_2014[:autres_depenses_equipement_2].to_i+@comptes_2014[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2014 = @comptes_moy_2014[:depenses_equipement_2].to_i+@comptes_moy_2014[:subventions_equipement_versees_2].to_i+@comptes_moy_2014[:autres_depenses_equipement_1].to_i+@comptes_moy_2014[:autres_depenses_equipement_2].to_i+@comptes_moy_2014[:depenses_operations_tiers_4].to_i
    @charges_investissement_2013 = @comptes_2013[:depenses_equipement_2].to_i+@comptes_2013[:subventions_equipement_versees_2].to_i+@comptes_2013[:autres_depenses_equipement_1].to_i+@comptes_2013[:autres_depenses_equipement_2].to_i+@comptes_2013[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2013 = @comptes_moy_2013[:depenses_equipement_2].to_i+@comptes_moy_2013[:subventions_equipement_versees_2].to_i+@comptes_moy_2013[:autres_depenses_equipement_1].to_i+@comptes_moy_2013[:autres_depenses_equipement_2].to_i+@comptes_moy_2013[:depenses_operations_tiers_4].to_i
    @charges_investissement_2012 = @comptes_2012[:depenses_equipement_2].to_i+@comptes_2012[:subventions_equipement_versees_2].to_i+@comptes_2012[:autres_depenses_equipement_1].to_i+@comptes_2012[:autres_depenses_equipement_2].to_i+@comptes_2012[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2012 = @comptes_moy_2012[:depenses_equipement_2].to_i+@comptes_moy_2012[:subventions_equipement_versees_2].to_i+@comptes_moy_2012[:autres_depenses_equipement_1].to_i+@comptes_moy_2012[:autres_depenses_equipement_2].to_i+@comptes_moy_2012[:depenses_operations_tiers_4].to_i
    @charges_investissement_2011 = @comptes_2011[:depenses_equipement_2].to_i+@comptes_2011[:subventions_equipement_versees_2].to_i+@comptes_2011[:autres_depenses_equipement_1].to_i+@comptes_2011[:autres_depenses_equipement_2].to_i+@comptes_2011[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2011 = @comptes_moy_2011[:depenses_equipement_2].to_i+@comptes_moy_2011[:subventions_equipement_versees_2].to_i+@comptes_moy_2011[:autres_depenses_equipement_1].to_i+@comptes_moy_2011[:autres_depenses_equipement_2].to_i+@comptes_moy_2011[:depenses_operations_tiers_4].to_i
  end

  def show_finances
    find_ville
    find_years
    @charges_fonctionnement_2016 = @comptes_2016[:achats_charges_externes_6].to_i+@comptes_2016[:autres_6].to_i+@comptes_2016[:exceptionnel_6].to_i+@comptes_2016[:frais_elus_6].to_i+@comptes_2016[:frais_financiers_6].to_i+@comptes_2016[:impots_6].to_i+@comptes_2016[:intervention_hors_subventions_6].to_i+@comptes_2016[:personnel_6].to_i+@comptes_2016[:subventions_versees_6]
    @charges_fonctionnement_moy_2016 = @comptes_moy_2016[:achats_charges_externes_6].to_i+@comptes_moy_2016[:autres_6].to_i+@comptes_moy_2016[:exceptionnel_6].to_i+@comptes_moy_2016[:frais_elus_6].to_i+@comptes_moy_2016[:frais_financiers_6].to_i+@comptes_moy_2016[:impots_6].to_i+@comptes_moy_2016[:intervention_hors_subventions_6].to_i+@comptes_moy_2016[:personnel_6].to_i+@comptes_moy_2016[:subventions_versees_6]
    @charges_fonctionnement_2015 = @comptes_2015[:achats_charges_externes_6].to_i+@comptes_2015[:autres_6].to_i+@comptes_2015[:exceptionnel_6].to_i+@comptes_2015[:frais_elus_6].to_i+@comptes_2015[:frais_financiers_6].to_i+@comptes_2015[:impots_6].to_i+@comptes_2015[:intervention_hors_subventions_6].to_i+@comptes_2015[:personnel_6].to_i+@comptes_2015[:subventions_versees_6]
    @charges_fonctionnement_moy_2015 = @comptes_moy_2015[:achats_charges_externes_6].to_i+@comptes_moy_2015[:autres_6].to_i+@comptes_moy_2015[:exceptionnel_6].to_i+@comptes_moy_2015[:frais_elus_6].to_i+@comptes_moy_2015[:frais_financiers_6].to_i+@comptes_moy_2015[:impots_6].to_i+@comptes_moy_2015[:intervention_hors_subventions_6].to_i+@comptes_moy_2015[:personnel_6].to_i+@comptes_moy_2015[:subventions_versees_6]
    @charges_fonctionnement_2014 = @comptes_2014[:achats_charges_externes_6].to_i+@comptes_2014[:autres_6].to_i+@comptes_2014[:exceptionnel_6].to_i+@comptes_2014[:frais_elus_6].to_i+@comptes_2014[:frais_financiers_6].to_i+@comptes_2014[:impots_6].to_i+@comptes_2014[:intervention_hors_subventions_6].to_i+@comptes_2014[:personnel_6].to_i+@comptes_2014[:subventions_versees_6]
    @charges_fonctionnement_moy_2014 = @comptes_moy_2014[:achats_charges_externes_6].to_i+@comptes_moy_2014[:autres_6].to_i+@comptes_moy_2014[:exceptionnel_6].to_i+@comptes_moy_2014[:frais_elus_6].to_i+@comptes_moy_2014[:frais_financiers_6].to_i+@comptes_moy_2014[:impots_6].to_i+@comptes_moy_2014[:intervention_hors_subventions_6].to_i+@comptes_moy_2014[:personnel_6].to_i+@comptes_moy_2014[:subventions_versees_6]
    @charges_fonctionnement_2013 = @comptes_2013[:achats_charges_externes_6].to_i+@comptes_2013[:autres_6].to_i+@comptes_2013[:exceptionnel_6].to_i+@comptes_2013[:frais_elus_6].to_i+@comptes_2013[:frais_financiers_6].to_i+@comptes_2013[:impots_6].to_i+@comptes_2013[:intervention_hors_subventions_6].to_i+@comptes_2013[:personnel_6].to_i+@comptes_2013[:subventions_versees_6]
    @charges_fonctionnement_moy_2013 = @comptes_moy_2013[:achats_charges_externes_6].to_i+@comptes_moy_2013[:autres_6].to_i+@comptes_moy_2013[:exceptionnel_6].to_i+@comptes_moy_2013[:frais_elus_6].to_i+@comptes_moy_2013[:frais_financiers_6].to_i+@comptes_moy_2013[:impots_6].to_i+@comptes_moy_2013[:intervention_hors_subventions_6].to_i+@comptes_moy_2013[:personnel_6].to_i+@comptes_moy_2013[:subventions_versees_6]
    @charges_fonctionnement_2012 = @comptes_2012[:achats_charges_externes_6].to_i+@comptes_2012[:autres_6].to_i+@comptes_2012[:exceptionnel_6].to_i+@comptes_2012[:frais_elus_6].to_i+@comptes_2012[:frais_financiers_6].to_i+@comptes_2012[:impots_6].to_i+@comptes_2012[:intervention_hors_subventions_6].to_i+@comptes_2012[:personnel_6].to_i+@comptes_2012[:subventions_versees_6]
    @charges_fonctionnement_moy_2012 = @comptes_moy_2012[:achats_charges_externes_6].to_i+@comptes_moy_2012[:autres_6].to_i+@comptes_moy_2012[:exceptionnel_6].to_i+@comptes_moy_2012[:frais_elus_6].to_i+@comptes_moy_2012[:frais_financiers_6].to_i+@comptes_moy_2012[:impots_6].to_i+@comptes_moy_2012[:intervention_hors_subventions_6].to_i+@comptes_moy_2012[:personnel_6].to_i+@comptes_moy_2012[:subventions_versees_6]
    @charges_fonctionnement_2011 = @comptes_2011[:achats_charges_externes_6].to_i+@comptes_2011[:autres_6].to_i+@comptes_2011[:exceptionnel_6].to_i+@comptes_2011[:frais_elus_6].to_i+@comptes_2011[:frais_financiers_6].to_i+@comptes_2011[:impots_6].to_i+@comptes_2011[:intervention_hors_subventions_6].to_i+@comptes_2011[:personnel_6].to_i+@comptes_2011[:subventions_versees_6]
    @charges_fonctionnement_moy_2011 = @comptes_moy_2011[:achats_charges_externes_6].to_i+@comptes_moy_2011[:autres_6].to_i+@comptes_moy_2011[:exceptionnel_6].to_i+@comptes_moy_2011[:frais_elus_6].to_i+@comptes_moy_2011[:frais_financiers_6].to_i+@comptes_moy_2011[:impots_6].to_i+@comptes_moy_2011[:intervention_hors_subventions_6].to_i+@comptes_moy_2011[:personnel_6].to_i+@comptes_moy_2011[:subventions_versees_6]

    @produits_fonctionnement_2016 = @comptes_2016[:autres_impots_taxes_7].to_i+@comptes_2016[:autres_produits_fonctionnement_7].to_i+@comptes_2016[:dotations_etat_7].to_i+@comptes_2016[:fiscalite_reversee_7].to_i+@comptes_2016[:impots_locaux_7].to_i+@comptes_2016[:produits_cessions_7].to_i+@comptes_2016[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2016[:suventions_participations_7].to_i+@comptes_2016[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2016 = @comptes_moy_2016[:autres_impots_taxes_7].to_i+@comptes_moy_2016[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2016[:dotations_etat_7].to_i+@comptes_moy_2016[:fiscalite_reversee_7].to_i+@comptes_moy_2016[:impots_locaux_7].to_i+@comptes_moy_2016[:produits_cessions_7].to_i+@comptes_moy_2016[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2016[:suventions_participations_7].to_i+@comptes_moy_2016[:ventes_biens_services_7].to_i
    @produits_fonctionnement_2015 = @comptes_2015[:autres_impots_taxes_7].to_i+@comptes_2015[:autres_produits_fonctionnement_7].to_i+@comptes_2015[:dotations_etat_7].to_i+@comptes_2015[:fiscalite_reversee_7].to_i+@comptes_2015[:impots_locaux_7].to_i+@comptes_2015[:produits_cessions_7].to_i+@comptes_2015[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2015[:suventions_participations_7].to_i+@comptes_2015[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2015 = @comptes_moy_2015[:autres_impots_taxes_7].to_i+@comptes_moy_2015[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2015[:dotations_etat_7].to_i+@comptes_moy_2015[:fiscalite_reversee_7].to_i+@comptes_moy_2015[:impots_locaux_7].to_i+@comptes_moy_2015[:produits_cessions_7].to_i+@comptes_moy_2015[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2015[:suventions_participations_7].to_i+@comptes_moy_2015[:ventes_biens_services_7].to_i
    @produits_fonctionnement_2014 = @comptes_2014[:autres_impots_taxes_7].to_i+@comptes_2014[:autres_produits_fonctionnement_7].to_i+@comptes_2014[:dotations_etat_7].to_i+@comptes_2014[:fiscalite_reversee_7].to_i+@comptes_2014[:impots_locaux_7].to_i+@comptes_2014[:produits_cessions_7].to_i+@comptes_2014[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2014[:suventions_participations_7].to_i+@comptes_2014[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2014 = @comptes_moy_2014[:autres_impots_taxes_7].to_i+@comptes_moy_2014[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2014[:dotations_etat_7].to_i+@comptes_moy_2014[:fiscalite_reversee_7].to_i+@comptes_moy_2014[:impots_locaux_7].to_i+@comptes_moy_2014[:produits_cessions_7].to_i+@comptes_moy_2014[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2014[:suventions_participations_7].to_i+@comptes_moy_2014[:ventes_biens_services_7].to_i
    @produits_fonctionnement_2013 = @comptes_2013[:autres_impots_taxes_7].to_i+@comptes_2013[:autres_produits_fonctionnement_7].to_i+@comptes_2013[:dotations_etat_7].to_i+@comptes_2013[:fiscalite_reversee_7].to_i+@comptes_2013[:impots_locaux_7].to_i+@comptes_2013[:produits_cessions_7].to_i+@comptes_2013[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2013[:suventions_participations_7].to_i+@comptes_2013[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2013 = @comptes_moy_2013[:autres_impots_taxes_7].to_i+@comptes_moy_2013[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2013[:dotations_etat_7].to_i+@comptes_moy_2013[:fiscalite_reversee_7].to_i+@comptes_moy_2013[:impots_locaux_7].to_i+@comptes_moy_2013[:produits_cessions_7].to_i+@comptes_moy_2013[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2013[:suventions_participations_7].to_i+@comptes_moy_2013[:ventes_biens_services_7].to_i
    @produits_fonctionnement_2012 = @comptes_2012[:autres_impots_taxes_7].to_i+@comptes_2012[:autres_produits_fonctionnement_7].to_i+@comptes_2012[:dotations_etat_7].to_i+@comptes_2012[:fiscalite_reversee_7].to_i+@comptes_2012[:impots_locaux_7].to_i+@comptes_2012[:produits_cessions_7].to_i+@comptes_2012[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2012[:suventions_participations_7].to_i+@comptes_2012[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2012 = @comptes_moy_2012[:autres_impots_taxes_7].to_i+@comptes_moy_2012[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2012[:dotations_etat_7].to_i+@comptes_moy_2012[:fiscalite_reversee_7].to_i+@comptes_moy_2012[:impots_locaux_7].to_i+@comptes_moy_2012[:produits_cessions_7].to_i+@comptes_moy_2012[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2012[:suventions_participations_7].to_i+@comptes_moy_2012[:ventes_biens_services_7].to_i
    @produits_fonctionnement_2011 = @comptes_2011[:autres_impots_taxes_7].to_i+@comptes_2011[:autres_produits_fonctionnement_7].to_i+@comptes_2011[:dotations_etat_7].to_i+@comptes_2011[:fiscalite_reversee_7].to_i+@comptes_2011[:impots_locaux_7].to_i+@comptes_2011[:produits_cessions_7].to_i+@comptes_2011[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_2011[:suventions_participations_7].to_i+@comptes_2011[:ventes_biens_services_7].to_i
    @produits_fonctionnement_moy_2011 = @comptes_moy_2011[:autres_impots_taxes_7].to_i+@comptes_moy_2011[:autres_produits_fonctionnement_7].to_i+@comptes_moy_2011[:dotations_etat_7].to_i+@comptes_moy_2011[:fiscalite_reversee_7].to_i+@comptes_moy_2011[:impots_locaux_7].to_i+@comptes_moy_2011[:produits_cessions_7].to_i+@comptes_moy_2011[:produits_fonctionnement_exceptionnels_7].to_i+@comptes_moy_2011[:suventions_participations_7].to_i+@comptes_moy_2011[:ventes_biens_services_7].to_i

    @charges_investissement_2016 = @comptes_2016[:depenses_equipement_2].to_i+@comptes_2016[:subventions_equipement_versees_2].to_i+@comptes_2016[:autres_depenses_equipement_1].to_i+@comptes_2016[:autres_depenses_equipement_2].to_i+@comptes_2016[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2016 = @comptes_moy_2016[:depenses_equipement_2].to_i+@comptes_moy_2016[:subventions_equipement_versees_2].to_i+@comptes_moy_2016[:autres_depenses_equipement_1].to_i+@comptes_moy_2016[:autres_depenses_equipement_2].to_i+@comptes_moy_2016[:depenses_operations_tiers_4].to_i
    @charges_investissement_2015 = @comptes_2015[:depenses_equipement_2].to_i+@comptes_2015[:subventions_equipement_versees_2].to_i+@comptes_2015[:autres_depenses_equipement_1].to_i+@comptes_2015[:autres_depenses_equipement_2].to_i+@comptes_2015[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2015 = @comptes_moy_2015[:depenses_equipement_2].to_i+@comptes_moy_2015[:subventions_equipement_versees_2].to_i+@comptes_moy_2015[:autres_depenses_equipement_1].to_i+@comptes_moy_2015[:autres_depenses_equipement_2].to_i+@comptes_moy_2015[:depenses_operations_tiers_4].to_i
    @charges_investissement_2014 = @comptes_2014[:depenses_equipement_2].to_i+@comptes_2014[:subventions_equipement_versees_2].to_i+@comptes_2014[:autres_depenses_equipement_1].to_i+@comptes_2014[:autres_depenses_equipement_2].to_i+@comptes_2014[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2014 = @comptes_moy_2014[:depenses_equipement_2].to_i+@comptes_moy_2014[:subventions_equipement_versees_2].to_i+@comptes_moy_2014[:autres_depenses_equipement_1].to_i+@comptes_moy_2014[:autres_depenses_equipement_2].to_i+@comptes_moy_2014[:depenses_operations_tiers_4].to_i
    @charges_investissement_2013 = @comptes_2013[:depenses_equipement_2].to_i+@comptes_2013[:subventions_equipement_versees_2].to_i+@comptes_2013[:autres_depenses_equipement_1].to_i+@comptes_2013[:autres_depenses_equipement_2].to_i+@comptes_2013[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2013 = @comptes_moy_2013[:depenses_equipement_2].to_i+@comptes_moy_2013[:subventions_equipement_versees_2].to_i+@comptes_moy_2013[:autres_depenses_equipement_1].to_i+@comptes_moy_2013[:autres_depenses_equipement_2].to_i+@comptes_moy_2013[:depenses_operations_tiers_4].to_i
    @charges_investissement_2012 = @comptes_2012[:depenses_equipement_2].to_i+@comptes_2012[:subventions_equipement_versees_2].to_i+@comptes_2012[:autres_depenses_equipement_1].to_i+@comptes_2012[:autres_depenses_equipement_2].to_i+@comptes_2012[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2012 = @comptes_moy_2012[:depenses_equipement_2].to_i+@comptes_moy_2012[:subventions_equipement_versees_2].to_i+@comptes_moy_2012[:autres_depenses_equipement_1].to_i+@comptes_moy_2012[:autres_depenses_equipement_2].to_i+@comptes_moy_2012[:depenses_operations_tiers_4].to_i
    @charges_investissement_2011 = @comptes_2011[:depenses_equipement_2].to_i+@comptes_2011[:subventions_equipement_versees_2].to_i+@comptes_2011[:autres_depenses_equipement_1].to_i+@comptes_2011[:autres_depenses_equipement_2].to_i+@comptes_2011[:depenses_operations_tiers_4].to_i
    @charges_investissement_moy_2011 = @comptes_moy_2011[:depenses_equipement_2].to_i+@comptes_moy_2011[:subventions_equipement_versees_2].to_i+@comptes_moy_2011[:autres_depenses_equipement_1].to_i+@comptes_moy_2011[:autres_depenses_equipement_2].to_i+@comptes_moy_2011[:depenses_operations_tiers_4].to_i
  end


  private

  def find_ville
    nom_propre_et_dep = params[:nom_propre_et_dep]
    @ville = Ville.where(nom_propre_et_dep: nom_propre_et_dep).first
  end

  def find_years
    if @ville.annees.where(annee: 2016).first
      @comptes_2016 = @ville.annees.where(annee: 2016).first
    else
    end
    if @ville.annees.where(annee: 2015).first
      @comptes_2015 = @ville.annees.where(annee: 2015).first
    else
    end
    if @ville.annees.where(annee: 2014).first
      @comptes_2014 = @ville.annees.where(annee: 2014).first
    else
    end
    if @ville.annees.where(annee: 2013).first
      @comptes_2013 = @ville.annees.where(annee: 2013).first
    else
    end
    if @ville.annees.where(annee: 2012).first
      @comptes_2012 = @ville.annees.where(annee: 2012).first
    else
    end
    if @ville.annees.where(annee: 2011).first
      @comptes_2011 = @ville.annees.where(annee: 2011).first
    else
    end

    catpop = @ville.catpop
    @ville_moy = Ville.where(nom: catpop).first
    if @ville_moy.annees.where(annee: 2016).first
      @comptes_moy_2016 = @ville_moy.annees.where(annee: 2016).first
    else
    end
    if @ville_moy.annees.where(annee: 2015).first
      @comptes_moy_2015 = @ville_moy.annees.where(annee: 2015).first
    else
    end
    if @ville_moy.annees.where(annee: 2014).first
      @comptes_moy_2014 = @ville_moy.annees.where(annee: 2014).first
    else
    end
    if @ville_moy.annees.where(annee: 2013).first
      @comptes_moy_2013 = @ville_moy.annees.where(annee: 2013).first
    else
    end
    if @ville_moy.annees.where(annee: 2012).first
      @comptes_moy_2012 = @ville_moy.annees.where(annee: 2012).first
    else
    end
    if @ville_moy.annees.where(annee: 2011).first
      @comptes_moy_2011 = @ville_moy.annees.where(annee: 2011).first
    else
    end

  end

end

class VillesController < ApplicationController

  def show_indicateurs
    find_ville
    find_years
    if @comptes_2015[:charge_total_fonctionnement]/@comptes_2015[:population] >= @comptes_moy_2015[:charge_total_fonctionnement]/@comptes_moy_2015[:population]
      @charge_fct_comp = "supérieur"
    else
      @charge_fct_comp = "inférieur"
    end

    if @ville[:decile_revenu] == 1
      @decile_comp = "dans les 10% des revenus médians les plus faibles du pays"
    elsif @ville[:decile_revenu] == 10
      @decile_comp = "dans les 10% des revenus médians les plus élevés du pays"
    elsif @ville[:decile_revenu] <= 5
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus faibles du pays"
    else
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus élevés du pays"
    end
  end

  def search
   @ville = Ville.where(nom_propre_et_dep: params[:search]).first
   find_years
   if @comptes_2015[:charge_total_fonctionnement]/@comptes_2015[:population] >= @comptes_moy_2015[:charge_total_fonctionnement]/@comptes_moy_2015[:population]
      @charge_fct_comp = "supérieur"
    else
      @charge_fct_comp = "inférieur"
    end

    if @ville[:decile_revenu] == 1
      @decile_comp = "dans les 10% des revenus médians les plus faibles du pays"
    elsif @ville[:decile_revenu] == 10
      @decile_comp = "dans les 10% des revenus médians les plus élevés du pays"
    elsif @ville[:decile_revenu] <= 5
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus faibles du pays"
    else
      @decile_comp = "entre les #{(@ville[:decile_revenu] - 1) * 10}% et #{@ville[:decile_revenu] * 10}% des revenus médians les plus élevés du pays"
    end
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
  end

  def show_finances
    find_ville
    find_years
  end


  private

  def find_ville
    nom_propre_et_dep = params[:nom_propre_et_dep]
    @ville = Ville.where(nom_propre_et_dep: nom_propre_et_dep).first
  end

  def find_years
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
    if @ville.annees.where(annee: 2010).first
      @comptes_2010 = @ville.annees.where(annee: 2010).first
    else
    end
    if @ville.annees.where(annee: 2009).first
      @comptes_2009 = @ville.annees.where(annee: 2009).first
    else
    end
    if @ville.annees.where(annee: 2008).first
      @comptes_2008 = @ville.annees.where(annee: 2008).first
    else
    end

    catpop = @ville.catpop
    @ville_moy = Ville.where(nom: catpop).first

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
    if @ville_moy.annees.where(annee: 2010).first
      @comptes_moy_2010 = @ville_moy.annees.where(annee: 2010).first
    else
    end
    if @ville_moy.annees.where(annee: 2009).first
      @comptes_moy_2009 = @ville_moy.annees.where(annee: 2009).first
    else
    end
    if @ville_moy.annees.where(annee: 2008).first
      @comptes_moy_2008 = @ville_moy.annees.where(annee: 2008).first
    else
    end

  end

end

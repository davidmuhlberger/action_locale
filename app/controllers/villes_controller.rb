class VillesController < ApplicationController

  def show
    nom = params[:nom]
    @ville = Ville.where(nom: nom).first

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

  end

end


class ListsController < ApplicationController

  def index
    @lists = List.all
    # index : Récupère toutes les listes et les assigne à l'instance variable @lists.
  end

  def show
    @list = List.find(params[:id])
    # show : Récupère une liste spécifique(les ids en fonction de l'ID fourni
    # grâce aux paramètres de la requête et l'assigne à l'instance variable @list.
  end

  def new
    @list = List.new
    # new : Initialise une nouvelle instance de List et l'assigne à l'instance variable @list.
  end

  def create
    @list = List.new(list_params)
    # create : Initialise une nouvelle instance de List avec les paramètres fournis (via list_params).
    if @list.save
      # Si la liste est sauvegardée avec succès, redirige vers la page listant les listes avec un message de succès.
      redirect_to list_path(@list), notice: 'Ta liste a été créé correctement.'
    else
      render :new
      # Sinon, rend le formulaire de création de liste (:new) à nouveau pour afficher les erreurs.

    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
    # list_params : Fonction privée qui extrait et retourne les paramètres pour créer ou mettre à jour une liste
    # ici dans ce cas, uniquement le nom
  end
end

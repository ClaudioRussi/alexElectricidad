class PublicationsController < ApplicationController
  before_action :authenticate_user!, only:[:edit, :update, :delete, :new, :create]

  def index
    @publications = Publication.all.order('created_at DESC')
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if(@publication.save)
      redirect_to @publication
    else
      render 'new'
    end
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    if(@publication.update_attributes(publication_params))
      flash[:notice] = "Publicacion editada correctamente"
      redirect_to @publication
    else
      render 'edit'
    end
  end

  def destroy
    publication = Publication.find(params[:id])
    publication.destroy
    redirect_to publications_path
  end

  def publication_params
    params.require(:publication).permit(:title, :body, :cover)
  end
end

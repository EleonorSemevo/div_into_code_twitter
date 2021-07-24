class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if params[:back]
      render :new
    else
      if @publication.save
        redirect_to new_publication_path
      else
        render :new
      end
    end
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.new
    
    if @publication.update(publication_params)
      redirect_to publications_path
    else
      render :edit
    end
  end

  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy 
    redirect_to publications_path, notice: "Tweet supprimé"
  end

  def confirm
    @publication = Publication.new(publication_params)

    render :new if @publication.invalid?
  end

  private
    def publication_params
      params.require(:publication).permit(:content)
    end
  
end

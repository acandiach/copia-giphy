class PublicationsController < ApplicationController
  before_action :authenticate_user!, except: %i[ index show ]

  def index
    @publications = Publication.all
  end

  def show
    publication
  end

  def new
    @publication = current_user.publications.build
  end

  def edit
    publication
  end

  def create
    @publication = current_user.publications.build(publication_params)

    if @publication.save
      redirect_to publications_path, notice: "Publication was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if publication.update(publication_params)
      redirect_to publication_url(publication), notice: "Publication was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    publication.destroy

    redirect_to publications_url, notice: "Publication was successfully destroyed."
  end

  private

    def publication
      @publication = Publication.find(params[:id])
    end

    def publication_params
      params.require(:publication).permit(:title, :description, :label_id, :user_id)
    end
end

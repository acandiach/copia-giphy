class LabelsController < ApplicationController

  def index
    @labels = Label.all
  end

  def show
    label
  end

  def new
    @label = Label.new
  end

  def edit
    label
  end

  def create
    @label = Label.new(label_params)

    if @label.save
      redirect_to label_url(@label), notice: "Label was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
      if label.update(label_params)
        redirect_to label_url(label), notice: "Label was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    label.destroy

    redirect_to labels_url, notice: "Label was successfully destroyed."
  end

  private
    def label
      @label = Label.find(params[:id])
    end

    def label_params
      params.require(:label).permit(:name)
    end
end

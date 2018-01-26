class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create!(author_params)

    if @author.valid?
      redirect_to author_path(@author)
    else
      render ""
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end

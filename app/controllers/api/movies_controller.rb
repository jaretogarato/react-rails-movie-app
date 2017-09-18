class MoviesController < ApplicationController
  def index
    render json: Movie.all.to_json( only: [:id, :title])
  end

  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def delete
  end

  def destroy
  end
end

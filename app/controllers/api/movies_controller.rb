class Api::MoviesController < ApplicationController
  def index
    # render json: Movie.select(:id, :title, :release_year, :director)
    @api_movies = Movie.all
  end

  def show
  end

  def create
    @api_movie = Movie.new(api_movie_params)

    if @api_movie.save
      render json: { id: @api_movie.id, img_url: @api_movie.img.url, title: @api_movie.title }
    else
      render json: { errors: @api_movie.errors.full_messages }, status: 422
    end
  end

  def update
  end

  def destroy
    Movie.find(params[:id]).destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_movie
      @api_movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_movie_params
      params.require(:movie).permit(:title, :summary, :release_year, :stars, :rank, :genre, :director, :img_url, :file)
    end

end

class ArticlesController < ApplicationController
  before_action :get_categories, obly: [:index, :show]

  def index
    @article = Article.last
  end

  def show
    @article = Article.find_by(title: params[:titel].gsub(/-/, " "))  
  end

  private
  def get_categories
    @categories = Category.all
  end
end

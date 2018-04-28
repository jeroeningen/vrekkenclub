class PagesController < ApplicationController
  before_action :get_categories, obly: [:show]

  def show
    render template: "pages/#{params[:page]}"
  end

  private
  def get_categories
    @categories = Category.all
  end
end

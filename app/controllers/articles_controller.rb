class ArticlesController < ApplicationController
  before_action :find_articles
  expose(:articles)
  expose(:article, attributes: :article_params)

  def new
  end

  def show
  end

  def index

  end

  def create
    article.save
    redirect_to article
  end

  def update
    article.save
    redirect_to article
  end

  private

  def find_articles
    self.articles = Category.find(params[:category_id]).articles if params[:category_id]
  end

  def article_params
    params.require(:article).permit(:title, :content, :category_id, :completed_on)
  end
end

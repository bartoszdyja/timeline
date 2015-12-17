class ArticlesController < ApplicationController
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

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

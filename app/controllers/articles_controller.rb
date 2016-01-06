# Articles Controller
class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_articles
  expose(:articles)
  expose(:paginated_articles) { articles.order('completed_on DESC').page(params[:page]) }
  expose(:article, attributes: :article_params)

  def create
    article.user = current_user
    if article.save
      redirect_to article
    else
      render 'new'
    end
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

class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc).paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.js { render 'shared/article_page' }
    end

  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments
    @random_articles = Article.all.sample(5)
  end
end

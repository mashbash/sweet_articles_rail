class ArticlesController < ApplicationController

  def redirect
    @article = Article.find_by_url(params[:url])
    redirect_to article_path(@article.category.name, @article.url)
  end

  def show
    @article = Article.find_by_url(params[:url])
  end
end

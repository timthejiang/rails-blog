class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # new.html.erb view uses @article object from #create if passed from render
    # otherwise uses this new @article object
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      # redirect_to makes new request so discards instance variables in current action (create)
      redirect_to @article
    else
      # render will keep instance variables (@article) so can show error message
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end

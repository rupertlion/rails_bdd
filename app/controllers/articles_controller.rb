class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article
      flash[:notice] = "Article was successfully created."
    else
      flash[:notice] = "Please fill in the form."
      render :new
    end  
  
  end

  private

  def article_params
    params[:article].permit(:title, :content)
  end

end

class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show]

  # 缩进按照一个标准，推荐两个空格，不要用制表符
  # snipped for brevity
  def index
    @articles = Article.all

    respond_to do |format|
      format.html
      ## 我们用前后端分离的方式开发，所以一般返回的都是json
      ## 如：http://localhost:3000/articles.json
      ## 通过提供接口的方式给前端操作
      format.json { render json: @articles }
    end
  end

   def show
    @article = Article.find(params[:id])

    ## http://localhost:3000/articles/11 该接口返回 json
    render json: @article
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end
   
  def create
    @article = Article.new(article_params)
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
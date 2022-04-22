class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new
    @article.name = params[:name]
    @article.body = params[:body]

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end
  
  def edit

  end
  
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def delete
    @article = Article.destroy
  end

  # private

  # def article_params
  #   params.require(:article).permit(:name, :body)
  # end
end

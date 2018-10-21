class ArticlesController < ApplicationController
before_action :rud_operation, only:[:edit,:show,:update,:destroy]
	def new
		@article = Article.new

	end	

	def edit
  
	end	

	def index
		@articles = Article.all

	end	

	def show

	

	end	

	def update
		
		if @article.update(article_params)
			flash[:notice] = "Article was updated succesfully"
			redirect_to article_path(@article)
		else 
			render 'edit'
		
		end	

	end	

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Article was save succesfully"
			redirect_to article_path(@article)
		else 
			render 'new'
		
		end	

	end	

	def destroy
		
		@article.destroy
		flash[:notice] = "Article was deleted succesfully"
		redirect_to articles_path

	end	

		
private
   def rud_operation
      @article = Article.find(params[:id])
   end	
	def article_params
		params.require(:article).permit(:title,:description)
	end	

end
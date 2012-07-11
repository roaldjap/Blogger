class ArticlesController < ApplicationController
	def index
		@article = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		redirect_to article_path(@article)
	end	

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to article_path
	end
end

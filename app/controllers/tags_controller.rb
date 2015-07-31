class TagsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		@tag = @article.tags.create(content: params[:content])
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@tag = @article.tags.find(params[:id])
		@tag.destroy
		redirect_to article_path(@article)
	end

end

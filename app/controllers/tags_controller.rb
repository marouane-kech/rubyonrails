class TagsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.tags.create(content: params[:content])
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.tags.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end

end

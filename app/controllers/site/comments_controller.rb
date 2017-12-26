class Site::CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to site_food_detail_path(@comment.food_id), notice: "Comentário adicionado com sucesso!"
		else
			redirect_to site_food_detail_path(@comment.food_id), notice: "Erro ao add o comentário"
		end

	end

	private

	def comment_params
		params.require(:comment).permit(:name, :body, :food_id) 
	end
end

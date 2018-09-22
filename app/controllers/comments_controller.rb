class CommentsController < ApplicationController
    def create

        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        
        if @comment.save
            redirect_to article_path(@article)
            flash[:notice] = "Comment was successfully created."
        else
            redirect_to article_path(@article)
            flash[:notice] = "Please provide a comment."
        end  
    end
    
    private
    def comment_params
        params.require(:comment).permit(:email, :views)
    end
end

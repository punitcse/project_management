class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params)

    if @comment.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to comments_path }
      end
    else
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("comment_form", partial: "comments/new", locals: { project: @project, comment: @comment })
        end
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end

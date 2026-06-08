class CommentsController < ApplicationController
  def create
    # 1. Find the specific task using the ID from the URL
    @task = Task.find(params[:task_id])

    # 2. Build and save the comment using the association
    @comment = @task.comments.new(comment_params)

    if @comment.save
      redirect_to tasks_path
    else
      # If validation fails (e.g., empty body), redirect back
      redirect_to tasks_path, alert: "Comment cannot be empty."
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    @comment.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def comment_params
    # Using Rails 8 Strong Parameters
    params.expect(comment: [ :body ])
  end
end

class Public::TopicCommentsController < ApplicationController
  # トピックスコメント作成
  def create
    topic = Topic.find(params[:topic_id])
    comment = current_public_user.topic_comments.new(comment_params)
    comment.topic_id = topic.id
    comment.save
    redirect_to public_topic_path(topic)
  end

  # トピックスコメント情報削除
  def destroy
    TopicComment.find(params[:id]).destroy
    redirect_to public_topic_path(params[:topic_id])
  end

  private
  # ストロングパラメータ
  def comment_params
    params.require(:topic_comment).permit(:comment)
  end
end

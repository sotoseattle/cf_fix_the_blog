module PostsHelper
  def number_of_comments_link(post)
    n = post.comments.count
    link_to(" #{n} Comments", '', class: "coma") unless n.zero?
  end

  def number_of_replies_link(comment)
    p comment
    m = comment.replies.count
    link_to(" #{m} Replies", '', class: "repa") unless m.zero?
  end
end

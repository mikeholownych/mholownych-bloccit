module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render text).html_safe
  end

  def comment_url_helper(comment)
    post = comment.post
    topic = post.topic
    [topic, post, comment]
  end
end

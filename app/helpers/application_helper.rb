module ApplicationHelper
  def markdown(text)
    MarkdownRenderer.new(text).render
  end
end

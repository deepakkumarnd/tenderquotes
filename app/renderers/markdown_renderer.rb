class MarkdownRenderer
  def initialize(text)
    @text = text
    @renderer = Redcarpet::Markdown.new(PostRenderer.new(default_options), default_extensions)
  end

  def render
    @renderer.render(@text).html_safe
  end

  private

  def default_extensions
    exts = [:no_intra_emphasis, :fenced_code_blocks, :autolink,
      :disable_indented_code_blocks, :strikethrough, :space_after_headers,
      :underline, :highlight, :quote]

    exts.inject({}) { |h, key| h[key] = true; h }
  end

  def default_options
    opts = [:prettify, :hard_wrap]
    opts.inject({}) { |h, key| h[key] = true; h }
  end
end
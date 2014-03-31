class PostRenderer < Redcarpet::Render::HTML
  def initialize(options)
    super(options)
  end

  def block_code(code, language)
    Pygments.highlight(code, lexer: language, options: { linespans: 'line' })
  end
end
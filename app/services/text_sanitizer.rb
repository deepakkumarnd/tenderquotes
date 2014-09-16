class TextSanitizer
  def initialize(text)
    @text = text
  end

  def sanitize!
    @text.strip!
    @text.gsub!(/\s{2,}/, ' ')
    @text
  end
end

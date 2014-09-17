class Post < ActiveRecord::Base
  extend Textacular
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :checksum, uniqueness: { message: 'Quote already exists, please add a new one' }

  before_validation :set_checksum

  def sanitize_post!
    self.content = TextSanitizer.new(content).sanitize!
    self.title = title.titleize
  end

  def self.search(query)
    return self if query.nil?
    query = query.strip.downcase
    self.basic_search(query)
  end

  private

  def set_checksum
    self.checksum = Digest::MD5.hexdigest(self.content.downcase)
  end
end

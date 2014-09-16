class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :checksum, uniqueness: { message: 'Quote already exists, please add a new one' }

  before_validation :set_checksum

  def sanitize_post!
    self.content = TextSanitizer.new(content).sanitize!
  end

  private

  def set_checksum
    self.checksum = Digest::MD5.hexdigest(self.content.downcase)
  end
end

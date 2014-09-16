desc 'Sanitize and add checksum to posts in database'
task sanitize_and_add_checksum: :environment do
  Post.all.each do |post|
    post.content = TextSanitizer.new(post.content).sanitize!
    post.save
  end
end

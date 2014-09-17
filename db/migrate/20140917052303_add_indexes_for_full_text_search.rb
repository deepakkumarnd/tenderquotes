class AddIndexesForFullTextSearch < ActiveRecord::Migration
  execute "create index on posts using gin(to_tsvector('english', title));
  create index on posts using gin(to_tsvector('english', content));"
end

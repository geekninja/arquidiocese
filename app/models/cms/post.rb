module Cms
  class Post < ActiveRecord::Base
    belongs_to :post_category
    validates_presence_of :title, :content, :resume, :post_category
    mount_uploader :thumb, ThumbUploader
    mount_uploader :thumbnail, ThumbnailUploader
  end
end

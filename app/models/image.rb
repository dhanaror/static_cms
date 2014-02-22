class Image < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>", :tiny => "50x50>" }, :default_url => ""
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

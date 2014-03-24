class Listing < ActiveRecord::Base



has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "noimage.png",
    			  :storage => :dropbox,
    			  :dropbox_credentials => Rails.root.join("config/dropbox.yml")

validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end

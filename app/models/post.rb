class Post < ActiveRecord::Base

has_attached_file :image, styles: { 
	large: '2560x1680#', 
	medium: '1280x840#', 
	thumb:'100x100#'  
	}, 
	default_url: "/images/:style/missing.png"

validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/, presence: true

validates :title, 
	presence: true, 
	length: { minimum: 2, maximum: 200 }

validates :content, 
	presence: true, 
	length: { minimum: 50 }					  

validates :author, 
	presence: true, 
	length: { minimum: 2, maximum: 50 }

end

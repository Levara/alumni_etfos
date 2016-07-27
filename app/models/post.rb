class Post < ActiveRecord::Base

has_attached_file :image, styles: { 
	large: '600x600#', 
	medium: '300x300#', 
	thumb:'100x100#'  
	}, 
	default_url: "/images/:style/missing.png"

validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

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

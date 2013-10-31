class Pin < ActiveRecord::Base

has_attached_file :image, styles: { :medium => "300x300>", :thumb => "100x100>" }
validates :description, presence: true
validates :user_id, presence: true

belongs_to :user

#	creation de Thumbnail à partir d'une vidéo séléctionnée
after_create :extract_thumb

def extract_thumb
system "/usr/local/bin/ffmpeg -i #{image.original_filename} -s 320x240 -vframes 1 -f image2 -an #{image.original_filename}.jpg"
end

end

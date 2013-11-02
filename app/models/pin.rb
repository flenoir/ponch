class Pin < ActiveRecord::Base

has_attached_file :image, styles: { :medium => "300x300>", :thumb => ["100x100>", :jpg] } #on force l'extension du thumb pour recupèrer l'image de la video 
validates :description, presence: true
validates :user_id, presence: true

belongs_to :user

#	creation de Thumbnail à partir d'une vidéo séléctionnée
# after_create :extract_thumb

# def extract_thumb
# f = image.original_filename.gsub("\\","/") #défini la variable sur le nom de fichier pour enlever l'extension avec le extname dans la ligne en dessous
# system "/usr/local/bin/ffmpeg -i #{File.basename(f,File.extname(f))}.mov -s 320x240 -vframes 1 -f image2 -an #{File.basename(f,File.extname(f))}.jpg"
# end

end

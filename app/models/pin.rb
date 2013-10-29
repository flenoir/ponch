class Pin < ActiveRecord::Base

has_attached_file :image, styles: { :medium => "300x300>", :thumb => "100x100>" }
validates :description, presence: true
validates :user_id, presence: true

belongs_to :user

end

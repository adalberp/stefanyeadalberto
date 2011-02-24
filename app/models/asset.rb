class Asset < ActiveRecord::Base

  validates_presence_of :title

  has_attached_file :document, :styles => { :medium => "300x300#", :thumb => "50x50#" }

  default_scope :order => "created_at DESC"

  validates_attachment_presence     :document
  validates_attachment_size         :document, :less_than => 5.megabyte
  validates_attachment_content_type :document, :content_type => %w(image/png image/jpeg image/gif image/tiff)

end

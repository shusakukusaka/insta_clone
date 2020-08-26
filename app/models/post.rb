class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :img, ImgUploader
  validates :user_id, presence: true
  #validates :content, presence: true
  validate :img_size
  
  private

  def img_size
    if img.size > 5.megabytes
      errors.add(:img, "画像サイズは5MBまでです。")
    end
  end
end


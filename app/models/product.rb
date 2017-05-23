class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  acts_as_list

  def shelve!
    self.is_shelved = true
    self.save
  end

  def off_shelve!
    self.is_shelved = false
    self.save
  end





end

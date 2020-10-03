class Slike < ApplicationRecord
  has_one_attached :avatar
  def thumbnail
    return self.avatar.variant(resize: '100x100')
  end
  def srednja
    return self.avatar.variant(resize: '500x300')
  end
  def velika
    return self.avatar.variant(resize: '900x600')
  end
end

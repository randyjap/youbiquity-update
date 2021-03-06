# frozen_string_literal: true

class Photo < ActiveRecord::Base
  validates :image_url, :listing, presence: true

  belongs_to :listing
end

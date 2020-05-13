# == Schema Information
#
# Table name: store_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class StoreType < ApplicationRecord
  belongs_to :user
  has_many :stores, dependent: :destroy
end

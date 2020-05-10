# == Schema Information
#
# Table name: stores
#
#  id            :bigint           not null, primary key
#  store_type_id :bigint
#  name          :string
#  address       :string
#  city          :string
#  status        :string
#  user_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Store < ApplicationRecord
  belongs_to :user
end

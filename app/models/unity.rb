# == Schema Information
#
# Table name: unities
#
#  id           :bigint           not null, primary key
#  name         :string
#  unity_symbol :string
#  description  :text
#  status       :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Unity < ApplicationRecord
  belongs_to :user
end

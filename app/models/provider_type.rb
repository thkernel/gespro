# == Schema Information
#
# Table name: provider_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProviderType < ApplicationRecord
  belongs_to :user
end

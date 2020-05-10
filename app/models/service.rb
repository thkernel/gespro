# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  name        :string
#  parent      :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
end

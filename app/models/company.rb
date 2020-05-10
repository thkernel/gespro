# == Schema Information
#
# Table name: companies
#
#  id            :bigint           not null, primary key
#  name          :string
#  slogan        :string
#  activity_area :string
#  address       :string
#  phone         :string
#  po_box        :string
#  city          :string
#  country       :string
#  email         :string
#  about         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Company < ApplicationRecord
end

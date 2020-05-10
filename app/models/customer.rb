# == Schema Information
#
# Table name: customers
#
#  id               :bigint           not null, primary key
#  type             :string
#  company_name     :string
#  contact_name     :string
#  address          :string
#  city             :string
#  country          :string
#  phone            :string
#  po_box           :string
#  email            :string
#  status           :string
#  customer_type_id :bigint
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Customer < ApplicationRecord
  belongs_to :user
end

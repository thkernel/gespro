# == Schema Information
#
# Table name: materials
#
#  id                   :bigint           not null, primary key
#  material_type_id     :bigint
#  name                 :string
#  brand                :string
#  serial               :string
#  model                :string
#  matriculation_number :string
#  serial_number        :string
#  status               :string
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Material < ApplicationRecord
  belongs_to :material_type
  belongs_to :user
end

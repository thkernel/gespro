# == Schema Information
#
# Table name: providers
#
#  id               :bigint           not null, primary key
#  type             :string
#  name             :string
#  company_name     :string
#  contact_name     :string
#  address          :string
#  city             :string
#  country          :string
#  phone            :string
#  po_box           :string
#  email            :string
#  status           :string
#  provider_type_id :bigint
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  price            :integer
#  quantity         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  image            :string
#  position         :integer
#  author           :string
#  publisher        :string
#  pages            :integer
#  is_shelved       :boolean          default(FALSE)
#  publication_date :date
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

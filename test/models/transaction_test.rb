# == Schema Information
#
# Table name: transactions
#
#  id           :integer          not null, primary key
#  amount       :integer
#  description  :string
#  process_time :datetime
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_transactions_on_user_id  (user_id)
#

require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

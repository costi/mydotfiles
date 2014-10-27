#require 'interactive_editor'
require 'rubygems'

# Automatic Indentation
IRB.conf[:AUTO_INDENT] = true

# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Save History between irb sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 500
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.pry_history"


require "awesome_print"
AwesomePrint.irb!

def issued_loan 
  require 'suite'
  @l = Suite::QuickCustomer.customer_with_issued_loan(:brand => :GB, :loan_type_cd => 'oec')
end

def oec_loan
  require 'suite'
  require 'rspec'
  require 'test/oec_test_case'
  tc = OecTestCase.new
  tc.initial_draw_amount = 200
  Ddi.create_from_session!(tc.customer,
                          "line1", "line2", "city",
                          "zip", "bank_name", "manager_name",
                          tc.customer.current_service_user_number)
  #tc.coupon_code = "NEWCASH25"
  #tc.take_loan_to_second_statement
  tc.loan
end

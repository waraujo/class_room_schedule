FactoryGirl.define do
	factory :subject do
		 sequence(:name) {|n| "Subject - #{n}"}
         sequence(:description) {|n| "Subject's description - #{n}"}
     end
end
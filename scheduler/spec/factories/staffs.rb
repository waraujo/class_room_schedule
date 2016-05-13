FactoryGirl.define do
	factory :staff do
		sequence(:name) {|n| "Teacher #{n}"}
        sequence(:email) {|n| "email#{n}@test.com" }
	end
end

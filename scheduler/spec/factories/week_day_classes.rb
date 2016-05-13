FactoryGirl.define do
	factory :week_day_class do 
		sequence(:week_day) {|n| %w[Mon Tue Wed Thu Fri][n % 5]}, type: String
        quantity_class 5
        association :class_room

	end
end

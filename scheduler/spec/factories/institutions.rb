FactoryGirl.define do 
	factory :intitution do 
		sequence(:name) { |n| "Institution :: |#{n}|"}
		max_repeted_class 2

		transient do 
			series_count 5
		end

		after(:create) do |instituiton, evaluator| 
			create_list(:serie, evaluator.series_count, instituiton: instituiton)
		end
	end
end

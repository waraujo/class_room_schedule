FactoryGirl.define do 
	factory :institution do 
		sequence(:name) { |n| "Institution :: |#{n}|"}
		max_repeted_class 2

		transient do 
			series_count 5
		end

		after(:create) do |institution, evaluator| 
			create_list(:serie, evaluator.series_count, institution: institution)
		end
	end
end

FactoryGirl.define do 
	factory :class_room do
		sequence(:name) { |n| "Class_room #{}"}
        classes_per_week 25
        period "Morning"
  		association :serie

  		transient do 
			class_count 1
		end

        after(:create) do |class_room, evaluator| 
			create_list(:class, evaluator.class_count, class_room: class_room)
		end

	end
end
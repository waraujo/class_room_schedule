FactoryGirl.define do
	factory :serie do 
		name "1 ano"
        sequence(:description) {|n| "Description for serie - #{n}"}
        association :institution

        transient do 
			class_room_count 5
		end

        after(:create) do |serie, evaluator| 
			create_list(:class_room, evaluator.class_room_count, serie: serie)
		end

    end
end
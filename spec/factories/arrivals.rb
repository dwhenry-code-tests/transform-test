FactoryBot.define do
  factory :arrival do
    line_name { "Circle" }

    trait :east do
      platform { "Eastbound - Platform 2" }
      destination { "Edgware Road (Circle Line) Underground Station" }
    end

    trait :west do
      platform { "Westbound - Platform 1" }
      destination { "Hammersmith (H&C Line) Underground Station" }
    end

    trait :first_east do
      east
      time_to_station { 409 }
    end

    trait :second_east do
      east
      time_to_station { 609 }
    end

    trait :first_west do
      west
      time_to_station { 509 }
    end
  end
end

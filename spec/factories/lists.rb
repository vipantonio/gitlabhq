FactoryGirl.define do
  factory :list do
    board
    label
    list_type :label
    sequence(:position)
  end

  factory :closed_list, parent: :list do
    list_type :closed
    label nil
    position nil
  end
end

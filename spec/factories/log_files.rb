FactoryBot.define do
  factory :log_file do
    after :create do |b|
      b.update_column(:directory, "spec/support/uploads/baz.csv")
    end
  end
end

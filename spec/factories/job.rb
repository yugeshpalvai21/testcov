FactoryBot.define do
    factory :job do
        title { FFaker::Job.title }
        description { FFaker::Lorem.paragraph }
        apply { FFaker::Lorem.phrase }
        category 
    end
end
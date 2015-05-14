require "data_seeder/version"
require "faker"
module DataSeeder
  class RandomData

    def self.names(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.name }
    end
    def self.first_names(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.first_name }
    end
    def self.last_names(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.last_name }
    end
    def self.titles(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.titles }
    end
    def self.phone_numbers(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.phone_number }
    end
    def self.cell_phones(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Name.cell_phone }
    end
    def self.cities(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.city }
    end
    def self.street_names(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.street_name }
    end
    def self.street_addresses(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.street_address }
    end
    def self.zip_codes(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.zip_code }
    end
    def self.states(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.state }
    end
    def self.countries(qty=1)
      (1..qty).to_a.collect{|n| ::Faker::Address.country }
    end
    def self.addresses(qty=1)
      (1..qty).to_a.collect{|n| "#{::Faker::Address.street_address}, #{::Faker::Address.city}, #{::Faker::Address.state_abbr} #{::Faker::Address.zip}" }
    end
    def self.credit_card_numbers(qty)
      (1..qty).to_a.collect{|n| ::Faker::Business.credit_card_number }
    end
    def self.credit_card_expiry_dates(qty)
      (1..qty).to_a.collect{|n| ::Faker::Business.credit_card_expiry_date }
    end
    def self.credit_card_types(qty)
      (1..qty).to_a.collect{|n| ::Faker::Business.credit_card_type }
    end
    def self.isbn_codes(qty)
      (1..qty).to_a.collect{|n| ::Faker::Code.isbn }
    end
    def self.ean_codes(qty)
      (1..qty).to_a.collect{|n| ::Faker::Code.ean }
    end
    def self.colors(qty)
      (1..qty).to_a.collect{|n| ::Faker::Commerce.color }
    end
    def self.departments(qty)
      (1..qty).to_a.collect{|n| ::Faker::Commerce.department(1) }
    end
    def self.product_names(qty)
      (1..qty).to_a.collect{|n| ::Faker::Commerce.product_name }
    end
    def self.prices(qty)
      (1..qty).to_a.collect{|n| ::Faker::Commerce.price }
    end
    def self.company_names(qty)
      (1..qty).to_a.collect{|n| ::Faker::Company.name }
    end
    def self.catch_phrases(qty)
      (1..qty).to_a.collect{|n| ::Faker::Company.catch_phrase }
    end
    def self.eins(qty)
      (1..qty).to_a.collect{|n| ::Faker::Company.ein }
    end
    def self.duns_numbers(qty)
      (1..qty).to_a.collect{|n| ::Faker::Company.duns_number }
    end
    def self.future_dates(qty, upto = 100)
      (1..qty).to_a.collect{|n| ::Faker::Date.forward(upto) }
    end
    def self.past_dates(qty, upto = 100)
      (1..qty).to_a.collect{|n| ::Faker::Date.backward(upto) }
    end
    def self.future_times(qty, upto = 1000)
      (1..qty).to_a.collect{|n| ::Faker::Time.forward(upto) }
    end
    def self.past_times(qty, upto = 1000)
      (1..qty).to_a.collect{|n| ::Faker::Time.backward(upto) }
    end
    def self.email(name)
      ::Faker::Internet.email(name)
    end
    def self.free_email(name)
      ::Faker::Internet.free_email(name)
    end
    def self.emails(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.email }
    end
    def self.free_emails(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.free_email }
    end
    def self.user_names(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.user_name }
    end
    def self.passwords(qty, minlength = 8, maxlength = 20)
      (1..qty).to_a.collect{|n| ::Faker::Internet.password(minlength, maxlength) }
    end
    def self.domain_names(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.domain_name }
    end
    def self.ip_v4_addresses(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.ip_v4_address }
    end
    def self.ip_v6_addresses(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.ip_v6_address }
    end
    def self.mac_addresses(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.mac_address }
    end
    def self.urls(qty)
      (1..qty).to_a.collect{|n| ::Faker::Internet.url }
    end
    def self.lorem_words(qty)
      (1..qty).to_a.collect{|n| ::Faker::Lorem.word }
    end
    def self.lorem_characters(qty, len=100)
      (1..qty).to_a.collect{|n| ::Faker::Lorem.characters(len) }
    end
    def self.lorem_sentences(qty, words=6)
      (1..qty).to_a.collect{|n| ::Faker::Lorem.sentence(words) }
    end
    def self.lorem_paragraphs(qty, sentences=5)
      (1..qty).to_a.collect{|n| ::Faker::Lorem.paragraph(sentences) }
    end
    def self.numbers(qty, digits=5)
      (1..qty).to_a.collect{|n| ::Faker::Number.number(digits) }
    end

  end
end

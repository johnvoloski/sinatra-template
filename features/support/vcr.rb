# -*- encoding : utf-8 -*-

def cassette_name(scenario)
  I18n.transliterate(scenario.to_s.downcase).to_s.parameterize.underscore
end

VCR.configure do |config|
  config.cassette_library_dir     = 'features/cassettes'
  config.default_cassette_options = {record: :new_episodes, serialize_with: :json}
  config.hook_into :webmock
  config.ignore_localhost = false
end

Before '@vcr' do |scenario, block|
  VCR.insert_cassette(cassette_name(scenario))
end

After '@vcr' do |scenario, block|
  VCR.eject_cassette
end

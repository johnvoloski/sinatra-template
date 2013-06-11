# -*- encoding : utf-8 -*-
module Api
  class << self
    # Defaults Constants
    DEFAULTS = {
      'api:database_host' => 'localhost',
      'api:database_name' => 'api_database_name',
      'api:database_user' => 'api_user',
      'api:database_pass' => 'api_pass'
    }.freeze

    # Configuration
    def configure
      # I18n
      configure_I18n
    end

    private
    def configure_I18n
      locale = YAML.load_file(File.expand_path(File.join(File.dirname(__FILE__), 'locales', 'pt.yml')))
      I18n.locale = :pt
      I18n.backend.store_translations :pt, locale
    end
  end
end

Api.configure

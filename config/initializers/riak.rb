Ripple.config = YAML::load(File.open("#{Rails.root}/config/database.yml"))[Rails.env]

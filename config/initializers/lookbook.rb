if Rails.env.development?
  Rails.application.configure do
    config.lookbook.project_name = "mutecipher.com"
    config.lookbook.ui_theme = "zinc"
  end
end

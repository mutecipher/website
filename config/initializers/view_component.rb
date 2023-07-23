Rails.application.configure do
  # Parent class
  config.view_component.component_parent_class = "ApplicationComponent"

  # Generator configuration
  config.view_component.generate.locale = true
  config.view_component.generate.preview = true
  config.view_component.generate.sidecar = true
  config.view_component.generate.stimulus_controller = true
  config.view_component.default_preview_layout = "preview"
end

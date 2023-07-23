class Head < ApplicationComponent
  def initialize(title: nil)
    @title = title
  end

  def title
    if @title
      I18n.t("head.title.with_post", title: @title)
    else
      I18n.t("head.title.default")
    end
  end

  def url
    Rails.configuration.x.mutecipher.url
  end

  def description
    I18n.t("head.description")
  end

  def image_url
  end
end

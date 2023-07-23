require "kramdown"
require "kramdown-parser-gfm"
require "rouge"

class ::Markdown < ApplicationComponent
  include ActionView::Helpers::AssetTagHelper

  def erb
    render inline: content
  end

  def call
    markdown(erb).html_safe
  end

  private

  def markdown(content)
    options = {
      enable_coderay: false,
      fenced_code_blocks: true,
      hard_wrap: true,
      parse_block_html: true,
      input: "GFM",
      syntax_highlighter: :rouge
    }

    Kramdown::Document.new(content, options).to_html
  end
end

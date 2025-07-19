module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(with_toc_data: true, hard_wrap: true)
    Redcarpet::Markdown.new(renderer, autolink: true, fenced_code_blocks: true).render(text).html_safe
  end
end

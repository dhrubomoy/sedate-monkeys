module ApplicationHelper

	def markdown(text)
    options = {
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      fenced_code_blocks: true,
      space_after_headers: true      
    }

    extensions = {
    	autofocus: false,
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true,
      strikethrough: true, 
      fenced_code_blocks: true,
      underline: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

end

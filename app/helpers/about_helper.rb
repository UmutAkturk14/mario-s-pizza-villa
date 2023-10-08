module AboutHelper
  def render_about(section)
    content_tag(:div, class: 'flex flex-col gap-2 text-center lg:text-start') do
      concat(content_tag(:h1, section[:title], class: 'font-bold text-white text-4xl mt-4 font-heading'))
      concat(content_tag(:p, section[:content], class: 'text-lg text-gray-300'))
    end
  end
end

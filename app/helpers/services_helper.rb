module ServicesHelper
  def render_service(service)
    content_tag(:div, class: 'flex flex-col text-center gap-2 my-8') do
      concat(image_tag(service[:image], alt: service[:alt], class: 'rounded-xl drop-shadow-lg w-full h-auto object-cover'))
      concat(content_tag(:h1, service[:title], class: 'font-bold text-4xl mt-4 font-heading'))
      concat(content_tag(:p, service[:content], class: 'text-lg text-gray-700'))
    end
  end
end

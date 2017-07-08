module ApplicationHelper
	def controller?(*controller)
    controller.include?(params[:controller])
  end

  #def action?(*action)
  #  action.include?(params[:action])
  #end

  def full_title(page_title = '')
    base_title = "Ror3 Web Shop"
    if page_title.empty?
      base_title
    else
      page_title + " - " + base_title
    end
  end

  def message_for_number(number, tag = :h1)
    result = number > 3 ? 'veci' : 'manji'
    content_tag tag, "Broj je #{result} od 3"
  end

  def error_for(attribute, errors, &block)
    if errors[attribute].any?
      content_tag :p, nil, class: 'validation-error'  do
        yield("#{parse_attribute(attribute)} #{errors[attribute][0]}") if block_given?
        "#{parse_attribute(attribute)} #{errors[attribute][0]}"
      end
    end
  end

  def parse_attribute(attribute)
    attribute.to_s.capitalize.split('_').join(' ')
  end

  def count_for(model, message: 'Total')
    content_tag :h4, "#{message} #{model.count}"
  end 

end

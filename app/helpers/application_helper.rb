module ApplicationHelper
	def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def full_title(page_title = '')
    base_title = "Ror3 Web Shop"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

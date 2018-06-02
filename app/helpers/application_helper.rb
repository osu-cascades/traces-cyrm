module ApplicationHelper

  BASE_TITLE = 'TRACES Resilience Measures'.freeze

  def full_title(page_title = '')
    page_title.empty? ? BASE_TITLE : "#{page_title} | #{BASE_TITLE}"
  end

  def form_errors_for(object)
    render partial: 'shared/form_errors', locals: { object: object }
  end

end

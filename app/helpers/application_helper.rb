module ApplicationHelper

  def logo
    image_tag "", :alt => "Mugatu App"
  end

  def title
    base_title = "Mugatu"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end

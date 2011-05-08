module ApplicationHelper

  def title
  	base_title = "Omar's Demo App"
  	if @title.nil?
	  base_title
	else
	  "#{base_title} | #{@title}"    		  		
  	end  	
  end

  def logo
  	logo = image_tag("LN.jpg", :alt => "Sample App", :class => "round")
  end

end

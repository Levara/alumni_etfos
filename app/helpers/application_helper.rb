module ApplicationHelper

  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title = '')                     # Method def, optional arg
    base_title = "ETFOS Alumni"  					  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      page_title + " | " + base_title                 # String concatenation
    end
  end

  #Returns shorter version of post text
  def first_20(post_text = '')                     
 	short_text = post_text.split(" ").first(20).join(" ")
 	short_text + "..."
  end

end
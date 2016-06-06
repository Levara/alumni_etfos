module ApplicationHelper

#Vraća puni naslov aplikacije na bazi stranice.
def full_title(page_title = '')
	base_title = "ETFOS Alumni"
	if page_title.empty?
		base_title
	else
		page_title + " | " + base_title
	end
end

end

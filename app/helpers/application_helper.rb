module ApplicationHelper
	def flash_alerts
		html = ""
		if flash[:notice]
			html << "<div class='alert alert-success'>#{flash[:notice]}</div>"
		end

		if flash[:error]
			if flash[:error].respond_to?(:each)
				flash[:error].each do |error|
					html << "<div class='alert alert-error'>#{error}</div>"
				end
			else
				html << "<div class='alert alert-error'>#{flash[:error]}</div>"
			end
		end

		html.html_safe
	end
end

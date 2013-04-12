module TeamsHelper
	def find_leader_for(team)
		html = "<small>"

		if team.supervisor
			html << "Team Lead: "
			html << (link_to team.supervisor.name, employee_path(team.supervisor))
		else
			html << "Ain't got no leader"
		end

		html << "</small>"
		html.html_safe 
	end
end

module RedmineIssueStatusColors
  module Hooks
    class IssueStatusColorsHook < Redmine::Hook::ViewListener
      render_on :view_issue_statuses_form, partial: "hooks/view_issue_statuses_form", layout: false
      render_on :view_issues_index_bottom, partial: "hooks/view_issues_index_bottom", layout: false
    end
  end
end

module ActionView
  module Helpers
    def isc_get_statuses_from_issues issues
      statuses = Hash.new
      unless issues.blank?
        issues.each do |issue|
          unless issue.status.blank?
            if !statuses.has_key?(issue.status_id)
              statuses[issue.status_id] = {
                id: issue.status.id,
                name: issue.status.name,
                highlight_color: issue.status.highlight_color,
                legend_text: issue.status.legend_text,
                num_issues: 0,
                position: issue.status.position
              }
            end

            if statuses.has_key?(issue.status_id)
              # If status exists then increment issue counter
              statuses[issue.status_id][:num_issues] = statuses[issue.status_id][:num_issues] + 1
            end
          end
        end
      end

      # sort by position
      statuses = statuses.sort_by { |k, v| v[:position] }
    end
  end
end
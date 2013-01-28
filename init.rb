require 'redmine_issues_status_colors/redmine_issue_status_colors'

Redmine::Plugin.register :redmine_issue_status_colors do
  name 'Redmine Issue Status Colors plugin'
  author 'Michael Mottola'
  description "Redmine plugin that adds the ability to view issue lists with color coded issues based on it's status"
  version '0.0.1'
  url 'https://github.com/controlz/redmine_issue_status_colors'
  author_url 'https://github.com/controlz'

  requires_redmine :version_or_higher => '2.0.0'
end
require 'redmine_issues_status_colors/redmine_issue_status_colors'

Redmine::Plugin.register :redmine_issue_status_colors do
  name 'Redmine Issue Status Colors plugin'
  author 'Michael Mottola'
  description 'Redmine plugin for making the issues in the issues list color coded based on the status of the issue.'
  version '0.0.1'
  #url 'http://example.com/path/to/plugin'
  author_url 'https://github.com/controlz'

  requires_redmine :version_or_higher => '2.0.0'
end
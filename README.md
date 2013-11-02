# Issue Status Colors

Redmine an open-source project management tool that I've come to enjoy using. I have found many great plugins available for Redmine that I like to use.

This is a Redmine plugin that adds the ability to view issue lists with colour coded issues based on it's status.
The colours and legend text can be modified in Administration > Issue Statuses for each type of issue status your setup has.

### Installation

1. Download the plugin, place files in plugins directory.  Or clone the repo while in your plugins directory.   
`git clone git@github.com:controlz/redmine_issue_status_colors.git` 

2. Make sure the directory name is `redmine_issue_status_colors`. Otherwise you may receive 404 errors when viewing a page with issues.

3. Run `rake redmine:plugins:migrate` or `rake redmine:plugins:migrate RAILS_ENV=production`

4. Restart redmine server   
`touch tmp/restart.txt`

5. Visit Administration > Issues Statuses, edit the statuses where you want to see your issues colour coded.

### Screenshots

Issues List   
https://github.com/controlz/redmine_issue_status_colors/blob/master/assets/images/screenshots/issues_list.png

Administration > Issue Statuses   
https://github.com/controlz/redmine_issue_status_colors/blob/master/assets/images/screenshots/admin_issues_statuses.png

class AddHighlightColorToIssueStatuses < ActiveRecord::Migration
  def self.up
    add_column :issue_statuses, :highlight_color, :string
    add_column :issue_statuses, :legend_text, :string
  end

  def self.down
    remove_column :issue_statuses, :highlight_color
    remove_column :issue_statuses, :legend_text
  end
end

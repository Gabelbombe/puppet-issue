# == Class: issue
#
# This module manages /etc/issue
#

class issue (
  $issue_file     = '/etc/issue',
  $issue_ensure   = 'file',
  $issue_owner    = 'root',
  $issue_group    = 'root',
  $issue_mode     = '0644',
  $issue_content  = indef,
) {
  ## ....
}

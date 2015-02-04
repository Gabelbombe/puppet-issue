# == Class: issue
#
# This module manages /etc/issue
# requires: stdlib::validate_re()
#

class issue (
  $issue_file     = '/etc/issue',
  $issue_ensure   = 'file',
  $issue_owner    = 'root',
  $issue_group    = 'root',
  $issue_mode     = '0644',
  $issue_content  = undef,
) {
  validate_re($issue_ensure, '^(file|present|absent)', 'vim::issue_ensure does not match regexp. Must be "file", "present" or "absent"')

  validate_absolute_path($issue_file)

  validate_re($issue_mode, '^\d{4}$', 'vim::issue_mode does not match regexp. Must be four digit string.')

  file {
    ensure  => $issue_ensure,
    path    => $issue_file,
    owner   => $issue_owner,
    group   => $issue_group,
    mode    => $issue_mode,
    content => $issue_content,
  }
}

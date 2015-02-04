# ISSUES
Module to manage /etc/issue


### Parameters
 - issue_file
   - Path to issue.
   - _Default: '/etc/issue'_
 - issue_ensure
   - Ensure attribute for file resource. Valid values are 'file', 'present' and 'absent'
   - _Default: file_
 - issue_owner
   - Issue's owner
   - _Default: 'root'_
 - issue_group
   - Issue's group
   - _Default: 'root'_
 - issue_mode
   - Issue's mode
   - _Default: '0644'_
 - issue_content
   - Content of issue file
   - _Default: undef_


### TODO
 - Build
 - Test
 - Different OS's

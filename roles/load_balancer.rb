name 'load-balancer'
description 'load balancer role'
run_list 'role[base]','recipe[myhaproxy]'

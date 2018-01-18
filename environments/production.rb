name 'production'
description 'this is the prod environment'

#restrictions on the cookbook
cookbook 'apache', '= 0.4.1'
cookbook 'myhaproxy', '= 1.1.3'

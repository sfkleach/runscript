#!/usr/bin/runscript /home/sfkleach/projects/runscript/_build/test-runscript
#!# This is a comment - it will be ignored
#!#
#! BASE_URL=https://example.com
#! PORT:=8080
#! --base-url=${BASE_URL}
#! --port=${PORT}
#!= --config=production.conf
#!! --literal-arg=${BASE_URL}
#!$ --dollar-literal=${NOT_EXPANDED}
#!\ No\nescape\there
#! Escaped:\n\t\shere
#! Empty arg follows:
#!
#! Script path is: ${}

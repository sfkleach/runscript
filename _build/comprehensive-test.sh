#!/usr/bin/runscript /home/sfkleach/projects/runscript/_build/test-runscript
#! First normal arg
#!# This comment should be ignored
#! MYVAR=hello
#! Second arg with ${MYVAR}
#! \n\t\sescapes work
#!= --option=value
#!! This is literal: ${MYVAR}
#!$ This has literal dollar: ${MYVAR}
#!\ No escape: \n stays as backslash-n
#! Script name is: ${}

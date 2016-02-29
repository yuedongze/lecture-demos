#! /bin/bash
# demo script manipulating html
for VAR in 'home' 'about' 'work' 'play'; do
    sed s/'<li><a href="'$VAR'.html">'/'<li class="current"><li><a href="'$VAR'.html">'/ base.html > $VAR.html
    sed s/'###'/$VAR/g $VAR.html > $VAR.1.html
    mv $VAR.1.html $VAR.html
done

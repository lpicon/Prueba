timestamp=`date +%Y%m%d%H%M%S`
branch=`git branch | grep \* | cut -d ' ' -f2`
war_file=`ls target/*.jar | head -n 1`

curl -X PUT -u circleci:circleci "https://bancodebogota.jfrog.io/bancodebogota/repojuli/${timestamp}_${branch}.jar" -T $war_file

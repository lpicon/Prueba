timestamp=`date +%Y%m%d%H%M%S`
branch=`git branch | grep \* | cut -d ' ' -f2`
jar_file=`ls target/*.jar | head -n 1`

curl -X PUT "https://bancodebogota.jfrog.io/bancodebogota/qa/CustomerBlackListInquiryAdapter/${timestamp}_${branch}.jar" -T $jar_file
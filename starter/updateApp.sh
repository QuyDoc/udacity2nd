aws cloudformation update-stack \
 --stack-name udacity2ndstackApp \
 --template-body file://udagram.yml \
 --parameters file://udagram-parameters.json \
 --capabilities "CAPABILITY_NAMED_IAM" \
 --region us-east-1
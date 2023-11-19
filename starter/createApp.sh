aws cloudformation create-stack \
 --stack-name udacity2ndstackApp \
 --template-body file://udagram.yml \
 --parameters file://udagram-parameters.json \
 --region us-east-1
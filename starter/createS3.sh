aws cloudformation create-stack \
 --stack-name $1 \
 --template-body file://s3.yml \
 --parameters file://s3-parameters.json \
 --region us-east-1
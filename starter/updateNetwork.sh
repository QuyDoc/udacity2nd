aws cloudformation update-stack \
 --stack-name udacity2ndstack \
 --template-body file://network.yml \
 --parameters file://network-parameters.json \
 --region us-east-1
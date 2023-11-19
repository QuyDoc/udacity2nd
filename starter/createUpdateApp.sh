stackName='udacity2ndstackApp'
stackDetails=$(aws cloudformation describe-stacks --stack-name $stackName)
if [[ -z $stackDetails ]]; then
    echo "Stack $stackName does not exist. Create new stack"
    stack_command=create-stack
else
    echo "Stack $stackName existed. Update existing stack"
    stack_command=update-stack
fi

aws cloudformation $stack_command \
    --stack-name $stackName \
    --template-body file://udagram.yml \
    --parameters file://udagram-parameters.json \
    --capabilities "CAPABILITY_NAMED_IAM" \
    --region us-east-1

stackName='udacity2ndstackNetwork'
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
    --template-body file://network.yml \
    --parameters file://network-parameters.json \
    --region us-east-1

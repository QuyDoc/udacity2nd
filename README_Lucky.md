# udacity2nd high-availability web app using CloudFormation

Infrastructure Diagram: ![](Udacity_2nd.drawio.png)

Outputs: http://udacit-webap-bkqmbbt8r6jn-1434926836.us-east-1.elb.amazonaws.com/

Welcome page:

![](WelcomeToNGinx.png)


## script to create s3 bucket 
```
sh starter\createS3.sh s3
```

* Notice: Remember to change bucketname in file `starter\s3-parameters.json` each time running, cause the bucket name must be unique

## script to create/update network

```
sh starter\createNetwork.sh
```
```
sh starter\updateNetwork.sh
```

## script to create/update application
```
sh starter\createApp.sh
```
```
sh starter\updateApp.sh
```

## script to delete stack and resources
```
sh starter\deleteStack.sh <stack-name>
```

* Notice: must update `BucketName` in parameter file `starter\udagram-parameters.json`, make sure bucket is existing.

## Stacks and Resources

* All stacks run success: 

![](AllStackRunSuccess.png)

* VPC resource map with Public subnets, Private subnets, Route tables:

![](VPC.png)

* EC2 Instance: 

![](EC2Instance.png)

* Load balancer:

![](LoadBalancer.png)

* Security Groups:

![](SecurityGroups.png)

* Stack's outputs:

![](StackOutput.png)

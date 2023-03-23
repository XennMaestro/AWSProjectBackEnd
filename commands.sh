# create an s3 bucket
aws s3 mb s3://awan-code-sam

# package cloudformaiton
aws cloudformation package --s3-bucket awan-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# deploy 
aws cloudformation deploy --template-file gen\template-generated.yaml --stack-name back-end-sam --capabilities CAPABILITY_IAM

# delete
sam delete --stack-name back-end-sam
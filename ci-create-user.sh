# replace with App client id located in aws cognito user pool
clientId=****__APP_CLIENT_ID__****
region=us-east-1
email=operator@example.com
password=Passw0rd!
message="Created new user 🎉"

aws cognito-idp sign-up --region $region --client-id $clientId --username $email --password $password

echo $message
read
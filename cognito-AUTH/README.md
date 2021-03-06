# Serverless Micro services Cognito application (user pools)

### Setup

1. Create an account with AWS.
2. Install aws_access_key_id & aws_secret_access_key with the aws-cli or use a vscode extenstion <a href="https://marketplace.visualstudio.com/items?itemName=mark-tucker.aws-cli-configure" target="_blank">AWS CLI config</a> to manage keys.

<br>

#

### Options for deployment:

1. Npm build scripts, Yarn build scripts or run bash script

##### \*Commands to run Npm, Yarn or Bash

<ul>

#### NPM

1. Replace text `yarn` with `npm` in package.json scripts.
2. Install serverless globally: `npm install -g serverless`
3. Run: `npm install`
4. Run: `npm run sls:deploy` to deploy lambda micro services.

#### YARN

1. Install yarn for building application locally (couple ways).
   <ul>
   <li>Download: <a href="https://yarnpkg.com/" target="_blank">Install Yarn</a> </li>
   <li>HomeBrew: brew install yarn</li>
   </ul>
2. Install serverless globally: `yarn add global serverless`
3. Run: `yarn`
4. Run: `yarn sls:deploy` to deploy lambda micro services.

### BASH

```bash
bash ci-deploy
```

</ul>

<br>

#

### Api Endpoints

Building process will generate api-gateway endpoints in the console. Using postman, test with the `https://**/test-endpoint` microservice endpoint to confirm connection.

<br>

#

### Testing uploading files to S3 (pick between 2 or 3)

1. After running the build. Copy/paste the api-gateway url `https://**/presigned-post` into the client/index.html file.

2. Modify s3Bucket.yml is set to auto generate a bucket Name. Once generated assign it to `S3_BUCKET_NAME` in the environment.yml file.

3. Modify s3Bucket.yml to pre-define a bucket name. Then assign it to `S3_BUCKET_NAME` in the environment.yml file.

<br>

#

### Running serverless locally (npm or yarn)

`npm run sls:offline`

##### or

`yarn sls:offline`

<br>

#

### Removing apis with npm scripts, yarn scripts or bash.

1. Add `sls:remove` to package.json file. (Located in scripts.txt) then run the scripts command.

`npm run sls:remove`

##### or

`yarn sls:remove`

2. Run bash script.

```bash
bash ci-decomission
```

#

### Creating a serverless application

```bash
npx sls create --template aws-nodejs --name MY_APP_NAME --path MY_APP_NAME
```

<br>
<br>

<img src="https://devclass.com/wp-content/uploads/2018/07/Serverless.jpg" width="400">

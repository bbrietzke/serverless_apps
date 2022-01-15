# Serverless Apps

This project is a quick and easy way to define AWS API Gateway projects using AWS Lambda.  

There are two modules present: application and endpoint.  The application project defines the API Gateway stuff and a cloudwatch log group. The endpoint project defines an HTTP endpoint that executes a lambda.

The lambdas are designed to be uploaded from the local system, not an S3 bucket.  I'm sure that would be a simple fix to make it work.

## Example

```

```

## Module Documentation
* [Application](application/README.md)
* [Endpoint](endpoint/README.md)
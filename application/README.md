# Application

## Example
```
```

## Parameters
| Variable | Description |  Default |
| -- | -- | -- | 
| log_expiration_days | Number of days to retain the logs |  14 |
| stage | gateway stage | development |
| app_name | name of the application | -- |

| Output | Description | Used by |
| -- | -- | -- | 
| api_endpoint | the url of the endpoint | -- |
| base_url | the url with the stage | -- |
| execution_arn | the arn to execute | [Endpoint](endpoint/README.md).application_execution_arn |
| application_id | the id of the API GW | [Endpoint](endpoint/README.md).application_id |
| application_name | The name given to the application | [Endpoint](endpoint/README.md).application_name |
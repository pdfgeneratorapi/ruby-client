# PDFGeneratorAPI::DocumentUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **id_code** | **String** | National identification code, when provided. | [optional] |
| **ip** | **String** | IP address captured when the action was performed. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::DocumentUser.new(
  first_name: John,
  last_name: Smith,
  email: john@smith.com,
  id_code: 39010101010,
  ip: 203.0.113.42
)
```


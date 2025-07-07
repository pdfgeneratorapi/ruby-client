# PDFGeneratorAPI::GetTemplates401Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GetTemplates401Response.new(
  error: Authentication failed,
  status: 401
)
```


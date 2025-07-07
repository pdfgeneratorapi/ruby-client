# PDFGeneratorAPI::GetTemplates429Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GetTemplates429Response.new(
  error: You can make up to 5 requests per second and 120 requests per minute.,
  status: 429
)
```


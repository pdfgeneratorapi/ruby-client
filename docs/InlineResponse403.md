# PDFGeneratorAPI::InlineResponse403

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineResponse403.new(
  error: Access not granted,
  status: 403
)
```


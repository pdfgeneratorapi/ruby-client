# PDFGeneratorAPI::InlineResponse422

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineResponse422.new(
  error: Incorrect parameter value,
  status: 422
)
```


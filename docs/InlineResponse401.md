# PDFGeneratorAPI::InlineResponse401

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineResponse401.new(
  error: Authentication failed,
  status: 401
)
```


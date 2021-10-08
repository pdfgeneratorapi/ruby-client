# PDFGeneratorAPI::InlineResponse404

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error description | [optional] |
| **status** | **Integer** | HTTP Error code | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineResponse404.new(
  error: Entity not found,
  status: 404
)
```


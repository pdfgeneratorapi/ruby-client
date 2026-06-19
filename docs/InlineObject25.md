# PDFGeneratorAPI::InlineObject25

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Error description | [optional] |
| **errors** | **Object** | Details about validation errors | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject25.new(
  message: Incorrect parameter value,
  errors: null
)
```


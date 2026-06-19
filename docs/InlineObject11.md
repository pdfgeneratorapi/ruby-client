# PDFGeneratorAPI::InlineObject11

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Public URL to the document. | [optional] |
| **meta** | [**InlineObject11Meta**](InlineObject11Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject11.new(
  response: https://us1.pdfgeneratorapi.com/api/v4/documents/66/bac8381bce1982e5f6957a0f52371336/share,
  meta: null
)
```


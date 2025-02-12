# PDFGeneratorAPI::GetDocument200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Public URL to the document. | [optional] |
| **meta** | [**GetDocument200ResponseMeta**](GetDocument200ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GetDocument200Response.new(
  response: https://us1.pdfgeneratorapi.com/api/v4/documents/66/bac8381bce1982e5f6957a0f52371336/share,
  meta: null
)
```


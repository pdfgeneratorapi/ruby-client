# PDFGeneratorAPI::InlineObject8

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Base64 encoded document when output&#x3D;base64, URL to the document when output&#x3D;url, or URL to the PDF viewer when output&#x3D;viewer. | [optional] |
| **meta** | [**InlineObject8Meta**](InlineObject8Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject8.new(
  response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
  meta: null
)
```


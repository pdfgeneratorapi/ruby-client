# PDFGeneratorAPI::GenerateQRCode201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Base64 encoded image if the output&#x3D;base64. Raw image string if output&#x3D;file is used | [optional] |
| **meta** | [**GenerateQRCode201ResponseMeta**](GenerateQRCode201ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateQRCode201Response.new(
  response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
  meta: null
)
```


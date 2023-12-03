# PDFGeneratorAPI::GenerateDocument201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Base64 encoded document if the output&#x3D;base64 is used or URL to the document when the output&#x3D;url is used. | [optional] |
| **meta** | [**GenerateDocument201ResponseMeta**](GenerateDocument201ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateDocument201Response.new(
  response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
  meta: null
)
```


# PDFGeneratorAPI::InlineObject9

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Base64 encoded document if the output&#x3D;base64 is used or URL to the document when the output&#x3D;url is used. | [optional] |
| **meta** | [**InlineObject9Meta**](InlineObject9Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject9.new(
  response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
  meta: null
)
```


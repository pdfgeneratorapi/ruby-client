# PDFGeneratorAPI::InlineObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Base64 encoded XML document if the output&#x3D;base64 is used. | [optional] |
| **meta** | [**InlineObjectMeta**](InlineObjectMeta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject.new(
  response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
  meta: null
)
```


# PDFGeneratorAPI::InlineObjectMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encoding** | **String** | Document encoding | [optional] |
| **content_type** | **String** | Document content type. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObjectMeta.new(
  encoding: base64,
  content_type: application/xml
)
```


# PDFGeneratorAPI::InlineObject10Meta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | File name with extension. Auto-generated if not provided in request. | [optional] |
| **display_name** | **String** | File name without extension. | [optional] |
| **encoding** | **String** | Encoding of the response data. | [optional] |
| **content_type** | **String** | Image content type. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject10Meta.new(
  name: document.png,
  display_name: document,
  encoding: base64,
  content_type: image/png
)
```


# PDFGeneratorAPI::GenerateQRCode201ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encoding** | **String** | Response encoding | [optional] |
| **content_type** | **String** | Response content type. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateQRCode201ResponseMeta.new(
  encoding: base64,
  content_type: image/png
)
```


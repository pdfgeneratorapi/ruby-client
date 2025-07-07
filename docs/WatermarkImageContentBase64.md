# PDFGeneratorAPI::WatermarkImageContentBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_base64** | **String** | Base64 image string |  |
| **position** | [**WatermarkPosition**](WatermarkPosition.md) |  | [optional][default to &#39;center&#39;] |
| **rotation** | **Integer** | Watermark rotation | [optional][default to 0] |
| **scale** | **Float** | Watermark image scale | [optional][default to 1] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::WatermarkImageContentBase64.new(
  content_base64: null,
  position: null,
  rotation: null,
  scale: null
)
```


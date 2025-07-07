# PDFGeneratorAPI::WatermarkImageContentUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_url** | **String** | URL to an image |  |
| **position** | [**WatermarkPosition**](WatermarkPosition.md) |  | [optional][default to &#39;center&#39;] |
| **rotation** | **Integer** | Watermark rotation | [optional][default to 0] |
| **scale** | **Float** | Watermark image scale | [optional][default to 1] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::WatermarkImageContentUrl.new(
  content_url: null,
  position: null,
  rotation: null,
  scale: null
)
```


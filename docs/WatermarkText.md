# PDFGeneratorAPI::WatermarkText

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | Watermark text |  |
| **color** | **String** | Watermark text color in hexadecimal format | [optional][default to &#39;#000000&#39;] |
| **size** | **Integer** | Watermark text font size in px | [optional][default to 48] |
| **opacity** | **Float** | Watermark text opaxity | [optional][default to 0.5] |
| **position** | [**WatermarkPosition**](WatermarkPosition.md) |  | [optional][default to &#39;center&#39;] |
| **rotation** | **Integer** | Watermark rotation | [optional][default to 0] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::WatermarkText.new(
  content: null,
  color: null,
  size: null,
  opacity: null,
  position: null,
  rotation: null
)
```


# PDFGeneratorAPI::WatermarkBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | PDF file from base64 string to add the watermark to |  |
| **watermark** | [**WatermarkFileUrlWatermark**](WatermarkFileUrlWatermark.md) |  |  |
| **output** | **String** | Returned document output | [optional][default to &#39;base64&#39;] |
| **name** | **String** | File name of the returned document | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::WatermarkBase64.new(
  file_base64: null,
  watermark: null,
  output: null,
  name: null
)
```


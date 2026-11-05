# PDFGeneratorAPI::WatermarkFileUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | PDF file from remote URL to add the watermark to |  |
| **watermark** | [**WatermarkFileUrlWatermark**](WatermarkFileUrlWatermark.md) |  |  |
| **output** | **String** | Returned document output | [optional][default to &#39;base64&#39;] |
| **name** | **String** | File name of the returned document | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::WatermarkFileUrl.new(
  file_url: null,
  watermark: null,
  output: null,
  name: null
)
```


# PDFGeneratorAPI::InlineObject21

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Public URL for form data collection | [optional] |
| **meta** | [**InlineObject21Meta**](InlineObject21Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject21.new(
  response: https://app.pdfgeneratorapi.com/forms/097475c4-dcd5-42ca-814f-b9fa3da66b5a/share,
  meta: null
)
```


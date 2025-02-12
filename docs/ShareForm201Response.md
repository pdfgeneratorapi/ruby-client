# PDFGeneratorAPI::ShareForm201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | Public URL for form data collection | [optional] |
| **meta** | [**ShareForm201ResponseMeta**](ShareForm201ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ShareForm201Response.new(
  response: https://app.pdfgeneratorapi.com/forms/097475c4-dcd5-42ca-814f-b9fa3da66b5a/share,
  meta: null
)
```


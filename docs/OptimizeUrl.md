# PDFGeneratorAPI::OptimizeUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Public URL to a PDF document |  |
| **name** | **String** | Name for the PDF file | [optional] |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::OptimizeUrl.new(
  file_url: null,
  name: null,
  output: null
)
```


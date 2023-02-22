# PDFGeneratorAPI::ConvertURL2PDFRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public URL | [optional] |
| **paper_size** | **String** | PDF page size | [optional][default to &#39;a4&#39;] |
| **orientation** | **String** |  | [optional][default to &#39;portrait&#39;] |
| **output** | **String** | Output | [optional][default to &#39;base64&#39;] |
| **filename** | **String** | Document name | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ConvertURL2PDFRequest.new(
  url: https://example.org,
  paper_size: a4,
  orientation: portrait,
  output: base64,
  filename: Invoice 12345
)
```


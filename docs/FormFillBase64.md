# PDFGeneratorAPI::FormFillBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | PDF document in base64 encoded string format |  |
| **data** | **Object** | Form field data to fill in the PDF |  |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Name for the PDF file | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFillBase64.new(
  file_base64: null,
  data: {&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Doe&quot;,&quot;email&quot;:&quot;john.doe@example.com&quot;},
  output: null,
  name: null
)
```


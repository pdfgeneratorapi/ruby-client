# PDFGeneratorAPI::FormFillUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Public URL to a PDF document |  |
| **data** | **Object** | Form field data to fill in the PDF |  |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Name for the PDF file | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFillUrl.new(
  file_url: null,
  data: {&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Doe&quot;,&quot;email&quot;:&quot;john.doe@example.com&quot;},
  output: null,
  name: null
)
```


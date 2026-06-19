# PDFGeneratorAPI::MakeAccessibleUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Public URL to a PDF document |  |
| **options** | [**Array&lt;AccessibilityOption&gt;**](AccessibilityOption.md) | Accessibility processing options | [optional] |
| **name** | **String** | Name for the PDF file | [optional] |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |
| **metadata** | [**MetadataParam**](MetadataParam.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::MakeAccessibleUrl.new(
  file_url: null,
  options: null,
  name: null,
  output: null,
  metadata: null
)
```


# PDFGeneratorAPI::MakeAccessibleBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | PDF document in base64 encoded string format |  |
| **options** | [**Array&lt;AccessibilityOption&gt;**](AccessibilityOption.md) | Accessibility processing options | [optional] |
| **name** | **String** | Name for the PDF file | [optional] |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |
| **metadata** | [**MetadataParam**](MetadataParam.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::MakeAccessibleBase64.new(
  file_base64: null,
  options: null,
  name: null,
  output: null,
  metadata: null
)
```


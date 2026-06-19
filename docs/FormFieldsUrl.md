# PDFGeneratorAPI::FormFieldsUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Public URL to a PDF document |  |
| **key_field** | [**KeyFieldParam**](KeyFieldParam.md) |  | [optional][default to &#39;name&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFieldsUrl.new(
  file_url: null,
  key_field: null
)
```


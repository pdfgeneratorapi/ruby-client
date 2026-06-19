# PDFGeneratorAPI::FormFieldsBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | PDF document in base64 encoded string format |  |
| **key_field** | [**KeyFieldParam**](KeyFieldParam.md) |  | [optional][default to &#39;name&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFieldsBase64.new(
  file_base64: null,
  key_field: null
)
```


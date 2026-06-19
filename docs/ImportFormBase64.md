# PDFGeneratorAPI::ImportFormBase64

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | PDF file from base64 string to import |  |
| **form** | [**FormConfigurationNew**](FormConfigurationNew.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ImportFormBase64.new(
  file_base64: null,
  form: null
)
```


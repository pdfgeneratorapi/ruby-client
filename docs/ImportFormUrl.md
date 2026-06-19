# PDFGeneratorAPI::ImportFormUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | PDF file from remote URL to import |  |
| **form** | [**FormConfigurationNew**](FormConfigurationNew.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ImportFormUrl.new(
  file_url: null,
  form: null
)
```


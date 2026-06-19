# PDFGeneratorAPI::FormConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Form title displayed above the form | [optional] |
| **intro** | **String** | Introductory text displayed above the form fields. Supports rich text. | [optional] |
| **outro** | **String** | Closing text displayed below the form fields. Supports rich text. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormConfiguration.new(
  title: Employment application,
  intro: Please fill in all required fields.,
  outro: Thank you for your submission.
)
```


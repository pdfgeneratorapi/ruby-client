# PDFGeneratorAPI::FormFieldOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | **String** | Comma-separated list of choices. Whitespace around each choice is trimmed and choices must be unique. |  |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFieldOptions.new(
  options: Small,Medium,Large
)
```


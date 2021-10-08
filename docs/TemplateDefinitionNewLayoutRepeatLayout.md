# PDFGeneratorAPI::TemplateDefinitionNewLayoutRepeatLayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Defines template page size | [optional] |
| **width** | **Float** | Page width in units | [optional] |
| **height** | **Float** | Page height in units | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionNewLayoutRepeatLayout.new(
  format: A4,
  width: 21,
  height: 29.7
)
```


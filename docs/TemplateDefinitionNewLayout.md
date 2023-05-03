# PDFGeneratorAPI::TemplateDefinitionNewLayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Defines template page size | [optional] |
| **width** | **Float** | Page width in units | [optional] |
| **height** | **Float** | Page height in units | [optional] |
| **unit** | **String** | Measure unit | [optional] |
| **orientation** | **String** | Page orientation | [optional] |
| **rotation** | **Integer** | Page rotation in degrees | [optional] |
| **margins** | [**TemplateDefinitionNewLayoutMargins**](TemplateDefinitionNewLayoutMargins.md) |  | [optional] |
| **repeat_layout** | [**TemplateDefinitionNewLayoutRepeatLayout**](TemplateDefinitionNewLayoutRepeatLayout.md) |  | [optional] |
| **empty_labels** | **Integer** | Defines how many pages or labels should be empty | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionNewLayout.new(
  format: A4,
  width: 21,
  height: 29.7,
  unit: cm,
  orientation: portrait,
  rotation: 0,
  margins: null,
  repeat_layout: null,
  empty_labels: 0
)
```


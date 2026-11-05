# PDFGeneratorAPI::TemplateDefinitionNewLayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Defines template page size. For any other size, use custom with width and height. |  |
| **width** | **Float** | Page width in units. Left out, it is the format&#39;s width; send it with a custom format. | [optional] |
| **height** | **Float** | Page height in units. Left out, it is the format&#39;s height; send it with a custom format. | [optional] |
| **unit** | **String** | Measure unit | [optional][default to &#39;cm&#39;] |
| **orientation** | **String** | Page orientation |  |
| **rotation** | **Integer** | Page rotation in degrees | [optional] |
| **margins** | [**TemplateDefinitionNewLayoutMargins**](TemplateDefinitionNewLayoutMargins.md) |  |  |
| **repeat_layout** | [**TemplateDefinitionNewLayoutRepeatLayout**](TemplateDefinitionNewLayoutRepeatLayout.md) |  | [optional] |
| **empty_labels** | **Integer** | Specifies how many blank lables to add to sheet label. | [optional][default to 0] |

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


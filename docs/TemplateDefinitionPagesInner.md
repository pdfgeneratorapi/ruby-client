# PDFGeneratorAPI::TemplateDefinitionPagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Page width in units | [optional] |
| **height** | **Float** | Page height in units | [optional] |
| **margins** | [**TemplateDefinitionNewPagesInnerMargins**](TemplateDefinitionNewPagesInnerMargins.md) |  | [optional] |
| **components** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionPagesInner.new(
  width: 21,
  height: 29.7,
  margins: null,
  components: null
)
```


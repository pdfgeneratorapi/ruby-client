# PDFGeneratorAPI::TemplateDefinitionNewPagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Page width in units | [optional] |
| **height** | **Float** | Page height in units | [optional] |
| **margins** | [**TemplateDefinitionNewPagesInnerMargins**](TemplateDefinitionNewPagesInnerMargins.md) |  | [optional] |
| **border** | **Boolean** | Stored for older templates. It draws nothing. | [optional][default to false] |
| **components** | **Array&lt;Object&gt;** | The page&#39;s components. The fields of each depend on its cls; the template schema (Get schema endpoint) lists them. | [optional] |
| **layout** | [**TemplateDefinitionNewPagesInnerLayout**](TemplateDefinitionNewPagesInnerLayout.md) |  | [optional] |
| **conditional_formats** | **Array&lt;Object&gt;** |  | [optional] |
| **background_image** | **String** | Defines background image for the page. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionNewPagesInner.new(
  width: 21,
  height: 29.7,
  margins: null,
  border: false,
  components: [],
  layout: null,
  conditional_formats: [],
  background_image: null
)
```


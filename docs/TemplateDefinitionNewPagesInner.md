# PDFGeneratorAPI::TemplateDefinitionNewPagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Page width in units | [optional] |
| **height** | **Float** | Page height in units | [optional] |
| **margins** | [**TemplateDefinitionNewPagesInnerMargins**](TemplateDefinitionNewPagesInnerMargins.md) |  | [optional] |
| **border** | **Boolean** |  | [optional][default to false] |
| **components** | **Array&lt;Object&gt;** |  | [optional] |
| **layout** | **Object** | Defines page specific layout which can differ from the main template layout (e.g page format, margins). | [optional] |
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


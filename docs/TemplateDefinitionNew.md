# PDFGeneratorAPI::TemplateDefinitionNew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Template name |  |
| **tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] |
| **is_draft** | **Boolean** | Indicates if the template is a draft or published. | [optional] |
| **layout** | [**TemplateDefinitionNewLayout**](TemplateDefinitionNewLayout.md) |  | [optional] |
| **pages** | [**Array&lt;TemplateDefinitionNewPagesInner&gt;**](TemplateDefinitionNewPagesInner.md) | Defines page or label size, margins and components on page or label | [optional] |
| **data_settings** | [**TemplateDefinitionNewDataSettings**](TemplateDefinitionNewDataSettings.md) |  | [optional] |
| **editor** | [**TemplateDefinitionNewEditor**](TemplateDefinitionNewEditor.md) |  | [optional] |
| **font_subsetting** | **Boolean** | If font-subsetting is applied to document when generated | [optional][default to false] |
| **barcode_as_image** | **Boolean** | Defines if barcodes are rendered as raster images instead of vector graphics. | [optional][default to false] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionNew.new(
  name: Invoice template,
  tags: [&quot;invoice&quot;,&quot;orders&quot;],
  is_draft: true,
  layout: null,
  pages: null,
  data_settings: null,
  editor: null,
  font_subsetting: false,
  barcode_as_image: false
)
```


# PDFGeneratorAPI::TemplateDefinitionNew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Template name |  |
| **tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] |
| **is_draft** | **Boolean** | Indicates if the template is a draft or published. | [optional] |
| **layout** | [**TemplateDefinitionNewLayout**](TemplateDefinitionNewLayout.md) |  | [optional] |
| **pages** | [**Array&lt;TemplateDefinitionNewPagesInner&gt;**](TemplateDefinitionNewPagesInner.md) | Defines page or label size, margins and components on page or label | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateDefinitionNew.new(
  name: Invoice template,
  tags: [&quot;invoice&quot;,&quot;orders&quot;],
  is_draft: true,
  layout: null,
  pages: null
)
```


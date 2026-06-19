# PDFGeneratorAPI::PublicTemplateLibraryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique public identifier of the template | [optional] |
| **name** | **String** | Template name | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags assigned to a public template | [optional] |
| **preview_image_url** | **String** | URL to the template preview image | [optional] |
| **sample_data_url** | **String** | URL to the template sample data | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::PublicTemplateLibraryItem.new(
  id: public-template-id,
  name: Invoice template,
  tags: [&quot;invoice&quot;,&quot;orders&quot;],
  preview_image_url: https://example.com/preview.png,
  sample_data_url: https://example.com/sample-data.json
)
```


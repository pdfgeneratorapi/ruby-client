# PDFGeneratorAPI::TemplateVersionCollectionMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **last_page** | **Integer** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateVersionCollectionMeta.new(
  current_page: 1,
  per_page: 15,
  last_page: 1
)
```


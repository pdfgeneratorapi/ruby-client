# PDFGeneratorAPI::TemplateParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**CreateFacturXEInvoiceRequestTemplateId**](CreateFacturXEInvoiceRequestTemplateId.md) |  | [optional] |
| **version_id** | **Integer** | Template version ID | [optional] |
| **data** | [**TemplateParamData**](TemplateParamData.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateParam.new(
  id: null,
  version_id: 12,
  data: null
)
```


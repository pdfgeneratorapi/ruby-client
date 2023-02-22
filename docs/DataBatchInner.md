# PDFGeneratorAPI::DataBatchInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **Integer** | Template id | [optional] |
| **data** | **Object** | JSON data used to replace data fields in the template | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::DataBatchInner.new(
  template: null,
  data: {&quot;id&quot;:123,&quot;name&quot;:&quot;John Smith&quot;,&quot;birthdate&quot;:&quot;2000-01-01&quot;,&quot;role&quot;:&quot;Developer&quot;}
)
```


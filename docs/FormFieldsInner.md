# PDFGeneratorAPI::FormFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Field label displayed in the form | [optional] |
| **name** | **String** | Data field name. For example \&quot;name\&quot; can be used as \&quot;{name}\&quot; in the document as placeholder. | [optional] |
| **type** | **String** | Field type | [optional] |
| **required** | **Boolean** | Specifies if the field is required or not | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFieldsInner.new(
  label: Full name,
  name: name,
  type: text,
  required: false
)
```


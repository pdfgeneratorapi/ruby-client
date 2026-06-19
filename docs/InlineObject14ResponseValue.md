# PDFGeneratorAPI::InlineObject14ResponseValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique field identifier | [optional] |
| **type** | **String** | Field type | [optional] |
| **name** | **String** | Field name | [optional] |
| **value** | [**InlineObject14ResponseValueValue**](InlineObject14ResponseValueValue.md) |  | [optional] |
| **locked** | **Boolean** | Whether the field is locked | [optional] |
| **pages** | **Array&lt;Integer&gt;** | Pages where the field appears | [optional] |
| **default** | [**InlineObject14ResponseValueDefault**](InlineObject14ResponseValueDefault.md) |  | [optional] |
| **defaults** | **Array&lt;String&gt;** | Default values for multi-select fields | [optional] |
| **values** | **Array&lt;String&gt;** | Selected values for multi-select fields | [optional] |
| **options** | **Array&lt;String&gt;** | Available options for select fields | [optional] |
| **format** | **String** | Field format (for date fields) | [optional] |
| **maxlen** | **Integer** | Maximum field length | [optional] |
| **multiline** | **Boolean** | Whether text field is multiline | [optional] |
| **editable** | **Boolean** | Whether combo box is editable | [optional] |
| **multi** | **Boolean** | Whether list box allows multiple selections | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject14ResponseValue.new(
  id: 30,
  type: textfield,
  name: firstName,
  value: null,
  locked: false,
  pages: [1],
  default: null,
  defaults: [&quot;option1&quot;,&quot;option2&quot;],
  values: [&quot;option1&quot;],
  options: [&quot;option1&quot;,&quot;option2&quot;,&quot;option3&quot;],
  format: dd.mm.yyyy,
  maxlen: 100,
  multiline: false,
  editable: true,
  multi: false
)
```


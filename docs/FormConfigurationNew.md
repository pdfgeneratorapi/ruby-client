# PDFGeneratorAPI::FormConfigurationNew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template ID which is connected to the form | [optional] |
| **name** | **String** | Form name | [optional] |
| **actions** | [**Array&lt;FormConfigurationNewActionsInner&gt;**](FormConfigurationNewActionsInner.md) | Array of action configurations | [optional] |
| **fields** | [**Array&lt;FormFieldsInner&gt;**](FormFieldsInner.md) | A list of form field objects | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormConfigurationNew.new(
  template_id: 123123,
  name: Certificate creator,
  actions: null,
  fields: null
)
```


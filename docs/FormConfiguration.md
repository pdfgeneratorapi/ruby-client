# PDFGeneratorAPI::FormConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **template_id** | **Integer** | Template ID which is connected to the form | [optional] |
| **name** | **String** | Form name | [optional] |
| **actions** | [**Array&lt;FormConfigurationNewActionsInner&gt;**](FormConfigurationNewActionsInner.md) | Array of action configurations | [optional] |
| **fields** | [**Array&lt;FormFieldsInner&gt;**](FormFieldsInner.md) | A list of form field objects | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormConfiguration.new(
  id: 1,
  template_id: 123123,
  name: Certificate creator,
  actions: null,
  fields: null
)
```


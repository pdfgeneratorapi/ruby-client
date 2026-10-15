# PDFGeneratorAPI::FormConfigurationImport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template ID which is connected to the form | [optional] |
| **name** | **String** | Form name | [optional] |
| **actions** | [**Array&lt;FormConfigurationNewActionsInner&gt;**](FormConfigurationNewActionsInner.md) | Array of action configurations. Each action is a separate object with a single key; leave an action out to disable it. | [optional] |
| **configuration** | [**FormConfiguration**](FormConfiguration.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormConfigurationImport.new(
  template_id: 123123,
  name: Certificate creator,
  actions: null,
  configuration: null
)
```


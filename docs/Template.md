# PDFGeneratorAPI::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **name** | **String** | Template name | [optional] |
| **owner** | **Boolean** | Indicates if the workspace is the owner of the template | [optional] |
| **modified** | **String** | Timestamp when the template was modified | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Template.new(
  id: 24382,
  name: Invoice template,
  owner: true,
  modified: 2017-10-21 11:49:28,
  tags: [&quot;invoice&quot;,&quot;orders&quot;]
)
```


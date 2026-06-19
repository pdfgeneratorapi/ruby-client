# PDFGeneratorAPI::InlineObject14

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | [**Hash&lt;String, InlineObject14ResponseValue&gt;**](InlineObject14ResponseValue.md) | Form fields extracted from the PDF document | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject14.new(
  response: {&quot;firstName&quot;:{&quot;id&quot;:&quot;30&quot;,&quot;type&quot;:&quot;textfield&quot;,&quot;name&quot;:&quot;firstName&quot;,&quot;value&quot;:&quot;John&quot;,&quot;locked&quot;:false,&quot;pages&quot;:[1],&quot;multiline&quot;:false},&quot;dateOfBirth&quot;:{&quot;id&quot;:&quot;33&quot;,&quot;type&quot;:&quot;datefield&quot;,&quot;name&quot;:&quot;dateOfBirth&quot;,&quot;value&quot;:&quot;01.01.2000&quot;,&quot;format&quot;:&quot;dd.mm.yyyy&quot;,&quot;locked&quot;:false,&quot;pages&quot;:[1]}}
)
```


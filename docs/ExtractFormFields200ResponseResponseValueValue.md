# PDFGeneratorAPI::ExtractFormFields200ResponseResponseValueValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ExtractFormFields200ResponseResponseValueValue.openapi_one_of
# =>
# [
#   :'Array<String>',
#   :'Boolean',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ExtractFormFields200ResponseResponseValueValue.build(data)
# => #<Array<String>:0x00007fdd4aab02a0>

PDFGeneratorAPI::ExtractFormFields200ResponseResponseValueValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<String>`
- `Boolean`
- `String`
- `nil` (if no type matches)


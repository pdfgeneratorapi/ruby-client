# PDFGeneratorAPI::Component

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cls** | **String** | Defines component class/type | [optional] |
| **id** | **String** | Component id | [optional] |
| **width** | **Float** | Width in units | [optional] |
| **height** | **Float** | Height in units | [optional] |
| **top** | **Float** | Position from the page top in units | [optional] |
| **left** | **Float** | Position from the page left in units | [optional] |
| **zindex** | **Integer** | Defines the rendering order on page. Components with smaller zindex are rendered before | [optional] |
| **value** | **String** | Component value | [optional] |
| **data_index** | **String** | Defines data field for Table and Container components which are used to iterate over list of items | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Component.new(
  cls: labelComponent,
  id: component-12313,
  width: 3.5,
  height: 1,
  top: 4.2,
  left: 2.5,
  zindex: 102,
  value: ${price},
  data_index: line_items
)
```


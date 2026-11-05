# PDFGeneratorAPI::Font

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The value of a component&#39;s &#x60;fontFamily&#x60; for this font |  |
| **name** | **String** | Font name, as the editor shows it |  |
| **parent** | **String** | The &#x60;id&#x60; of the font this one is grouped under, such as another weight of the same family |  |
| **styles** | **Array&lt;String&gt;** | The styles the font has glyphs of its own for. Text in another style is drawn with the regular glyphs. |  |
| **blocks** | **Hash&lt;String, Integer&gt;** | The Unicode blocks the font has at least half of the characters of, with the share it has in percent. 100 means every character of the block. |  |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Font.new(
  id: opensans,
  name: Open Sans,
  parent: null,
  styles: [&quot;normal&quot;,&quot;bold&quot;,&quot;italic&quot;,&quot;bold_italic&quot;],
  blocks: {&quot;Basic Latin&quot;:100,&quot;Latin-1 Supplement&quot;:100,&quot;Latin Extended-A&quot;:100,&quot;Cyrillic&quot;:99}
)
```


# PDFGeneratorAPI::InlineResponse403

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Error description | [optional] 
**status** | **String** | HTTP Error code | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::InlineResponse403.new(error: Access not granted,
                                 status: 403)
```



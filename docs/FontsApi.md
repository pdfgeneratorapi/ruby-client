# PDFGeneratorAPI::FontsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_fonts**](FontsApi.md#get_fonts) | **GET** /fonts | Get fonts |


## get_fonts

> <GetFonts200Response> get_fonts(opts)

Get fonts

Returns the fonts the workspace's templates can use, sorted by name. Use a font's `id` as a component's `fontFamily`; a font that is not in this list is drawn with Open Sans.  Each font lists the styles it has glyphs of its own for, and the Unicode blocks it has at least half of the characters of, with the share in percent. To check particular characters, pass them in `covers`. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FontsApi.new
opts = {
  covers: '€₹✓' # String | Text whose every character a font must have a glyph for, in its regular style, to be returned. Control characters are ignored.
}

begin
  # Get fonts
  result = api_instance.get_fonts(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FontsApi->get_fonts: #{e}"
end
```

#### Using the get_fonts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFonts200Response>, Integer, Hash)> get_fonts_with_http_info(opts)

```ruby
begin
  # Get fonts
  data, status_code, headers = api_instance.get_fonts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFonts200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FontsApi->get_fonts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **covers** | **String** | Text whose every character a font must have a glyph for, in its regular style, to be returned. Control characters are ignored. | [optional] |

### Return type

[**GetFonts200Response**](GetFonts200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


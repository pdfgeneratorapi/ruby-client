# PDFGeneratorAPI::TemplateLibraryApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_template_library**](TemplateLibraryApi.md#get_template_library) | **GET** /templates/library | Get template library |
| [**get_template_library_item**](TemplateLibraryApi.md#get_template_library_item) | **GET** /templates/library/{publicId} | Open template from the library |


## get_template_library

> <GetTemplateLibrary200Response> get_template_library(opts)

Get template library

Returns a list of publicly available templates from the template library. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'

api_instance = PDFGeneratorAPI::TemplateLibraryApi.new
opts = {
  tags: 'tags_example' # String | Filter template by tags
}

begin
  # Get template library
  result = api_instance.get_template_library(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateLibraryApi->get_template_library: #{e}"
end
```

#### Using the get_template_library_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplateLibrary200Response>, Integer, Hash)> get_template_library_with_http_info(opts)

```ruby
begin
  # Get template library
  data, status_code, headers = api_instance.get_template_library_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplateLibrary200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateLibraryApi->get_template_library_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **String** | Filter template by tags | [optional] |

### Return type

[**GetTemplateLibrary200Response**](GetTemplateLibrary200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_library_item

> <InlineObject16> get_template_library_item(public_id)

Open template from the library

Returns the template definition for a public template identified by its `public_id`. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'

api_instance = PDFGeneratorAPI::TemplateLibraryApi.new
public_id = 'bac8381bce1982e5f6957a0f52371336' # String | Resource public id

begin
  # Open template from the library
  result = api_instance.get_template_library_item(public_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateLibraryApi->get_template_library_item: #{e}"
end
```

#### Using the get_template_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject16>, Integer, Hash)> get_template_library_item_with_http_info(public_id)

```ruby
begin
  # Open template from the library
  data, status_code, headers = api_instance.get_template_library_item_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject16>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateLibraryApi->get_template_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Resource public id |  |

### Return type

[**InlineObject16**](InlineObject16.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


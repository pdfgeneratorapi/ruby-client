# PDFGeneratorAPI::DocumentsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**merge_template**](DocumentsApi.md#merge_template) | **POST** /templates/templateId/output | Generate document |
| [**merge_templates**](DocumentsApi.md#merge_templates) | **POST** /templates/output | Generate document (multiple templates) |


## merge_template

> <InlineResponse2004> merge_template(template_id, data, opts)

Generate document

Merges template with data and returns base64 encoded document or a public URL to a document. You can send json encoded data in request body or a public URL to your json file as the data parameter. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
template_id = 19375 # Integer | Template unique identifier
data = PDFGeneratorAPI::Data.new # Data | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
opts = {
  name: 'My document', # String | Document name, returned in the meta data.
  format: 'pdf', # String | Document format. The zip option will return a ZIP file with PDF files.
  output: 'base64' # String | Response format. With the url option, the document is stored for 30 days and automatically deleted.
}

begin
  # Generate document
  result = api_instance.merge_template(template_id, data, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->merge_template: #{e}"
end
```

#### Using the merge_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2004>, Integer, Hash)> merge_template_with_http_info(template_id, data, opts)

```ruby
begin
  # Generate document
  data, status_code, headers = api_instance.merge_template_with_http_info(template_id, data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2004>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->merge_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **data** | [**Data**](Data.md) | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file. |  |
| **name** | **String** | Document name, returned in the meta data. | [optional] |
| **format** | **String** | Document format. The zip option will return a ZIP file with PDF files. | [optional][default to &#39;pdf&#39;] |
| **output** | **String** | Response format. With the url option, the document is stored for 30 days and automatically deleted. | [optional][default to &#39;base64&#39;] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## merge_templates

> <InlineResponse2004> merge_templates(request_body, opts)

Generate document (multiple templates)

Allows to merge multiples template with data and returns base64 encoded document or public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
request_body = [3.56] # Array<Object> | Data used to specify templates and data objects which are used to merge the template
opts = {
  name: 'My document', # String | Document name, returned in the meta data.
  format: 'pdf', # String | Document format. The zip option will return a ZIP file with PDF files.
  output: 'base64' # String | Response format. With the url option, the document is stored for 30 days and automatically deleted.
}

begin
  # Generate document (multiple templates)
  result = api_instance.merge_templates(request_body, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->merge_templates: #{e}"
end
```

#### Using the merge_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2004>, Integer, Hash)> merge_templates_with_http_info(request_body, opts)

```ruby
begin
  # Generate document (multiple templates)
  data, status_code, headers = api_instance.merge_templates_with_http_info(request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2004>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->merge_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | Data used to specify templates and data objects which are used to merge the template |  |
| **name** | **String** | Document name, returned in the meta data. | [optional] |
| **format** | **String** | Document format. The zip option will return a ZIP file with PDF files. | [optional][default to &#39;pdf&#39;] |
| **output** | **String** | Response format. With the url option, the document is stored for 30 days and automatically deleted. | [optional][default to &#39;base64&#39;] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


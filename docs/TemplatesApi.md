# PDFGeneratorAPI::TemplatesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_template**](TemplatesApi.md#copy_template) | **POST** /templates/{templateId}/copy | Copy template
[**create_template**](TemplatesApi.md#create_template) | **POST** /templates | Create template
[**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Delete template
[**get_editor_url**](TemplatesApi.md#get_editor_url) | **POST** /templates/{templateId}/editor | Open editor
[**get_template**](TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Get template
[**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | Get templates
[**merge_template**](TemplatesApi.md#merge_template) | **POST** /templates/{templateId}/output | Merge template
[**merge_templates**](TemplatesApi.md#merge_templates) | **POST** /templates/output | Merge multiple templates
[**update_template**](TemplatesApi.md#update_template) | **PUT** /templates/{templateId} | Update template



## copy_template

> InlineResponse2001 copy_template(template_id, opts)

Copy template

Creates a copy of a template to the workspace specified in authentication parameters.

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
opts = {
  name: 'My copied template' # String | Name for the copied template. If name is not specified then the original name is used.
}

begin
  #Copy template
  result = api_instance.copy_template(template_id, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->copy_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 
 **name** | **String**| Name for the copied template. If name is not specified then the original name is used. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_template

> InlineResponse2001 create_template(template_definition_new)

Create template

Creates a new template. If template configuration is not specified in the request body then an empty template is created. Template is placed to the workspace specified in authentication params. Template configuration must be sent in the request body.

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_definition_new = PDFGeneratorAPI::TemplateDefinitionNew.new # TemplateDefinitionNew | Template configuration as JSON string

begin
  #Create template
  result = api_instance.create_template(template_definition_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->create_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_definition_new** | [**TemplateDefinitionNew**](TemplateDefinitionNew.md)| Template configuration as JSON string | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_template

> InlineResponse2002 delete_template(template_id)

Delete template

Deletes the template from workspace

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier

begin
  #Delete template
  result = api_instance.delete_template(template_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->delete_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_editor_url

> InlineResponse2003 get_editor_url(template_id, body, opts)

Open editor

Returns an unique URL which you can use to redirect your user to the editor form your application or use the generated URL as iframe source to show the editor within your application. 

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
body = nil # Object | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
opts = {
  language: 'en' # String | Specify the editor UI language. Defaults to organization editor language.
}

begin
  #Open editor
  result = api_instance.get_editor_url(template_id, body, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_editor_url: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 
 **body** | **Object**| Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file. | 
 **language** | **String**| Specify the editor UI language. Defaults to organization editor language. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_template

> InlineResponse2001 get_template(template_id)

Get template

Returns template configuration

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier

begin
  #Get template
  result = api_instance.get_template(template_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> InlineResponse200 get_templates

Get templates

Returns a list of templates available for the authenticated workspace

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new

begin
  #Get templates
  result = api_instance.get_templates
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_templates: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_template

> InlineResponse2004 merge_template(template_id, data, opts)

Merge template

Merges template with data and returns base64 encoded document or a public URL to a document. You can send json encoded data in request body or a public URL to your json file as the data parameter.

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
data = PDFGeneratorAPI::Data.new # Data | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
opts = {
  name: 'My document', # String | Document name, returned in the meta data.
  format: 'pdf', # String | Document format. The zip option will return a ZIP file with PDF files.
  output: 'base64' # String | Response format.
}

begin
  #Merge template
  result = api_instance.merge_template(template_id, data, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->merge_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 
 **data** | [**Data**](Data.md)| Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file. | 
 **name** | **String**| Document name, returned in the meta data. | [optional] 
 **format** | **String**| Document format. The zip option will return a ZIP file with PDF files. | [optional] [default to &#39;pdf&#39;]
 **output** | **String**| Response format. | [optional] [default to &#39;base64&#39;]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## merge_templates

> InlineResponse2004 merge_templates(request_body, opts)

Merge multiple templates

Allows to merge multiples template with data and returns base64 encoded document or public url to a document.

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
request_body = nil # Array<Object> | Data used to specify templates and data objects which are used to merge the template
opts = {
  name: 'My document', # String | Document name, returned in the meta data.
  format: 'pdf', # String | Document format. The zip option will return a ZIP file with PDF files.
  output: 'base64' # String | Response format.
}

begin
  #Merge multiple templates
  result = api_instance.merge_templates(request_body, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->merge_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;Object&gt;**](Object.md)| Data used to specify templates and data objects which are used to merge the template | 
 **name** | **String**| Document name, returned in the meta data. | [optional] 
 **format** | **String**| Document format. The zip option will return a ZIP file with PDF files. | [optional] [default to &#39;pdf&#39;]
 **output** | **String**| Response format. | [optional] [default to &#39;base64&#39;]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_template

> InlineResponse2001 update_template(template_id, template_definition_new)

Update template

Updates template configuration. The template configuration for pages and layout must be complete as the entire configuration is replaced and not merged.

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
template_definition_new = PDFGeneratorAPI::TemplateDefinitionNew.new # TemplateDefinitionNew | Template configuration as JSON string

begin
  #Update template
  result = api_instance.update_template(template_id, template_definition_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling TemplatesApi->update_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template unique identifier | 
 **template_definition_new** | [**TemplateDefinitionNew**](TemplateDefinitionNew.md)| Template configuration as JSON string | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


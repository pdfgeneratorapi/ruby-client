# PDFGeneratorAPI::TemplateVersionsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_template_version**](TemplateVersionsApi.md#delete_template_version) | **DELETE** /templates/{templateId}/versions/{templateVersion} | Delete template version |
| [**get_template_version**](TemplateVersionsApi.md#get_template_version) | **GET** /templates/{templateId}/versions/{templateVersion} | Get template version |
| [**list_template_versions**](TemplateVersionsApi.md#list_template_versions) | **GET** /templates/{templateId}/versions | List template versions |
| [**promote_template_version**](TemplateVersionsApi.md#promote_template_version) | **PUT** /templates/{templateId}/versions/{templateVersion}/promote | Promote template version |


## delete_template_version

> delete_template_version(template_id, template_version)

Delete template version

Deletes the specified template version. Production versions cannot be deleted. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplateVersionsApi.new
template_id = 19375 # Integer | Template unique identifier
template_version = 56 # Integer | Unique ID of the template version.

begin
  # Delete template version
  api_instance.delete_template_version(template_id, template_version)
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->delete_template_version: #{e}"
end
```

#### Using the delete_template_version_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_template_version_with_http_info(template_id, template_version)

```ruby
begin
  # Delete template version
  data, status_code, headers = api_instance.delete_template_version_with_http_info(template_id, template_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->delete_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **template_version** | **Integer** | Unique ID of the template version. |  |

### Return type

nil (empty response body)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_version

> <InlineObject16> get_template_version(template_id, template_version)

Get template version

Returns the template definition of the specified version. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplateVersionsApi.new
template_id = 19375 # Integer | Template unique identifier
template_version = 56 # Integer | Unique ID of the template version.

begin
  # Get template version
  result = api_instance.get_template_version(template_id, template_version)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->get_template_version: #{e}"
end
```

#### Using the get_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject16>, Integer, Hash)> get_template_version_with_http_info(template_id, template_version)

```ruby
begin
  # Get template version
  data, status_code, headers = api_instance.get_template_version_with_http_info(template_id, template_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject16>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->get_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **template_version** | **Integer** | Unique ID of the template version. |  |

### Return type

[**InlineObject16**](InlineObject16.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_template_versions

> <TemplateVersionCollection> list_template_versions(template_id, opts)

List template versions

Returns a paginated list of template versions for the specified template. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplateVersionsApi.new
template_id = 19375 # Integer | Template unique identifier
opts = {
  per_page: 56, # Integer | Number of items per page.
  page: 56 # Integer | Page number to return.
}

begin
  # List template versions
  result = api_instance.list_template_versions(template_id, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->list_template_versions: #{e}"
end
```

#### Using the list_template_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateVersionCollection>, Integer, Hash)> list_template_versions_with_http_info(template_id, opts)

```ruby
begin
  # List template versions
  data, status_code, headers = api_instance.list_template_versions_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateVersionCollection>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->list_template_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **per_page** | **Integer** | Number of items per page. | [optional] |
| **page** | **Integer** | Page number to return. | [optional] |

### Return type

[**TemplateVersionCollection**](TemplateVersionCollection.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## promote_template_version

> <PromoteTemplateVersion200Response> promote_template_version(template_id, template_version)

Promote template version

Promotes the specified template version to production. Only one version can be production at a time. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplateVersionsApi.new
template_id = 19375 # Integer | Template unique identifier
template_version = 56 # Integer | Unique ID of the template version.

begin
  # Promote template version
  result = api_instance.promote_template_version(template_id, template_version)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->promote_template_version: #{e}"
end
```

#### Using the promote_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromoteTemplateVersion200Response>, Integer, Hash)> promote_template_version_with_http_info(template_id, template_version)

```ruby
begin
  # Promote template version
  data, status_code, headers = api_instance.promote_template_version_with_http_info(template_id, template_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromoteTemplateVersion200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplateVersionsApi->promote_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **template_version** | **Integer** | Unique ID of the template version. |  |

### Return type

[**PromoteTemplateVersion200Response**](PromoteTemplateVersion200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


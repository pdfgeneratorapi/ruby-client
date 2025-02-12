# PDFGeneratorAPI::FormsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_from**](FormsApi.md#create_from) | **POST** /forms | Create form |
| [**delete_form**](FormsApi.md#delete_form) | **DELETE** /forms/{formId} | Delete form |
| [**get_form**](FormsApi.md#get_form) | **GET** /forms/{formId} | Get form |
| [**get_forms**](FormsApi.md#get_forms) | **GET** /forms | Get forms |
| [**share_form**](FormsApi.md#share_form) | **POST** /forms/{formId}/share | Share form |
| [**update_form**](FormsApi.md#update_form) | **PUT** /forms/{formId} | Update form |


## create_from

> <CreateFrom201Response> create_from(form_configuration_new)

Create form

Creates a new form based on the configuration sent in the request body.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_configuration_new = PDFGeneratorAPI::FormConfigurationNew.new # FormConfigurationNew | Form configuration

begin
  # Create form
  result = api_instance.create_from(form_configuration_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->create_from: #{e}"
end
```

#### Using the create_from_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFrom201Response>, Integer, Hash)> create_from_with_http_info(form_configuration_new)

```ruby
begin
  # Create form
  data, status_code, headers = api_instance.create_from_with_http_info(form_configuration_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFrom201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->create_from_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_configuration_new** | [**FormConfigurationNew**](FormConfigurationNew.md) | Form configuration |  |

### Return type

[**CreateFrom201Response**](CreateFrom201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_form

> delete_form(form_id)

Delete form

Deletes the form with specified id

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Delete form
  api_instance.delete_form(form_id)
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->delete_form: #{e}"
end
```

#### Using the delete_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_form_with_http_info(form_id)

```ruby
begin
  # Delete form
  data, status_code, headers = api_instance.delete_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->delete_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

nil (empty response body)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_form

> <CreateFrom201Response> get_form(form_id)

Get form

Returns form configuration

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Get form
  result = api_instance.get_form(form_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_form: #{e}"
end
```

#### Using the get_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFrom201Response>, Integer, Hash)> get_form_with_http_info(form_id)

```ruby
begin
  # Get form
  data, status_code, headers = api_instance.get_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFrom201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

[**CreateFrom201Response**](CreateFrom201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_forms

> <GetForms200Response> get_forms(opts)

Get forms

Returns a list of forms available for the organization

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
opts = {
  page: 1, # Integer | Pagination: page to return
  per_page: 20 # Integer | Pagination: How many records to return per page
}

begin
  # Get forms
  result = api_instance.get_forms(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_forms: #{e}"
end
```

#### Using the get_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetForms200Response>, Integer, Hash)> get_forms_with_http_info(opts)

```ruby
begin
  # Get forms
  data, status_code, headers = api_instance.get_forms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetForms200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Pagination: page to return | [optional][default to 1] |
| **per_page** | **Integer** | Pagination: How many records to return per page | [optional][default to 15] |

### Return type

[**GetForms200Response**](GetForms200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## share_form

> <ShareForm201Response> share_form(form_id)

Share form

Creates an unique sharing URL to collect form data

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Share form
  result = api_instance.share_form(form_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->share_form: #{e}"
end
```

#### Using the share_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShareForm201Response>, Integer, Hash)> share_form_with_http_info(form_id)

```ruby
begin
  # Share form
  data, status_code, headers = api_instance.share_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShareForm201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->share_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

[**ShareForm201Response**](ShareForm201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_form

> <CreateFrom201Response> update_form(form_id, form_configuration_new)

Update form

Updates the form configuration. The form configuration must be complete as the entire configuration is replaced and not merged.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier
form_configuration_new = PDFGeneratorAPI::FormConfigurationNew.new # FormConfigurationNew | Form configuration

begin
  # Update form
  result = api_instance.update_form(form_id, form_configuration_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->update_form: #{e}"
end
```

#### Using the update_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFrom201Response>, Integer, Hash)> update_form_with_http_info(form_id, form_configuration_new)

```ruby
begin
  # Update form
  data, status_code, headers = api_instance.update_form_with_http_info(form_id, form_configuration_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFrom201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->update_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |
| **form_configuration_new** | [**FormConfigurationNew**](FormConfigurationNew.md) | Form configuration |  |

### Return type

[**CreateFrom201Response**](CreateFrom201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# PDFGeneratorAPI::WorkspacesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceId} | Delete workspace
[**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /workspaces/{workspaceId} | Get workspace



## delete_workspace

> InlineResponse2002 delete_workspace(workspace_id)

Delete workspace

Deletes the workspace

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
workspace_id = 'demo.example@actualreports.com' # String | Workspace identifier

begin
  #Delete workspace
  result = api_instance.delete_workspace(workspace_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling WorkspacesApi->delete_workspace: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **String**| Workspace identifier | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspace

> InlineResponse2005 get_workspace(workspace_id)

Get workspace

Returns workspace information

### Example

```ruby
# load the gem
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
workspace_id = 'demo.example@actualreports.com' # String | Workspace identifier

begin
  #Get workspace
  result = api_instance.get_workspace(workspace_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling WorkspacesApi->get_workspace: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **String**| Workspace identifier | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


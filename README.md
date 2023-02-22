# pdf_generator_api_client

PDFGeneratorAPI - the Ruby gem for the PDF Generator API

# Introduction
[PDF Generator API](https://pdfgeneratorapi.com) allows you easily generate transactional PDF documents and reduce the development and support costs by enabling your users to create and manage their document templates using a browser-based drag-and-drop document editor.

The PDF Generator API features a web API architecture, allowing you to code in the language of your choice. This API supports the JSON media type, and uses UTF-8 character encoding.

You can find our previous API documentation page with references to Simple and Signature authentication [here](https://docs.pdfgeneratorapi.com/legacy).

## Base URL
The base URL for all the API endpoints is `https://us1.pdfgeneratorapi.com/api/v3`

For example
* `https://us1.pdfgeneratorapi.com/api/v3/templates`
* `https://us1.pdfgeneratorapi.com/api/v3/workspaces`
* `https://us1.pdfgeneratorapi.com/api/v3/templates/123123`

## Editor
PDF Generator API comes with a powerful drag & drop editor that allows to create any kind of document templates, from barcode labels to invoices, quotes and reports. You can find tutorials and videos from our [Support Portal](https://support.pdfgeneratorapi.com).
* [Component specification](https://support.pdfgeneratorapi.com/en/category/components-1ffseaj/)
* [Expression Language documentation](https://support.pdfgeneratorapi.com/en/category/expression-language-q203pa/)
* [Frequently asked questions and answers](https://support.pdfgeneratorapi.com/en/category/qanda-1ov519d/)

## Definitions

### Organization
Organization is a group of workspaces owned by your account.

### Workspace
Workspace contains templates. Each workspace has access to their own templates and organization default templates.

### Master Workspace
Master Workspace is the main/default workspace of your Organization. The Master Workspace identifier is the email you signed up with.

### Default Template
Default template is a template that is available for all workspaces by default. You can set the template access type under Page Setup. If template has "Organization" access then your users can use them from the "New" menu in the Editor.

### Data Field
Data Field is a placeholder for the specific data in your JSON data set. In this example JSON you can access the buyer name using Data Field `{paymentDetails::buyerName}`. The separator between depth levels is :: (two colons). When designing the template you don’t have to know every Data Field, our editor automatically extracts all the available fields from your data set and provides an easy way to insert them into the template.
```
{
    "documentNumber": 1,
    "paymentDetails": {
        "method": "Credit Card",
        "buyerName": "John Smith"
    },
    "items": [
        {
            "id": 1,
            "name": "Item one"
        }
    ]
}
```

## Rate limiting
Our API endpoints use IP-based rate limiting and allow you to make up to 30 requests per second and 240 requests per minute. If you make more requests, you will receive a response with HTTP code 429.

*  *  *  *  *
# Authentication
The PDF Generator API uses __JSON Web Tokens (JWT)__ to authenticate all API requests. These tokens offer a method to establish secure server-to-server authentication by transferring a compact JSON object with a signed payload of your account’s API Key and Secret.
When authenticating to the PDF Generator API, a JWT should be generated uniquely by a __server-side application__ and included as a __Bearer Token__ in the header of each request.

## Legacy Simple and Signature authentication
You can find our legacy documentation for Simple and Signature authentication [here](https://docs.pdfgeneratorapi.com/legacy).

<SecurityDefinitions />

## Accessing your API Key and Secret
You can find your __API Key__ and __API Secret__ from the __Account Settings__ page after you login to PDF Generator API [here](https://pdfgeneratorapi.com/login).

## Creating a JWT
JSON Web Tokens are composed of three sections: a header, a payload (containing a claim set), and a signature. The header and payload are JSON objects, which are serialized to UTF-8 bytes, then encoded using base64url encoding.

The JWT's header, payload, and signature are concatenated with periods (.). As a result, a JWT typically takes the following form:
```
{Base64url encoded header}.{Base64url encoded payload}.{Base64url encoded signature}
```

We recommend and support libraries provided on [jwt.io](https://jwt.io/). While other libraries can create JWT, these recommended libraries are the most robust.

### Header
Property `alg` defines which signing algorithm is being used. PDF Generator API users HS256.
Property `typ` defines the type of token and it is always JWT.
```
{
  "alg": "HS256",
  "typ": "JWT"
}
```

### Payload
The second part of the token is the payload, which contains the claims  or the pieces of information being passed about the user and any metadata required.
It is mandatory to specify the following claims:
* issuer (`iss`): Your API key
* subject (`sub`): Workspace identifier
* expiration time (`exp`): Timestamp (unix epoch time) until the token is valid. It is highly recommended to set the exp timestamp for a short period, i.e. a matter of seconds. This way, if a token is intercepted or shared, the token will only be valid for a short period of time.

```
{
  "iss": "ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a",
  "sub": "demo.example@actualreports.com",
  "exp": 1586112639
}
```

### Signature
To create the signature part you have to take the encoded header, the encoded payload, a secret, the algorithm specified in the header, and sign that. The signature is used to verify the message wasn't changed along the way, and, in the case of tokens signed with a private key, it can also verify that the sender of the JWT is who it says it is.
```
HMACSHA256(
    base64UrlEncode(header) + "." +
    base64UrlEncode(payload),
    API_SECRET)
```

### Putting all together
The output is three Base64-URL strings separated by dots. The following shows a JWT that has the previous header and payload encoded, and it is signed with a secret.
```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0.SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q

// Base64 encoded header: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9
// Base64 encoded payload: eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0
// Signature: SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q
```

## Testing with JWTs
You can create a temporary token in [Account Settings](https://pdfgeneratorapi.com/account/organization) page after you login to PDF Generator API. The generated token uses your email address as the subject (`sub`) value and is valid for __5 minutes__.
You can also use [jwt.io](https://jwt.io/) to generate test tokens for your API calls. These test tokens should never be used in production applications.
*  *  *  *  *

# Libraries and SDKs
## Postman Collection
We have created a [Postman](https://www.postman.com) Collection so you can easily test all the API endpoints wihtout developing and code. You can download the collection [here](https://app.getpostman.com/run-collection/329f09618ec8a957dbc4) or just click the button below.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/329f09618ec8a957dbc4)

## Client Libraries
All our Client Libraries are auto-generated using [OpenAPI Generator](https://openapi-generator.tech/) which uses the OpenAPI v3 specification to automatically generate a client library in specific programming language.

* [PHP Client](https://github.com/pdfgeneratorapi/php-client)
* [Java Client](https://github.com/pdfgeneratorapi/java-client)
* [Ruby Client](https://github.com/pdfgeneratorapi/ruby-client)
* [Python Client](https://github.com/pdfgeneratorapi/python-client)
* [Javascript Client](https://github.com/pdfgeneratorapi/javascript-client)

We have validated the generated libraries, but let us know if you find any anomalies in the client code.
*  *  *  *  *

# Error codes

| Code   | Description                    |
|--------|--------------------------------|
| 401    | Unauthorized                   |
| 402    | Payment Required               |
| 403    | Forbidden                      |
| 404    | Not Found                      |
| 422    | Unprocessable Entity           |
| 429    | Too Many Requests              |
| 500    | Internal Server Error          |

## 401 Unauthorized
| Description                                                             |
|-------------------------------------------------------------------------|
| Authentication failed: request expired                                  |
| Authentication failed: workspace missing                                |
| Authentication failed: key missing                                      |
| Authentication failed: property 'iss' (issuer) missing in JWT           |
| Authentication failed: property 'sub' (subject) missing in JWT          |
| Authentication failed: property 'exp' (expiration time) missing in JWT  |
| Authentication failed: incorrect signature                              |

## 402 Payment Required
| Description                                                             |
|-------------------------------------------------------------------------|
| Your account is suspended, please upgrade your account                  |

## 403 Forbidden
| Description                                                             |
|-------------------------------------------------------------------------|
| Your account has exceeded the monthly document generation limit.        |
| Access not granted: You cannot delete master workspace via API          |
| Access not granted: Template is not accessible by this organization     |
| Your session has expired, please close and reopen the editor.           |

## 404 Entity not found
| Description                                                             |
|-------------------------------------------------------------------------|
| Entity not found                                                        |
| Resource not found                                                      |
| None of the templates is available for the workspace.                   |

## 422 Unprocessable Entity
| Description                                                             |
|-------------------------------------------------------------------------|
| Unable to parse JSON, please check formatting                           |
| Required parameter missing                                              |
| Required parameter missing: template definition not defined             |
| Required parameter missing: template not defined                        |

## 429 Too Many Requests
| Description                                                             |
|-------------------------------------------------------------------------|
| You can make up to 5 requests per second and 120 requests per minute.   |


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.1.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://support.pdfgeneratorapi.com](https://support.pdfgeneratorapi.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pdf_generator_api_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./pdf_generator_api_client-1.0.0.gem
```

(for development, run `gem install --dev ./pdf_generator_api_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pdf_generator_api_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/pdfgeneratorapi/ruby-client, then add the following in the Gemfile:

    gem 'pdf_generator_api_client', :git => 'https://github.com/pdfgeneratorapi/ruby-client.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'pdf_generator_api_client'

# Setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
template_id = 19375 # Integer | Template unique identifier
body = { ... } # Object | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
opts = {
  name: 'My document', # String | Document name, returned in the meta data.
  format: 'pdf', # String | Document format. The zip option will return a ZIP file with PDF files.
  output: 'base64' # String | Response format. "I" is used to return the file inline. With the url option, the document is stored for 30 days and automatically deleted.
}

begin
  #Generate document
  result = api_instance.merge_template(template_id, body, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling DocumentsApi->merge_template: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PDFGeneratorAPI::DocumentsApi* | [**merge_template**](docs/DocumentsApi.md#merge_template) | **POST** /templates/{templateId}/output | Generate document
*PDFGeneratorAPI::DocumentsApi* | [**merge_templates**](docs/DocumentsApi.md#merge_templates) | **POST** /templates/output | Generate document (multiple templates)
*PDFGeneratorAPI::TemplatesApi* | [**copy_template**](docs/TemplatesApi.md#copy_template) | **POST** /templates/{templateId}/copy | Copy template
*PDFGeneratorAPI::TemplatesApi* | [**create_template**](docs/TemplatesApi.md#create_template) | **POST** /templates | Create template
*PDFGeneratorAPI::TemplatesApi* | [**delete_template**](docs/TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Delete template
*PDFGeneratorAPI::TemplatesApi* | [**get_editor_url**](docs/TemplatesApi.md#get_editor_url) | **POST** /templates/{templateId}/editor | Open editor
*PDFGeneratorAPI::TemplatesApi* | [**get_template**](docs/TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Get template
*PDFGeneratorAPI::TemplatesApi* | [**get_templates**](docs/TemplatesApi.md#get_templates) | **GET** /templates | Get templates
*PDFGeneratorAPI::TemplatesApi* | [**update_template**](docs/TemplatesApi.md#update_template) | **PUT** /templates/{templateId} | Update template
*PDFGeneratorAPI::WorkspacesApi* | [**delete_workspace**](docs/WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceId} | Delete workspace
*PDFGeneratorAPI::WorkspacesApi* | [**get_workspace**](docs/WorkspacesApi.md#get_workspace) | **GET** /workspaces/{workspaceId} | Get workspace


## Documentation for Models

 - [PDFGeneratorAPI::BatchDataInner](docs/BatchDataInner.md)
 - [PDFGeneratorAPI::Component](docs/Component.md)
 - [PDFGeneratorAPI::CreateTemplate200Response](docs/CreateTemplate200Response.md)
 - [PDFGeneratorAPI::DeleteTemplate200Response](docs/DeleteTemplate200Response.md)
 - [PDFGeneratorAPI::DeleteTemplate200ResponseResponse](docs/DeleteTemplate200ResponseResponse.md)
 - [PDFGeneratorAPI::GetEditorUrl200Response](docs/GetEditorUrl200Response.md)
 - [PDFGeneratorAPI::GetTemplates200Response](docs/GetTemplates200Response.md)
 - [PDFGeneratorAPI::GetTemplates401Response](docs/GetTemplates401Response.md)
 - [PDFGeneratorAPI::GetTemplates402Response](docs/GetTemplates402Response.md)
 - [PDFGeneratorAPI::GetTemplates403Response](docs/GetTemplates403Response.md)
 - [PDFGeneratorAPI::GetTemplates404Response](docs/GetTemplates404Response.md)
 - [PDFGeneratorAPI::GetTemplates422Response](docs/GetTemplates422Response.md)
 - [PDFGeneratorAPI::GetTemplates429Response](docs/GetTemplates429Response.md)
 - [PDFGeneratorAPI::GetTemplates500Response](docs/GetTemplates500Response.md)
 - [PDFGeneratorAPI::GetWorkspace200Response](docs/GetWorkspace200Response.md)
 - [PDFGeneratorAPI::MergeTemplate200Response](docs/MergeTemplate200Response.md)
 - [PDFGeneratorAPI::MergeTemplate200ResponseMeta](docs/MergeTemplate200ResponseMeta.md)
 - [PDFGeneratorAPI::Template](docs/Template.md)
 - [PDFGeneratorAPI::TemplateDefinition](docs/TemplateDefinition.md)
 - [PDFGeneratorAPI::TemplateDefinitionDataSettings](docs/TemplateDefinitionDataSettings.md)
 - [PDFGeneratorAPI::TemplateDefinitionEditor](docs/TemplateDefinitionEditor.md)
 - [PDFGeneratorAPI::TemplateDefinitionNew](docs/TemplateDefinitionNew.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayout](docs/TemplateDefinitionNewLayout.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayoutMargins](docs/TemplateDefinitionNewLayoutMargins.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayoutRepeatLayout](docs/TemplateDefinitionNewLayoutRepeatLayout.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewPagesInner](docs/TemplateDefinitionNewPagesInner.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewPagesInnerMargins](docs/TemplateDefinitionNewPagesInnerMargins.md)
 - [PDFGeneratorAPI::Workspace](docs/Workspace.md)


## Documentation for Authorization


### JSONWebTokenAuth

- **Type**: Bearer authentication (JWT)


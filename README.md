# pdf_generator_api_client

PDFGeneratorAPI - the Ruby gem for the PDF Generator API

# Introduction
[PDF Generator API](https://pdfgeneratorapi.com) allows you easily generate transactional PDF documents and reduce the development and support costs by enabling your users to create and manage their document templates using a browser-based drag-and-drop document editor.

The PDF Generator API features a web API architecture, allowing you to code in the language of your choice. This API supports the JSON media type, and uses UTF-8 character encoding.

## Base URL
The base URL for all the API endpoints is `https://us1.pdfgeneratorapi.com/api/v4`

For example
* `https://us1.pdfgeneratorapi.com/api/v4/templates`
* `https://us1.pdfgeneratorapi.com/api/v4/workspaces`
* `https://us1.pdfgeneratorapi.com/api/v4/templates/123123`

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
Our API endpoints use IP-based rate limiting and allow you to make up to 2 requests per second and 60 requests per minute. If you make more requests, you will receive a response with HTTP code 429.

Response headers contain additional values:

| Header   | Description                    |
|--------|--------------------------------|
| X-RateLimit-Limit    | Maximum requests per minute                   |
| X-RateLimit-Remaining    | The requests remaining in the current minute               |
| Retry-After     | How many seconds you need to wait until you are allowed to make requests |

*  *  *  *  *

# Libraries and SDKs
## Postman Collection
We have created a [Postman Collection](https://www.postman.com/pdfgeneratorapi/workspace/pdf-generator-api-public-workspace/overview) so you can easily test all the API endpoints without developing and code.


## Client Libraries
All our Client Libraries are auto-generated using [OpenAPI Generator](https://openapi-generator.tech/) which uses the OpenAPI v3 specification to automatically generate a client library in specific programming language.

* [PHP Client](https://github.com/pdfgeneratorapi/php-client)
* [Java Client](https://github.com/pdfgeneratorapi/java-client)
* [Ruby Client](https://github.com/pdfgeneratorapi/ruby-client)
* [Python Client](https://github.com/pdfgeneratorapi/python-client)
* [Javascript Client](https://github.com/pdfgeneratorapi/javascript-client)

We have validated the generated libraries, but let us know if you find any anomalies in the client code.

## Model Context Protocol (MCP) Server
Integrate document generation directly into your AI agents and LLM applications using our official Model Context Protocol (MCP) Server.

The MCP server provides a standardized interface that allows AI assistants (like Claude Desktop and other MCP-compatible clients) to securely interact with the PDF Generator API. With it, your AI applications can automatically fetch workspaces, retrieve templates, merge data, and generate PDF documents on the fly.

[Get PDF Generator API MCP Server](https://github.com/pdfgeneratorapi/mcp-server)
*  *  *  *  *


# Authentication
The PDF Generator API uses __JSON Web Tokens (JWT)__ to authenticate all API requests. These tokens offer a method to establish secure server-to-server authentication by transferring a compact JSON object with a signed payload of your account’s API Key and Secret.
When authenticating to the PDF Generator API, a JWT should be generated uniquely by a __server-side application__ and included as a __Bearer Token__ in the header of each request.


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

### Payload for Partners
Our partners can send their unique identifier (provided by us) in JWT's partner_id claim. If the `partner_id` value is specified in the JWT, the organization making the request is automatically connected to the partner account.
* Partner ID (`partner_id`): Unique identifier provide by PDF Generator API team

```
{
  "iss": "ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a",
  "sub": "demo.example@actualreports.com",
  "partner_id": "my-partner-identifier",
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

## Temporary JWTs
You can create a temporary token in [Account Settings](https://pdfgeneratorapi.com/account/organization) page after you login to PDF Generator API. The generated token uses your email address as the subject (`sub`) value and is valid for __15 minutes__.
You can also use [jwt.io](https://jwt.io/) to generate test tokens for your API calls. These test tokens should never be used in production applications.
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
| You can make up to 2 requests per second and 60 requests per minute.   |

*  *  *  *  *


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 4.0.25
- Package version: 8.0.25
- Generator version: 7.14.0
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
gem install ./pdf_generator_api_client-8.0.25.gem
```

(for development, run `gem install --dev ./pdf_generator_api_client-8.0.25.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pdf_generator_api_client', '~> 8.0.25'

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
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = PDFGeneratorAPI::AssetsApi.new
generate_qr_code_request = PDFGeneratorAPI::GenerateQRCodeRequest.new({content: 'My QR Code'}) # GenerateQRCodeRequest | QR Code configuration

begin
  #Generate QR Code
  result = api_instance.generate_qr_code(generate_qr_code_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Exception when calling AssetsApi->generate_qr_code: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PDFGeneratorAPI::AssetsApi* | [**generate_qr_code**](docs/AssetsApi.md#generate_qr_code) | **POST** /assets/qrcode | Generate QR Code
*PDFGeneratorAPI::ConversionApi* | [**convert_html2_pdf**](docs/ConversionApi.md#convert_html2_pdf) | **POST** /conversion/html2pdf | HTML to PDF
*PDFGeneratorAPI::ConversionApi* | [**convert_pdf2_image**](docs/ConversionApi.md#convert_pdf2_image) | **POST** /conversion/pdf2image | PDF to Image
*PDFGeneratorAPI::ConversionApi* | [**convert_url2_pdf**](docs/ConversionApi.md#convert_url2_pdf) | **POST** /conversion/url2pdf | URL to PDF
*PDFGeneratorAPI::DocumentsApi* | [**delete_document**](docs/DocumentsApi.md#delete_document) | **DELETE** /documents/{publicId} | Delete document
*PDFGeneratorAPI::DocumentsApi* | [**generate_document**](docs/DocumentsApi.md#generate_document) | **POST** /documents/generate | Generate document
*PDFGeneratorAPI::DocumentsApi* | [**generate_document_asynchronous**](docs/DocumentsApi.md#generate_document_asynchronous) | **POST** /documents/generate/async | Generate document (async)
*PDFGeneratorAPI::DocumentsApi* | [**generate_document_batch**](docs/DocumentsApi.md#generate_document_batch) | **POST** /documents/generate/batch | Generate document (batch)
*PDFGeneratorAPI::DocumentsApi* | [**generate_document_batch_asynchronous**](docs/DocumentsApi.md#generate_document_batch_asynchronous) | **POST** /documents/generate/batch/async | Generate document (batch + async)
*PDFGeneratorAPI::DocumentsApi* | [**get_async_job_status**](docs/DocumentsApi.md#get_async_job_status) | **GET** /documents/async/{jobId} | Get job status
*PDFGeneratorAPI::DocumentsApi* | [**get_document**](docs/DocumentsApi.md#get_document) | **GET** /documents/{publicId} | Get document
*PDFGeneratorAPI::DocumentsApi* | [**get_documents**](docs/DocumentsApi.md#get_documents) | **GET** /documents | Get documents
*PDFGeneratorAPI::DocumentsApi* | [**store_document**](docs/DocumentsApi.md#store_document) | **POST** /documents | Store document
*PDFGeneratorAPI::EInvoicesApi* | [**create_e_invoice**](docs/EInvoicesApi.md#create_e_invoice) | **POST** /einvoice | Create eInvoice
*PDFGeneratorAPI::EInvoicesApi* | [**create_factur_xe_invoice**](docs/EInvoicesApi.md#create_factur_xe_invoice) | **POST** /einvoice/facturx | Create Factur-X eInvoice
*PDFGeneratorAPI::EInvoicesApi* | [**create_x_rechnung_e_invoice**](docs/EInvoicesApi.md#create_x_rechnung_e_invoice) | **POST** /einvoice/xrechnung | Create XRechnung eInvoice
*PDFGeneratorAPI::EInvoicesApi* | [**get_e_invoice_schema**](docs/EInvoicesApi.md#get_e_invoice_schema) | **GET** /einvoice/schema | Get schema
*PDFGeneratorAPI::FormsApi* | [**create_form**](docs/FormsApi.md#create_form) | **POST** /forms | Create form
*PDFGeneratorAPI::FormsApi* | [**delete_form**](docs/FormsApi.md#delete_form) | **DELETE** /forms/{formId} | Delete form
*PDFGeneratorAPI::FormsApi* | [**get_form**](docs/FormsApi.md#get_form) | **GET** /forms/{formId} | Get form
*PDFGeneratorAPI::FormsApi* | [**get_forms**](docs/FormsApi.md#get_forms) | **GET** /forms | Get forms
*PDFGeneratorAPI::FormsApi* | [**import_form**](docs/FormsApi.md#import_form) | **POST** /forms/import | Import Form
*PDFGeneratorAPI::FormsApi* | [**open_form_builder**](docs/FormsApi.md#open_form_builder) | **POST** /forms/open | Open new form builder
*PDFGeneratorAPI::FormsApi* | [**open_form_builder_for_existing_form**](docs/FormsApi.md#open_form_builder_for_existing_form) | **POST** /forms/{formId}/open | Open existing form builder
*PDFGeneratorAPI::FormsApi* | [**share_form**](docs/FormsApi.md#share_form) | **POST** /forms/{formId}/share | Share form
*PDFGeneratorAPI::FormsApi* | [**update_form**](docs/FormsApi.md#update_form) | **PUT** /forms/{formId} | Update form
*PDFGeneratorAPI::MiscApi* | [**get_status**](docs/MiscApi.md#get_status) | **GET** /status | Get Service Status
*PDFGeneratorAPI::ServicesApi* | [**add_watermark**](docs/ServicesApi.md#add_watermark) | **POST** /pdfservices/watermark | Add watermark
*PDFGeneratorAPI::ServicesApi* | [**decrypt_document**](docs/ServicesApi.md#decrypt_document) | **POST** /pdfservices/decrypt | Decrypt document
*PDFGeneratorAPI::ServicesApi* | [**encrypt_document**](docs/ServicesApi.md#encrypt_document) | **POST** /pdfservices/encrypt | Encrypt document
*PDFGeneratorAPI::ServicesApi* | [**extract_form_fields**](docs/ServicesApi.md#extract_form_fields) | **POST** /pdfservices/form/fields | Extract form fields
*PDFGeneratorAPI::ServicesApi* | [**fill_form_fields**](docs/ServicesApi.md#fill_form_fields) | **POST** /pdfservices/form/fill | Fill form fields
*PDFGeneratorAPI::ServicesApi* | [**make_accessible**](docs/ServicesApi.md#make_accessible) | **POST** /pdfservices/make-accessible | Make accessible
*PDFGeneratorAPI::ServicesApi* | [**optimize_document**](docs/ServicesApi.md#optimize_document) | **POST** /pdfservices/optimize | Optimize document
*PDFGeneratorAPI::TemplateLibraryApi* | [**get_template_library**](docs/TemplateLibraryApi.md#get_template_library) | **GET** /templates/library | Get template library
*PDFGeneratorAPI::TemplateLibraryApi* | [**get_template_library_item**](docs/TemplateLibraryApi.md#get_template_library_item) | **GET** /templates/library/{publicId} | Open template from the library
*PDFGeneratorAPI::TemplateVersionsApi* | [**delete_template_version**](docs/TemplateVersionsApi.md#delete_template_version) | **DELETE** /templates/{templateId}/versions/{templateVersion} | Delete template version
*PDFGeneratorAPI::TemplateVersionsApi* | [**get_template_version**](docs/TemplateVersionsApi.md#get_template_version) | **GET** /templates/{templateId}/versions/{templateVersion} | Get template version
*PDFGeneratorAPI::TemplateVersionsApi* | [**list_template_versions**](docs/TemplateVersionsApi.md#list_template_versions) | **GET** /templates/{templateId}/versions | List template versions
*PDFGeneratorAPI::TemplateVersionsApi* | [**promote_template_version**](docs/TemplateVersionsApi.md#promote_template_version) | **PUT** /templates/{templateId}/versions/{templateVersion}/promote | Promote template version
*PDFGeneratorAPI::TemplatesApi* | [**copy_template**](docs/TemplatesApi.md#copy_template) | **POST** /templates/{templateId}/copy | Copy template
*PDFGeneratorAPI::TemplatesApi* | [**create_template**](docs/TemplatesApi.md#create_template) | **POST** /templates | Create template
*PDFGeneratorAPI::TemplatesApi* | [**delete_template**](docs/TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Delete template
*PDFGeneratorAPI::TemplatesApi* | [**get_template**](docs/TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Get template
*PDFGeneratorAPI::TemplatesApi* | [**get_template_data**](docs/TemplatesApi.md#get_template_data) | **GET** /templates/{templateId}/data | Get template data fields
*PDFGeneratorAPI::TemplatesApi* | [**get_template_schema**](docs/TemplatesApi.md#get_template_schema) | **GET** /templates/schema | Get schema
*PDFGeneratorAPI::TemplatesApi* | [**get_templates**](docs/TemplatesApi.md#get_templates) | **GET** /templates | Get templates
*PDFGeneratorAPI::TemplatesApi* | [**import_template**](docs/TemplatesApi.md#import_template) | **POST** /templates/import | Import template
*PDFGeneratorAPI::TemplatesApi* | [**open_editor**](docs/TemplatesApi.md#open_editor) | **POST** /templates/{templateId}/editor | Open editor
*PDFGeneratorAPI::TemplatesApi* | [**update_template**](docs/TemplatesApi.md#update_template) | **PUT** /templates/{templateId} | Update template
*PDFGeneratorAPI::TemplatesApi* | [**validate_template**](docs/TemplatesApi.md#validate_template) | **POST** /templates/validate | Validate template
*PDFGeneratorAPI::WorkspacesApi* | [**create_workspace**](docs/WorkspacesApi.md#create_workspace) | **POST** /workspaces | Create workspace
*PDFGeneratorAPI::WorkspacesApi* | [**delete_workspace**](docs/WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceIdentifier} | Delete workspace
*PDFGeneratorAPI::WorkspacesApi* | [**get_workspace**](docs/WorkspacesApi.md#get_workspace) | **GET** /workspaces/{workspaceIdentifier} | Get workspace
*PDFGeneratorAPI::WorkspacesApi* | [**get_workspaces**](docs/WorkspacesApi.md#get_workspaces) | **GET** /workspaces | Get workspaces


## Documentation for Models

 - [PDFGeneratorAPI::AccessibilityOption](docs/AccessibilityOption.md)
 - [PDFGeneratorAPI::AddWatermarkRequest](docs/AddWatermarkRequest.md)
 - [PDFGeneratorAPI::AsyncOutputParam](docs/AsyncOutputParam.md)
 - [PDFGeneratorAPI::CallbackParam](docs/CallbackParam.md)
 - [PDFGeneratorAPI::Component](docs/Component.md)
 - [PDFGeneratorAPI::ConvertHTML2PDFRequest](docs/ConvertHTML2PDFRequest.md)
 - [PDFGeneratorAPI::ConvertPDF2ImageRequest](docs/ConvertPDF2ImageRequest.md)
 - [PDFGeneratorAPI::ConvertURL2PDFRequest](docs/ConvertURL2PDFRequest.md)
 - [PDFGeneratorAPI::CopyTemplateRequest](docs/CopyTemplateRequest.md)
 - [PDFGeneratorAPI::CreateEInvoiceRequest](docs/CreateEInvoiceRequest.md)
 - [PDFGeneratorAPI::CreateFacturXEInvoiceRequest](docs/CreateFacturXEInvoiceRequest.md)
 - [PDFGeneratorAPI::CreateFacturXEInvoiceRequestTemplate](docs/CreateFacturXEInvoiceRequestTemplate.md)
 - [PDFGeneratorAPI::CreateWorkspaceRequest](docs/CreateWorkspaceRequest.md)
 - [PDFGeneratorAPI::DataBatchInner](docs/DataBatchInner.md)
 - [PDFGeneratorAPI::Document](docs/Document.md)
 - [PDFGeneratorAPI::EncryptAndDecryptBase64](docs/EncryptAndDecryptBase64.md)
 - [PDFGeneratorAPI::EncryptAndDecryptUrl](docs/EncryptAndDecryptUrl.md)
 - [PDFGeneratorAPI::EncryptDocumentRequest](docs/EncryptDocumentRequest.md)
 - [PDFGeneratorAPI::ExtractFormFieldsRequest](docs/ExtractFormFieldsRequest.md)
 - [PDFGeneratorAPI::FillFormFieldsRequest](docs/FillFormFieldsRequest.md)
 - [PDFGeneratorAPI::FormActionDownload](docs/FormActionDownload.md)
 - [PDFGeneratorAPI::FormActionSend](docs/FormActionSend.md)
 - [PDFGeneratorAPI::FormActionSendSendDocument](docs/FormActionSendSendDocument.md)
 - [PDFGeneratorAPI::FormActionSendSendDocumentHeadersInner](docs/FormActionSendSendDocumentHeadersInner.md)
 - [PDFGeneratorAPI::FormActionStore](docs/FormActionStore.md)
 - [PDFGeneratorAPI::FormConfiguration](docs/FormConfiguration.md)
 - [PDFGeneratorAPI::FormConfigurationNew](docs/FormConfigurationNew.md)
 - [PDFGeneratorAPI::FormConfigurationNewActionsInner](docs/FormConfigurationNewActionsInner.md)
 - [PDFGeneratorAPI::FormFieldsBase64](docs/FormFieldsBase64.md)
 - [PDFGeneratorAPI::FormFieldsInner](docs/FormFieldsInner.md)
 - [PDFGeneratorAPI::FormFieldsUrl](docs/FormFieldsUrl.md)
 - [PDFGeneratorAPI::FormFillBase64](docs/FormFillBase64.md)
 - [PDFGeneratorAPI::FormFillUrl](docs/FormFillUrl.md)
 - [PDFGeneratorAPI::FormatParam](docs/FormatParam.md)
 - [PDFGeneratorAPI::GenerateDocumentAsynchronousRequest](docs/GenerateDocumentAsynchronousRequest.md)
 - [PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest](docs/GenerateDocumentBatchAsynchronousRequest.md)
 - [PDFGeneratorAPI::GenerateDocumentBatchRequest](docs/GenerateDocumentBatchRequest.md)
 - [PDFGeneratorAPI::GenerateDocumentRequest](docs/GenerateDocumentRequest.md)
 - [PDFGeneratorAPI::GenerateQRCode201Response](docs/GenerateQRCode201Response.md)
 - [PDFGeneratorAPI::GenerateQRCode201ResponseMeta](docs/GenerateQRCode201ResponseMeta.md)
 - [PDFGeneratorAPI::GenerateQRCodeRequest](docs/GenerateQRCodeRequest.md)
 - [PDFGeneratorAPI::GetStatus200Response](docs/GetStatus200Response.md)
 - [PDFGeneratorAPI::GetTemplateLibrary200Response](docs/GetTemplateLibrary200Response.md)
 - [PDFGeneratorAPI::GetTemplateVersion422Response](docs/GetTemplateVersion422Response.md)
 - [PDFGeneratorAPI::ImportFormBase64](docs/ImportFormBase64.md)
 - [PDFGeneratorAPI::ImportFormRequest](docs/ImportFormRequest.md)
 - [PDFGeneratorAPI::ImportFormUrl](docs/ImportFormUrl.md)
 - [PDFGeneratorAPI::ImportTemplateBase64](docs/ImportTemplateBase64.md)
 - [PDFGeneratorAPI::ImportTemplateRequest](docs/ImportTemplateRequest.md)
 - [PDFGeneratorAPI::ImportTemplateUrl](docs/ImportTemplateUrl.md)
 - [PDFGeneratorAPI::ImportTemplateUrlTemplate](docs/ImportTemplateUrlTemplate.md)
 - [PDFGeneratorAPI::InlineObject](docs/InlineObject.md)
 - [PDFGeneratorAPI::InlineObject1](docs/InlineObject1.md)
 - [PDFGeneratorAPI::InlineObject10](docs/InlineObject10.md)
 - [PDFGeneratorAPI::InlineObject10Meta](docs/InlineObject10Meta.md)
 - [PDFGeneratorAPI::InlineObject11](docs/InlineObject11.md)
 - [PDFGeneratorAPI::InlineObject11Meta](docs/InlineObject11Meta.md)
 - [PDFGeneratorAPI::InlineObject12](docs/InlineObject12.md)
 - [PDFGeneratorAPI::InlineObject12Meta](docs/InlineObject12Meta.md)
 - [PDFGeneratorAPI::InlineObject12MetaStats](docs/InlineObject12MetaStats.md)
 - [PDFGeneratorAPI::InlineObject13](docs/InlineObject13.md)
 - [PDFGeneratorAPI::InlineObject14](docs/InlineObject14.md)
 - [PDFGeneratorAPI::InlineObject14ResponseValue](docs/InlineObject14ResponseValue.md)
 - [PDFGeneratorAPI::InlineObject14ResponseValueDefault](docs/InlineObject14ResponseValueDefault.md)
 - [PDFGeneratorAPI::InlineObject14ResponseValueValue](docs/InlineObject14ResponseValueValue.md)
 - [PDFGeneratorAPI::InlineObject15](docs/InlineObject15.md)
 - [PDFGeneratorAPI::InlineObject16](docs/InlineObject16.md)
 - [PDFGeneratorAPI::InlineObject17](docs/InlineObject17.md)
 - [PDFGeneratorAPI::InlineObject18](docs/InlineObject18.md)
 - [PDFGeneratorAPI::InlineObject18Meta](docs/InlineObject18Meta.md)
 - [PDFGeneratorAPI::InlineObject19](docs/InlineObject19.md)
 - [PDFGeneratorAPI::InlineObject1Response](docs/InlineObject1Response.md)
 - [PDFGeneratorAPI::InlineObject2](docs/InlineObject2.md)
 - [PDFGeneratorAPI::InlineObject20](docs/InlineObject20.md)
 - [PDFGeneratorAPI::InlineObject20Response](docs/InlineObject20Response.md)
 - [PDFGeneratorAPI::InlineObject21](docs/InlineObject21.md)
 - [PDFGeneratorAPI::InlineObject22](docs/InlineObject22.md)
 - [PDFGeneratorAPI::InlineObject23](docs/InlineObject23.md)
 - [PDFGeneratorAPI::InlineObject24](docs/InlineObject24.md)
 - [PDFGeneratorAPI::InlineObject25](docs/InlineObject25.md)
 - [PDFGeneratorAPI::InlineObject26](docs/InlineObject26.md)
 - [PDFGeneratorAPI::InlineObject27](docs/InlineObject27.md)
 - [PDFGeneratorAPI::InlineObject3](docs/InlineObject3.md)
 - [PDFGeneratorAPI::InlineObject4](docs/InlineObject4.md)
 - [PDFGeneratorAPI::InlineObject5](docs/InlineObject5.md)
 - [PDFGeneratorAPI::InlineObject6](docs/InlineObject6.md)
 - [PDFGeneratorAPI::InlineObject7](docs/InlineObject7.md)
 - [PDFGeneratorAPI::InlineObject7Response](docs/InlineObject7Response.md)
 - [PDFGeneratorAPI::InlineObject8](docs/InlineObject8.md)
 - [PDFGeneratorAPI::InlineObject9](docs/InlineObject9.md)
 - [PDFGeneratorAPI::InlineObject9Meta](docs/InlineObject9Meta.md)
 - [PDFGeneratorAPI::InlineObjectMeta](docs/InlineObjectMeta.md)
 - [PDFGeneratorAPI::KeyFieldParam](docs/KeyFieldParam.md)
 - [PDFGeneratorAPI::MakeAccessibleBase64](docs/MakeAccessibleBase64.md)
 - [PDFGeneratorAPI::MakeAccessibleRequest](docs/MakeAccessibleRequest.md)
 - [PDFGeneratorAPI::MakeAccessibleUrl](docs/MakeAccessibleUrl.md)
 - [PDFGeneratorAPI::MetadataParam](docs/MetadataParam.md)
 - [PDFGeneratorAPI::OpenEditorRequest](docs/OpenEditorRequest.md)
 - [PDFGeneratorAPI::OpenEditorRequestData](docs/OpenEditorRequestData.md)
 - [PDFGeneratorAPI::OptimizeBase64](docs/OptimizeBase64.md)
 - [PDFGeneratorAPI::OptimizeDocumentRequest](docs/OptimizeDocumentRequest.md)
 - [PDFGeneratorAPI::OptimizeUrl](docs/OptimizeUrl.md)
 - [PDFGeneratorAPI::OutputParam](docs/OutputParam.md)
 - [PDFGeneratorAPI::PaginationMeta](docs/PaginationMeta.md)
 - [PDFGeneratorAPI::PromoteTemplateVersion200Response](docs/PromoteTemplateVersion200Response.md)
 - [PDFGeneratorAPI::PublicTemplateLibraryItem](docs/PublicTemplateLibraryItem.md)
 - [PDFGeneratorAPI::StatusParam](docs/StatusParam.md)
 - [PDFGeneratorAPI::StoreDocumentRequest](docs/StoreDocumentRequest.md)
 - [PDFGeneratorAPI::Template](docs/Template.md)
 - [PDFGeneratorAPI::TemplateDefinition](docs/TemplateDefinition.md)
 - [PDFGeneratorAPI::TemplateDefinitionDataSettings](docs/TemplateDefinitionDataSettings.md)
 - [PDFGeneratorAPI::TemplateDefinitionEditor](docs/TemplateDefinitionEditor.md)
 - [PDFGeneratorAPI::TemplateDefinitionNew](docs/TemplateDefinitionNew.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewDataSettings](docs/TemplateDefinitionNewDataSettings.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewEditor](docs/TemplateDefinitionNewEditor.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayout](docs/TemplateDefinitionNewLayout.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayoutMargins](docs/TemplateDefinitionNewLayoutMargins.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewLayoutRepeatLayout](docs/TemplateDefinitionNewLayoutRepeatLayout.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewPagesInner](docs/TemplateDefinitionNewPagesInner.md)
 - [PDFGeneratorAPI::TemplateDefinitionNewPagesInnerMargins](docs/TemplateDefinitionNewPagesInnerMargins.md)
 - [PDFGeneratorAPI::TemplateDefinitionPagesInner](docs/TemplateDefinitionPagesInner.md)
 - [PDFGeneratorAPI::TemplateParam](docs/TemplateParam.md)
 - [PDFGeneratorAPI::TemplateParamData](docs/TemplateParamData.md)
 - [PDFGeneratorAPI::TemplateParamId](docs/TemplateParamId.md)
 - [PDFGeneratorAPI::TemplateVersion](docs/TemplateVersion.md)
 - [PDFGeneratorAPI::TemplateVersionCollection](docs/TemplateVersionCollection.md)
 - [PDFGeneratorAPI::TemplateVersionCollectionMeta](docs/TemplateVersionCollectionMeta.md)
 - [PDFGeneratorAPI::WatermarkBase64](docs/WatermarkBase64.md)
 - [PDFGeneratorAPI::WatermarkFileUrlWatermark](docs/WatermarkFileUrlWatermark.md)
 - [PDFGeneratorAPI::WatermarkImage](docs/WatermarkImage.md)
 - [PDFGeneratorAPI::WatermarkImageContentBase64](docs/WatermarkImageContentBase64.md)
 - [PDFGeneratorAPI::WatermarkImageContentUrl](docs/WatermarkImageContentUrl.md)
 - [PDFGeneratorAPI::WatermarkPosition](docs/WatermarkPosition.md)
 - [PDFGeneratorAPI::WatermarkText](docs/WatermarkText.md)
 - [PDFGeneratorAPI::Workspace](docs/Workspace.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### JSONWebTokenAuth

- **Type**: Bearer authentication (JWT)


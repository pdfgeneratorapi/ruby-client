# PDFGeneratorAPI::DocumentSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_name** | **String** | Name of the signature field in the document. | [optional] |
| **signer_name** | **String** | The name the signer signed under. | [optional] |
| **signer** | **String** | Subject of the certificate that sealed it — an organization, not a person. | [optional] |
| **issuer** | **String** | Subject of the certificate authority that issued it. | [optional] |
| **signed_at** | **String** | When a timestamp authority attested the signature (ISO-8601). This is the defensible time; the signer&#39;s own clock proves nothing.  | [optional] |
| **claimed_signed_at** | **String** | The time the signer&#39;s own software recorded (ISO-8601). | [optional] |
| **timestamp_authority** | **String** | The timestamp authority that attested the signature. | [optional] |
| **intact** | **Boolean** | The bytes this signature covers are unchanged. | [optional] |
| **valid** | **Boolean** | The signature block itself adds up. On its own this does NOT mean the document is unchanged: a tampered file reports &#x60;valid&#x60; true with &#x60;intact&#x60; false, so a verdict needs intact AND valid AND trusted.  | [optional] |
| **trusted** | **Boolean** | The certificate chains to a trusted root. | [optional] |
| **coverage** | **String** | How much of the file this signature protects. | [optional] |
| **ades_indication** | **String** | The ETSI EN 319 102-1 indication, when the AdES engine could run. | [optional] |
| **ades_sub_indication** | **String** | The AdES sub-indication, naming why an indication is not PASSED. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::DocumentSignature.new(
  field_name: disclosing_party_signature,
  signer_name: Jane Doe,
  signer: Common Name: Actual Reports OÜ, Organization: Actual Reports OÜ, Country: EE,
  issuer: Common Name: SSL.com Client Certificate Intermediate CA RSA R2, Country: US,
  signed_at: 2026-08-21T09:17:08+00:00,
  claimed_signed_at: 2026-08-21T09:17:06+00:00,
  timestamp_authority: Common Name: SSL.com Timestamping Unit 2025 E1, Country: US,
  intact: true,
  valid: true,
  trusted: true,
  coverage: ENTIRE_FILE,
  ades_indication: PASSED,
  ades_sub_indication: OK
)
```


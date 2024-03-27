# BancardPixServiceClient::PaymentHook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **usd_amount_cents** | **Integer** |  |  |
| **hook_alias** | **String** |  |  |
| **cashier_user_id** | **Integer** |  |  |
| **buyer_cpf** | **String** |  |  |
| **buyer_email** | **String** |  |  |
| **buyer_cellphone** | **String** |  |  |
| **commerce_id** | **Integer** |  |  |
| **commerce_branch_id** | **Integer** |  |  |
| **pix_copy_past** | **String** |  |  |
| **sale_id** | **Integer** |  |  |
| **price_national_currency** | **String** |  |  |
| **currency** | **String** |  |  |
| **vet_tax** | **String** |  |  |
| **qr_code_expiration** | **String** |  |  |
| **created_at** | **String** |  |  |
| **updated_at** | **String** |  |  |
| **qr_base64** | **String** |  |  |

## Example

```ruby
require 'bancard-pix-service-client'

instance = BancardPixServiceClient::PaymentHook.new(
  id: null,
  usd_amount_cents: 1950,
  hook_alias: null,
  cashier_user_id: null,
  buyer_cpf: null,
  buyer_email: null,
  buyer_cellphone: null,
  commerce_id: null,
  commerce_branch_id: null,
  pix_copy_past: null,
  sale_id: 12345,
  price_national_currency: 107.25,
  currency: USD,
  vet_tax: 5.50,
  qr_code_expiration: null,
  created_at: null,
  updated_at: null,
  qr_base64: null
)
```


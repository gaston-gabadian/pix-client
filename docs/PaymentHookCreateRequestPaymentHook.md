# BancardPixServiceClient::PaymentHookCreateRequestPaymentHook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usd_amount_cents** | **Integer** |  |  |
| **buyer_cpf** | **String** |  |  |
| **buyer_email** | **String** |  |  |
| **buyer_cellphone** | **String** |  |  |
| **cashier_user_id** | **Integer** |  |  |
| **commerce_id** | **Integer** |  |  |
| **commerce_branch_id_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'bancard-pix-service-client'

instance = BancardPixServiceClient::PaymentHookCreateRequestPaymentHook.new(
  usd_amount_cents: null,
  buyer_cpf: null,
  buyer_email: null,
  buyer_cellphone: null,
  cashier_user_id: null,
  commerce_id: null,
  commerce_branch_id_id: null
)
```


# BancardPixServiceClient::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **messages** | [**Array&lt;ErrorResponseMessagesInner&gt;**](ErrorResponseMessagesInner.md) |  | [optional] |

## Example

```ruby
require 'bancard-pix-service-client'

instance = BancardPixServiceClient::ErrorResponse.new(
  status: null,
  messages: null
)
```


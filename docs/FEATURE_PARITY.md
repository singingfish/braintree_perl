# Purpose

This is an analysis of the feature parity between this project and the
[braintree\_ruby](https://github.com/braintree/braintree_ruby) project. The
eventual goal is to achieve complete feature parity with braintree\_ruby and
maintain that parity over time.

# Features

## Invocables

These are the classes that a client invokes to take an action against the
Braintree API. These classes follow a specific form:

* Invocable class which maps to a specific API entity
* Class methods on that class which map to entity methods on a gateway singleton
* A "gateway" singleton for each invocable which maps methods into API calls
* Class methods return an object of that class
* Objects of that class have methods mapping to the data structures from the API
* Complex data structure elements map to objects of their own

| Invocable | Method | Deprecated ? | In Perl? | Equivalent? |
| ---       | ---    | ---      | ---         | ---         |
| AddOn | all | | No | |
| Address | create | | Yes | No |
| Address | delete | | Yes | No |
| Address | find | | Yes | No |
| Address | update | | Yes | No |
| ApplePay | register\_domain | | No | |
| ApplePay | unregister\_domain | | No | |
| ApplePay | registered\_domains | | No | |
| ClientToken | generate | | Yes | No |
| CreditCard | create | | Yes | No |
| CreditCard | create\_credit\_card\_url | Yes | No | |
| CreditCard | create\_from\_transparent\_redirect | Yes | No | |
| CreditCard | credit | | No | |
| CreditCard | delete | | Yes | Yes |
| CreditCard | expired | | No | |
| CreditCard | expiring\_between | | No | |
| CreditCard | find | | Yes | |
| CreditCard | from\_nonce | | Yes | |
| CreditCard | grant | Yes | No | |
| CreditCard | sale | | No | |
| CreditCard | update | | Yes | |
| CreditCard | update\_from\_transparent\_redirect | Yes | No | |
| CreditCard | update\_credit\_card\_url | Yes | No | |
| CreditCardVerification | all | ??? | Yes | |
| CreditCardVerification | find | | Yes | |
| CreditCardVerification | search | | Yes | |
| CreditCardVerification | create | | No | |
| Customer | all | | Yes | |
| Customer | create | | Yes | |
| Customer | create\_customer\_url | Yes | No | |
| Customer | create\_from\_transparent\_redirect | Yes | No | |
| Customer | credit | | No | |
| Customer | delete | | Yes | |
| Customer | find | | Yes | |
| Customer | sale | | No | |
| Customer | search | | Yes | |
| Customer | transactions | | No | |
| Customer | update | | Yes | |
| Customer | update\_customer\_url | Yes | No | |
| Customer | update\_from\_transparent\_redirect | Yes | No | |
| Discount | all | | No | |
| Dispute | accept | | No | |
| Dispute | add\_file\_evidence | | No | |
| Dispute | add\_text\_evidence | | No | |
| Dispute | finalize | | No | |
| Dispute | find | | No | |
| Dispute | remove\_evidence | | No | |
| Dispute | search | | No | |
| DocumentUpload | create | | No | |
| EuropeBankAccount | find | | No | |
| IdealPayment | sale | | No | |
| IdealPayment | find | | No | |
| Merchant | provision\_raw\_apple\_pay | | No | |
| MerchantAccount | all | ??? | Yes | |
| MerchantAccount | create | | Yes | |
| MerchantAccount | find | | Yes | |
| MerchantAccount | update | | Yes | |
| PaymentMethod | create | | Yes | |
| PaymentMethod | find | | Yes | |
| PaymentMethod | update | | Yes | |
| PaymentMethod | delete | | Yes | |
| PaymentMethod | grant | | No | |
| PaymentMethod | revoke | | No | |
| PaymentMethodNonce | create | | Yes | |
| PaymentMethodNonce | find | | Yes | |
| PayPalAccount | create | | No | |
| PayPalAccount | find | | Yes | |
| PayPalAccount | update | | Yes | |
| PayPalAccount | delete | | No | |
| PayPalAccount | sale | | No | |
| Plan | all | | Yes | |
| SettlementBatchSummary | generate | | Yes | |
| Subscription | all | ??? | Yes | |
| Subscription | cancel | | Yes | |
| Subscription | create | | Yes | |
| Subscription | find | | Yes | |
| Subscription | retry\_charge | | Yes | |
| Subscription | search | | Yes | |
| Subscription | update | | Yes | |
| Transaction | all | ??? | Yes | |
| Transaction | create | | No | |
| Transaction | cancel\_release | | Yes | |
| Transaction | clone\_transaction | | Yes | |
| Transaction | create\_from\_transparent\_redirect | Yes | No | |
| Transaction | create\_transaction\_url | Yes | No | |
| Transaction | credit | | Yes | |
| Transaction | find | | Yes | |
| Transaction | hold\_in\_escrow | | Yes | |
| Transaction | refund | | Yes | |
| Transaction | sale | | Yes | |
| Transaction | search | | Yes | |
| Transaction | release\_from\_escrow | | Yes | |
| Transaction | submit\_for\_settlement | | Yes | |
| Transaction | update\_details | | No | |
| Transaction | submit\_for\_partial\_settlement | | No | |
| Transaction | void | | Yes | |
| TransparentRedirect | confirm | | Yes | |
| TransparentRedirect | create\_credit\_card\_data | | Yes | |
| TransparentRedirect | create\_customer\_data | | Yes | |
| TransparentRedirect | transaction\_data | | Yes | |
| TransparentRedirect | update\_credit\_card\_data | | Yes | |
| TransparentRedirect | update\_customer\_data | | Yes | |
| TransparentRedirect | url | | Yes | |
| UsBankAccount | find | | No | |
| UsBankAccount | sale | | No | |
| WebhookNotification | parse | | Yes | |
| WebhookNotification | verify | | Yes | |
| WebhookTesting | sample\_notification | | Yes | |

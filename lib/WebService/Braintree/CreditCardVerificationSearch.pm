package WebService::Braintree::CreditCardVerificationSearch;
use Moo;
use WebService::Braintree::CreditCard::CardType;
use WebService::Braintree::AdvancedSearch qw(search_to_hash);
my $meta = __PACKAGE__->meta();

my $field = WebService::Braintree::AdvancedSearchFields->new(metaclass => $meta);
$field->text("id");
$field->text("credit_card_cardholder_name");
$field->equality("credit_card_expiration_date");
$field->partial_match("credit_card_number");
$field->multiple_values("ids");

$field->multiple_values("credit_card_card_type", @{WebService::Braintree::CreditCard::CardType::All()});

$field->range("created_at");

sub to_hash {
  WebService::Braintree::AdvancedSearch->search_to_hash(shift);
}

1;

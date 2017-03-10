use lib qw(lib t/lib);
use Test::More;
use WebService::Braintree;
use WebService::Braintree::TestHelper;

subtest "default integration configuration" => sub {
  my $config = WebService::Braintree->configuration;
  $config->environment("integration");

  my $result = WebService::Braintree::Transaction->sale({
    amount => "10.00",
    credit_card => {
      number => "5431111111111111",
      expiration_date => "05/12"
  }});

  ok $result->is_success;
  is $result->transaction->amount, "10.00";
};

subtest "configuration two" => sub {
  WebService::Braintree->configuration->environment("integration");

  my $result = WebService::Braintree::Transaction->sale({
    amount => "10.00",
    credit_card => {
      number => "5431111111111111",
      expiration_date => "05/12"
  }});

  ok $result->is_success;
  is $result->transaction->amount, "10.00";

  my $config = WebService::Braintree::Configuration->new;
  $config->environment("integration");
  $config->public_key("it_should_explode");
  $config->private_key("with_these_values");
  my $gateway = $config->gateway;

  should_throw("AuthenticationError", sub { $gateway->transaction->create({type => "sale", amount => "10.00"}) });
};

done_testing();

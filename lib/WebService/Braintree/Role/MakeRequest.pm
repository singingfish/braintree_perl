package WebService::Braintree::Role::MakeRequest;
use Moose::Role;

sub _make_request {
  my($self, $path, $verb, $params) = @_;
  my $response = $self->gateway->http->$verb($path, $params);
  my $result = WebService::Braintree::Result->new(response => $response);
  return $result;
}

1;

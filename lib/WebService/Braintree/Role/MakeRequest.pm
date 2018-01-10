package WebService::Braintree::Role::MakeRequest;

use 5.010_001;
use strictures 1;

use Moose::Role;

sub _make_request {
    my($self, $path, $verb, @args) = @_;
    return WebService::Braintree::Result->new(
        response => $self->gateway->http->$verb($path, @args),
    );
}

1;
__END__

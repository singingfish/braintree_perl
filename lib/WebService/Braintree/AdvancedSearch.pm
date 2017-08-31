package WebService::Braintree::AdvancedSearch;

use strict;

sub search_to_hash {
    my ($self, $search) = @_;

    my $hash = {};
    for my $attribute ($search->meta()->get_all_attributes) {
        my $field = $attribute->name;
        if ($search->$field->active()) {
            $hash->{$field} = $search->$field->criteria;
        }
    }

    return $hash;
}

1;
__END__

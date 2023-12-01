package WordList::Phrase::EN::Quote::JamesFT;

# AUTHORITY
# DATE
# DIST
# VERSION

# STATS

our $DYNAMIC=1;
our $SORT = 'custom';

use parent 'WordList';

sub new {
    require TableData::Quote::JamesFT;

    my $class = shift;
    my $self = $class->SUPER::new;
    $self->{_table} = TableData::Quote::JamesFT->new;
    $self;
}

sub next_word {
    my $self = shift;
    my $row = $self->{_table}->get_row_arrayref;
    return unless $row;
    qq("$row->[0]" -- $row->[1]);
}

sub reset_iterator {
    my $self = shift;
    $self->{_table}->reset_iterator;
}

1;
# ABSTRACT: Famous quotes from JamesFT github repository

=head1 DESCRIPTION

This wordlist contains list of quotes, which is retrieved from
L<Tables::Quotes::JamesFT>, which in turn is retrieved from
L<https://github.com/JamesFT/Database-Quotes-JSON>.

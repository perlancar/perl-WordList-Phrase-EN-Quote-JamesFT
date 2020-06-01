package WordList::Phrase::EN::Idiom::Wiktionary;

# AUTHORITY
# DATE
# DIST
# VERSION

# STATS

our $DYNAMIC=1;

use parent 'WordList::Tables';

sub new {
    my $class = shift;
    my $self = $class->SUPER::new(
        table => 'Quotes::JamesFT', column => 'quote');
    $self;
}

sub next_word {
    my $self = shift;
    my $row = $self->{_table}->get_row_arrayref;
    return unless $row;
    qq("$row->[0]" -- $row->[1]);
}

1;
# ABSTRACT: Famous quotes from JamesFT github repository

=head1 DESCRIPTION

This wordlist contains list of quotes, which is retrieved from
L<Tables::Quotes::JamesFT>, which in turn is retrieved from
L<https://github.com/JamesFT/Database-Quotes-JSON>.

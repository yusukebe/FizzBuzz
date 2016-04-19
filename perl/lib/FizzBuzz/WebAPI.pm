package FizzBuzz::WebAPI;
use Mojo::Base 'Mojolicious';

sub startup {
    my $self = shift;
    my $r = $self->routes;
    $r->get('/')->to('root#index');
    $r->get('/fizzbuzz')->to('root#fizzbuzz');
}

1;

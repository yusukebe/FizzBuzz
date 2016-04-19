package FizzBuzz::WebAPI::Controller::Root;
use Mojo::Base 'Mojolicious::Controller';
use FizzBuzz;

sub index {
    my $self = shift;
    $self->render(json => { message => "Let's FizzBuzz!" });
}

sub fizzbuzz {
    my $self = shift;
    my $number = $self->req->param('number');
    if (!$number || $number !~ m![0-9]+!) {
        return $self->render(json => { error=> 'number parameter is not numerical' });
    }
    my $fizzbuzz = FizzBuzz->new();
    my $result = $fizzbuzz->fizzbuzz($number);
    $self->render(json => { message => $result });
}

1;

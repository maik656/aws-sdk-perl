package Paws::StepFunctions::StateEnteredEventDetails;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', xmlname => 'input', request_name => 'input', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StateEnteredEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::StateEnteredEventDetails object:

  $service_obj->Method(Att1 => { Input => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::StateEnteredEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Input => Str

  The JSON input data to the state.


=head2 B<REQUIRED> Name => Str

  The name of the state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


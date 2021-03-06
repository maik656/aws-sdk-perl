package Paws::Glue::GrokClassifier;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str');
  has CustomPatterns => (is => 'ro', isa => 'Str');
  has GrokPattern => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GrokClassifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::GrokClassifier object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::GrokClassifier object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

A classifier that uses C<grok>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Classification => Str

  The data form that the classifier matches, such as Twitter, JSON,
Omniture Logs, and so forth.


=head2 CreationTime => Str

  The time this classifier was registered.


=head2 CustomPatterns => Str

  Custom grok patterns used by this classifier.


=head2 B<REQUIRED> GrokPattern => Str

  The grok pattern used by this classifier.


=head2 LastUpdated => Str

  The time this classifier was last updated.


=head2 B<REQUIRED> Name => Str

  The name of the classifier.


=head2 Version => Int

  The version of this classifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


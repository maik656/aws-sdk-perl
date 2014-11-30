
package Paws::AutoScaling::DescribeAutoScalingNotificationTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypesResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAutoScalingNotificationTypes - Arguments for method DescribeAutoScalingNotificationTypes on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoScalingNotificationTypes on the 
Auto Scaling service. Use the attributes of this class
as arguments to method DescribeAutoScalingNotificationTypes.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoScalingNotificationTypes.

As an example:

  $service_obj->DescribeAutoScalingNotificationTypes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeAutoScalingNotificationTypes in Paws::AutoScaling

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

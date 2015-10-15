package Paws::EC2::InstanceBlockDeviceMapping;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', xmlname => 'deviceName', traits => ['Unwrapped']);
  has Ebs => (is => 'ro', isa => 'Paws::EC2::EbsInstanceBlockDevice', xmlname => 'ebs', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceBlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceBlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., Ebs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceBlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 DeviceName => Str

  The device name exposed to the instance (for example, C</dev/sdh> or
C<xvdh>).

=head2 Ebs => L<Paws::EC2::EbsInstanceBlockDevice>

  Parameters used to automatically set up EBS volumes when the instance
is launched.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
package Paws::EC2::RouteTable;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteTableAssociation]', xmlname => 'associationSet', traits => ['Unwrapped']);
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PropagatingVgw]', xmlname => 'propagatingVgwSet', traits => ['Unwrapped']);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Route]', xmlname => 'routeSet', traits => ['Unwrapped']);
  has RouteTableId => (is => 'ro', isa => 'Str', xmlname => 'routeTableId', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteTable object:

  $service_obj->Method(Att1 => { Associations => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteTable object:

  $result = $service_obj->Method(...);
  $result->Att1->Associations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Associations => ArrayRef[L<Paws::EC2::RouteTableAssociation>]

  The associations between the route table and one or more subnets.

=head2 PropagatingVgws => ArrayRef[L<Paws::EC2::PropagatingVgw>]

  Any virtual private gateway (VGW) propagating routes.

=head2 Routes => ArrayRef[L<Paws::EC2::Route>]

  The routes in the route table.

=head2 RouteTableId => Str

  The ID of the route table.

=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the route table.

=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
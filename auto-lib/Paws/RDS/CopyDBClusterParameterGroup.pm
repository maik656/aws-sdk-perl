
package Paws::RDS::CopyDBClusterParameterGroup;
  use Moose;
  has SourceDBClusterParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBClusterParameterGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBClusterParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBClusterParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBClusterParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBClusterParameterGroup - Arguments for method CopyDBClusterParameterGroup on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBClusterParameterGroup on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CopyDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBClusterParameterGroup.

As an example:

  $service_obj->CopyDBClusterParameterGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceDBClusterParameterGroupIdentifier => Str

The identifier or Amazon Resource Name (ARN) for the source DB cluster
parameter group. For information about creating an ARN, see
Constructing an RDS Amazon Resource Name (ARN).

Constraints:

=over

=item *

Must specify a valid DB cluster parameter group.

=item *

If the source DB cluster parameter group is in the same region as the
copy, specify a valid DB parameter group identifier, for example
C<my-db-cluster-param-group>, or a valid ARN.

=item *

If the source DB parameter group is in a different region than the
copy, specify a valid DB cluster parameter group ARN, for example
C<arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1>.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBClusterParameterGroupDescription => Str

A description for the copied DB cluster parameter group.



=head2 B<REQUIRED> TargetDBClusterParameterGroupIdentifier => Str

The identifier for the copied DB cluster parameter group.

Constraints:

=over

=item *

Cannot be null, empty, or blank

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster-param-group1>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBClusterParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

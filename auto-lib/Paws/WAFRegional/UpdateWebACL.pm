
package Paws::WAFRegional::UpdateWebACL;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultAction => (is => 'ro', isa => 'Paws::WAFRegional::WafAction');
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::WebACLUpdate]');
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateWebACL - Arguments for method UpdateWebACL on Paws::WAFRegional

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebACL on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method UpdateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebACL.

As an example:

  $service_obj->UpdateWebACL(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 DefaultAction => L<Paws::WAFRegional::WafAction>

A default action for the web ACL, either ALLOW or BLOCK. AWS WAF
performs the default action if a request doesn't match the criteria in
any of the rules in a web ACL.



=head2 Updates => ArrayRef[L<Paws::WAFRegional::WebACLUpdate>]

An array of updates to make to the WebACL.

An array of C<WebACLUpdate> objects that you want to insert into or
delete from a WebACL. For more information, see the applicable data
types:

=over

=item *

WebACLUpdate: Contains C<Action> and C<ActivatedRule>

=item *

ActivatedRule: Contains C<Action>, C<Priority>, C<RuleId>, and C<Type>

=item *

WafAction: Contains C<Type>

=back




=head2 B<REQUIRED> WebACLId => Str

The C<WebACLId> of the WebACL that you want to update. C<WebACLId> is
returned by CreateWebACL and by ListWebACLs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebACL in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


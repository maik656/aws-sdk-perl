
package Paws::Route53::ListTrafficPolicyInstancesByHostedZone;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);
  has TrafficPolicyInstanceNameMarker => (is => 'ro', isa => 'Str', query_name => 'trafficpolicyinstancename', traits => ['ParamInQuery']);
  has TrafficPolicyInstanceTypeMarker => (is => 'ro', isa => 'Str', query_name => 'trafficpolicyinstancetype', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrafficPolicyInstancesByHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicyinstances/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyInstancesByHostedZone - Arguments for method ListTrafficPolicyInstancesByHostedZone on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrafficPolicyInstancesByHostedZone on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListTrafficPolicyInstancesByHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrafficPolicyInstancesByHostedZone.

As an example:

  $service_obj->ListTrafficPolicyInstancesByHostedZone(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want to list traffic policy
instances for.



=head2 MaxItems => Str

The maximum number of traffic policy instances to be included in the
response body for this request. If you have more than C<MaxItems>
traffic policy instances, the value of the C<IsTruncated> element in
the response is C<true>, and the values of C<HostedZoneIdMarker>,
C<TrafficPolicyInstanceNameMarker>, and
C<TrafficPolicyInstanceTypeMarker> represent the first traffic policy
instance that Amazon Route 53 will return if you submit another
request.



=head2 TrafficPolicyInstanceNameMarker => Str

If the value of C<IsTruncated> in the previous response is true, you
have more traffic policy instances. To get more traffic policy
instances, submit another C<ListTrafficPolicyInstances> request. For
the value of C<trafficpolicyinstancename>, specify the value of
C<TrafficPolicyInstanceNameMarker> from the previous response, which is
the name of the first traffic policy instance in the next group of
traffic policy instances.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more traffic policy instances to get.



=head2 TrafficPolicyInstanceTypeMarker => Str

If the value of C<IsTruncated> in the previous response is true, you
have more traffic policy instances. To get more traffic policy
instances, submit another C<ListTrafficPolicyInstances> request. For
the value of C<trafficpolicyinstancetype>, specify the value of
C<TrafficPolicyInstanceTypeMarker> from the previous response, which is
the type of the first traffic policy instance in the next group of
traffic policy instances.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more traffic policy instances to get.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrafficPolicyInstancesByHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


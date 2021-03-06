package Paws::Polly;
  use Moose;
  sub service { 'polly' }
  sub version { '2016-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub DeleteLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::DeleteLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVoices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::DescribeVoices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::GetLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLexicons {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::ListLexicons', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::PutLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SynthesizeSpeech {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::SynthesizeSpeech', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DeleteLexicon DescribeVoices GetLexicon ListLexicons PutLexicon SynthesizeSpeech / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly - Perl Interface to AWS Amazon Polly

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Polly');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Polly is a web service that makes it easy to synthesize speech
from text.

The Amazon Polly service provides API operations for synthesizing
high-quality speech from plain text and Speech Synthesis Markup
Language (SSML), along with managing pronunciations lexicons that
enable you to get the best results for your application domain.

=head1 METHODS

=head2 DeleteLexicon(Name => Str)

Each argument is described in detail in: L<Paws::Polly::DeleteLexicon>

Returns: a L<Paws::Polly::DeleteLexiconOutput> instance

  Deletes the specified pronunciation lexicon stored in an AWS Region. A
lexicon which has been deleted is not available for speech synthesis,
nor is it possible to retrieve it using either the C<GetLexicon> or
C<ListLexicon> APIs.

For more information, see Managing Lexicons.


=head2 DescribeVoices([LanguageCode => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Polly::DescribeVoices>

Returns: a L<Paws::Polly::DescribeVoicesOutput> instance

  Returns the list of voices that are available for use when requesting
speech synthesis. Each voice speaks a specified language, is either
male or female, and is identified by an ID, which is the ASCII version
of the voice name.

When synthesizing speech ( C<SynthesizeSpeech> ), you provide the voice
ID for the voice you want from the list of voices returned by
C<DescribeVoices>.

For example, you want your news reader application to read news in a
specific language, but giving a user the option to choose the voice.
Using the C<DescribeVoices> operation you can provide the user with a
list of available voices to select from.

You can optionally specify a language code to filter the available
voices. For example, if you specify C<en-US>, the operation returns a
list of all available US English voices.

This operation requires permissions to perform the
C<polly:DescribeVoices> action.


=head2 GetLexicon(Name => Str)

Each argument is described in detail in: L<Paws::Polly::GetLexicon>

Returns: a L<Paws::Polly::GetLexiconOutput> instance

  Returns the content of the specified pronunciation lexicon stored in an
AWS Region. For more information, see Managing Lexicons.


=head2 ListLexicons([NextToken => Str])

Each argument is described in detail in: L<Paws::Polly::ListLexicons>

Returns: a L<Paws::Polly::ListLexiconsOutput> instance

  Returns a list of pronunciation lexicons stored in an AWS Region. For
more information, see Managing Lexicons.


=head2 PutLexicon(Content => Str, Name => Str)

Each argument is described in detail in: L<Paws::Polly::PutLexicon>

Returns: a L<Paws::Polly::PutLexiconOutput> instance

  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the
same name already exists in the region, it is overwritten by the new
lexicon. Lexicon operations have eventual consistency, therefore, it
might take some time before the lexicon is available to the
SynthesizeSpeech operation.

For more information, see Managing Lexicons.


=head2 SynthesizeSpeech(OutputFormat => Str, Text => Str, VoiceId => Str, [LexiconNames => ArrayRef[Str|Undef], SampleRate => Str, SpeechMarkTypes => ArrayRef[Str|Undef], TextType => Str])

Each argument is described in detail in: L<Paws::Polly::SynthesizeSpeech>

Returns: a L<Paws::Polly::SynthesizeSpeechOutput> instance

  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
input must be valid, well-formed SSML. Some alphabets might not be
available with all the voices (for example, Cyrillic might not be read
at all by English voices) unless phoneme mapping is used. For more
information, see How it Works.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


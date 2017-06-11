use strict;
use warnings;

package tasks::task_htmlmin;

sub new {
  my ($or_self, $hr_attributes) = @_;

  bless $hr_attributes, $or_self;
}

sub run {
  my ($or_self, $s_content) = @_;

  use CSS::Sass;
  my $packer = HTML::Packer->init();

  $s_content = $packer->minify(\$s_content,$or_self->{config});

  return $s_content;
}

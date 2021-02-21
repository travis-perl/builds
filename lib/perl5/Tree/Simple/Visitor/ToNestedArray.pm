package Tree::Simple::Visitor::ToNestedArray;

use strict;
use warnings;

our $VERSION = '0.16';

use Scalar::Util qw(blessed);

use base qw(Tree::Simple::Visitor);

sub new {
    my ($_class) = @_;
    my $class = ref($_class) || $_class;
    my $visitor = {};
    bless($visitor, $class);
    $visitor->_init();
    return $visitor;
}

sub visit {
	my ($self, $tree) = @_;
	(blessed($tree) && $tree->isa("Tree::Simple"))
		|| die "Insufficient Arguments : You must supply a valid Tree::Simple object";
    # grab our filter (if we have one)
    my $filter = $self->getNodeFilter();
    my @results;
    # get the array
    $self->_buildArray($tree, \@results, $filter);
    # add the trunk if we need to
    @results = (
            ((defined($filter)) ?
                    $filter->($tree)
                    :
                    $tree->getNodeValue()),
            [ @results ]
        ) if $self->includeTrunk();
    # set results
    $self->setResults(\@results);
}

sub _buildArray {
    my ($self, $tree, $accumulator, $filter) = @_;
    foreach my $child ($tree->getAllChildren()) {
        push @{$accumulator} => (defined($filter) ? $filter->($child) : $child->getNodeValue());
        push @{$accumulator} => $self->_buildArray($child, [], $filter) unless $child->isLeaf();
    }
    return $accumulator;
}

1;

__END__

=head1 NAME

Tree::Simple::Visitor::ToNestedArray - A Visitor for creating nested array trees from Tree::Simple objects.

=head1 SYNOPSIS

  use Tree::Simple::Visitor::ToNestedArray;

  my $visitor = Tree::Simple::Visitor::ToNestedArray->new();

  # given this Tree::Simple tree
  my $tree = Tree::Simple->new("Root")
                ->addChildren(
                    Tree::Simple->new("Child1")
                        ->addChildren(
                            Tree::Simple->new("GrandChild1"),
                            Tree::Simple->new("GrandChild2")
                        ),
                    Tree::Simple->new("Child2"),
                );

  # include the trunk (Root)
  $visitor->includeTrunk(1);

  # visit the tree
  $tree->accept($visitor);

  my $array_tree = $visitor->getResults();
  # this then creates the equivalent nested array tree:
  # [
  # 'Root', [
  #     'Child1', [
  #             'GrandChild1',
  #             'GrandChild2'
  #             ],
  #     'Child2'
  #     ]
  # ]

  # if you don't include the trunk (Root) then ...
  $tree->accept($visitor);

  my $array_tree = $visitor->getResults();
  # this then creates the following nested array tree:
  # [
  #   'Child1', [
  #           'GrandChild1',
  #           'GrandChild2'
  #           ],
  #   'Child2'
  # ]

=head1 DESCRIPTION

Given a tree constructed from a Tree::Simple hierarchy, this Visitor will create the equivalent tree of nested arrays.

=head1 METHODS

=over 4

=item B<new>

There are no arguments to the constructor the object will be in its default state. You can use the C<setNodeFilter> and C<includTrunk> methods to customize its behavior.

=item B<includTrunk ($boolean)>

Setting the C<$boolean> value to true (C<1>) will cause the node value of the tree's root to be included in the nested array output, setting it to false will do the opposite.

=item B<setNodeFilter ($filter_function)>

This method accepts a CODE reference as its C<$filter_function> argument and throws an exception if it is not a code reference. This code reference is used to filter the tree nodes as they are placed into the array tree. The C<$filter_function> is passed a Tree::Simple object, and is expected to return the value desired for inclusion into the array tree.

=item B<visit ($tree)>

This is the method that is used by Tree::Simple's C<accept> method. It can also be used on its own, it requires the C<$tree> argument to be a Tree::Simple object (or derived from a Tree::Simple object), and will throw and exception otherwise.

=item B<getResults>

This method will return the array tree constructed.

=back

=head1 Repository

L<https://github.com/ronsavage/Tree-Simple-VisitorFactory>

=head1 SUPPORT

Bugs should be reported via the CPAN bug tracker at

L<https://github.com/ronsavage/Tree-Simple-VisitorFactory/issues>

=head1 CODE COVERAGE

See the B<CODE COVERAGE> section in L<Tree::Simple::VisitorFactory> for more information.

=head1 SEE ALSO

These Visitor classes are all subclasses of B<Tree::Simple::Visitor>, which can be found in the B<Tree::Simple> module, you should refer to that module for more information.

=head1 AUTHOR

stevan little, E<lt>stevan@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004, 2005 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

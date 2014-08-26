package Aws::EC2::LaunchPermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
}
1
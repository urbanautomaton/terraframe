require 'terraframe/context'
require 'terraframe/provider'

require 'terraframe/aws/aws_resources'

module Terraframe
  module AWS
    class AWSContext < Context
      RESOURCES = {
        :aws_autoscaling_group            => Terraframe::AWS::AWSResource,
        :aws_db_instance                  => Terraframe::AWS::AWSResource,
        :aws_db_security_group            => Terraframe::AWS::AWSResource,
        :aws_db_subnet_group              => Terraframe::AWS::AWSResource,
        :aws_db_parameter_group           => Terraframe::AWS::AWSResource,
        :aws_eip                          => Terraframe::AWS::AWSResource,
        :aws_elb                          => Terraframe::AWS::AWSResource,
        :aws_launch_configuration         => Terraframe::AWS::AWSResource,
        :aws_network_acl                  => Terraframe::AWS::AWSResource,
        :aws_key_pair                     => Terraframe::AWS::AWSResource,
        :aws_route_table_association      => Terraframe::AWS::AWSResource,
        :aws_route53_record               => Terraframe::AWS::AWSResource,
        :aws_route53_zone                 => Terraframe::AWS::AWSResource,
        :aws_s3_bucket                    => Terraframe::AWS::AWSResource,
        :aws_vpc_dhcp_options_association => Terraframe::AWS::AWSResource,

        :aws_iam_group                   => Terraframe::AWS::AWSResource,
        :aws_iam_policy                  => Terraframe::AWS::AWSResource,
        :aws_iam_group_policy_attachment => Terraframe::AWS::AWSResource,
        :aws_iam_group_membership        => Terraframe::AWS::AWSResource,
        :aws_iam_user                    => Terraframe::AWS::AWSResource,

        :aws_instance         => Terraframe::AWS::AWSTaggedResource,
        :aws_internet_gateway => Terraframe::AWS::AWSTaggedResource,
        :aws_route_table      => Terraframe::AWS::AWSTaggedResource,
        :aws_security_group   => Terraframe::AWS::AWSSecurityGroupResource,
        :aws_subnet           => Terraframe::AWS::AWSTaggedResource,
        :aws_vpc              => Terraframe::AWS::AWSTaggedResource,
        :aws_vpc_dhcp_options => Terraframe::AWS::AWSTaggedResource,
      }

      def provider_type
        Terraframe::Provider
      end

      def resources
        RESOURCES
      end
    end
  end
end

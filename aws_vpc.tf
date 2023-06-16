resource "aws_vpc" "practice-tf-vpc" {
	cidr_block 		= "172.31.0.0/16"
	enable_dns_hostnames 	= true
	enable_dns_support	= true
	tags = {
		Name = "practice-tf-vpc-1"
	}
}

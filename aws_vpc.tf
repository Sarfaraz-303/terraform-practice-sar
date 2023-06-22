resource "aws_vpc" "practice-tf-vpc" {
	cidr_block 		= var.vpc_cidr
	enable_dns_hostnames 	= true
	enable_dns_support	= true
	tags = {
		Name = "practice-tf-vpc-1"
	}
	lifecycle {
		create_before_destroy = true
	}
}

resource "aws_internet_gateway" "tf_test_igw" {
	vpc_id 	= aws_vpc.practice-tf-vpc.id
	tags = {
		Name = "tf_test_igw"
	}
}

module "Ec2" {
  for_each = var.instance
  name = each.key
  ami= each.value.ami
  instance_type=each.value.instance_type
  source="./C:/Users/Hp/New folder (2)/EC2"
}
    #ami="ami-01df3f309c813ea35"
    #instance_type = "t2.micro"


module "s3"{
    for_each = var.s3_buckets
    source="./C:/S3 Module"
    bucket_name = each.key
    acl= each.value.acl
}

module "iam-module"{
  for_each = var.iam
  source=  "./C:/Users/Hp/New folder (2)/iamuser"
  iam_name = each.value
}

#module"iamuser"{
 #   source="/.C:/Users/Hp/New folder (2)/iamuser"
  # }


#for_each = var.instance
#name=each.key
#ami=each.value.ami
#instance_type=each.value.instance_type

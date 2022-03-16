region="ap-south-1"
profile="default"
bucket_name="iactraining125"
instance={
    "test-ec2-1"={
        ami="ami-0e1d30f2c40c4c701 "
        instance_type="t2.micro"
    }
    "test-ec2-2"={
      ami="ami-0e1d30f2c40c4c701 "
      instance_type="t2.micro"
    }
}

s3_buckets={
  "demoo-1"={
        acl ="private"
    }
     "demoo-2"={
      acl ="public-read"
   }
}

aws_iam_user ={
  "salonicloudeq"={
        acl ="private"
    }
     "rajnicloudeq"={
       acl= "public-read"
   }
}

iam=[
  "sachdeva",
  "sharma"
]
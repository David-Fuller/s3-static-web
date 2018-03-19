resource "aws_s3_bucket" "site_bucket" {
  bucket = "dpf-mybucket" 
# Use acl to make bucket public read
# acl = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"  
  }
}
resource "aws_s3_bucket_policy" "site_bucket" {
  bucket = "${aws_s3_bucket.site_bucket.id}"
  policy =<<POLICY
{
    "Id": "Policy1521380956868",
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadBucketObjects",
            "Action": [
                "s3:GetObject"
            ],
            "Effect": "Allow",
            "Resource": "arn:aws:s3:::dpf-mybucket/*",
            "Principal": "*"
        }
    ]
}
POLICY
}

  
output "bucketdomainname" {
  value = "${aws_s3_bucket.site_bucket.bucket_domain_name}"
}

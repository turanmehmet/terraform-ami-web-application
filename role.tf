resource "aws_iam_policy" "s3policy" {
  name        = "s3-policy"

  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:PutAnalyticsConfiguration",
                "s3:GetObjectVersionTagging",
                "s3:DeleteAccessPoint",
                "s3:CreateBucket",
                "s3:GetStorageLensConfigurationTagging",
                "s3:ReplicateObject",
                "s3:GetObjectAcl",
                "s3:GetBucketObjectLockConfiguration",
                "s3:DeleteBucketWebsite",
                "s3:GetIntelligentTieringConfiguration",
                "s3:PutLifecycleConfiguration",
                "s3:GetObjectVersionAcl",
                "s3:DeleteObject",
                "s3:GetBucketPolicyStatus",
                "s3:GetObjectRetention",
                "s3:GetBucketWebsite",
                "s3:GetJobTagging",
                "s3:PutReplicationConfiguration",
                "s3:PutObjectLegalHold",
                "s3:GetObjectLegalHold",
                "s3:GetBucketNotification",
                "s3:PutBucketCORS",
                "s3:GetReplicationConfiguration",
                "s3:PutObject",
                "s3:GetObject",
                "s3:PutBucketNotification",
                "s3:DescribeJob",
                "s3:PutBucketLogging",
                "s3:GetAnalyticsConfiguration",
                "s3:PutBucketObjectLockConfiguration",
                "s3:GetObjectVersionForReplication",
                "s3:GetStorageLensDashboard",
                "s3:CreateAccessPoint",
                "s3:GetLifecycleConfiguration",
                "s3:GetInventoryConfiguration",
                "s3:GetBucketTagging",
                "s3:PutAccelerateConfiguration",
                "s3:DeleteObjectVersion",
                "s3:GetBucketLogging",
                "s3:RestoreObject",
                "s3:GetAccelerateConfiguration",
                "s3:GetBucketPolicy",
                "s3:PutEncryptionConfiguration",
                "s3:GetEncryptionConfiguration",
                "s3:GetObjectVersionTorrent",
                "s3:AbortMultipartUpload",
                "s3:GetBucketRequestPayment",
                "s3:DeleteBucketOwnershipControls",
                "s3:GetAccessPointPolicyStatus",
                "s3:UpdateJobPriority",
                "s3:GetObjectTagging",
                "s3:GetMetricsConfiguration",
                "s3:GetBucketOwnershipControls",
                "s3:DeleteBucket",
                "s3:PutBucketVersioning",
                "s3:GetBucketPublicAccessBlock",
                "s3:PutIntelligentTieringConfiguration",
                "s3:PutMetricsConfiguration",
                "s3:PutBucketOwnershipControls",
                "s3:UpdateJobStatus",
                "s3:GetBucketVersioning",
                "s3:GetBucketAcl",
                "s3:PutInventoryConfiguration",
                "s3:GetObjectTorrent",
                "s3:GetStorageLensConfiguration",
                "s3:DeleteStorageLensConfiguration",
                "s3:PutBucketWebsite",
                "s3:PutBucketRequestPayment",
                "s3:PutObjectRetention",
                "s3:GetBucketCORS",
                "s3:GetBucketLocation",
                "s3:GetAccessPointPolicy",
                "s3:ReplicateDelete",
                "s3:GetObjectVersion"
            ],
            "Resource":
                "${aws_s3_bucket.b.arn}"
                
            
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "s3:GetAccessPoint",
                "s3:GetAccountPublicAccessBlock",
                "s3:ListAccessPoints",
                "s3:PutStorageLensConfiguration",
                "s3:CreateJob"
            ],
            "Resource": "*"
        }
    ]
}
EOT
}

resource "aws_iam_user_policy_attachment" "attachment" {
  user       = aws_iam_user.userid12.name
  policy_arn = aws_iam_policy.s3policy.arn
}
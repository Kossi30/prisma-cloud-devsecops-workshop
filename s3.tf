provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "bcb1a0b7-46a1-4819-9b34-e636c548e61c"
    git_commit           = "c6c193786f93262a13be5ac6ad5a3cba49636d97"
    git_file             = "s3.tf"
    git_last_modified_at = "2024-02-20 17:25:50"
    git_last_modified_by = "96099523+Kossi30@users.noreply.github.com"
    git_modifiers        = "96099523+Kossi30"
    git_org              = "Kossi30"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

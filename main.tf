provider "alicloud" {
  region = "cn-hangzhou"
}

# 创建最简单的OSS Bucket
resource "alicloud_oss_bucket" "simple_bucket" {
  bucket = "my-simple-tf-bucket"  # 改成全球唯一的名称
  acl    = "private"              # 基础访问权限
}

# 输出Bucket名称（可选）
output "bucket_name" {
  value = alicloud_oss_bucket.simple_bucket.bucket
}
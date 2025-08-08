# main.tf
provider "alicloud" {
  region = "cn-hangzhou" # 根据需求修改地域
}

resource "random_uuid" "default" {
}

# 创建存储空间
resource "alicloud_oss_bucket" "bucket" {
  bucket = substr("tf-example-${replace(random_uuid.default.result, "-", "")}", 0, 16)
}

# 设置存储空间的访问权限
resource "alicloud_oss_bucket_acl" "bucket-ac"{
  bucket = alicloud_oss_bucket.bucket.id
  acl = "private"
}
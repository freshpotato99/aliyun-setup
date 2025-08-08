terraform {
  required_version = ">= 1.0.0"

  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "~> 1.209"  # 使用适合的版本
    }
  }
}

provider "alicloud" {
  region = var.region
}

# 这里可以添加你的数据源(data)查询
# 例如：
# data "alicloud_regions" "current" {
#   current = true
# }
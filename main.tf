# main.tf
provider "alicloud" {
  region = "cn-hangzhou" # 根据需求修改地域
}

resource "random_uuid" "default" {
}


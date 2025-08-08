provider "alicloud" {
  region = "cn-hangzhou"
}

# 这里可以添加你的数据源(data)查询
# 例如：
# data "alicloud_regions" "current" {
#   current = true
# }
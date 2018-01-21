output "server-ip-1" {
  value = "${module.my-rails-server.server-ip}"
}

output "server-ip-2" {
  value = "${module.my-rails-server-2.server-ip}"
}

resource "aws_key_pair" "my-rails-key" {
  key_name   = "my_rails_key"
  public_key = "${file("my_test_key.pub")}"
}

module "my-rails-server" {
  source = "rails-server"

  name            = "my-rails-server"
  key_pair        = "${aws_key_pair.my-rails-key.key_name}"
  key_pair_key    = "~/.ssh/my_test_key"
  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}"
  ]
}

module "my-rails-server-2" {
  source = "rails-server"

  name            = "my-rails-server-2"
  key_pair        = "${aws_key_pair.my-rails-key.key_name}"
  key_pair_key    = "~/.ssh/my_test_key"
  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}"
  ]
}

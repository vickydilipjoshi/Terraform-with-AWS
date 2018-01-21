resource "aws_key_pair" "my-test-key" {
  key_name   = "test-key"
  public_key = "${file("my_test_key.pub")}"
}

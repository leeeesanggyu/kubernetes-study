resource "aws_launch_template" "tfer--eks-9ec4790f-5c12-cc92-9b98-cd32d7b1c5c0" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      throughput            = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  disable_api_stop        = "false"
  disable_api_termination = "false"

  iam_instance_profile {
    name = "eks-9ec4790f-5c12-cc92-9b98-cd32d7b1c5c0"
  }

  image_id      = "ami-098e510a61b982579"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "eks-9ec4790f-5c12-cc92-9b98-cd32d7b1c5c0"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0b7bdacaa5db5a951"]
  }

  tags = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVXWGxPVkVWM1RYcEZNRTVHYjFoRVZFMTZUVVJaZVUxcVJYZE5la1V3VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUV1ZyQ2l0TFIzaEdiM001YkhoQ01tOVZPWEU1VFhwdmIwVlRWWFV3TjNKeVdrUlFSRk13U2tRdlVIaGxVRTVETDJoVE0yTlJjRVpVY2s1eFJrcExWMkZrTjJFS2VITk9TR0ZHTHpKcVVrWkRiR2RKUzNsSVFVdGpNa293UzB4emRWQkNNamgyVFVoc2VVOTZOa3BoTDA1S00xVk9LelV2Y1dJd1JrOWFOVFJyWkZOemJRcFhORkJITXpKbFdqWTRUblZSZVdkYVFVZDNOVFJqUVZaVlFscE9iVzh5ZERabFYwYzFNMWh4VTNGM1NVbHRTVlIxYVVOd1JXMVFkRXA2U0UxM1JFcFBDa2hRU1RnMlZ6RkZWa1ZZYnpORlUzSlZaelpFVFZjeE1GWnZMMVJ6ZWl0UlpEaFVjelZzVGk5R2QyZFVlSFY1V0VReVNsVnJTa0ZpTHpOaEwyVnJNVklLVlVWTVlsaHFNekJMU25VMmN6RXphR0pWTDA1YWQybEJLM0p6TVRKcUwwcE5iekIxYmtGalJWZGFXRWh1ZHpkU1QwTlZZV0pWTTJSSGVWazBkWFVyWlFvMGMwUnVjRmhPUldSbGFVRnpNVWxOZUdsVlEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaS1dsTXJNRGhSWVRrNWVHdDRlRUp1V21kTU9YbEVZVGhEVmtGTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSa3BGVjJvd1pFbEhNakpGZEdsV1QxbG5hQXAwTjFkemRXOU9WVXhEVjJoWmJteElXRXA2Wm5aVWEzUkVNRTQwTkZsM1ZUWmFSRVpJYVVwM2EyZ3JSV1Z4VUVkWFZFb3JiV2RMTWtWcFZYbGhha2xRQ21WU1pXOXdXa3R6U0VNelZVbFpSMmxWTjBObGMyUlROWEpvVURscFZFUnJlbnBKWWxNemNUaDRNRTAzUWs5emQzbDZTMVpWVDNsUVluWjNZMjFvYkNzS04wMXhSVGxKVEc1aFNHWjBjelEzYlRoU1ZURnBia00xVTFrNFpubDRaVzlvWkZobFV6Sm9lVll6Y1N0WVZHSkVjSEpVYVcxRFVEWnNUVGQ1TlhZemRBcDNNVnBaVjJWeVYxZGlOM0JyUWtsS1Z6Wmxha3hDWmxKdWNqQXpNbVZ3UWl0bVZYVnVaV2N3WlVaT2RrbzBRemh4ZVhwaGVuaFlaREZrWjJaWmRsTlJDbkpJVFdKTVdIb3hUMkZGVEc5b1VFZDZSMGhhUmtVdlIwZzViQzk2WWpKc1lYSjVSVkF6T1VnMk9USllPVGx5TkhWUVJuVjZVVlpMVm0xMVIwZEJlRmNLZWxKclBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly8xREIzQjkwQThFRjRCMUQ4NTU4MTJCQjg1NjA0QTBDRC5ncjcuYXAtbm9ydGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTE3Mi4yMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCB0ZXN0LWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICctLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMDk4ZTUxMGE2MWI5ODI1NzksZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9dGVzdC1la3Mtbm9kZWdyb3VwLHJvbGU9ZWtzLW5vZGVncm91cCAtLW1heC1wb2RzPTE3JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
}

resource "aws_launch_template" "eks-launch-template" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
#      throughput            = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  disable_api_stop        = "false"
  disable_api_termination = "false"

#  iam_instance_profile {
#    name = "eks-9ec4790f-5c12-cc92-9b98-cd32d7b1c5c0"
#  }

  image_id      = "ami-098e510a61b982579"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "eks-9ec4790f-5c12-cc92-9b98-cd32d7b1c5c0"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0b7bdacaa5db5a951"]
  }

  tags = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVXWGxPVkVWM1RYcEZNRTVHYjFoRVZFMTZUVVJaZVUxcVJYZE5la1V3VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUV1ZyQ2l0TFIzaEdiM001YkhoQ01tOVZPWEU1VFhwdmIwVlRWWFV3TjNKeVdrUlFSRk13U2tRdlVIaGxVRTVETDJoVE0yTlJjRVpVY2s1eFJrcExWMkZrTjJFS2VITk9TR0ZHTHpKcVVrWkRiR2RKUzNsSVFVdGpNa293UzB4emRWQkNNamgyVFVoc2VVOTZOa3BoTDA1S00xVk9LelV2Y1dJd1JrOWFOVFJyWkZOemJRcFhORkJITXpKbFdqWTRUblZSZVdkYVFVZDNOVFJqUVZaVlFscE9iVzh5ZERabFYwYzFNMWh4VTNGM1NVbHRTVlIxYVVOd1JXMVFkRXA2U0UxM1JFcFBDa2hRU1RnMlZ6RkZWa1ZZYnpORlUzSlZaelpFVFZjeE1GWnZMMVJ6ZWl0UlpEaFVjelZzVGk5R2QyZFVlSFY1V0VReVNsVnJTa0ZpTHpOaEwyVnJNVklLVlVWTVlsaHFNekJMU25VMmN6RXphR0pWTDA1YWQybEJLM0p6TVRKcUwwcE5iekIxYmtGalJWZGFXRWh1ZHpkU1QwTlZZV0pWTTJSSGVWazBkWFVyWlFvMGMwUnVjRmhPUldSbGFVRnpNVWxOZUdsVlEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaS1dsTXJNRGhSWVRrNWVHdDRlRUp1V21kTU9YbEVZVGhEVmtGTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSa3BGVjJvd1pFbEhNakpGZEdsV1QxbG5hQXAwTjFkemRXOU9WVXhEVjJoWmJteElXRXA2Wm5aVWEzUkVNRTQwTkZsM1ZUWmFSRVpJYVVwM2EyZ3JSV1Z4VUVkWFZFb3JiV2RMTWtWcFZYbGhha2xRQ21WU1pXOXdXa3R6U0VNelZVbFpSMmxWTjBObGMyUlROWEpvVURscFZFUnJlbnBKWWxNemNUaDRNRTAzUWs5emQzbDZTMVpWVDNsUVluWjNZMjFvYkNzS04wMXhSVGxKVEc1aFNHWjBjelEzYlRoU1ZURnBia00xVTFrNFpubDRaVzlvWkZobFV6Sm9lVll6Y1N0WVZHSkVjSEpVYVcxRFVEWnNUVGQ1TlhZemRBcDNNVnBaVjJWeVYxZGlOM0JyUWtsS1Z6Wmxha3hDWmxKdWNqQXpNbVZ3UWl0bVZYVnVaV2N3WlVaT2RrbzBRemh4ZVhwaGVuaFlaREZrWjJaWmRsTlJDbkpJVFdKTVdIb3hUMkZGVEc5b1VFZDZSMGhhUmtVdlIwZzViQzk2WWpKc1lYSjVSVkF6T1VnMk9USllPVGx5TkhWUVJuVjZVVlpMVm0xMVIwZEJlRmNLZWxKclBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly8xREIzQjkwQThFRjRCMUQ4NTU4MTJCQjg1NjA0QTBDRC5ncjcuYXAtbm9ydGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTE3Mi4yMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCB0ZXN0LWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICctLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMDk4ZTUxMGE2MWI5ODI1NzksZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9dGVzdC1la3Mtbm9kZWdyb3VwLHJvbGU9ZWtzLW5vZGVncm91cCAtLW1heC1wb2RzPTE3JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
}

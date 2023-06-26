#!/bin/bash

# Server details
server=52.23.212.170
user="ubuntu"

# SSH public key
ssh_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQChvS9/gI0a7suPMX/qlS6g6fA4O2SwmKS2CzbJ5MjI25XOnm98F5xABUZokqkrnGoFx1OWWJv4Qyaxzm+gN3nl+8zV/kBGX+R2hmeuPwUhXxPxkuJFzwZAhkc8ZqajDu3iQzEVZw+LneKATRXvJGho7+AMeGBhWks1sGmsxofOHJjM976PSDe/yEqw6hUKQmuoVpVrAH6+Yp1n4sL/klAARbYxjk3eDIVFX/8NqNnd6nv/dllYuWfmeH9dMQNIDT0PZD5Bynk0XfTR3JmbRZbJBe6HVRRitlhgTDYNjkW1tLPnFdI35B1fm53GxGK/HdnOI/XyygopaE4ps+Sb0yPTYocu8DvvsPx84HFLjtO28JoOvvZT2kAXRca7LkiY5xZBY19WCf17ZeWA8cuaV5KGOn+dfuYwfY3Cibp/PHIttV8rcV52yeWlSpQ3Th1drQRfDm4oUC6dtmBVTjRxjoqH2AzwX3CctmADim7hHgiKIyzQ+R+59dm2KaBKKYAtalBsms5UZsV3AZ8BGSiaky2xT/geouoX2FFDythojplbXihUj3ori/hG3Eo+M+eF8x93OXwsY/JcQIglfd6ekWZ9LCKD0ysp6jUfklg0bQDL8+H2bkWCIO66uB6KN6t3xyuoSjEjgESghEERpbM1TopVpUh/qhWu3sACVvN64Pmj4w== thomax4blues@gmail.com

# Connect to the server and add the SSH public key to authorized_keys
ssh ubuntu@52.23.212.170 "mkdir -p ~/.ssh && echo \"$ssh_public_key\" >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

echo "SSH public key added to the server for user '$user'."

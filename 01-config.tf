/*
Copyright 2023 Schwarz IT KG <markus.brunsch@mail.schwarz>
Copyright 2024-2025 STACKIT GmbH & Co. KG <markus.brunsch@stackit.cloud>

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE file or at
https://opensource.org/licenses/MIT.
*/

#
# Custom User Settings
#

# STACKIT Availability Zone
variable "zone" {
  type        = string
  description = ""
  default     = "eu01-m"
}

# STACKIT VM Flavor
variable "flavor" {
  type        = string
  description = ""
  default     = "c3i.2"
}

# Local VPC Subnet to create Network
variable "LOCAL_SUBNET" {
  type        = string
  description = ""
  default     = "10.10.0.0/24"
}
variable "LOCAL_FIREWALL_IP" {
  type        = string
  description = ""
  default     = "10.10.0.220"
}

# STACKIT ProjectID
variable "STACKIT_PROJECT_ID" {
  type        = string
  description = "STACKIT Project ID"
  default     = ""
}
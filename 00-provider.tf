/*
Copyright 2023 Schwarz IT KG <markus.brunsch@mail.schwarz>
Copyright 2024-2025 STACKIT GmbH & Co. KG <markus.brunsch@stackit.cloud>

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE file or at
https://opensource.org/licenses/MIT.
*/

# Define required providers
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    stackit = {
      source  = "stackitcloud/stackit"
      version = "0.72.0"
    }
  }
}

provider "stackit" {
  default_region           = "eu01"
  service_account_key_path = "secrets.json"
}
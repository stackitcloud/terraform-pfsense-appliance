/*
Copyright 2023 Schwarz IT KG <markus.brunsch@mail.schwarz>
Copyright 2024-2025 STACKIT GmbH & Co. KG <markus.brunsch@stackit.cloud>

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE file or at
https://opensource.org/licenses/MIT.
*/

resource "stackit_volume" "pfsense_vol" {
  project_id        = var.STACKIT_PROJECT_ID
  name              = "pfsense-2.7.2-root"
  availability_zone = var.zone
  size              = 16
  performance_class = "storage_premium_perf4"
  source = {
    id   = stackit_image.pfsense_image.image_id
    type = "image"
  }
}

resource "stackit_server" "pfsense_Server" {
  project_id = var.STACKIT_PROJECT_ID
  name       = "pfSense"
  boot_volume = {
    source_type = "volume"
    source_id   = stackit_volume.pfsense_vol.volume_id
  }
  availability_zone = var.zone
  machine_type      = var.flavor
  network_interfaces = [
    stackit_network_interface.nic_wan.network_interface_id,
    stackit_network_interface.nic_lan.network_interface_id
  ]
}
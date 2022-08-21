rule_node = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.pci-0000_01_00.1.hdmi-stereo" },
    },
  },
  apply_properties = {
    ["node.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules,rule_node)

rule_device = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.pci-0000_01_00.1" },
    },
  },
  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules,rule_device)

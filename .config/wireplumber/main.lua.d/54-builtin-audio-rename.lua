rule_node = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.pci-0000_00_1f.3.analog-stereo" },
    },
  },
  apply_properties = {
    ["node.nick"] = "Builtin Jack",
    ["node.description"] = "Builtin Jack",
  },
}

table.insert(alsa_monitor.rules,rule_node)

rule_device = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.pci-0000_00_1f.3" },
    },
  },
  apply_properties = {
    ["device.nick"] = "Builtin Sound Card",
    ["device.description"] = "Builtin Sound Card",
  },
}

table.insert(alsa_monitor.rules,rule_device)

rule_device = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.usb-C-Media_Electronics_Inc._TONOR_TC-777_Audio_Device-00" },
    },
  },
  apply_properties = {
    ["device.nick"] = "Tonor USB Mic Sound Card",
    ["device.description"] = "Sound Card of Tonor USB Mic",
  },
}

table.insert(alsa_monitor.rules,rule_device)

rule_node = {
  matches = {
    {
      { "node.name", "equals", "alsa_input.usb-C-Media_Electronics_Inc._TONOR_TC-777_Audio_Device-00.mono-fallback" },
    },
  },
  apply_properties = {
    ["node.nick"] = "Tonor USB Mic",
    ["node.description"] = "Tonor TC-777 Mic",
  },
}

table.insert(alsa_monitor.rules,rule_node)

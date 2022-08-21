rule_node = {
  matches = {
    {
      { "node.name", "equals", "alsa_input.usb-OmniVision_Technologies__Inc._USB_Camera-B4.09.24.1-01.analog-surround-40" },
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
      { "device.name", "equals", "alsa_card.usb-OmniVision_Technologies__Inc._USB_Camera-B4.09.24.1-01" },
    },
  },
  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules,rule_device)

rule_node = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.usb-BurrBrown_from_Texas_Instruments_USB_AUDIO_DAC-00.iec958-stereo"},
    },
  },
  apply_properties = {
    ["node.nick"] = "Nubert USB Speakers",
    ["node.description"] = "Nubert nuPro A-200",
  },
}

table.insert(alsa_monitor.rules,rule_node)

rule_device = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.usb-BurrBrown_from_Texas_Instruments_USB_AUDIO_DAC-00" },
    },
  },
  apply_properties = {
    ["device.nick"] = "Nubert USB Sound Card",
    ["device.description"] = "Sound card of nuPro A-200",
  },
}

table.insert(alsa_monitor.rules,rule_device)

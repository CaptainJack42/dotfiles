local dap = require('dap')
local dap_vscode = require('dap.ext.vscode')
local dap_cortex = require('dap-cortex-debug')

-- dap.adapters.cortex = {
--   type = 'executable',
--   -- command = '/home/rick/dev/st/stm32cubeide_1.10.1/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.linux64_2.0.300.202203231527/tools/bin/ST-LINK_gdbserver';
--   -- args = {'-p 50000', '-cp /usr/bin/', '--shared', '--swd', '--halt'};
--   command = 'node',
--   args = {'/home/rick/git/cortex-debug/dist/debugadapter.js'}
-- }

dap.configurations.c = {
  name = 'ST-Link debugging',
  type = 'cortex-debug',
  request = 'launch',
  servertype = 'stlink',
  serverpath = '/home/rick/dev/st/stm32cubeide_1.10.1/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.linux64_2.0.300.202203231527/tools/bin/ST-LINK_gdbserver',
  toolchainPath = '/usr/bin',
  toolchainPrefix = 'arm-none-eabi',
  -- stm32cubeprogrammer = '/usr/bin/',
  -- device = 'STM32L486VGTX',
  -- armToolchainPath = '/usr/bin',
  gdbTarget = 'localhost:50000',
  cwd = '${workspaceFolder}',
  executable = '${workspaceFolder}/build/display_eval.elf',
}

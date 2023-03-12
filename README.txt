Unified Kernel Image Manager
============================

Automatically manage unified kernel images through pacman hooks.
Can generate and remove kernel images and include custom kernel
parameters, fallback and main initramfs, and cpu microcode.
Available options are:

- unified-kernel-manager generate

  Automatically generates unified kernel images for installe kernels.
  Includes both intel and amd microdes in the initrds. Generates 
  both a fallback and normal version if a fallback initramfs is 
  present for that kernel. Uses either /etc/kernel/cmdline or 
  ${boot_dir}/cmdline-${kernel_name} for the kernel's cmdline.

- unified-kernel-manager remove <orphaned|all|<name>>

  Removes orphaned unified kernel images from a system's esp partition,
  Can be used with a pacman hook to remove leftover images when 
  uninstalling a kernel to avoid orphaned efi images.

License
=======

Scripts and pacman hooks to manage unified kernel images in Arch Linux.
Copyright © 2023 Antonio de Haro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

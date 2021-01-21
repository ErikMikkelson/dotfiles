{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot = {
    initrd.availableKernelModules = [ "ahci" "ohci_pci" "ehci_pci" "xhci_pci" "usbhid" "uas" "sd_mod" ];
    initrd.kernelModules = [];
    extraModulePackages = with pkgs.linuxPackages; [ it87 ];
    kernelModules = [
      "kvm-amd"
      "coretemp"
      "it87"
    ];
  };

  # CPU
  nix.maxJobs = lib.mkDefault 16;
  powerManagement.cpuFreqGovernor = "performance";
  hardware.cpu.amd.updateMicrocode = true;

  fileSystems."/" =
    { device = "/dev/disk/by-label/nixos";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-label/boot";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-label/home";
      fsType = "ext4";
      options = [ "noatime" ];
    };

  fileSystems."/mnt/data" =
    { device = "/dev/disk/by-label/data";
      fsType = "ext4";
      options = [ "noatime" ];
    };

  fileSystems."/mnt/photos" =
    { device = "/dev/disk/by-label/photos";
      fsType = "ext4";
      options = [ "noatime" ];
    };

  # temporarily mount old system drive to ease transition
  fileSystems."/mnt/system" =
      { device = "/dev/disk/by-uuid/bd55c91f-6e1a-40ed-a303-e68fe700df9b";
        fsType = "ext4";
        options = [ "noatime" ];
      };

  swapDevices = [];

  # high-resolution display
  hardware.video.hidpi.enable = lib.mkDefault true;
}

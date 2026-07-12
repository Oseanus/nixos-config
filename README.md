# NixOS Configuration

## Update flake inputs

```bash
nix flake update
```

## Build

```bash
sudo nixos-rebuild build --flake .#desktop
```

## Switch

```bash
sudo nixos-rebuild switch --flake .#desktop
```

## Show generations

```bash
sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
```

## Rollback

Reboot and select an older generation from GRUB.

Or:

```bash
sudo nixos-rebuild switch --rollback
```
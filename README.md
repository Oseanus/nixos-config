# NixOS Configuration


## Update flake inputs

```bash
cd path/to/your/config/location
nix flake update
```

## Symbolic link (optional)

```bash
sudo mv /etc/nixos /etc/nixos.backup
sudo ln -s path/to/your/config/location /etc/nixos
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
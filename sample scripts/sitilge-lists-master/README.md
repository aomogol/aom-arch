# lists

Arch Linux package lists for various environments.

## Usage

I recommend using `trizen` or any other wrapper to manage both official and unofficial packages (AUR). To install the wrapper:

```shell
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg --noconfirm --needed -sric
cd ./.. && rm -rf trizen
```

Download the project and `cd lists` into it. Then, for example, to install the base packages:

```shell
trizen -S --needed --noconfirm - < base.list
```

## Extra

- Check https://github.com/retorquere/zotero-better-bibtex, which can automate bibliography entries.


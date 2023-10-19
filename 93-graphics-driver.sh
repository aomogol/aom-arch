# Graphics Drivers find and install
if lspci | grep -E "NVIDIA|GeForce"; then
    sudo cat <<EOF > /etc/pacman.d/hooks/nvidia.hook
    [Trigger]
    Operation=Install
    Operation=Upgrade
    Operation=Remove
    Type=Package
    Target=nvidia

    [Action]
    Depends=mkinitcpio
    When=PostTransaction
    Exec=/usr/bin/mkinitcpio -P
EOF
    yay -S --needed --noconfirm nvidia-dkms dkms 
    yay -S --needed --noconfirm nvidia-settings nvidia-utils lib32-nvidia-utils
elif lspci | grep -E "Radeon"; then
    yay -S --needed --noconfirm xf86-video-amdgpu  
elif lspci | grep -E "Integrated Graphics Controller"; then
    yay -S --needed --noconfirm  libva-intel-driver libvdpau-va-gl lib32-vulkan-intel vulkan-intel libva-intel-driver libva-utils 

echo -e "\nDone!\n"

# 2 ekran kartlı notebook ortamları için 
yay -S --needed --noconfirm optimus-manager    
yay -S --needed --noconfirm optimus-manager-qt
yay -S --needed --noconfirm acpi_call 
yay -S --needed --noconfirm bbswitch

### NVIDIA-ALL incelenecek
#   https://github.com/Frogging-Family/nvidia-all

# incelenecek
## https://discovery.endeavouros.com/nvidia/new-nvidia-driver-installer-nvidia-inst/2022/03/
# https://discovery.endeavouros.com/nvidia/optimus-switch-another-solution-for-optimus-laptops/2021/04/
# https://discovery.endeavouros.com/hardware/envy-control/2023/03/
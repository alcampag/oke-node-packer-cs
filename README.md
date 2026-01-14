# Cloud Shell Packer script - OKE custom image

Steps to execute the Packer script:

1. Run `oci setup config`, follow the instructions and be sure that your oci config file is saved on $HOME/.oci/config
2. Download your public key from the cloud shell, and upload it to your profile
3. Modify `vars.pkvars.hcl` accordingly
4. Run `build.sh`
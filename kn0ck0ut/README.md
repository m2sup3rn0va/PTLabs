<h1><b>kn0ck0ut - CTF Challenge<b></h1>

> **Owner** : Mr. Sup3rN0va | "17-08-2021"

> **Tags** : #ctf, #pentest, #network, #tricks

---

<h2><b>Table Of Contents</b></h2>

---

- [**Introduction**](#introduction)
- [**Installation**](#installation)
- [**Troubleshooting**](#troubleshooting)

---

## **Introduction**

---

- This CTF is designed for Network PT guys who wanted to understand how firewall works
- While fingerprinting a Firewall, how to conclude which switch to use for scanning is what is covered in this CTF
- Additionally, you will see some unusual tricks to enable and disable the ports on servers

---

<div class='page'/>
☝️ <a href="#">Back to top</a> ☝️

---

## **Installation**

---

- This CTF is completely designed in docker, thus no exploitation is required
- As always, Enumeration is the key
- For installation:
  - My suggestion will be to install this on a seperate `Kali` VM and better if you can take a snapshot of your machine before `deploying` the lab
  - The script `deploy_lab.sh` will install `docker` on your machine and set necessary permissions in `Phase-1`. Then on `Phase-2`, will install the lab
  - Once you download the `tar` file, untar and then `cd` and run `deploy_lab`. Once done, you need to `logoff` and `login` and then again run `deploy_lab.sh`
  - Then it will install `lab` and its container

    ```sh
    wget https://github.com/m2sup3rn0va/PTLabs/blob/main/kn0ck0ut/kn0ck0ut.tar.xz
    tar -xvf kn0ck0ut.tar.xz
    cd kn0ck0ut
    ./deploy_lab.sh
    ```

  - Once you are done with the lab, you can run `cleanup` script to restore the original state of your VM. It will revert back all the changes done by `deploy_lab` script
  - Just that, it will not remove `docker` from the VM
  - Once installed, you can use `nmap` in Kali for scanning and checking IP of the container. Default Network Segment used by docker: `172.17.0.0/16` 
  
> **NOTE**: Make sure that you don't see the Dockerfile before completing the challenge because in that case, you already knew what is configured in the container

> **NOTE**: Dockerfile, here act as a walkthrough of the CTF

---

<div class='page'/>
☝️ <a href="#">Back to top</a> ☝️

---

## **Troubleshooting**

---

- There are certain `docker` commands which you can use for troubleshooting
  - `docker ps -a`: Lists all the containers created. These are the actual machines which you are testing on. This is kindof like your VM
  - `docker images -a`: The images from which containers are created. This is kindof like your ISO image
  - `docker start <CONTAINER_NAME>`: Start the VM. You will get `CONTAINER_NAME` from `docker ps -a` command
  - `docker exec -it <CONTAINER_NAME> ifconfig`: To get the `IP` of the `container`

---

<div class='page'/>
☝️ <a href="#">Back to top</a> ☝️

---

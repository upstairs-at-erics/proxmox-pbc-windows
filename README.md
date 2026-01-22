# Proxmox Backup Client on Windows - Example Script

**Proxmox Backup Server (PBS)** is a dedicated linux backup appliance that stores encrypted, deduplicated, incremental file backups from clients.

**Proxmox Backup Client (PBC)** is a command line tool that sends backups to a PBS server over a network.  
There is no official Windows PBC, but the community has provided a Go‑language re‑implementation of the official Proxmox Backup Client (PBC), compiled as a single native Windows executable.  
It speaks the same API as Proxmox Backup Server (PBS), uses the same encryption model, and produces fully compatible backup snapshots.

This is a script wrapper for `proxmoxbackupclientgo` that can be readily fired from a scheduler tool.


## Prerequisites

* An instance of Proxmox Backup Server
* A token from PBS e.g. user@pbs!tokenid
* A token secret (or token password)
* The PBS 'fingerprint'

---

## Install proxmoxbackupclient_go
Since `proxmoxbackupclient_go.exe` is a standalone, statically compiled executable, it does not require a traditional "installation" wizard.  
Simply place the file on your system and run it via the command line.

### Download and Placement
**Download**: Get the latest release for Windows (usually a .zip or just the .exe file) from the project's repository.
[Proxmox Backup Client (Go)](https://github.com/tizbac/proxmoxbackupclient_go)

**Location**: Move the .exe to a permanent folder on your system. A common practice is:

`C:\Program Files\PBS-Client\`

**Path** (Optional): To run the command from any folder, add this directory to your Windows Environment Variables (System Path).

### Prepare Proxmox Backup Server (PBS)
Before running the client, you need an API Token from your Proxmox Backup Server:

Log in to your PBS Web UI.

Go to `Configuration → Access Control → API Tokens`.

Add a new token and assign it the DatastoreBackup role for your specific datastore.

**Important**: Copy the Secret immediately, as it will not be shown again.

---
## Using the Script
- Before doing anything, confirm that the `proxmoxbackupclient_go.exe` is working in your required location by either double-clicking it or running in the terminal.   
- Edit & save the Environment variables in the .cmd script
- run your prepared script.
- check results in PBS
## Scheduling
Once running it is a fairly simple job to setup a routine schedule in TASK SCHEDULER  
## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

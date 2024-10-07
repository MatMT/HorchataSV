# Windows Server Core 2022 Configuration - horchata.sv

This repository contains the configuration scripts used for the **Windows Server Core 2022** | horchata.sv.

## Project Members

- **Oscar Mateo Elías López**
- **Kennard David Pineda**
- **Carlos Marcelo Cruz Menjívar**
- **Martín Eduardo Carbajal Torres**
- **Javier Enrique Mejía Flores**

## Project Description

The project includes:

- **Active Directory**: Set up to manage the domain `horchata.sv`.
- **DNS**: Configured to resolve domain names to IP addresses and vice versa.
- **DHCP**: Configured for both IPv4 and IPv6.
- **Web Server**: A web service accessible via `www.horchata.sv`, with SSL certificates signed by "Shakira" as the Certificate Authority (CA).

## Installation Instructions

To deploy this configuration, each service has its own PowerShell script in this repository. You must manually execute each script in the correct order and restart the server when necessary.

### Prerequisites

- **Windows Server Core 2022** must be installed.
- **PowerShell** is used to execute the configuration scripts.
- You must have administrator privileges on the server.

### Step-by-Step Process

1. **Clone the Repository**:
   Clone this repository to your Windows Server Core machine:
   
2. **Install Active Directory**:
    powershell.exe -ExecutionPolicy Bypass -File .\ActiveDirectory.ps1

    **Note**: After the installation, the server may require a restart. Check the output and restart manually if needed.

    powershell.exe -ExecutionPolicy Bypass -File .\AD-OrganizationalUnit.ps1

3. **Install DNS**

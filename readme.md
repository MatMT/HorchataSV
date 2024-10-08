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

   ```bash
   Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe -OutFile C:\Git-2.46.2-64-bit.exe
   ```

   ```bash
   Start-Process "C:\Git-2.46.2-64-bit.exe" -Wait
   ```
   
3. **Install Active Directory**:

   ```bash
    powershell.exe -ExecutionPolicy Bypass -File .\ActiveDirectory.ps1
   ```

    **Note**: After the installation, the server may require a restart. Check the output and restart manually if needed.

   ```bash
    powershell.exe -ExecutionPolicy Bypass -File .\AD-OrganizationalUnit.ps1
   ```

4. **Install DNS**

5. **Install DHCP**

6. **Set Up Certificate Authority (CA) "Shakira"**
   5.1 Install Certificate Services:
   ```bash
   cd CertificateServices
   powershell.exe -ExecutionPolicy Bypass -File .\CertAuthority.ps1
   ```
   **Note:** During this process, you will be prompted to provide parameters such as:
   
   **CA Name:** Enter "Shakira" as the name of the Certificate Authority.
   **Type of CA:** Select StandaloneRootCA when prompted.
   The server may request a restart after installing the role. Restart if necessary.

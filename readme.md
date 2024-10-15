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

   ##### 6.1 Install Certificate Services:
   ```bash
   cd CertificateServices
   powershell.exe -ExecutionPolicy Bypass -File .\CertAuthority.ps1
   ```
   **Note:** Executing next process, you will be prompted to provide parameters such as:
   
   **CA Name:** Enter "Shakira" as the name of the Certificate Authority.
   
   **Type of CA:** Select StandaloneRootCA when prompted.

   The server may request a restart after installing the role. Restart if necessary.

---

# Verification of Installed Windows Features

To verify the installed Windows features and their configuration, use the following PowerShell commands:

1. **List All Installed Features**:
   
   ```powershell
   Get-WindowsFeature | Where-Object {$_.InstallState -eq "Installed"}
   ```

   This command lists all the features that are currently installed on the server.

2. **Check Specific Feature Installation**:
   
   ```powershell
   Get-WindowsFeature -Name AD-Domain-Services, DNS, DHCP, Web-Server
   ```

   This command checks if specific features like Active Directory, DNS, DHCP, and Web Server are installed.

3. **Verify Active Directory Configuration**:
   
   ```powershell
   Get-ADDomain
   Get-ADForest
   ```

   These commands provide information about the Active Directory domain and forest configuration.

4. **Verify DNS Configuration**:
   
   ```powershell
   Get-DnsServerZone
   Get-DnsServerResourceRecord -ZoneName "horchata.sv"
   ```

   These commands list the DNS zones and resource records configured on the DNS server.

5. **Verify DHCP Configuration**:
   
   ```powershell
   Get-DhcpServerv4Scope
   Get-DhcpServerv6Scope
   ```

   These commands list the IPv4 and IPv6 scopes configured on the DHCP server.

6. **Verify Web Server Configuration**:
   
   ```powershell
   Get-WindowsFeature -Name Web-Server
   Get-Website
   ```

   These commands check if the Web Server role is installed and list the websites configured on the server.


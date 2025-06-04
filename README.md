# Intrusion Detector

A network intrusion detection system that scans network traffic for unusual activity and potential security concerns. The system is comprised of a client component written in Go for packet capture and analysis, and a master server written in Python for threat detection and web interface..

## Project Structure

```
Intrusion_Detector/
├── Client/                # Go-based packet capture client
│   └── main.go            # Main client implementation
├── Master/                # Python-based master server
│   ├── interface.py       # Web interface implementation
│   ├── threats.py         # Threat detection logic
│   ├── templates/         # Web interface templates
│   ├── assets/            # Static assets for web interface
│   └── requirements.txt   # Python dependencies
├── Screenshots/           # Project screenshots
└── run.bat                # Windows batch file for running the project
```

## Technologies Used

### Backend
- **Go (Client)**
  - gopacket: For network packet capture and analysis
    - pcap: Packet capture library (part of gopacket)
  - Npcap: Windows packet capture driver
  - Standard library packages: net, http, json, os

- **Python (Master Server)**
  - Flask: Web framework for the interface
  - Requests: HTTP client for API communication

### Frontend
- HTML/CSS/JavaScript: Web interface
- Bootstrap: Frontend framework 


## Prerequisites

- Go 1.24.3 or later
- Python 3.x
- Windows operating system (for run.bat)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/KronosWasTaken/Intrusion_Detector.git
cd Intrusion_Detector
```

2. Install Go dependencies:
```bash
go mod download
```

3. Install Python dependencies:
```bash
cd Master
pip install -r requirements.txt
```

4. Configure the client ('main.go').

Before launching the client, you must set two key variables in'main.go':
### a. Master Server URL
 Update the 'url' variable with your Master server's address:
 ```go
 url string = "http://127.0.0.1:8000/" //  Change your Master server's IP address and port.
```
 ### b.Network Interface
 Use the 'device' variable to define which network interface to monitor.

```go
 device       string = "\\Device\\NPF_{XXXXXXXX-XXXX-XXXX-XXXXXXXXXXXX}"   //Replace with your interface ID.
```
 To find your interface ID:
 1. Open Command Prompt as administrator.
 2. Enter 'getmac /v /fo list'.
 3. Find the "Connection Name" and "Network Adapter" that you want to monitor.
 4. Copy the relevant "Physical Address" and enter it into the device string

## Usage

1. Start the master server:
```bash
cd Master
python interface.py
```

2. Run the client:
```bash
cd Client
go run main.go
```

Alternatively, you can use the provided `run.bat` script on Windows to start both components.

## Features

- Real-time network packet capture and analysis
- Web-based interface for monitoring and configuration
- Threat detection and alerting
- Network traffic visualization

## Screenshots

### Main Interface
![Main Interface View 1](screenshots/main1.png)
![Main Interface View 2](screenshots/main2.png)

### Expanded GUI
![Expanded GUI View](screenshots/expanded_gui.png)

### Search Functionality
![Search Interface](screenshots/search.png)




# 04 - Networking

Understanding networking is crucial for debugging, security, and infrastructure design.

## What I Covered

* OSI Model and TCP/IP
* IP addressing and subnetting (CIDR)
* DNS and domain resolution
* Routing basics
* NAT (Static, Dynamic and PAT)
* Firewalls and AWS Security Groups
* Common ports and protocols
* HTTP and HTTPS
* DNS records (A, CNAME, MX, NS, TXT)
* Tools for network troubleshooting

## Folder Structure

```text
04-networking/
├── notes/
├── labs/
└── projects/
```

## Labs

* DNS lookups using `nslookup` and `dig`
* Connectivity testing with `ping`
* Route tracing with `traceroute`
* Editing the `/etc/hosts` file
* Network troubleshooting exercises
* CIDR and subnetting practice

## Projects

### AWS EC2 + NGINX + DNS Deployment

Built and deployed a web server on AWS by connecting networking concepts with cloud infrastructure.

**Project Overview**

* Launched an Ubuntu EC2 instance.
* Connected securely using SSH.
* Installed and configured NGINX.
* Configured AWS Security Groups to allow HTTP traffic.
* Created a DNS A record that pointed a custom subdomain to the EC2 public IP.
* Successfully accessed the web server through:

```text
http://nginx.awstutorpro.com
```

**Networking Flow**

```text
Browser
    │
    ▼
nginx.awstutorpro.com
    │
    ▼
DNS A Record
    │
    ▼
EC2 Public IP
    │
    ▼
AWS Security Group (Port 80)
    │
    ▼
Ubuntu Server
    │
    ▼
NGINX Web Server
```

## Key Concepts

| Port | Protocol   | Use                    |
| ---- | ---------- | ---------------------- |
| 22   | SSH        | Secure remote login    |
| 53   | DNS        | Domain name resolution |
| 80   | HTTP       | Web traffic            |
| 443  | HTTPS      | Secure web traffic     |
| 3306 | MySQL      | Database               |
| 5432 | PostgreSQL | Database               |
| 6379 | Redis      | Cache                  |

## Useful Commands

```bash
ping <host>                # Test connectivity
curl -v <url>              # Send HTTP request
dig <domain>               # Query DNS records
nslookup <domain>          # Resolve domain names
netstat -tuln              # Show listening ports
ss -tuln                   # Show listening ports (modern)
traceroute <host>          # Show network path
ip addr                    # Show IP addresses
ip route                   # Show routing table
```

## Resources

* AWS EC2 Documentation
* NGINX Documentation
* RFC 1035 (DNS)
* RFC 791 (IP)
* RFC 793 (TCP)

## Status

✅ Completed

# Jason Pittman

**Cloud Security Architect | AI & Agentic Security at Enterprise Scale | Multi-Cloud Governance**

Los Angeles, CA
**+1 213-590-2801** | **jasonpit@mac.com** |
[LinkedIn](https://www.linkedin.com/in/jason-pittman-a1b34a1a/) |
[GitHub](https://github.com/jasonpit)

---

## Profile

Cloud Security Architect at Warner Bros. Discovery — one of four security architects covering the company's global multi-cloud estate, and team SME for both Microsoft Azure & M365 and AI/ML. 18 years in enterprise IT and cloud engineering, including 15+ years across AWS, Azure, GCP, and Tencent Cloud. Provider-agnostic by practice, architecting to the requirement rather than the vendor. Experienced on both sides of corporate change: integration architecture for the Warner Bros. / Discovery merger, and separation architecture for the divestiture that followed.

**Current focus:** WBD's production Bedrock + Claude security platform; security architecture for the Harry Potter retail platform across US, global, and China; the nine-tenant Azure security logging modernization; and a rapidly growing volume of AI-project security architecture reviews.

---

## Professional Experience

### Warner Bros. Discovery — Los Angeles, CA
*Apr 2021 – Present*

**Cloud Security Architect** · *Mar 2026 – Present*

*One of four security architects on the Cloud Architecture team, which owns the enterprise Wiz platform. Team SME for Microsoft Azure & M365 and for AI/ML.*

* **Designed and built the Unified Security Platform (USP)** — a production Bedrock-backed MCP cluster giving Cloud Security and Incident Response a single conversational interface over the enterprise security estate, reached through Claude Code and Microsoft Teams. Live across Wiz, Brinqa, AWS, and Azure, with IAM policy simulation and a Bedrock knowledge base of WBD security baselines. Read-only guardrails, AgentCore per-user identity, and a KMS-signed approval workflow make real-time multi-source observability safe in analysts' hands. *Terraform, Bedrock/AgentCore, ECS Fargate, Lambda, Python.*

* **Built USP's cross-platform launcher** — a scripted client that self-configures on macOS, Windows, and Linux at every launch, so new capability reaches every user with no per-user rollout. Takes the platform from a handful of operators to enterprise scale, and is the basis for extending USP to the Splunk team beyond Cloud Security.

* **Conducted the official security architecture review for Claude Enterprise adoption at WBD** — the assessment gating deployment of Anthropic's platform company-wide, covering data handling and retention, model access boundaries, tenancy isolation, and third-party AI vendor risk.

* **Authoring and rolling out modernization of WBD's Azure security logging** across nine tenants — Terraform-managed, policy-driven (DINE) diagnostic ingestion with RBAC authentication, feeding both Splunk and Wiz. Reference implementation complete on the two largest tenants, covering 118 subscriptions in the primary.

* **Security architecture for the Harry Potter retail platform, US and global** *(in flight)* — spanning Microsoft Dynamics, Shopify, Azure, AWS, and on-premises — including the cloud security baseline for the China launch on Tencent Cloud and its sovereign-cloud requirements.

* **Partner to the Incident Response team on live incidents**, and supported their Cortex XSOAR rollout with the Azure connector work as the team's Azure SME; standing owner of AI and agentic architecture reviews across WBD's global portfolio; author of Azure security baselines and Policy-as-Code (Terraform/Bicep) deployed across all nine tenants.

**Senior Cloud Engineer / Solutions Engineering** · *Apr 2021 – Mar 2026*

* **Led Azure technical strategy for the Warner Bros. corporate divestiture** as Azure SME and primary liaison between Cloud Engineering, Corporate Security, and Microsoft — greenfield Landing Zones, management group hierarchy, subscription vending, network topology, and the IAM/PIM/Entra ID strategy across hundreds of subscriptions and seven tenants.

* **Led Cloud Infrastructure and Identity platform migrations for M&A activity** — Azure tenant integration, Entra ID consolidation, and identity and access cutover across acquired and divested entities.

* **Global Azure resource validation program** across nine tenants, delivering **$1M+ in annual cloud savings** through analytics pipelines and outreach automation that identified, validated, and decommissioned fallow resources.

* **WBD Hackathon 2025** — designed and deployed the secure Azure environment for ~1,000 participants: isolated virtual networks with no public exposure, zero-trust managed-identity access, automated account creation, and per-team RBAC.

* **Core engineer on the Warner Bros. / Discovery merger**, consolidating legacy Azure/M365 tenants and Google Workspace into the unified WBD tenant with zero production downtime. Ongoing support of WBPRODGROUP, the global identity platform for WB Productions across 15+ international sites.

---

### Tradløs — Independent IT & Cloud Consultancy
*Founded 2017*

My own consultancy: a small portfolio of long-established client relationships, maintained alongside my primary role.

* **Hermes BorderGuru** (cross-border e-commerce logistics) *2017 – present* — lead cloud and IT infrastructure architect. Currently **LASCANA**: cloud and warehouse infrastructure, Amazon Connect call center, Azure services, and the identity, network, and physical access-control systems for a large distribution footprint. Previously **Lanvin & Wolford**: global e-commerce across the US and Mexico — Azure App Services, Dynamics NAV / 365 / Business Central, Amazon Connect with intelligent IVR/SMS routing, Shopify and WordPress.

* **S3D Inc.** *Oct 2025 – Jul 2026* — full IT and cloud infrastructure ownership for a sports-science company, plus lead software engineering on its multi-camera biomechanics capture platform: industrial GigE Vision cameras at 300 FPS with sub-microsecond hardware sync, feeding 2D/3D AI pose-estimation pipelines on NVIDIA GPU compute. *Python, OpenCV, NI-DAQmx, 10GbE.*

---

### Fullscreen Media (Otter Media) — Los Angeles & New York
**Senior Systems Engineer / Manager** · *Apr 2019 – Apr 2021*

* Led help desk and systems engineering teams across both coasts. **Led external TPN content-security audits** and built TPN-compliant secure rooms for pre-release content handling — standing requirements for major studio relationships that directly contributed to contract wins.

* JAMF zero-touch MacOps across a 600+ device fleet; AWS live-streaming platform delivering 20+ simultaneous 1080p streams globally; Active Directory re-architecture across cloud and on-premises; GCP infrastructure supporting media operations.

---

### .XYZ (Top-Level Domain Registry) — Los Angeles
**Systems Administrator II / DevOps Engineer** · *Jul 2016 – Apr 2019*

* Cross-functional Security team member — compliance reviews, security posture reporting, and enterprise Active Directory unifying authentication across macOS, Windows, and Linux. Architected one of the first **Amazon Connect call center platforms** globally, replacing legacy 8x8 at 1/16th the cost with database-driven priority routing. Managed AWS, Azure, and Linux operations and hundreds of WordPress instances.

---

### Fox Television Animation *(Family Guy, American Dad)* — Los Angeles
**Systems Administrator / Manager** · *Jun 2008 – Jul 2016*

* Led a four-person systems team directing IT infrastructure strategy for Fox Animation and Fox Television IT. Built **Linux virtualized render farms cutting render time by ~95%**, macOS deployment automation across 350+ devices, and the backup infrastructure protecting episode masters.

---

## Volunteer

**Marat Daukayev School of Ballet & Ballet Theatre** — Director of Cloud Infrastructure, *2015 – Present*. Microsoft 365, AWS, and the WordPress/WooCommerce platform behind ticket sales, streaming, and merchandise.

---

## Technical Projects

**nodeDSP / nodeOS** — low-latency network audio DSP platform offloading synthesis to dedicated Linux compute, plus a companion appliance Linux distribution. *C++, Swift.* · **Self-hosted MCP infrastructure** — multi-node agentic workflows: knowledge servers, RAG pipelines (ChromaDB), and a unified MCP gateway. *Node.js, Docker, Python.*

---

## Technical Skills

**Cloud & Security** · Azure, AWS, Google Cloud, Tencent Cloud · multi-tenant governance, landing zones, Policy-as-Code · Zero Trust, ISO 27001, PCI, NIST CSF · security architecture review, incident response · Wiz, Brinqa, Tenable, Microsoft Defender, Splunk, SentinelOne

**AI & Agentic** · Anthropic Claude and Claude Code, AWS Bedrock and AgentCore, Microsoft and GitHub Copilot, OpenAI, Gemini · MCP server development, RAG pipelines, agent orchestration · AI security and governance patterns

**Platform & Automation** · Terraform, Bicep, Ansible, GitHub Actions, Azure DevOps · Docker, Kubernetes, ECS/Fargate, VMware · Entra ID, PIM and RBAC, Active Directory, Okta · Linux, Windows Server · Python, PowerShell, Bash

*Full technology index: [jasonpit.github.io/resume/skills](https://jasonpit.github.io/resume/skills.html)*

---

## Education & Professional Development

**Musicians Institute**, Los Angeles — Honors Graduate, Recording Institute of Technology *(1999–2001)*; later designed and taught the school's MIDI Sampling & Electronic Music Production course *(2002–2004)*. Microsoft Enterprise Skills Initiative *(2024)* — Azure Administration, Identity & Access Management, Landing Zones, Migration & Modernization · Apple Certified Macintosh Technician · MIT OpenCourseWare Computer Science · applied self-study in agentic AI and software development (C++, Swift, Python).

---

## Languages

**English** native · **Korean** listening comprehension · **Spanish** basic

---

Outside work: music and audio engineering, cooking, skiing, and time outdoors.

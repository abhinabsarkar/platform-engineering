# Platform Engineering

## What is Platform Engineering?
It all started with `DevOps` which was AWS concept – “You build it, you run it”. Developers would deploy & run the applications end to end. There is a DevOps toolchain (Git, Jenkins, Jmeter, Chef, Docker) & metrics like deployment frequency, change failure rate, etc. But it resulted in cognitive load to the developers.

Then came `SRE - Sire Reliability Engineering`, invented & made popular by Google. They measured using SLO (Service Level Objectives) things like Availability, Latency, Capacity, Change Management, etc. But here the focus is more on KLO (Keeping Lights On) & not on Developer Experience. 

All of the above lead to `Platform Engineering`. Here also you have the toolchain & workflows, but the focus is on enabling self-service capabilities for developers i.e. build an `Internal Developer Platform (IDP)` for its customers, the developers. 

## Internal Developer Platform
IDP is a catalogue of infrastructure services in the form of curated set of predefined  Infrastructure as Code (IaC) templates which has enterprise security policies baked-in. Templates are generated for all common services and constraints are implemented in the platform. Instead of an operations team running around doing repetitive tasks, the platform does it for you and your operations team can work on making the platform better serve the needs of your developers. The code will spin up app infrastructure with project-based templates that establish consistency and best practices while maximizing security. 

![alt text](/images/azure-deployment-environment.png)

## References
* [Platfrom Engineering vs DevOps vs SRE](https://thenewstack.io/how-is-platform-engineering-different-from-devops-and-sre/)
* [Azure Deployment Environments](https://learn.microsoft.com/en-us/azure/deployment-environments/overview-what-is-azure-deployment-environments)
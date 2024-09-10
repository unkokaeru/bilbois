# [cv](https://mycode.rocks/cv/)

## Alexander Fayers

*Security-focused software engineer based in England*  

- `Security Cleared`
- `Experienced Software Developer`
- `First Class Cyber Security Degree`
- `Open to relocation`

### **censored** / [Website](https://mycode.rocks/) / [LinkedIn](https://www.linkedin.com/in/alexfayers/) / [GitHub](https://github.com/alexfayers/)

---

## Development Experience

### **Software Development Engineer** @ [Wavenet](https://www.wavenet.co.uk/) *(Mar 2024 - Present)*

Continuing my previous role after Falanx Cyber was acquired by Wavenet, while also taking on new responsibilities as part of a larger engineering team. The overall performance and efficiency of operation teams increased on average ~3x during this time, attributed to changes applied (based on ticket throughput and reduced error rates).

- Due to an increase in customers and a requirement for faster report generation speeds, upgrade of reporting system to allow for several queries/reports to be executed/generated asynchronously, cutting total daily report generation time from 1 hour to 20 minutes.
- After introduction of new ticketing system post acquisition, given sole responsibility for integration of new ticketing system into all API-based alerting scripts.
- Design and implementation of new Microsoft Sentinel alert definition management system using multiple GitHub repo forks to reduce duplicated rule logic in cases where customer-specific tuning is needed, providing more flexibility within rule definitions.
- Given oversight of new Wavenet company-wide Customer Portal due to experience with Falanx Reporting Portal.
- Creation of fullstack Asset Management system used for tracking onboarded customer devices, leading to more automation opportunities and a faster onboarding workflow. Created using FastAPI and React.

**Technologies used:** [Python](https://www.python.org/), [GitHub](https://github.com/), [React](https://react.dev/), [FastAPI](https://fastapi.tiangolo.com/)

### **Software Development Engineer** @ [Falanx Cyber](https://falanxcyber.com/) *(Aug 2022 - Mar 2024)*

Main point of contact for all in-house software development. During this time, I defined the standards for development work within Falanx and led several initiatives towards modern practices such as CI/CD and the use of sprints.

- Advocation for and implementation of automated testing and CI/CD pipelines (using CodeBuild, CodePipeline) for multiple internal projects, increasing deployment speed and lowering rate of bugs and issues.
- Creation of ACM (Access Control Matrix) tool, used to track employee account access and privilege. Created from ground up using Flask, SQLAlchemy, Alembic, and WTForms with a dynamically generated frontend based on SQLAlchemy models, using Pytest to handle testing of the project.
- Management and upgrade of Continuous Vulnerability Scanning (CVS) system, using Nessus to scan target IPs regularly and generate a PDF report based on the scan results. Before upgrade, system would require manual intervention almost daily. Post upgrade, system has not required any intervention.
- Release and maintenance of Reporting Portal system using Laravel for backend and React for frontend, used by customers to receive and view reports. Portal saves employees hours daily by automating notification emails for new customer reports.

**Technologies used:** [Python](https://www.python.org/), [BeautifulSoup](https://pypi.org/project/beautifulsoup4/), [pre-commit](https://pre-commit.com/), [CodeBuild](https://aws.amazon.com/codebuild/), [CodePipeline](https://aws.amazon.com/codepipeline/), [Git](https://git-scm.com/), [Flask](https://flask.palletsprojects.com/en/2.3.x/), [SQLAlchemy](https://www.sqlalchemy.org/), [WTForms](https://wtforms.readthedocs.io/en/3.0.x/), [Alembic](https://alembic.sqlalchemy.org/en/latest/), [Pytest](https://docs.pytest.org/en/7.3.x/), [PHP](https://www.php.net/), [Laravel](https://laravel.com/)

### **SOC Software Engineer** @ [Falanx Cyber](https://falanxcyber.com/) *(Sept 2021 - Aug 2022)*

Part-time maintenance and extensions of systems during final year of university.

- Maintained and iterated upon the main [Triarii](https://falanxcyber.com/managed-detection-response-triarii/) reporting system used to provide key insight to all customers using the service.
- Developed [f:CEL](https://falanxcyber.com/fcel/), an automated cyber risk report assessment system, in two-weeks prior to starting final year at university and accepting part-time role at Falanx.

**Technologies used:** [Python](https://www.python.org/), [BeautifulSoup](https://pypi.org/project/beautifulsoup4/), [WeasyPrint](https://weasyprint.org/), HTML, CSS, [Git](https://git-scm.com/)

### **SOC Engineer** @ [Falanx Cyber](https://falanxcyber.com/) *(Feb 2021 - Sept 2021)*

Technical onboarding of new customers and experience within the technical side of SOC operations.

- Linux server management (Bash scripting, Python automation, general service management).
- AWS - EC2, S3, IAM configuration.
- Elasticsearch pipeline configuration and query optimisation through Kibana.
- Adjusted client endpoint onboarding script using C#.NET and S3 for remote configuration.

**Technologies used:** Python, [Elasticsearch](https://www.elastic.co/elasticsearch/), [Kibana](https://www.elastic.co/kibana/), AWS (EC2, S3, CodeCommit, etc.), [C#.NET](https://docs.microsoft.com/en-us/dotnet/csharp/), [Bash](https://www.gnu.org/software/bash/), general Linux usage, Git

### **SOC Analyst** @ [Falanx Cyber](https://falanxcyber.com/) *(Sept 2020 - Feb 2021)*

Handling of customer tickets, explanation of events to customers, and general automation of daily tasks to increase efficiency of service delivery.

- Created ‘SentiNull’, a replacement for the poor notification system for tickets.
- Created ‘Mail Stripper’, phishing email analysis system *(later recreated as part of final year development project at university)*.
- Used Kibana and Elasticsearch to query data, threat hunt, and gain insight into large scale data.

**Technologies used:** Python, Elasticsearch, Bash, general Linux usage, Git

---

## Accomplishments

### **Second Place Individually** @ [RoboCup CoSpace World Finals](https://www.cospacerobot.org/) *(2015)*

Implemented a new approach to the problem of simulated rescue by using a “waypoints” system to intelligently guide the robot rather than blindly roaming. Placed 2nd in the technical programming challenge in the world finals in China, and 4th overall with team.

### **Final Year Development Project** - *“Mail Stripper”* @ De Montfort University *(2021 - 2022)*

A framework for enabling fully automated email analysis, targeted toward business environments such as security service providers. The system allows analysis modules to be simply and rapidly prototyped, tested, and deployed, with a core focus on reduction of ‘undifferentiated heavy lifting’ (common manual work).

**Technologies used:** [Docker](https://www.docker.com/), Python, [Celery](https://docs.celeryq.dev/en/stable/getting-started/introduction.html), [Redis](https://redis.io/), [MySQL](https://www.mysql.com/), [Flask](https://flask.palletsprojects.com/en/2.2.x/)

### **Simply Budget** *(2020)*

Created a simple [React Native](https://reactnative.dev/) ([Expo](https://expo.dev/)) app which is now [available on the Play Store](https://play.google.com/store/apps/details?id=com.alexfayersapps.simplybudget), due to issues encountered with existing solutions and to learn more about mobile development.

**Technologies used:** [Expo](https://expo.dev/), JavaScript, [React Native](https://reactnative.dev/)

### **HackTheBox - Elite Hacker**

With free time, occasionally enjoy [CTF](https://cybersecurity.att.com/blogs/security-essentials/capture-the-flag-ctf-what-is-it-for-a-newbie) on [HackTheBox](https://app.hackthebox.com/profile/72271), and have been awarded the rank of “Elite Hacker”.

---

## Education

[De Montfort University](https://www.dmu.ac.uk/) - Leicester, England *(2019 - 2022)*

**Bachelor of Science (Honours) with Placement** in Cyber Security: First Class

[County Upper School](https://www.countyupper.org/) - **censored**, England *(2016 - 2018)*

**A Levels**: Computer science, Mathematics, Physics, Further Maths (AS)

---

| Subject            | Grade |
| ------------------ | ----- |
| Computer Science   | `B`   |
| Mathematics        | `D`   |
| Physics            | `D`   |
| Further Maths (AS) | `C`   |

### **GCSES**

| Subject              | Grade |
| -------------------- | ----- |
| Computing            | `A`   |
| French               | `A`   |
| Graphic Products     | `A`   |
| Mathematics          | `A`   |
| Physics              | `A`   |
| Four other subjects  | `B`   |
| Three other subjects | `C`   |

> [County Upper School](https://www.countyupper.org/) - **censored**, England _(2013 - 2016)_
Issue Summary:
Duration of Outage:
1)	Start Time: [16:24] (GMT +1)
2)	End Time: [16:55] (GMT +1)
Impact:
The Nginx service on the Ubuntu container was unavailable during the outage, affecting our application. Approximately 65% of users experienced service disruption, leading to slow response times.
Root Cause:
The Nginx installation on the Ubuntu container failed to listen on port 80 due to port conflict.
Timeline:
Detection:
Detected at [16:24] (GMT +1) through monitoring alert and customer complaint.
Actions Taken:
1)	Investigated Nginx configuration files for errors.
2)	Checked for competing processes on port 80.
3)	Assumed a misconfiguration issue initially.
Misleading Paths:
1)	Explored network-related issues.
2)	Checked for recent system updates causing conflicts.
Escalation:
Escalated to the DevOps team for further assistance.
Resolution:
1)	Identified misconfiguration in Nginx sites-enabled/default file.
2)	Corrected the configuration and restarted Nginx.
Root Cause and Resolution:

Root Cause Explanation:
The Nginx configuration in the sites-enabled/default file had an error, preventing it from binding to port 80.
Resolution Details:
1)	Corrected the Nginx configuration by fixing the misconfiguration.
2)	Restarted Nginx to apply the changes.
Corrective and Preventative Measures:
Areas for Improvement:
1)	Strengthen monitoring for critical services.
2)	Implement a review process for configuration changes.
Tasks for Issue Resolution:
Immediate:
1)	Confirm Nginx is running and accessible on port 80.
2)	Document the specific Nginx configuration issue.
3)	Share lessons learned with the team.
Short-term:
1)	Review and improve the Nginx configuration deployment process.
2)	Implement automated tests for Nginx configurations.
Long-term:
1)	Conduct a comprehensive review of system-wide configurations.
2)	Consider redundancy measures for critical services.
Postmortem Conclusion:
During the outage lasting 30 minutes, the Nginx service on the Ubuntu container was impacted, affecting 65% of users accessing the application. The root cause was identified as a s misconfiguration in the Nginx sites-enabled/default file, preventing it from binding to port 80. The issue was resolved promptly by correcting the configuration and restarting Nginx. To prevent future occurrences, we plan to enhance our monitoring, review configuration deployment processes, and implement automated tests for critical services. This incident serves as a valuable learning experience to strengthen our system resilience and response mechanisms.

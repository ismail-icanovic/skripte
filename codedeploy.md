- `/opt/codedeploy-agent/deployment-root/f9bb141d-a8ad-413b-abea-ca154b4977c8/`
  - lokacija gdje ce code deploy da smjesti deployment na instancu
- `tail -30 /var/log/aws/codedeploy-agent/codedeploy-agent.log`
  - lokacija logova code deploy agenta
- `cat /usr/lib/systemd/system/codedeploy-agent.service`
  - lokacija codedeploy servisa
- [LINK](https://repost.aws/knowledge-center/codedeploy-agent-non-root-profile)
  - How can I run the CodeDeploy agent with a user profile that's not the root profile?

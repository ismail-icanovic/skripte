- kako napraviti user service

  - [LINK](https://computingforgeeks.com/how-to-run-systemd-service-without-root-sudo/)
  - `export XDG_RUNTIME_DIR=/run/user/$(id -u)`

    - za perzistenciju dodati u vim ~/.bashrc, source ~/.bashrc

  - `sudo loginctl enable-linger ec2-user`

    - `loginctl show-user bec2-user`
    - The command `loginctl enable-linger ec2-user` enables the linger feature for the user account "ec2-user" using the loginctl utility.

      The linger feature allows a user's systemd user session to persist even after the user has logged out. It ensures that the user's background processes and services continue to run, even when the user is not actively logged in. This can be useful for services or processes that need to run continuously in the background, even if no user is currently logged in.

      Enabling linger for a user with the loginctl enable-linger command ensures that the user's systemd user session remains active and their services continue running even after they log out.

- moguci problem
  - [LINK](https://unix.stackexchange.com/questions/415521/created-a-user-service-returns-error-failed-at-step-group-spawning-operation)
- `systemctl --user status propass-dev2.service`
- `journalctl -u codedeploy-agent.service | tail `
- `journalctl -u codedeploy-agent.service`
- `systemctl show my-service propass-dev.service | less`
- `systemctl --user list-unit-files propass-dev2.service`
- `systemctl --user daemon-reload`

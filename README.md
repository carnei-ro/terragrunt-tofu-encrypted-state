# Terragrunt + Tofu + Encrypted TF States + GitLab Remote State Backend

This repository is a demonstration of how to use Terragrunt with Tofu to manage encrypted Terraform states in GitLab.

Tested with `tofu` 1.9.0 and `terragrunt` 0.72.5.

## Prerequisites

- GitLab Repo & Personal Access Token: You will need a GitLab repository to store your Terraform states. You will also need a personal access token to authenticate with GitLab. Edit the `root.hcl` file changing the **gitlab_username** and **gitlab_project_id** variables to match your GitLab username and project ID respectively. Export your personal access token as an environment variable `GITLAB_TOKEN`.
- Passphrase: You will need a passphrase to encrypt your Terraform states. Export your passphrase as an environment variable `TOFU_STATE_ENCRYPTION_PASSPHRASE`. You can generate a passphrase using the following command: `LC_ALL=C tr -dc 'A-Za-z0-9*#@' < /dev/urandom | head -c 32`. **BE CAREFUL: DO NOT LOSE YOUR PASSPHRASE. YOU WILL NOT BE ABLE TO DECRYPT YOUR TERRAFORM STATES WITHOUT IT.**

## Optional Flags

To keep the log as it used to be, set the environment variables:

- TERRAGRUNT_LOG_FORMAT="bare"
- TERRAGRUNT_FORWARD_TF_STDOUT="true"

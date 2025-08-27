
# action-runners

This repository provides container images for GitHub Actions self-hosted runners, focusing on Ubuntu 24.04 environments with a wide range of DevOps, CI/CD, and popular programming tools.

## Main Features

- **Packer Template**: Automatically builds Ubuntu 24.04 images using Packer and the Docker plugin.
- **Installation Scripts**: 60+ shell scripts to install tools such as Python, Node.js, Go, Docker, Git, Azure CLI, AWS CLI, Terraform, Kubernetes tools, and more.
- **Toolset JSON**: Manages versions of tools (Python, Node, Go, etc.) via the `toolset-2404.json` file.
- **Asset & Helper Scripts**: Support for environment configuration, testing, cleanup, and environment variable management.
- **GitHub Actions Workflows**: Integrated workflows for auto-approve, dependency review, packer image publishing, and changelog updates.

## Directory Structure

- `images/ubuntu/templates/`: Packer template for Docker Ubuntu 24.04.
- `images/ubuntu/scripts/build/`: Installation and system configuration scripts.
- `images/ubuntu/toolsets/`: List of supported tools and versions.
- `.github/workflows/`: CI/CD workflows for the repository.
- `LICENSE`, `SECURITY.md`, `CHANGELOG.md`: License, security, and changelog information.

## Usage

1. Clone the repository:
	```bash
	git clone https://github.com/dungpham91/action-runners.git
	```
2. Build the image with Packer:
	```bash
	packer build images/ubuntu/templates/docker-ubuntu-24.04.pkr.hcl
	```
3. Customize the toolset via the `toolset-2404.json` file if needed.

## Contribution

Please create a PR or issue if you want to add tools or improve the image.

## License

MIT © 2025 Daniel Pham

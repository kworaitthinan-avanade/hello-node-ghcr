# @kworaitthinan-avanade/hello-node-ghcr

A simple Dockerized Node.js function that returns a greeting and is published to **GitHub Container Registry (GHCR)**.

---

## 🐳 Docker Usage

Pull and run the container directly:

```bash
docker pull ghcr.io/kworaitthinan-avanade/hello-node-ghcr:latest
docker run ghcr.io/kworaitthinan-avanade/hello-node-ghcr
```

Expected output:

```
Hello from ghcr!
```

---

## 🧪 Local Development

Clone and run the project locally:

```bash
git clone https://github.com/kworaitthinan-avanade/hello-node-ghcr.git
cd hello-node-ghcr
npm install
node -e "console.log(require('./index.js')())"
```

---

## 🔄 Publishing Docker Image to GHCR (via GitHub Actions)

Publishing is automated using GitHub Actions and triggered **when a Git tag is pushed**.

### 🪄 How to Trigger the Publish Workflow:

1. **Commit your changes**

```bash
git add .
git commit -m "Update something"
```

2. **Create and push a version tag (semantic versioning)**

```bash
git tag v1.0.1
git push origin v1.0.1
```

3. ✅ This triggers the `publish.yml` GitHub Actions workflow, which:
   - Logs in to GHCR
   - Builds the Docker image
   - Pushes it to GitHub Container Registry

The image is published at:

```
https://github.com/kworaitthinan-avanade/hello-node-ghcr/pkgs/container/hello-node-ghcr
```

---

## 📄 License

MIT

# QML online

[![Deploy](https://binary-factory.kde.org/job/Website_qmlonline-kde-org/badge/icon?subject=Deploy)](https://binary-factory.kde.org/job/Website_qmlonline-kde-org/)

Play online with QML, thanks to WebAssembly!

Website: [https://qmlonline.kde.org/](https://qmlonline.kde.org/)

## How to run locally:

1. Install Docker
2. `./deploy.sh`
3. [Install emscripten](https://emscripten.org/docs/getting_started/downloads.html#installation-instructions-using-the-emsdk-recommended)
4. `emrun build/index.html`

QMLOnline runs fine with Podman as well: replace `docker` with `podman` and `-u $(id -u):$(id -g)` with `--userns keep-id` in the `deploy.sh` script.

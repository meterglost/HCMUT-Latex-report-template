# Latex report template

## Using Overleaf

On release page, download the src version, upload on Overleaf, change compiler to `XeLaTeX` and recompile

## Build locally

On release page, download the full version

### Requirement

- Docker and docker compose (or Podman)
- Recommend using VSCode as IDE because this project is setup for it
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig) extension
  - [Path Autocomplete](https://marketplace.visualstudio.com/items?itemName=ionutvmi.path-autocomplete) extension

### Build

```bash
docker compose run --rm texlive
```

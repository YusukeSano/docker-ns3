# docker-ns3
For NS-3.36 network simulator in Ubuntu Docker container.

## Usage

- Building image and creating container

  ```
  make build
  ```

- Starting and connecting container

  ```
  make start
  ```

- Removing image and container

  ```
  make remove
  ```

## Visualize

Requires `XQuartz` installation

```
brew install --cask xquartz
```

Change setting from `XQuartz > Preferences... > Security`

- Disable `Authenticate connections`
- Enable `Allow connections from network clients`

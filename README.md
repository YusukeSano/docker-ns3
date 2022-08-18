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

- View Docker GUI output on Mac

  ```
  make visualize
  ```
  
  **Important:** `visualize` requires package installation
  
  ```
  brew install socat
  brew install --cask xquartz
  ```

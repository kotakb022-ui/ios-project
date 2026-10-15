name: Build iOS Tweak
on: [push]
jobs: build: runs-on: ubuntu-latest container: image: joedj/theos:latest steps: - name: Checkout code uses: actions/checkout@v4
  - name: Compile Tweak
    run: make package
    
  - name: Upload Artifact
    uses: actions/upload-artifact@v4
    with:
      name: compiled-tweak
      path: packages/

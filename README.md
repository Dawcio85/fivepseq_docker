# Fivepseq Docker Usage

This guide explains how to load, run, and test the Fivepseq Docker image.

## 1. Load the Docker Image

Open a terminal in the project directory (where `fivepseq_image_v1.tar` is located) and load the image:

```bash
docker image load -i fivepseq_image_v1.tar
```

This command loads the Docker image and tags it as `fivepseq:v1`.

## 2. Check Fivepseq Installation

To verify the installed version of Fivepseq, run:

```bash
docker run --rm fivepseq:v1
```

This will execute `fivepseq --version` inside the container and display the version in your terminal. The container will exit after printing the version.

## 3. (Optional) Run Fivepseq with Demo Data

To test Fivepseq using the provided demo data:

```bash
docker run -it fivepseq:v1 /bin/bash
cd demo_data
bash src/fivepseq_quick.sh
```

The results from the analysis can be found in `/data/demo_data/fivepseq_quick` inside the container.

## 4. Start an Interactive Shell

To open a shell inside the container for custom analysis:

```bash
docker run -it fivepseq:v1 /bin/bash
```

This will give you an interactive bash shell with Fivepseq and all dependencies installed.

## 5. Notes

- The Docker image was tested on Linux, macOS (Apple Silicon M2), and Windows 10.
- If you want to mount local data into the container, use the `-v` option. For example:

  ```bash
  docker run -it -v $(pwd)/my_data:/data/my_data fivepseq:v1 /bin/bash
  ```
- For more information about Fivepseq visit the official repository on GitHub https://github.com/lilit-nersisyan/fivepseq.

---

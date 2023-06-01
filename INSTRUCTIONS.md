# Running with Docker

Commands to be executed in the **root folder** of the project.

## Requirements

- `docker`
- `docker-compose` (or `docker compose`)
- `<a model file>.bin`

## Download Models

In the root of the project, copy or download models to the `models` folder.

```bash
wget -c https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin -P models/

# wget https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/resolve/main/ggml-vic13b-q5_1.bin
```

Or from huggingface:

```bash
# After installing hugingeface_hub
# conda install -c conda-forge huggingface_hub
# pip install huggingface_hub

# To download this model:
# https://huggingface.co/vicuna/ggml-vicuna-13b-1.1/blob/main/ggml-vic13b-q5_1.bin
# Run this command:
python3 -c 'from huggingface_hub import hf_hub_download; downloaded_model_path = hf_hub_download( repo_id="vicuna/ggml-vicuna-13b-1.1",
                 filename="ggml-vic13b-q5_1.bin",
                 use_auth_token=False,
                 local_dir="models",
                 local_dir_use_symlinks=False
                ); print(downloaded_model_path)'

## Update the .env file

```bash
cp .env.example .env
# edit .env file as you need
```

## Prepare the docker image

```bash
docker-compose build
```

## Run the container

Add any files you want to use in the `source_documents` folder, then start the
container.

```bash
docker-compose run --rm privategpt
# A prompt will appear. Type your question and press enter.
```

## Stop and cleanup the containers

```bash
docker-compose down
```

# Download Models
```bash
mkdir models
cd models

wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin

# wget https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/resolve/main/ggml-vic13b-q5_1.bin
```

# Update the .env file

```bash
cp .env.example .env
# edit env file as you need
```


# Run

```bash
docker-compose up -build
```

To stop the container:

```bash
docker-compose rm
```
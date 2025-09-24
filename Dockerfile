# Use a base image with Python and your desired ML framework (e.g., PyTorch)
FROM pytorch/pytorch:2.8.0-cuda12.9-cudnn9-runtime

# Set the working directory
WORKDIR /workspace

# Install dependencies (other than transformers)
# You might have a requirements.txt file for your project
RUN pip install --no-cache-dir datasets tokenizers accelerate

# Command to keep the container running
CMD ["tail", "-f", "/dev/null"]
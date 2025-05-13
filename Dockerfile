# Base image
FROM python:3.7.12

# Set working directory
WORKDIR /data

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install fivepseq
# Copy fivepseq repository cloned from GitHub
COPY fivepseq ./fivepseq
RUN cd fivepseq && python setup.py install

# Main entrypoint
# ENTRYPOINT ["fivepseq --version"]

# Set default command
CMD ["/bin/bash"]
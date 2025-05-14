# Base image
FROM python:3.8.0

# Set working directory
WORKDIR /data

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy fivepseq repository cloned from GitHub and install it
COPY fivepseq ./fivepseq
RUN cd fivepseq && python setup.py install

# Main entrypoint
# ENTRYPOINT ["fivepseq --version"]

# Set default command
CMD ["/bin/bash"]
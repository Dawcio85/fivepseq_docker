# Base image
FROM python:3.8.0

# Set working directory
WORKDIR /data

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy fivepseq repository cloned from GitHub and install from it
COPY fivepseq ./fivepseq
RUN cd fivepseq && python setup.py install

# Copy the test data
COPY demo_data ./demo_data

# Main entrypoint
# ENTRYPOINT ["fivepseq", "--version"]

# Set default command
CMD ["fivepseq", "--version"]
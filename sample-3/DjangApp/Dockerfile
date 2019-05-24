FROM python:3
# Add our code
ADD . /opt 
COPY prd.sh /opt
COPY dev.sh /opt
# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /opt
EXPOSE 8000
RUN chmod +x prd.sh
RUN chmod +x dev.sh
CMD ./prd.sh

FROM robotframework/rfdocker
MAINTAINER Raghu <raghu19991@gmail.com>
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT robot -d results Tests/Wishlist/W01_AddRemoveProducts.robot
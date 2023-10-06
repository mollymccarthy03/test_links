FROM ubuntu:latest

RUN apt-get update && apt-get install -y jq curl

WORKDIR /app

COPY action.sh action.sh

CMD ["action.sh"]

ENTRYPOINT ["/bin/sh"]
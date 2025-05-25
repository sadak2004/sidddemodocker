FROM alpine
RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh .
COPY so-you-want-to-become-a-professor.pdf .

COPY app.py .
CMD ["python", "app.py"]
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]


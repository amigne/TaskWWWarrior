FROM python:3.10 AS builder

COPY requirements.txt /tmp

RUN pip install --upgrade pip \
    && mkdir /root/.local \
    && cd /root/.local \
    && pip install --user -r /tmp/requirements.txt

FROM python:3.10-slim

EXPOSE 8000

ENV PYTHONUNBUFFERED 1

VOLUME /app
WORKDIR /app

VOLUME /static

COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

CMD ["/app/bin/run.sh"]

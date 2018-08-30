FROM scratch
EXPOSE 8080
ENTRYPOINT ["/payment"]
COPY ./bin/ /
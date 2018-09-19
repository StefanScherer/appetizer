FROM chocolateyfest/node
WORKDIR /app
COPY img img
COPY package.json package.json
COPY app.js app.js
FROM chocolateyfest/node:pure
COPY --from=0 /app /app
EXPOSE 8080
ENTRYPOINT [ "node", "/app/app.js" ]

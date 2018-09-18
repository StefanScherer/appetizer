FROM chocolateyfest/node
COPY img img
COPY package.json package.json
COPY app.js app.js
EXPOSE 8080
ENTRYPOINT [ "node", "app.js" ]

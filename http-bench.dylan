module: http-bench
synopsis: 
author: Francesco Ceccon

define class <json-page> (<resource>)
end;

define method respond
    (resource :: <json-page>, #key)
  let response = current-response();
  set-header(response, "Content-Type", "application/json");
  let message = make(<table>, size: 1);
  message["message"] := "Hello, World!";
  write(response, write-object-to-json-string(message));
end;

define function map-resources
    (server :: <http-server>)
  add-resource(server, "/json", make(<json-page>));
end function map-resources;

define function main ()
    http-server-main(server: make(<http-server>,
                                  listeners: list("0.0.0.0:8888")),
                     before-startup: map-resources);
end function main;

main();

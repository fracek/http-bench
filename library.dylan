module: dylan-user
Author: Francesco Ceccon

define library http-bench
  use common-dylan;
  use http-common;
  use http-server;
  use serialization;
  use io;
end library;

define module http-bench
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use http-common;
  use http-server;
  use json-serialization;
  use streams, import: { write };
end module;

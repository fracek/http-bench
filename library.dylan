module: dylan-user

define library http-bench
  use common-dylan;
  use io;
end library;

define module http-bench
  use common-dylan, exclude: { format-to-string };
  use format-out;
end module;

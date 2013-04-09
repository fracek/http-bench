HTTP-BENCH
==========

Implementation of TechEmpower's
[FrameworkBenchmarks](https://github.com/TechEmpower/FrameworkBenchmarks) in
Dylan.

JSON Response
-------------

* The message object is instantiated as a new object
* The message is rendered with a [JSON
  serializer](https://github.com/dylan-foundry/serialization)
* The Content-Type is application/json
* The response message is {"message":"Hello, World!"}

Running the benchmark
---------------------

For example use `ab`:

    ab -n 1000 -c 10 http://127.0.0.1:8888/json

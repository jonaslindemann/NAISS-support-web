Kyoto Cabinet is a library of routines for managing a database.
The database is a simple data file containing records, each is a pair of a key and a value.
More information can be found
[at the Kyoto Cabinet homepage](https://fallabs.com/kyotocabinet/)


## How to use

You can load the module using

```bash
module load kyotocabinet/1.2.76
```

As an example, we can compile and link a code (here `example.cc`)
after loading the module like this

```bash
g++ `kcutilmgr conf -i` -o example example.cc `kcutilmgr conf -l`
```

Alternatively:

<!-- markdownlint-disable MD013 --><!-- Verbatim code one-liners cannot be split up over lines, hence will break 80 characters per line -->

```bash
g++ -o example example.cc -I/pdc/vol/kyotocabinet/1.2.76/include -L/pdc/vol/kyotocabinet/1.2.76/lib -lkyotocabinet
```

<!-- markdownlint-enable MD013 -->

Using either way to compile, we can run the example as such:

```bash
./example
```

More examples can be found at
[the Kyoto Cabinat examples page](https://fallabs.com/kyotocabinet/spex.html).

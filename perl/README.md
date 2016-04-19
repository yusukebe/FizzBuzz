# yusukebe/FizzBuzz/perl

## Prerequisites

* Perl
* Carton
* Test::Pretty
* Test::Name::FromLine

## Install

```
$ carton install --deployment
```

## Test

```
$ prove
```

If you want to get coverage, run as below:

```
$ prove --rc .proverc_with_cover
$ cover -report html
$ open ./cover_db/coverage.html 
```

## Screenshot

![prove](https://cloud.githubusercontent.com/assets/10682/14633691/bc4ac212-0659-11e6-89fd-c2c0d3ab76f9.png)

## See Also

* <https://metacpan.org/pod/Test::More>
* <https://metacpan.org/release/Mojolicious>

## Author

* Yusuke Wada <http://github.com/yusukebe>


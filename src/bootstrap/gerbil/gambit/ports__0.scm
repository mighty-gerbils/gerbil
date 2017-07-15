(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda391396_
           (lambda (_str393_ _port394_)
             (write-substring
              _str393_
              '0
              (string-length _str393_)
              _port394_))))
      (lambda _g503_
        (let ((_g502_ (length _g503_)))
          (cond ((fx= _g502_ 1)
                 (apply (lambda (_str399_)
                          (let ((_port401_ (current-output-port)))
                            (_opt-lambda391396_ _str399_ _port401_)))
                        _g503_))
                ((fx= _g502_ 2) (apply _opt-lambda391396_ _g503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g503_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda377382_
           (lambda (_str379_ _port380_)
             (read-substring _str379_ '0 (string-length _str379_) _port380_))))
      (lambda _g505_
        (let ((_g504_ (length _g505_)))
          (cond ((fx= _g504_ 1)
                 (apply (lambda (_str385_)
                          (let ((_port387_ (current-input-port)))
                            (_opt-lambda377382_ _str385_ _port387_)))
                        _g505_))
                ((fx= _g504_ 2) (apply _opt-lambda377382_ _g505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g505_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda363368_
           (lambda (_bytes365_ _port366_)
             (write-subu8vector
              _bytes365_
              '0
              (u8vector-length _bytes365_)
              _port366_))))
      (lambda _g507_
        (let ((_g506_ (length _g507_)))
          (cond ((fx= _g506_ 1)
                 (apply (lambda (_bytes371_)
                          (let ((_port373_ (current-output-port)))
                            (_opt-lambda363368_ _bytes371_ _port373_)))
                        _g507_))
                ((fx= _g506_ 2) (apply _opt-lambda363368_ _g507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g507_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda349354_
           (lambda (_bytes351_ _port352_)
             (read-subu8vector
              _bytes351_
              '0
              (u8vector-length _bytes351_)
              _port352_))))
      (lambda _g509_
        (let ((_g508_ (length _g509_)))
          (cond ((fx= _g508_ 1)
                 (apply (lambda (_bytes357_)
                          (let ((_port359_ (current-input-port)))
                            (_opt-lambda349354_ _bytes357_ _port359_)))
                        _g509_))
                ((fx= _g508_ 2) (apply _opt-lambda349354_ _g509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g509_))))))))

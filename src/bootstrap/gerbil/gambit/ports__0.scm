(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda402407_
           (lambda (_str404_ _port405_)
             (write-substring
              _str404_
              '0
              (string-length _str404_)
              _port405_))))
      (lambda _g514_
        (let ((_g513_ (length _g514_)))
          (cond ((fx= _g513_ 1)
                 (apply (lambda (_str410_)
                          (let ((_port412_ (current-output-port)))
                            (_opt-lambda402407_ _str410_ _port412_)))
                        _g514_))
                ((fx= _g513_ 2) (apply _opt-lambda402407_ _g514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g514_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda388393_
           (lambda (_str390_ _port391_)
             (read-substring _str390_ '0 (string-length _str390_) _port391_))))
      (lambda _g516_
        (let ((_g515_ (length _g516_)))
          (cond ((fx= _g515_ 1)
                 (apply (lambda (_str396_)
                          (let ((_port398_ (current-input-port)))
                            (_opt-lambda388393_ _str396_ _port398_)))
                        _g516_))
                ((fx= _g515_ 2) (apply _opt-lambda388393_ _g516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g516_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda374379_
           (lambda (_bytes376_ _port377_)
             (write-subu8vector
              _bytes376_
              '0
              (u8vector-length _bytes376_)
              _port377_))))
      (lambda _g518_
        (let ((_g517_ (length _g518_)))
          (cond ((fx= _g517_ 1)
                 (apply (lambda (_bytes382_)
                          (let ((_port384_ (current-output-port)))
                            (_opt-lambda374379_ _bytes382_ _port384_)))
                        _g518_))
                ((fx= _g517_ 2) (apply _opt-lambda374379_ _g518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g518_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda360365_
           (lambda (_bytes362_ _port363_)
             (read-subu8vector
              _bytes362_
              '0
              (u8vector-length _bytes362_)
              _port363_))))
      (lambda _g520_
        (let ((_g519_ (length _g520_)))
          (cond ((fx= _g519_ 1)
                 (apply (lambda (_bytes368_)
                          (let ((_port370_ (current-input-port)))
                            (_opt-lambda360365_ _bytes368_ _port370_)))
                        _g520_))
                ((fx= _g519_ 2) (apply _opt-lambda360365_ _g520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g520_))))))))

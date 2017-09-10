(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda403408_
           (lambda (_str405_ _port406_)
             (write-substring
              _str405_
              '0
              (string-length _str405_)
              _port406_))))
      (lambda _g515_
        (let ((_g514_ (length _g515_)))
          (cond ((fx= _g514_ 1)
                 (apply (lambda (_str411_)
                          (let ((_port413_ (current-output-port)))
                            (_opt-lambda403408_ _str411_ _port413_)))
                        _g515_))
                ((fx= _g514_ 2) (apply _opt-lambda403408_ _g515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g515_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda389394_
           (lambda (_str391_ _port392_)
             (read-substring _str391_ '0 (string-length _str391_) _port392_))))
      (lambda _g517_
        (let ((_g516_ (length _g517_)))
          (cond ((fx= _g516_ 1)
                 (apply (lambda (_str397_)
                          (let ((_port399_ (current-input-port)))
                            (_opt-lambda389394_ _str397_ _port399_)))
                        _g517_))
                ((fx= _g516_ 2) (apply _opt-lambda389394_ _g517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g517_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda375380_
           (lambda (_bytes377_ _port378_)
             (write-subu8vector
              _bytes377_
              '0
              (u8vector-length _bytes377_)
              _port378_))))
      (lambda _g519_
        (let ((_g518_ (length _g519_)))
          (cond ((fx= _g518_ 1)
                 (apply (lambda (_bytes383_)
                          (let ((_port385_ (current-output-port)))
                            (_opt-lambda375380_ _bytes383_ _port385_)))
                        _g519_))
                ((fx= _g518_ 2) (apply _opt-lambda375380_ _g519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g519_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda361366_
           (lambda (_bytes363_ _port364_)
             (read-subu8vector
              _bytes363_
              '0
              (u8vector-length _bytes363_)
              _port364_))))
      (lambda _g521_
        (let ((_g520_ (length _g521_)))
          (cond ((fx= _g520_ 1)
                 (apply (lambda (_bytes369_)
                          (let ((_port371_ (current-input-port)))
                            (_opt-lambda361366_ _bytes369_ _port371_)))
                        _g521_))
                ((fx= _g520_ 2) (apply _opt-lambda361366_ _g521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g521_))))))))

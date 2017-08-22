(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda396401_
           (lambda (_str398_ _port399_)
             (write-substring
              _str398_
              '0
              (string-length _str398_)
              _port399_))))
      (lambda _g508_
        (let ((_g507_ (length _g508_)))
          (cond ((fx= _g507_ 1)
                 (apply (lambda (_str404_)
                          (let ((_port406_ (current-output-port)))
                            (_opt-lambda396401_ _str404_ _port406_)))
                        _g508_))
                ((fx= _g507_ 2) (apply _opt-lambda396401_ _g508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g508_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda382387_
           (lambda (_str384_ _port385_)
             (read-substring _str384_ '0 (string-length _str384_) _port385_))))
      (lambda _g510_
        (let ((_g509_ (length _g510_)))
          (cond ((fx= _g509_ 1)
                 (apply (lambda (_str390_)
                          (let ((_port392_ (current-input-port)))
                            (_opt-lambda382387_ _str390_ _port392_)))
                        _g510_))
                ((fx= _g509_ 2) (apply _opt-lambda382387_ _g510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g510_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda368373_
           (lambda (_bytes370_ _port371_)
             (write-subu8vector
              _bytes370_
              '0
              (u8vector-length _bytes370_)
              _port371_))))
      (lambda _g512_
        (let ((_g511_ (length _g512_)))
          (cond ((fx= _g511_ 1)
                 (apply (lambda (_bytes376_)
                          (let ((_port378_ (current-output-port)))
                            (_opt-lambda368373_ _bytes376_ _port378_)))
                        _g512_))
                ((fx= _g511_ 2) (apply _opt-lambda368373_ _g512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g512_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda354359_
           (lambda (_bytes356_ _port357_)
             (read-subu8vector
              _bytes356_
              '0
              (u8vector-length _bytes356_)
              _port357_))))
      (lambda _g514_
        (let ((_g513_ (length _g514_)))
          (cond ((fx= _g513_ 1)
                 (apply (lambda (_bytes362_)
                          (let ((_port364_ (current-input-port)))
                            (_opt-lambda354359_ _bytes362_ _port364_)))
                        _g514_))
                ((fx= _g513_ 2) (apply _opt-lambda354359_ _g514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g514_))))))))

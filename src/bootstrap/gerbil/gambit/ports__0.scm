(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda399404_
           (lambda (_str401_ _port402_)
             (write-substring
              _str401_
              '0
              (string-length _str401_)
              _port402_))))
      (lambda _g511_
        (let ((_g510_ (length _g511_)))
          (cond ((fx= _g510_ 1)
                 (apply (lambda (_str407_)
                          (let ((_port409_ (current-output-port)))
                            (_opt-lambda399404_ _str407_ _port409_)))
                        _g511_))
                ((fx= _g510_ 2) (apply _opt-lambda399404_ _g511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g511_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda385390_
           (lambda (_str387_ _port388_)
             (read-substring _str387_ '0 (string-length _str387_) _port388_))))
      (lambda _g513_
        (let ((_g512_ (length _g513_)))
          (cond ((fx= _g512_ 1)
                 (apply (lambda (_str393_)
                          (let ((_port395_ (current-input-port)))
                            (_opt-lambda385390_ _str393_ _port395_)))
                        _g513_))
                ((fx= _g512_ 2) (apply _opt-lambda385390_ _g513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g513_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda371376_
           (lambda (_bytes373_ _port374_)
             (write-subu8vector
              _bytes373_
              '0
              (u8vector-length _bytes373_)
              _port374_))))
      (lambda _g515_
        (let ((_g514_ (length _g515_)))
          (cond ((fx= _g514_ 1)
                 (apply (lambda (_bytes379_)
                          (let ((_port381_ (current-output-port)))
                            (_opt-lambda371376_ _bytes379_ _port381_)))
                        _g515_))
                ((fx= _g514_ 2) (apply _opt-lambda371376_ _g515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g515_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda357362_
           (lambda (_bytes359_ _port360_)
             (read-subu8vector
              _bytes359_
              '0
              (u8vector-length _bytes359_)
              _port360_))))
      (lambda _g517_
        (let ((_g516_ (length _g517_)))
          (cond ((fx= _g516_ 1)
                 (apply (lambda (_bytes365_)
                          (let ((_port367_ (current-input-port)))
                            (_opt-lambda357362_ _bytes365_ _port367_)))
                        _g517_))
                ((fx= _g516_ 2) (apply _opt-lambda357362_ _g517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g517_))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda381386_
           (lambda (_str383_ _port384_)
             (write-substring
              _str383_
              '0
              (string-length _str383_)
              _port384_))))
      (lambda _g493_
        (let ((_g492_ (length _g493_)))
          (cond ((fx= _g492_ 1)
                 (apply (lambda (_str389_)
                          (let ((_port391_ (current-output-port)))
                            (_opt-lambda381386_ _str389_ _port391_)))
                        _g493_))
                ((fx= _g492_ 2) (apply _opt-lambda381386_ _g493_))
                (else (error "No clause matching arguments" _g493_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda367372_
           (lambda (_str369_ _port370_)
             (read-substring _str369_ '0 (string-length _str369_) _port370_))))
      (lambda _g495_
        (let ((_g494_ (length _g495_)))
          (cond ((fx= _g494_ 1)
                 (apply (lambda (_str375_)
                          (let ((_port377_ (current-input-port)))
                            (_opt-lambda367372_ _str375_ _port377_)))
                        _g495_))
                ((fx= _g494_ 2) (apply _opt-lambda367372_ _g495_))
                (else (error "No clause matching arguments" _g495_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda353358_
           (lambda (_bytes355_ _port356_)
             (write-subu8vector
              _bytes355_
              '0
              (u8vector-length _bytes355_)
              _port356_))))
      (lambda _g497_
        (let ((_g496_ (length _g497_)))
          (cond ((fx= _g496_ 1)
                 (apply (lambda (_bytes361_)
                          (let ((_port363_ (current-output-port)))
                            (_opt-lambda353358_ _bytes361_ _port363_)))
                        _g497_))
                ((fx= _g496_ 2) (apply _opt-lambda353358_ _g497_))
                (else (error "No clause matching arguments" _g497_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda339344_
           (lambda (_bytes341_ _port342_)
             (read-subu8vector
              _bytes341_
              '0
              (u8vector-length _bytes341_)
              _port342_))))
      (lambda _g499_
        (let ((_g498_ (length _g499_)))
          (cond ((fx= _g498_ 1)
                 (apply (lambda (_bytes347_)
                          (let ((_port349_ (current-input-port)))
                            (_opt-lambda339344_ _bytes347_ _port349_)))
                        _g499_))
                ((fx= _g498_ 2) (apply _opt-lambda339344_ _g499_))
                (else (error "No clause matching arguments" _g499_))))))))

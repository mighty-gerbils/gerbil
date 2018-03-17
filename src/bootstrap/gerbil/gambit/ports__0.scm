(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda630635_
           (lambda (_str632_ _port633_)
             (write-substring
              _str632_
              '0
              (string-length _str632_)
              _port633_))))
      (lambda _g645_
        (let ((_g644_ (length _g645_)))
          (cond ((##fx= _g644_ 1)
                 (apply (lambda (_str638_)
                          (let ((_port640_ (current-output-port)))
                            (_opt-lambda630635_ _str638_ _port640_)))
                        _g645_))
                ((##fx= _g644_ 2) (apply _opt-lambda630635_ _g645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g645_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda616621_
           (lambda (_str618_ _port619_)
             (read-substring _str618_ '0 (string-length _str618_) _port619_))))
      (lambda _g647_
        (let ((_g646_ (length _g647_)))
          (cond ((##fx= _g646_ 1)
                 (apply (lambda (_str624_)
                          (let ((_port626_ (current-input-port)))
                            (_opt-lambda616621_ _str624_ _port626_)))
                        _g647_))
                ((##fx= _g646_ 2) (apply _opt-lambda616621_ _g647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g647_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda602607_
           (lambda (_bytes604_ _port605_)
             (write-subu8vector
              _bytes604_
              '0
              (u8vector-length _bytes604_)
              _port605_))))
      (lambda _g649_
        (let ((_g648_ (length _g649_)))
          (cond ((##fx= _g648_ 1)
                 (apply (lambda (_bytes610_)
                          (let ((_port612_ (current-output-port)))
                            (_opt-lambda602607_ _bytes610_ _port612_)))
                        _g649_))
                ((##fx= _g648_ 2) (apply _opt-lambda602607_ _g649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g649_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda588593_
           (lambda (_bytes590_ _port591_)
             (read-subu8vector
              _bytes590_
              '0
              (u8vector-length _bytes590_)
              _port591_))))
      (lambda _g651_
        (let ((_g650_ (length _g651_)))
          (cond ((##fx= _g650_ 1)
                 (apply (lambda (_bytes596_)
                          (let ((_port598_ (current-input-port)))
                            (_opt-lambda588593_ _bytes596_ _port598_)))
                        _g651_))
                ((##fx= _g650_ 2) (apply _opt-lambda588593_ _g651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g651_))))))))

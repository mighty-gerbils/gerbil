(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda596601_
           (lambda (_str598_ _port599_)
             (write-substring
              _str598_
              '0
              (string-length _str598_)
              _port599_))))
      (lambda _g611_
        (let ((_g610_ (length _g611_)))
          (cond ((fx= _g610_ 1)
                 (apply (lambda (_str604_)
                          (let ((_port606_ (current-output-port)))
                            (_opt-lambda596601_ _str604_ _port606_)))
                        _g611_))
                ((fx= _g610_ 2) (apply _opt-lambda596601_ _g611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g611_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda582587_
           (lambda (_str584_ _port585_)
             (read-substring _str584_ '0 (string-length _str584_) _port585_))))
      (lambda _g613_
        (let ((_g612_ (length _g613_)))
          (cond ((fx= _g612_ 1)
                 (apply (lambda (_str590_)
                          (let ((_port592_ (current-input-port)))
                            (_opt-lambda582587_ _str590_ _port592_)))
                        _g613_))
                ((fx= _g612_ 2) (apply _opt-lambda582587_ _g613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g613_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda568573_
           (lambda (_bytes570_ _port571_)
             (write-subu8vector
              _bytes570_
              '0
              (u8vector-length _bytes570_)
              _port571_))))
      (lambda _g615_
        (let ((_g614_ (length _g615_)))
          (cond ((fx= _g614_ 1)
                 (apply (lambda (_bytes576_)
                          (let ((_port578_ (current-output-port)))
                            (_opt-lambda568573_ _bytes576_ _port578_)))
                        _g615_))
                ((fx= _g614_ 2) (apply _opt-lambda568573_ _g615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g615_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda554559_
           (lambda (_bytes556_ _port557_)
             (read-subu8vector
              _bytes556_
              '0
              (u8vector-length _bytes556_)
              _port557_))))
      (lambda _g617_
        (let ((_g616_ (length _g617_)))
          (cond ((fx= _g616_ 1)
                 (apply (lambda (_bytes562_)
                          (let ((_port564_ (current-input-port)))
                            (_opt-lambda554559_ _bytes562_ _port564_)))
                        _g617_))
                ((fx= _g616_ 2) (apply _opt-lambda554559_ _g617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g617_))))))))

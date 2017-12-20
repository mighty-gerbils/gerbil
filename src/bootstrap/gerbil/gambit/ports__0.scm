(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda572577_
           (lambda (_str574_ _port575_)
             (write-substring
              _str574_
              '0
              (string-length _str574_)
              _port575_))))
      (lambda _g587_
        (let ((_g586_ (length _g587_)))
          (cond ((fx= _g586_ 1)
                 (apply (lambda (_str580_)
                          (let ((_port582_ (current-output-port)))
                            (_opt-lambda572577_ _str580_ _port582_)))
                        _g587_))
                ((fx= _g586_ 2) (apply _opt-lambda572577_ _g587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g587_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda558563_
           (lambda (_str560_ _port561_)
             (read-substring _str560_ '0 (string-length _str560_) _port561_))))
      (lambda _g589_
        (let ((_g588_ (length _g589_)))
          (cond ((fx= _g588_ 1)
                 (apply (lambda (_str566_)
                          (let ((_port568_ (current-input-port)))
                            (_opt-lambda558563_ _str566_ _port568_)))
                        _g589_))
                ((fx= _g588_ 2) (apply _opt-lambda558563_ _g589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g589_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda544549_
           (lambda (_bytes546_ _port547_)
             (write-subu8vector
              _bytes546_
              '0
              (u8vector-length _bytes546_)
              _port547_))))
      (lambda _g591_
        (let ((_g590_ (length _g591_)))
          (cond ((fx= _g590_ 1)
                 (apply (lambda (_bytes552_)
                          (let ((_port554_ (current-output-port)))
                            (_opt-lambda544549_ _bytes552_ _port554_)))
                        _g591_))
                ((fx= _g590_ 2) (apply _opt-lambda544549_ _g591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g591_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda530535_
           (lambda (_bytes532_ _port533_)
             (read-subu8vector
              _bytes532_
              '0
              (u8vector-length _bytes532_)
              _port533_))))
      (lambda _g593_
        (let ((_g592_ (length _g593_)))
          (cond ((fx= _g592_ 1)
                 (apply (lambda (_bytes538_)
                          (let ((_port540_ (current-input-port)))
                            (_opt-lambda530535_ _bytes538_ _port540_)))
                        _g593_))
                ((fx= _g592_ 2) (apply _opt-lambda530535_ _g593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g593_))))))))

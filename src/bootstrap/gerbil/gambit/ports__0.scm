(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda575580_
           (lambda (_str577_ _port578_)
             (write-substring
              _str577_
              '0
              (string-length _str577_)
              _port578_))))
      (lambda _g590_
        (let ((_g589_ (length _g590_)))
          (cond ((fx= _g589_ 1)
                 (apply (lambda (_str583_)
                          (let ((_port585_ (current-output-port)))
                            (_opt-lambda575580_ _str583_ _port585_)))
                        _g590_))
                ((fx= _g589_ 2) (apply _opt-lambda575580_ _g590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g590_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda561566_
           (lambda (_str563_ _port564_)
             (read-substring _str563_ '0 (string-length _str563_) _port564_))))
      (lambda _g592_
        (let ((_g591_ (length _g592_)))
          (cond ((fx= _g591_ 1)
                 (apply (lambda (_str569_)
                          (let ((_port571_ (current-input-port)))
                            (_opt-lambda561566_ _str569_ _port571_)))
                        _g592_))
                ((fx= _g591_ 2) (apply _opt-lambda561566_ _g592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g592_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda547552_
           (lambda (_bytes549_ _port550_)
             (write-subu8vector
              _bytes549_
              '0
              (u8vector-length _bytes549_)
              _port550_))))
      (lambda _g594_
        (let ((_g593_ (length _g594_)))
          (cond ((fx= _g593_ 1)
                 (apply (lambda (_bytes555_)
                          (let ((_port557_ (current-output-port)))
                            (_opt-lambda547552_ _bytes555_ _port557_)))
                        _g594_))
                ((fx= _g593_ 2) (apply _opt-lambda547552_ _g594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g594_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda533538_
           (lambda (_bytes535_ _port536_)
             (read-subu8vector
              _bytes535_
              '0
              (u8vector-length _bytes535_)
              _port536_))))
      (lambda _g596_
        (let ((_g595_ (length _g596_)))
          (cond ((fx= _g595_ 1)
                 (apply (lambda (_bytes541_)
                          (let ((_port543_ (current-input-port)))
                            (_opt-lambda533538_ _bytes541_ _port543_)))
                        _g596_))
                ((fx= _g595_ 2) (apply _opt-lambda533538_ _g596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g596_))))))))

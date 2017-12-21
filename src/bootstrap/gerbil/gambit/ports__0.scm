(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda573578_
           (lambda (_str575_ _port576_)
             (write-substring
              _str575_
              '0
              (string-length _str575_)
              _port576_))))
      (lambda _g588_
        (let ((_g587_ (length _g588_)))
          (cond ((fx= _g587_ 1)
                 (apply (lambda (_str581_)
                          (let ((_port583_ (current-output-port)))
                            (_opt-lambda573578_ _str581_ _port583_)))
                        _g588_))
                ((fx= _g587_ 2) (apply _opt-lambda573578_ _g588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g588_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda559564_
           (lambda (_str561_ _port562_)
             (read-substring _str561_ '0 (string-length _str561_) _port562_))))
      (lambda _g590_
        (let ((_g589_ (length _g590_)))
          (cond ((fx= _g589_ 1)
                 (apply (lambda (_str567_)
                          (let ((_port569_ (current-input-port)))
                            (_opt-lambda559564_ _str567_ _port569_)))
                        _g590_))
                ((fx= _g589_ 2) (apply _opt-lambda559564_ _g590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g590_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda545550_
           (lambda (_bytes547_ _port548_)
             (write-subu8vector
              _bytes547_
              '0
              (u8vector-length _bytes547_)
              _port548_))))
      (lambda _g592_
        (let ((_g591_ (length _g592_)))
          (cond ((fx= _g591_ 1)
                 (apply (lambda (_bytes553_)
                          (let ((_port555_ (current-output-port)))
                            (_opt-lambda545550_ _bytes553_ _port555_)))
                        _g592_))
                ((fx= _g591_ 2) (apply _opt-lambda545550_ _g592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g592_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda531536_
           (lambda (_bytes533_ _port534_)
             (read-subu8vector
              _bytes533_
              '0
              (u8vector-length _bytes533_)
              _port534_))))
      (lambda _g594_
        (let ((_g593_ (length _g594_)))
          (cond ((fx= _g593_ 1)
                 (apply (lambda (_bytes539_)
                          (let ((_port541_ (current-input-port)))
                            (_opt-lambda531536_ _bytes539_ _port541_)))
                        _g594_))
                ((fx= _g593_ 2) (apply _opt-lambda531536_ _g594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g594_))))))))

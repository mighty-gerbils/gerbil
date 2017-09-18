(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda570575_
           (lambda (_str572_ _port573_)
             (write-substring
              _str572_
              '0
              (string-length _str572_)
              _port573_))))
      (lambda _g585_
        (let ((_g584_ (length _g585_)))
          (cond ((fx= _g584_ 1)
                 (apply (lambda (_str578_)
                          (let ((_port580_ (current-output-port)))
                            (_opt-lambda570575_ _str578_ _port580_)))
                        _g585_))
                ((fx= _g584_ 2) (apply _opt-lambda570575_ _g585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g585_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda556561_
           (lambda (_str558_ _port559_)
             (read-substring _str558_ '0 (string-length _str558_) _port559_))))
      (lambda _g587_
        (let ((_g586_ (length _g587_)))
          (cond ((fx= _g586_ 1)
                 (apply (lambda (_str564_)
                          (let ((_port566_ (current-input-port)))
                            (_opt-lambda556561_ _str564_ _port566_)))
                        _g587_))
                ((fx= _g586_ 2) (apply _opt-lambda556561_ _g587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g587_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda542547_
           (lambda (_bytes544_ _port545_)
             (write-subu8vector
              _bytes544_
              '0
              (u8vector-length _bytes544_)
              _port545_))))
      (lambda _g589_
        (let ((_g588_ (length _g589_)))
          (cond ((fx= _g588_ 1)
                 (apply (lambda (_bytes550_)
                          (let ((_port552_ (current-output-port)))
                            (_opt-lambda542547_ _bytes550_ _port552_)))
                        _g589_))
                ((fx= _g588_ 2) (apply _opt-lambda542547_ _g589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g589_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda528533_
           (lambda (_bytes530_ _port531_)
             (read-subu8vector
              _bytes530_
              '0
              (u8vector-length _bytes530_)
              _port531_))))
      (lambda _g591_
        (let ((_g590_ (length _g591_)))
          (cond ((fx= _g590_ 1)
                 (apply (lambda (_bytes536_)
                          (let ((_port538_ (current-input-port)))
                            (_opt-lambda528533_ _bytes536_ _port538_)))
                        _g591_))
                ((fx= _g590_ 2) (apply _opt-lambda528533_ _g591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g591_))))))))

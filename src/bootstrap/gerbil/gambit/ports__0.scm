(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda629634_
           (lambda (_str631_ _port632_)
             (write-substring
              _str631_
              '0
              (string-length _str631_)
              _port632_))))
      (lambda _g644_
        (let ((_g643_ (length _g644_)))
          (cond ((##fx= _g643_ 1)
                 (apply (lambda (_str637_)
                          (let ((_port639_ (current-output-port)))
                            (_opt-lambda629634_ _str637_ _port639_)))
                        _g644_))
                ((##fx= _g643_ 2) (apply _opt-lambda629634_ _g644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g644_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda615620_
           (lambda (_str617_ _port618_)
             (read-substring _str617_ '0 (string-length _str617_) _port618_))))
      (lambda _g646_
        (let ((_g645_ (length _g646_)))
          (cond ((##fx= _g645_ 1)
                 (apply (lambda (_str623_)
                          (let ((_port625_ (current-input-port)))
                            (_opt-lambda615620_ _str623_ _port625_)))
                        _g646_))
                ((##fx= _g645_ 2) (apply _opt-lambda615620_ _g646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g646_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda601606_
           (lambda (_bytes603_ _port604_)
             (write-subu8vector
              _bytes603_
              '0
              (u8vector-length _bytes603_)
              _port604_))))
      (lambda _g648_
        (let ((_g647_ (length _g648_)))
          (cond ((##fx= _g647_ 1)
                 (apply (lambda (_bytes609_)
                          (let ((_port611_ (current-output-port)))
                            (_opt-lambda601606_ _bytes609_ _port611_)))
                        _g648_))
                ((##fx= _g647_ 2) (apply _opt-lambda601606_ _g648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g648_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda587592_
           (lambda (_bytes589_ _port590_)
             (read-subu8vector
              _bytes589_
              '0
              (u8vector-length _bytes589_)
              _port590_))))
      (lambda _g650_
        (let ((_g649_ (length _g650_)))
          (cond ((##fx= _g649_ 1)
                 (apply (lambda (_bytes595_)
                          (let ((_port597_ (current-input-port)))
                            (_opt-lambda587592_ _bytes595_ _port597_)))
                        _g650_))
                ((##fx= _g649_ 2) (apply _opt-lambda587592_ _g650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g650_))))))))

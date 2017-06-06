(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda390395_
           (lambda (_str392_ _port393_)
             (write-substring
              _str392_
              '0
              (string-length _str392_)
              _port393_))))
      (lambda _g502_
        (let ((_g501_ (length _g502_)))
          (cond ((fx= _g501_ 1)
                 (apply (lambda (_str398_)
                          (let ((_port400_ (current-output-port)))
                            (_opt-lambda390395_ _str398_ _port400_)))
                        _g502_))
                ((fx= _g501_ 2) (apply _opt-lambda390395_ _g502_))
                (else (error "No clause matching arguments" _g502_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda376381_
           (lambda (_str378_ _port379_)
             (read-substring _str378_ '0 (string-length _str378_) _port379_))))
      (lambda _g504_
        (let ((_g503_ (length _g504_)))
          (cond ((fx= _g503_ 1)
                 (apply (lambda (_str384_)
                          (let ((_port386_ (current-input-port)))
                            (_opt-lambda376381_ _str384_ _port386_)))
                        _g504_))
                ((fx= _g503_ 2) (apply _opt-lambda376381_ _g504_))
                (else (error "No clause matching arguments" _g504_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda362367_
           (lambda (_bytes364_ _port365_)
             (write-subu8vector
              _bytes364_
              '0
              (u8vector-length _bytes364_)
              _port365_))))
      (lambda _g506_
        (let ((_g505_ (length _g506_)))
          (cond ((fx= _g505_ 1)
                 (apply (lambda (_bytes370_)
                          (let ((_port372_ (current-output-port)))
                            (_opt-lambda362367_ _bytes370_ _port372_)))
                        _g506_))
                ((fx= _g505_ 2) (apply _opt-lambda362367_ _g506_))
                (else (error "No clause matching arguments" _g506_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda348353_
           (lambda (_bytes350_ _port351_)
             (read-subu8vector
              _bytes350_
              '0
              (u8vector-length _bytes350_)
              _port351_))))
      (lambda _g508_
        (let ((_g507_ (length _g508_)))
          (cond ((fx= _g507_ 1)
                 (apply (lambda (_bytes356_)
                          (let ((_port358_ (current-input-port)))
                            (_opt-lambda348353_ _bytes356_ _port358_)))
                        _g508_))
                ((fx= _g507_ 2) (apply _opt-lambda348353_ _g508_))
                (else (error "No clause matching arguments" _g508_))))))))

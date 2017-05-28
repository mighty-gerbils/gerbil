(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda463468_
           (lambda (_str465_ _port466_)
             (write-substring
              _str465_
              '0
              (string-length _str465_)
              _port466_))))
      (lambda _g478_
        (let ((_g477_ (length _g478_)))
          (cond ((fx= _g477_ 1)
                 (apply (lambda (_str471_)
                          (let ((_port473_ (current-output-port)))
                            (_opt-lambda463468_ _str471_ _port473_)))
                        _g478_))
                ((fx= _g477_ 2) (apply _opt-lambda463468_ _g478_))
                (else (error "No clause matching arguments" _g478_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda449454_
           (lambda (_str451_ _port452_)
             (read-substring _str451_ '0 (string-length _str451_) _port452_))))
      (lambda _g480_
        (let ((_g479_ (length _g480_)))
          (cond ((fx= _g479_ 1)
                 (apply (lambda (_str457_)
                          (let ((_port459_ (current-input-port)))
                            (_opt-lambda449454_ _str457_ _port459_)))
                        _g480_))
                ((fx= _g479_ 2) (apply _opt-lambda449454_ _g480_))
                (else (error "No clause matching arguments" _g480_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda435440_
           (lambda (_bytes437_ _port438_)
             (write-subu8vector
              _bytes437_
              '0
              (u8vector-length _bytes437_)
              _port438_))))
      (lambda _g482_
        (let ((_g481_ (length _g482_)))
          (cond ((fx= _g481_ 1)
                 (apply (lambda (_bytes443_)
                          (let ((_port445_ (current-output-port)))
                            (_opt-lambda435440_ _bytes443_ _port445_)))
                        _g482_))
                ((fx= _g481_ 2) (apply _opt-lambda435440_ _g482_))
                (else (error "No clause matching arguments" _g482_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda421426_
           (lambda (_bytes423_ _port424_)
             (read-subu8vector
              _bytes423_
              '0
              (u8vector-length _bytes423_)
              _port424_))))
      (lambda _g484_
        (let ((_g483_ (length _g484_)))
          (cond ((fx= _g483_ 1)
                 (apply (lambda (_bytes429_)
                          (let ((_port431_ (current-input-port)))
                            (_opt-lambda421426_ _bytes429_ _port431_)))
                        _g484_))
                ((fx= _g483_ 2) (apply _opt-lambda421426_ _g484_))
                (else (error "No clause matching arguments" _g484_))))))))

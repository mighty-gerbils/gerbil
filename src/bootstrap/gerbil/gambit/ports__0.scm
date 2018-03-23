(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda640645_
           (lambda (_str642_ _port643_)
             (write-substring
              _str642_
              '0
              (string-length _str642_)
              _port643_))))
      (lambda _g655_
        (let ((_g654_ (length _g655_)))
          (cond ((##fx= _g654_ 1)
                 (apply (lambda (_str648_)
                          (let ((_port650_ (current-output-port)))
                            (_opt-lambda640645_ _str648_ _port650_)))
                        _g655_))
                ((##fx= _g654_ 2) (apply _opt-lambda640645_ _g655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g655_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda621631_
           (lambda (_obj623_ _port624_)
             (if (fixnum? _obj623_)
                 (begin
                   (if (##fx> _obj623_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj623_))
                   (let* ((_str626_ (make-string _obj623_))
                          (_rd628_ (read-substring
                                    _str626_
                                    '0
                                    _obj623_
                                    _port624_)))
                     (if (##fxzero? _rd628_)
                         (eof-object)
                         (if (##fx< _rd628_ _obj623_)
                             (begin (string-shrink! _str626_ _rd628_) _str626_)
                             _str626_))))
                 (if (string? _obj623_)
                     (read-substring
                      _obj623_
                      '0
                      (##string-length _obj623_)
                      _port624_)
                     (error '"Bad argument; expected string or positive fixnum"
                            _obj623_))))))
      (lambda _g657_
        (let ((_g656_ (length _g657_)))
          (cond ((##fx= _g656_ 1)
                 (apply (lambda (_obj634_)
                          (let ((_port636_ (current-input-port)))
                            (_opt-lambda621631_ _obj634_ _port636_)))
                        _g657_))
                ((##fx= _g656_ 2) (apply _opt-lambda621631_ _g657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g657_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda607612_
           (lambda (_bytes609_ _port610_)
             (write-subu8vector
              _bytes609_
              '0
              (u8vector-length _bytes609_)
              _port610_))))
      (lambda _g659_
        (let ((_g658_ (length _g659_)))
          (cond ((##fx= _g658_ 1)
                 (apply (lambda (_bytes615_)
                          (let ((_port617_ (current-output-port)))
                            (_opt-lambda607612_ _bytes615_ _port617_)))
                        _g659_))
                ((##fx= _g658_ 2) (apply _opt-lambda607612_ _g659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g659_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda588598_
           (lambda (_obj590_ _port591_)
             (if (fixnum? _obj590_)
                 (begin
                   (if (##fx> _obj590_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj590_))
                   (let* ((_bytes593_ (make-u8vector _obj590_))
                          (_rd595_ (read-subu8vector
                                    _bytes593_
                                    '0
                                    _obj590_
                                    _port591_)))
                     (if (##fxzero? _rd595_)
                         (eof-object)
                         (if (##fx< _rd595_ _obj590_)
                             (begin
                               (u8vector-shrink! _bytes593_ _rd595_)
                               _bytes593_)
                             _bytes593_))))
                 (if (u8vector? _obj590_)
                     (read-subu8vector
                      _obj590_
                      '0
                      (##u8vector-length _obj590_)
                      _port591_)
                     (error '"Bad argument; expected u8vector or positive fixnum"
                            _obj590_))))))
      (lambda _g661_
        (let ((_g660_ (length _g661_)))
          (cond ((##fx= _g660_ 1)
                 (apply (lambda (_obj601_)
                          (let ((_port603_ (current-input-port)))
                            (_opt-lambda588598_ _obj601_ _port603_)))
                        _g661_))
                ((##fx= _g660_ 2) (apply _opt-lambda588598_ _g661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g661_))))))))

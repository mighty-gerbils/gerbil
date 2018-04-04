(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda638643_
           (lambda (_str640_ _port641_)
             (write-substring
              _str640_
              '0
              (string-length _str640_)
              _port641_))))
      (lambda _g653_
        (let ((_g652_ (length _g653_)))
          (cond ((##fx= _g652_ 1)
                 (apply (lambda (_str646_)
                          (let ((_port648_ (current-output-port)))
                            (_opt-lambda638643_ _str646_ _port648_)))
                        _g653_))
                ((##fx= _g652_ 2) (apply _opt-lambda638643_ _g653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g653_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda619629_
           (lambda (_obj621_ _port622_)
             (if (fixnum? _obj621_)
                 (begin
                   (if (##fx> _obj621_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj621_))
                   (let* ((_str624_ (make-string _obj621_))
                          (_rd626_ (read-substring
                                    _str624_
                                    '0
                                    _obj621_
                                    _port622_)))
                     (if (##fxzero? _rd626_)
                         (eof-object)
                         (if (##fx< _rd626_ _obj621_)
                             (begin (string-shrink! _str624_ _rd626_) _str624_)
                             _str624_))))
                 (if (string? _obj621_)
                     (read-substring
                      _obj621_
                      '0
                      (##string-length _obj621_)
                      _port622_)
                     (error '"Bad argument; expected string or positive fixnum"
                            _obj621_))))))
      (lambda _g655_
        (let ((_g654_ (length _g655_)))
          (cond ((##fx= _g654_ 1)
                 (apply (lambda (_obj632_)
                          (let ((_port634_ (current-input-port)))
                            (_opt-lambda619629_ _obj632_ _port634_)))
                        _g655_))
                ((##fx= _g654_ 2) (apply _opt-lambda619629_ _g655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g655_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda605610_
           (lambda (_bytes607_ _port608_)
             (write-subu8vector
              _bytes607_
              '0
              (u8vector-length _bytes607_)
              _port608_))))
      (lambda _g657_
        (let ((_g656_ (length _g657_)))
          (cond ((##fx= _g656_ 1)
                 (apply (lambda (_bytes613_)
                          (let ((_port615_ (current-output-port)))
                            (_opt-lambda605610_ _bytes613_ _port615_)))
                        _g657_))
                ((##fx= _g656_ 2) (apply _opt-lambda605610_ _g657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g657_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda586596_
           (lambda (_obj588_ _port589_)
             (if (fixnum? _obj588_)
                 (begin
                   (if (##fx> _obj588_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj588_))
                   (let* ((_bytes591_ (make-u8vector _obj588_))
                          (_rd593_ (read-subu8vector
                                    _bytes591_
                                    '0
                                    _obj588_
                                    _port589_)))
                     (if (##fxzero? _rd593_)
                         (eof-object)
                         (if (##fx< _rd593_ _obj588_)
                             (begin
                               (u8vector-shrink! _bytes591_ _rd593_)
                               _bytes591_)
                             _bytes591_))))
                 (if (u8vector? _obj588_)
                     (read-subu8vector
                      _obj588_
                      '0
                      (##u8vector-length _obj588_)
                      _port589_)
                     (error '"Bad argument; expected u8vector or positive fixnum"
                            _obj588_))))))
      (lambda _g659_
        (let ((_g658_ (length _g659_)))
          (cond ((##fx= _g658_ 1)
                 (apply (lambda (_obj599_)
                          (let ((_port601_ (current-input-port)))
                            (_opt-lambda586596_ _obj599_ _port601_)))
                        _g659_))
                ((##fx= _g658_ 2) (apply _opt-lambda586596_ _g659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g659_))))))))

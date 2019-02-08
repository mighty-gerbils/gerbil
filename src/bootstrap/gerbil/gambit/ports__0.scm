(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda535540_
           (lambda (_str537_ _port538_)
             (write-substring
              _str537_
              '0
              (string-length _str537_)
              _port538_))))
      (lambda _g550_
        (let ((_g549_ (length _g550_)))
          (cond ((##fx= _g549_ 1)
                 (apply (lambda (_str543_)
                          (let ((_port545_ (current-output-port)))
                            (_opt-lambda535540_ _str543_ _port545_)))
                        _g550_))
                ((##fx= _g549_ 2) (apply _opt-lambda535540_ _g550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g550_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda516526_
           (lambda (_obj518_ _port519_)
             (if (fixnum? _obj518_)
                 (begin
                   (if (##fx> _obj518_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj518_))
                   (let* ((_str521_ (make-string _obj518_))
                          (_rd523_ (read-substring
                                    _str521_
                                    '0
                                    _obj518_
                                    _port519_)))
                     (if (##fxzero? _rd523_)
                         (eof-object)
                         (if (##fx< _rd523_ _obj518_)
                             (begin (string-shrink! _str521_ _rd523_) _str521_)
                             _str521_))))
                 (if (string? _obj518_)
                     (read-substring
                      _obj518_
                      '0
                      (##string-length _obj518_)
                      _port519_)
                     (error '"Bad argument; expected string or positive fixnum"
                            _obj518_))))))
      (lambda _g552_
        (let ((_g551_ (length _g552_)))
          (cond ((##fx= _g551_ 1)
                 (apply (lambda (_obj529_)
                          (let ((_port531_ (current-input-port)))
                            (_opt-lambda516526_ _obj529_ _port531_)))
                        _g552_))
                ((##fx= _g551_ 2) (apply _opt-lambda516526_ _g552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g552_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda502507_
           (lambda (_bytes504_ _port505_)
             (write-subu8vector
              _bytes504_
              '0
              (u8vector-length _bytes504_)
              _port505_))))
      (lambda _g554_
        (let ((_g553_ (length _g554_)))
          (cond ((##fx= _g553_ 1)
                 (apply (lambda (_bytes510_)
                          (let ((_port512_ (current-output-port)))
                            (_opt-lambda502507_ _bytes510_ _port512_)))
                        _g554_))
                ((##fx= _g553_ 2) (apply _opt-lambda502507_ _g554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g554_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda483493_
           (lambda (_obj485_ _port486_)
             (if (fixnum? _obj485_)
                 (begin
                   (if (##fx> _obj485_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj485_))
                   (let* ((_bytes488_ (make-u8vector _obj485_))
                          (_rd490_ (read-subu8vector
                                    _bytes488_
                                    '0
                                    _obj485_
                                    _port486_)))
                     (if (##fxzero? _rd490_)
                         (eof-object)
                         (if (##fx< _rd490_ _obj485_)
                             (begin
                               (u8vector-shrink! _bytes488_ _rd490_)
                               _bytes488_)
                             _bytes488_))))
                 (if (u8vector? _obj485_)
                     (read-subu8vector
                      _obj485_
                      '0
                      (##u8vector-length _obj485_)
                      _port486_)
                     (error '"Bad argument; expected u8vector or positive fixnum"
                            _obj485_))))))
      (lambda _g556_
        (let ((_g555_ (length _g556_)))
          (cond ((##fx= _g555_ 1)
                 (apply (lambda (_obj496_)
                          (let ((_port498_ (current-input-port)))
                            (_opt-lambda483493_ _obj496_ _port498_)))
                        _g556_))
                ((##fx= _g555_ 2) (apply _opt-lambda483493_ _g556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g556_))))))))

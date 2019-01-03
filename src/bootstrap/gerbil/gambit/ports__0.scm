(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda637642_
           (lambda (_str639_ _port640_)
             (write-substring
              _str639_
              '0
              (string-length _str639_)
              _port640_))))
      (lambda _g652_
        (let ((_g651_ (length _g652_)))
          (cond ((##fx= _g651_ 1)
                 (apply (lambda (_str645_)
                          (let ((_port647_ (current-output-port)))
                            (_opt-lambda637642_ _str645_ _port647_)))
                        _g652_))
                ((##fx= _g651_ 2) (apply _opt-lambda637642_ _g652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-string
                  _g652_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda618628_
           (lambda (_obj620_ _port621_)
             (if (fixnum? _obj620_)
                 (begin
                   (if (##fx> _obj620_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj620_))
                   (let* ((_str623_ (make-string _obj620_))
                          (_rd625_ (read-substring
                                    _str623_
                                    '0
                                    _obj620_
                                    _port621_)))
                     (if (##fxzero? _rd625_)
                         (eof-object)
                         (if (##fx< _rd625_ _obj620_)
                             (begin (string-shrink! _str623_ _rd625_) _str623_)
                             _str623_))))
                 (if (string? _obj620_)
                     (read-substring
                      _obj620_
                      '0
                      (##string-length _obj620_)
                      _port621_)
                     (error '"Bad argument; expected string or positive fixnum"
                            _obj620_))))))
      (lambda _g654_
        (let ((_g653_ (length _g654_)))
          (cond ((##fx= _g653_ 1)
                 (apply (lambda (_obj631_)
                          (let ((_port633_ (current-input-port)))
                            (_opt-lambda618628_ _obj631_ _port633_)))
                        _g654_))
                ((##fx= _g653_ 2) (apply _opt-lambda618628_ _g654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-string
                  _g654_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda604609_
           (lambda (_bytes606_ _port607_)
             (write-subu8vector
              _bytes606_
              '0
              (u8vector-length _bytes606_)
              _port607_))))
      (lambda _g656_
        (let ((_g655_ (length _g656_)))
          (cond ((##fx= _g655_ 1)
                 (apply (lambda (_bytes612_)
                          (let ((_port614_ (current-output-port)))
                            (_opt-lambda604609_ _bytes612_ _port614_)))
                        _g656_))
                ((##fx= _g655_ 2) (apply _opt-lambda604609_ _g656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#write-u8vector
                  _g656_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda585595_
           (lambda (_obj587_ _port588_)
             (if (fixnum? _obj587_)
                 (begin
                   (if (##fx> _obj587_ '0)
                       '#!void
                       (error '"Bad argument; expected positive fixnum"
                              _obj587_))
                   (let* ((_bytes590_ (make-u8vector _obj587_))
                          (_rd592_ (read-subu8vector
                                    _bytes590_
                                    '0
                                    _obj587_
                                    _port588_)))
                     (if (##fxzero? _rd592_)
                         (eof-object)
                         (if (##fx< _rd592_ _obj587_)
                             (begin
                               (u8vector-shrink! _bytes590_ _rd592_)
                               _bytes590_)
                             _bytes590_))))
                 (if (u8vector? _obj587_)
                     (read-subu8vector
                      _obj587_
                      '0
                      (##u8vector-length _obj587_)
                      _port588_)
                     (error '"Bad argument; expected u8vector or positive fixnum"
                            _obj587_))))))
      (lambda _g658_
        (let ((_g657_ (length _g658_)))
          (cond ((##fx= _g657_ 1)
                 (apply (lambda (_obj598_)
                          (let ((_port600_ (current-input-port)))
                            (_opt-lambda585595_ _obj598_ _port600_)))
                        _g658_))
                ((##fx= _g657_ 2) (apply _opt-lambda585595_ _g658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/ports#read-u8vector
                  _g658_))))))))

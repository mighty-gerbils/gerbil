(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/ports::timestamp 1695337500)
  (begin
    (define gerbil/gambit/ports#write-string
      (let ((_opt-lambda188193_
             (lambda (_str190_ _port191_)
               (write-substring
                _str190_
                '0
                (string-length _str190_)
                _port191_))))
        (lambda _g203_
          (let ((_g202_ (let () (declare (not safe)) (##length _g203_))))
            (cond ((let () (declare (not safe)) (##fx= _g202_ 1))
                   (apply (lambda (_str196_)
                            (let ((_port198_ (current-output-port)))
                              (_opt-lambda188193_ _str196_ _port198_)))
                          _g203_))
                  ((let () (declare (not safe)) (##fx= _g202_ 2))
                   (apply _opt-lambda188193_ _g203_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/ports#write-string
                    _g203_)))))))
    (define gerbil/gambit/ports#read-string
      (let ((_opt-lambda169179_
             (lambda (_obj171_ _port172_)
               (if (fixnum? _obj171_)
                   (begin
                     (if (let () (declare (not safe)) (##fx>= _obj171_ '0))
                         '#!void
                         (error '"Bad argument; expected non-negative fixnum"
                                _obj171_))
                     (let* ((_str174_ (make-string _obj171_))
                            (_rd176_ (read-substring
                                      _str174_
                                      '0
                                      _obj171_
                                      _port172_)))
                       (if (let () (declare (not safe)) (##fxzero? _obj171_))
                           _str174_
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _rd176_))
                               (eof-object)
                               (if (let ()
                                     (declare (not safe))
                                     (##fx< _rd176_ _obj171_))
                                   (begin
                                     (string-shrink! _str174_ _rd176_)
                                     _str174_)
                                   _str174_)))))
                   (if (string? _obj171_)
                       (read-substring
                        _obj171_
                        '0
                        (let ()
                          (declare (not safe))
                          (##string-length _obj171_))
                        _port172_)
                       (error '"Bad argument; expected string or non-negative fixnum"
                              _obj171_))))))
        (lambda _g205_
          (let ((_g204_ (let () (declare (not safe)) (##length _g205_))))
            (cond ((let () (declare (not safe)) (##fx= _g204_ 1))
                   (apply (lambda (_obj182_)
                            (let ((_port184_ (current-input-port)))
                              (_opt-lambda169179_ _obj182_ _port184_)))
                          _g205_))
                  ((let () (declare (not safe)) (##fx= _g204_ 2))
                   (apply _opt-lambda169179_ _g205_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/ports#read-string
                    _g205_)))))))
    (define gerbil/gambit/ports#write-u8vector
      (let ((_opt-lambda155160_
             (lambda (_bytes157_ _port158_)
               (write-subu8vector
                _bytes157_
                '0
                (u8vector-length _bytes157_)
                _port158_))))
        (lambda _g207_
          (let ((_g206_ (let () (declare (not safe)) (##length _g207_))))
            (cond ((let () (declare (not safe)) (##fx= _g206_ 1))
                   (apply (lambda (_bytes163_)
                            (let ((_port165_ (current-output-port)))
                              (_opt-lambda155160_ _bytes163_ _port165_)))
                          _g207_))
                  ((let () (declare (not safe)) (##fx= _g206_ 2))
                   (apply _opt-lambda155160_ _g207_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/ports#write-u8vector
                    _g207_)))))))
    (define gerbil/gambit/ports#read-u8vector
      (let ((_opt-lambda136146_
             (lambda (_obj138_ _port139_)
               (if (fixnum? _obj138_)
                   (begin
                     (if (let () (declare (not safe)) (##fx>= _obj138_ '0))
                         '#!void
                         (error '"Bad argument; expected non-negative fixnum"
                                _obj138_))
                     (let* ((_bytes141_ (make-u8vector _obj138_))
                            (_rd143_ (read-subu8vector
                                      _bytes141_
                                      '0
                                      _obj138_
                                      _port139_)))
                       (if (let () (declare (not safe)) (##fxzero? _obj138_))
                           _bytes141_
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _rd143_))
                               (eof-object)
                               (if (let ()
                                     (declare (not safe))
                                     (##fx< _rd143_ _obj138_))
                                   (begin
                                     (u8vector-shrink! _bytes141_ _rd143_)
                                     _bytes141_)
                                   _bytes141_)))))
                   (if (u8vector? _obj138_)
                       (read-subu8vector
                        _obj138_
                        '0
                        (let ()
                          (declare (not safe))
                          (##u8vector-length _obj138_))
                        _port139_)
                       (error '"Bad argument; expected u8vector or non-negative fixnum"
                              _obj138_))))))
        (lambda _g209_
          (let ((_g208_ (let () (declare (not safe)) (##length _g209_))))
            (cond ((let () (declare (not safe)) (##fx= _g208_ 1))
                   (apply (lambda (_obj149_)
                            (let ((_port151_ (current-input-port)))
                              (_opt-lambda136146_ _obj149_ _port151_)))
                          _g209_))
                  ((let () (declare (not safe)) (##fx= _g208_ 2))
                   (apply _opt-lambda136146_ _g209_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/ports#read-u8vector
                    _g209_)))))))))

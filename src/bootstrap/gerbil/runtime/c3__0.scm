(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707659877)
  (begin
    (define c4-linearize__%
      (lambda (_g82920_
               _get-precedence-list7811978125_
               _struct?7812078127_
               _eq7812178129_
               _get-name7812278131_
               _rhead78133_
               _supers78134_)
        (let* ((_get-precedence-list78136_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7811978125_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7811978125_))
               (_struct?78138_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7812078127_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7812078127_))
               (_eq78140_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7812178129_ absent-value))
                    eq?
                    _eq7812178129_))
               (_get-name78142_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7812278131_ absent-value))
                    identity
                    _get-name7812278131_)))
          (letrec* ((_pls78144_ (map _get-precedence-list78136_ _supers78134_))
                    (_sit78145_ '())
                    (_get-names78146_
                     (lambda (_lst78410_) (map _get-name78142_ _lst78410_)))
                    (_err78147_
                     (lambda _a78408_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82921 (reverse _rhead78133_)))
                                (declare (not safe))
                                (_get-names78146_ __tmp82921))
                              'precedence-lists:
                              (map _get-names78146_ _pls78144_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78146_ _sit78145_))
                              _a78408_)))
                    (_merge-sit!78148_
                     (lambda (_sit278398_)
                       (if (let () (declare (not safe)) (null? _sit278398_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78145_))
                               (set! _sit78145_ _sit278398_)
                               (let _loop78400_ ((_t178402_ _sit78145_)
                                                 (_t278403_ _sit278398_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178402_ _sit278398_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278403_ _sit78145_))
                                         (set! _sit78145_ _sit278398_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178402_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278403_)))
                                             (let ((__tmp82924
                                                    (let ((__tmp82927
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78146_
                                                              _sit78145_)))
                                                          (__tmp82925
                                                           (let ((__tmp82926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78146_ _sit278398_))))
                     (declare (not safe))
                     (cons __tmp82926 '()))))
              (declare (not safe))
              (cons __tmp82927 __tmp82925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78147_
                                                'single-inheritance-incompatibility:
                                                __tmp82924))
                                             (let ((__tmp82923 (cdr _t178402_))
                                                   (__tmp82922
                                                    (cdr _t278403_)))
                                               (declare (not safe))
                                               (_loop78400_
                                                __tmp82923
                                                __tmp82922))))))))))
                    (_rpls78149_
                     (map (lambda (_pl78393_)
                            (let ((_g82928_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78138_
                                      _pl78393_
                                      '()))))
                              (begin
                                (let ((_g82929_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82928_)
                                             (##vector-length _g82928_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82929_ 2)))
                                      (error "Context expects 2 values"
                                             _g82929_)))
                                (let ((_tl78395_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82928_ 0)))
                                      (_rh78396_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82928_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78148_ _tl78395_))
                                    _rh78396_)))))
                          _pls78144_))
                    (_unsitr-rpl78150_
                     (lambda (_rpl78339_)
                       (let _u78341_ ((_pl-rhead78343_ _rpl78339_)
                                      (_pl-tail78344_ '())
                                      (_sit-rhead78345_ (reverse _sit78145_))
                                      (_sit-tail78346_ '()))
                         (let* ((_pl-rhead7834778356_ _pl-rhead78343_)
                                (_E7835078360_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7834778356_))))
                           (let ((_K7835478390_ (lambda () _pl-tail78344_))
                                 (_K7835178374_
                                  (lambda (_plrh78364_ _c78365_)
                                    (if (member _c78365_
                                                _sit-tail78346_
                                                _eq78140_)
                                        (let ((__tmp82940
                                               (let ((__tmp82941
                                                      (reverse _pl-rhead78343_)))
                                                 (declare (not safe))
                                                 (_get-names78146_
                                                  __tmp82941)))
                                              (__tmp82939
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78146_
                                                  _pl-tail78344_)))
                                              (__tmp82937
                                               (let ((__tmp82938
                                                      (reverse _sit-rhead78345_)))
                                                 (declare (not safe))
                                                 (_get-names78146_
                                                  __tmp82938)))
                                              (__tmp82936
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78146_
                                                  _sit-tail78346_)))
                                              (__tmp82935
                                               (_get-name78142_ _c78365_)))
                                          (declare (not safe))
                                          (_err78147_
                                           'precedence-list-head:
                                           __tmp82940
                                           'precedence-list-tail:
                                           __tmp82939
                                           'single-inheritance-head:
                                           __tmp82937
                                           'single-inheritance-tail:
                                           __tmp82936
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp82935))
                                        (let ((_g82930_
                                               (let ((__tmp82932
                                                      (lambda (_g7836678368_)
                                                        (_eq78140_
                                                         _c78365_
                                                         _g7836678368_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82932
                                                  _sit-rhead78345_
                                                  _sit-tail78346_))))
                                          (begin
                                            (let ((_g82931_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82930_)
                                                         (##vector-length
                                                          _g82930_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82931_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82931_)))
                                            (let ((_sit-rh278371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82930_
                                                      0)))
                                                  (_sit-tl278372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82930_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278371_))
                                                  (let ((__tmp82934
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78341_
                                                     _plrh78364_
                                                     __tmp82934
                                                     '()
                                                     _sit-tl278372_))
                                                  (let ((__tmp82933
                                                         (cdr _sit-rh278371_)))
                                                    (declare (not safe))
                                                    (_u78341_
                                                     _plrh78364_
                                                     _pl-tail78344_
                                                     __tmp82933
                                                     _sit-tl278372_))))))))))
                             (let ((_try-match7834978386_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7834778356_))
                                          (let ((_tl7835378379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7834778356_)))
                                                (_hd7835278377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7834778356_))))
                                            (let ((_c78382_ _hd7835278377_)
                                                  (_plrh78384_ _tl7835378379_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7835178374_
                                                 _plrh78384_
                                                 _c78382_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7835078360_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7834778356_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7835478390_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7834978386_)))))))))
                    (_g82942_
                     (let ((_g82943_
                            (let ((__tmp82945 (reverse _supers78134_)))
                              (declare (not safe))
                              (append1! _rpls78149_ __tmp82945))))
                       #!void
                       _g82943_))
                    (_g82946_
                     (let ((_g82947_
                            (set! _pls78144_
                                  (map _unsitr-rpl78150_ _rpls78149_))))
                       #!void
                       _g82947_))
                    (_c3-select-next78151_
                     (lambda (_tails78289_)
                       (let ((_candidate?78295_
                              (lambda (_c78291_)
                                (let ((__tmp82949
                                       (lambda (_tail78293_)
                                         (let ((__tmp82950
                                                (member _c78291_
                                                        (cdr _tail78293_)
                                                        _eq78140_)))
                                           (declare (not safe))
                                           (not __tmp82950)))))
                                  (declare (not safe))
                                  (andmap1 __tmp82949 _tails78289_)))))
                         (let _loop78297_ ((_ts78299_ _tails78289_))
                           (let* ((_ts7830078310_ _ts78299_)
                                  (_else7830278318_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78147_))))
                                  (_K7830478324_
                                   (lambda (_rts78321_ _c78322_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78295_ _c78322_))
                                         _c78322_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78297_ _rts78321_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7830078310_))
                                 (let ((_hd7830578327_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7830078310_)))
                                       (_tl7830678329_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7830078310_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7830578327_))
                                       (let* ((_hd7830778332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7830578327_)))
                                              (_c78335_ _hd7830778332_)
                                              (_rts78337_ _tl7830678329_))
                                         (declare (not safe))
                                         (_K7830478324_ _rts78337_ _c78335_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78147_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78147_))))))))
                    (_remove-next!78152_
                     (lambda (_next78234_ _tails78235_)
                       (let _loop78237_ ((_t78239_ _tails78235_))
                         (let* ((_t7824078251_ _t78239_)
                                (_E7824378255_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7824078251_))))
                           (let ((_K7824978286_ (lambda () _tails78235_))
                                 (_K7824478263_
                                  (lambda (_more78259_ _tail78260_ _head78261_)
                                    (if (_eq78140_ _head78261_ _next78234_)
                                        (set-car! _t78239_ _tail78260_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78237_ _more78259_)))))
                             (let ((_try-match7824278282_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7824078251_))
                                          (let ((_tl7824678268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7824078251_)))
                                                (_hd7824578266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7824078251_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7824578266_))
                                                (let ((_tl7824878273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7824578266_)))
                                                      (_hd7824778271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7824578266_))))
                                                  (let ((_head78276_
                                                         _hd7824778271_)
                                                        (_tail78278_
                                                         _tl7824878273_)
                                                        (_more78280_
                                                         _tl7824678268_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7824478263_
                                                       _more78280_
                                                       _tail78278_
                                                       _head78276_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7824378255_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7824378255_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7824078251_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7824978286_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7824278282_)))))))))
                    (_precedence-list78153_
                     (let _c3loop78184_ ((_rhead78186_ _rhead78133_)
                                         (_tails78187_ _pls78144_))
                       (let* ((_tails78189_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78187_)))
                              (_tails7819078200_ _tails78189_)
                              (_else7819378211_
                               (lambda ()
                                 (let ((_next78208_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78151_
                                           _tails78189_))))
                                   (let ((__tmp82952
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78208_ _rhead78186_)))
                                         (__tmp82951
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78152_
                                             _next78208_
                                             _tails78189_))))
                                     (declare (not safe))
                                     (_c3loop78184_ __tmp82952 __tmp82951))))))
                         (let ((_K7819878231_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78186_ _sit78145_))))
                               (_K7819578217_
                                (lambda (_tail78215_)
                                  (let ((__tmp82953
                                         (append _tail78215_ _sit78145_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78186_
                                     __tmp82953)))))
                           (let ((_try-match7819278227_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7819078200_))
                                        (let ((_tl7819778222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7819078200_)))
                                              (_hd7819678220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7819078200_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7819778222_))
                                              (let ((_tail78225_
                                                     _hd7819678220_))
                                                (declare (not safe))
                                                (_K7819578217_ _tail78225_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7819378211_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7819378211_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7819078200_))
                                 (let () (declare (not safe)) (_K7819878231_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7819278227_))))))))
                    (_super-struct78154_
                     (let* ((_sit7815578163_ _sit78145_)
                            (_else7815778171_ (lambda () '#f))
                            (_K7815978176_ (lambda (_s78174_) _s78174_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7815578163_))
                           (let* ((_hd7816078179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7815578163_)))
                                  (_s78182_ _hd7816078179_))
                             (declare (not safe))
                             (_K7815978176_ _s78182_))
                           (let () (declare (not safe)) (_else7815778171_))))))
            (values _precedence-list78153_ _super-struct78154_)))))
    (define c4-linearize__@
      (lambda (_keys7811878415_ . _args78417_)
        (apply c4-linearize__%
               _keys7811878415_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7811878415_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7811878415_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7811878415_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7811878415_ 'get-name: absent-value))
               _args78417_)))
    (define c4-linearize
      (lambda _args7812378423_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7812378423_)))))

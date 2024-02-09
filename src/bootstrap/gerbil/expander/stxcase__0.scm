(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707423041)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp176499
             (let ((__tmp176500
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp176500 '()))))
        (declare (not safe))
        (make-struct-type*
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp176499
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args172302_
        (apply make-struct-instance gx#syntax-pattern::t _$args172302_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self172299_ _stx172300_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx172300_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx171781_)
        (letrec ((_generate171783_
                  (lambda (_e172010_)
                    (letrec ((_BUG172012_
                              (lambda (_q172174_)
                                (error '"BUG: syntax; generate"
                                       _stx171781_
                                       _e172010_
                                       _q172174_)))
                             (_local-pattern-e172013_
                              (lambda (_pat172172_)
                                (let ((__tmp176501
                                       (##structure-ref
                                        _pat172172_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp176501))))
                             (_getvar172014_
                              (lambda (_q172169_ _vars172170_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q172169_
                                           _vars172170_
                                           _BUG172012_))))
                             (_getarg172015_
                              (lambda (_arg172135_ _vars172136_)
                                (let* ((_arg172137172144_ _arg172135_)
                                       (_E172139172148_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg172137172144_)))
                                       (_K172140172157_
                                        (lambda (_e172151_ _tag172152_)
                                          (let ((_$e172154_ _tag172152_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e172154_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar172014_
                                                   _e172151_
                                                   _vars172136_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e172154_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e172013_
                                                       _e172151_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG172012_
                                                       _arg172135_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg172137172144_))
                                      (let ((_hd172141172160_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg172137172144_)))
                                            (_tl172142172162_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg172137172144_))))
                                        (let* ((_tag172165_ _hd172141172160_)
                                               (_e172167_ _tl172142172162_))
                                          (declare (not safe))
                                          (_K172140172157_
                                           _e172167_
                                           _tag172165_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E172139172148_)))))))
                      (let _recur172017_ ((_e172019_ _e172010_)
                                          (_vars172020_ '()))
                        (let* ((_e172021172028_ _e172019_)
                               (_E172023172032_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e172021172028_)))
                               (_K172024172123_
                                (lambda (_body172035_ _tag172036_)
                                  (let ((_$e172038_ _tag172036_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e172038_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body172035_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e172038_))
                                            (let ((_id172041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body172035_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id172041_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks172043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id172041_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks172043_))
                                                        (let ((__tmp176529
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body172035_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp176529))
                (let ((__tmp176528
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body172035_)))
                      (__tmp176527
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body172035_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp176528
                   __tmp176527
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id172041_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body172035_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG172012_
                                                         _e172019_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e172038_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e172013_
                                                   _body172035_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e172038_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar172014_
                                                       _body172035_
                                                       _vars172020_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e172038_))
                                                        (let ((__tmp176525
                                                               (let ((__tmp176526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body172035_)))
                         (declare (not safe))
                         (_recur172017_ __tmp176526 _vars172020_)))
                      (__tmp176523
                       (let ((__tmp176524 (cdr _body172035_)))
                         (declare (not safe))
                         (_recur172017_ __tmp176524 _vars172020_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp176525 __tmp176523))
                (if (let () (declare (not safe)) (eq? 'vector _$e172038_))
                    (let ((__tmp176522
                           (let ()
                             (declare (not safe))
                             (_recur172017_ _body172035_ _vars172020_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp176522))
                    (if (let () (declare (not safe)) (eq? 'box _$e172038_))
                        (let ((__tmp176521
                               (let ()
                                 (declare (not safe))
                                 (_recur172017_ _body172035_ _vars172020_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp176521))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e172038_))
                            (let* ((_body172044172055_ _body172035_)
                                   (_E172046172059_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body172044172055_)))
                                   (_K172047172097_
                                    (lambda (_args172062_
                                             _iv172063_
                                             _hd172064_
                                             _depth172065_)
                                      (let* ((_targets172071_
                                              (map (lambda (_g172066172068_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg172015_
                                                        _g172066172068_
                                                        _vars172020_)))
                                                   _args172062_))
                                             (_fold-in172073_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args172062_)))
                                             (_fold-out172075_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args172077_
                                              (let ((__tmp176502
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out172075_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp176502
                                                        _fold-in172073_)))
                                             (_lambda-body172094_
                                              (if (fx> _depth172065_ '1)
                                                  (let ((_r-args172085_
                                                         (map (lambda (_arg172079_)
                                                                (let ((__tmp176507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg172079_)))
                          (declare (not safe))
                          (cons 'ref __tmp176507)))
                      _args172062_))
                (_r-vars172086_
                 (let ((__tmp176508
                        (lambda (_arg172081_ _var172082_ _r172083_)
                          (let ((__tmp176509
                                 (let ((__tmp176510 (cdr _arg172081_)))
                                   (declare (not safe))
                                   (cons __tmp176510 _var172082_))))
                            (declare (not safe))
                            (cons __tmp176509 _r172083_)))))
                   (declare (not safe))
                   (foldr2 __tmp176508
                           _vars172020_
                           _args172062_
                           _fold-in172073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176511
                                                           (let ((__tmp176512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176516
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth172065_ '1)))
                                (__tmp176513
                                 (let ((__tmp176514
                                        (let ((__tmp176515
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out172075_))))
                                          (declare (not safe))
                                          (cons __tmp176515 _r-args172085_))))
                                   (declare (not safe))
                                   (cons _hd172064_ __tmp176514))))
                            (declare (not safe))
                            (cons __tmp176516 __tmp176513))))
                     (declare (not safe))
                     (cons 'splice __tmp176512))))
              (declare (not safe))
              (_recur172017_ __tmp176511 _r-vars172086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars172092_
                                                          (let ((__tmp176503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg172088_ _var172089_ _r172090_)
                           (let ((__tmp176504
                                  (let ((__tmp176505 (cdr _arg172088_)))
                                    (declare (not safe))
                                    (cons __tmp176505 _var172089_))))
                             (declare (not safe))
                             (cons __tmp176504 _r172090_)))))
                    (declare (not safe))
                    (foldr2 __tmp176503
                            _vars172020_
                            _args172062_
                            _fold-in172073_)))
                 (__tmp176506
                  (let ()
                    (declare (not safe))
                    (_recur172017_ _hd172064_ _hd-vars172092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp176506
                                                     _fold-out172075_)))))
                                        (let ((__tmp176520
                                               (if (fx> (length _targets172071_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets172071_))
                                                   '#!void))
                                              (__tmp176517
                                               (let ((__tmp176519
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args172077_
                                                         _lambda-body172094_)))
                                                     (__tmp176518
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur172017_
                                                         _iv172063_
                                                         _vars172020_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp176519
                                                  __tmp176518
                                                  _targets172071_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp176520
                                           __tmp176517))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body172044172055_))
                                  (let ((_hd172048172100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body172044172055_)))
                                        (_tl172049172102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body172044172055_))))
                                    (let ((_depth172105_ _hd172048172100_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl172049172102_))
                                          (let ((_hd172050172107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl172049172102_)))
                                                (_tl172051172109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl172049172102_))))
                                            (let ((_hd172112_
                                                   _hd172050172107_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl172051172109_))
                                                  (let ((_hd172052172114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl172051172109_)))
                                                        (_tl172053172116_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl172051172109_))))
                                                    (let* ((_iv172119_
                                                            _hd172052172114_)
                                                           (_args172121_
                                                            _tl172053172116_))
                                                      (declare (not safe))
                                                      (_K172047172097_
                                                       _args172121_
                                                       _iv172119_
                                                       _hd172112_
                                                       _depth172105_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E172046172059_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E172046172059_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E172046172059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e172038_))
                                _body172035_
                                (let ()
                                  (declare (not safe))
                                  (_BUG172012_ _e172019_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e172021172028_))
                              (let ((_hd172025172126_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e172021172028_)))
                                    (_tl172026172128_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e172021172028_))))
                                (let* ((_tag172131_ _hd172025172126_)
                                       (_body172133_ _tl172026172128_))
                                  (declare (not safe))
                                  (_K172024172123_ _body172133_ _tag172131_)))
                              (let ()
                                (declare (not safe))
                                (_E172023172032_))))))))
                 (_parse171784_
                  (lambda (_e171825_)
                    (letrec ((_make-cons171827_
                              (lambda (_hd172002_ _tl172003_)
                                (let ((_g176530_ _hd172002_)
                                      (_g176532_ _tl172003_))
                                  (begin
                                    (let ((_g176531_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176530_)
                                                 (##vector-length _g176530_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176531_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176531_)))
                                    (let ((_g176533_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176532_)
                                                 (##vector-length _g176532_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176533_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176533_)))
                                    (let ((_hd-e172005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176530_ 0)))
                                          (_hd-vars172006_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176530_ 1))))
                                      (let ((_tl-e172007_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176532_ 0)))
                                            (_tl-vars172008_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176532_ 1))))
                                        (values (let ((__tmp176534
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e172005_
                                                               _tl-e172007_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp176534))
                                                (append _hd-vars172006_
                                                        _tl-vars172008_))))))))
                             (_make-splice171828_
                              (lambda (_where171941_
                                       _depth171942_
                                       _hd171943_
                                       _tl171944_)
                                (let ((_g176535_ _hd171943_)
                                      (_g176537_ _tl171944_))
                                  (begin
                                    (let ((_g176536_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176535_)
                                                 (##vector-length _g176535_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176536_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176536_)))
                                    (let ((_g176538_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176537_)
                                                 (##vector-length _g176537_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176538_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176538_)))
                                    (let ((_hd-e171946_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176535_ 0)))
                                          (_hd-vars171947_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176535_ 1))))
                                      (let ((_tl-e171948_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176537_ 0)))
                                            (_tl-vars171949_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176537_ 1))))
                                        (let _lp171951_ ((_rest171953_
                                                          _hd-vars171947_)
                                                         (_targets171954_ '())
                                                         (_vars171955_
                                                          _tl-vars171949_))
                                          (let* ((_rest171956171966_
                                                  _rest171953_)
                                                 (_else171958171974_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets171954_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx171781_
                                                           _where171941_))
                                                        (values (let ((__tmp176539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp176540
                                      (let ((__tmp176541
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e171948_
                                                     _targets171954_))))
                                        (declare (not safe))
                                        (cons _hd-e171946_ __tmp176541))))
                                 (declare (not safe))
                                 (cons _depth171942_ __tmp176540))))
                          (declare (not safe))
                          (cons 'splice __tmp176539))
                        _vars171955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K171960171983_
                                                  (lambda (_rest171977_
                                                           _hd-pat171978_
                                                           _hd-depth*171979_)
                                                    (let ((_hd-depth171981_
                                                           (fx- _hd-depth*171979_
                                                                _depth171942_)))
                                                      (if (fxpositive?
                                                           _hd-depth171981_)
                                                          (let ((__tmp176546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp176547
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat171978_))))
                           (declare (not safe))
                           (cons __tmp176547 _targets171954_)))
                        (__tmp176544
                         (let ((__tmp176545
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth171981_ _hd-pat171978_))))
                           (declare (not safe))
                           (cons __tmp176545 _vars171955_))))
                    (declare (not safe))
                    (_lp171951_ _rest171977_ __tmp176546 __tmp176544))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth171981_))
                      (let ((__tmp176542
                             (let ((__tmp176543
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat171978_))))
                               (declare (not safe))
                               (cons __tmp176543 _targets171954_))))
                        (declare (not safe))
                        (_lp171951_ _rest171977_ __tmp176542 _vars171955_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx171781_
                         _where171941_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest171956171966_))
                                                (let ((_hd171961171986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest171956171966_)))
                                                      (_tl171962171988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest171956171966_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd171961171986_))
                                                      (let ((_hd171963171991_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd171961171986_)))
                    (_tl171964171993_
                     (let () (declare (not safe)) (##cdr _hd171961171986_))))
                (let* ((_hd-depth*171996_ _hd171963171991_)
                       (_hd-pat171998_ _tl171964171993_)
                       (_rest172000_ _tl171962171988_))
                  (declare (not safe))
                  (_K171960171983_
                   _rest172000_
                   _hd-pat171998_
                   _hd-depth*171996_)))
              (let () (declare (not safe)) (_else171958171974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else171958171974_)))))))))))
                             (_recur171829_
                              (lambda (_e171834_ _is-e?171835_)
                                (if (_is-e?171835_ _e171834_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx171781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e171834_))
                                        (let* ((_pat171837_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e171834_)))
                                               (_depth171839_
                                                (##structure-ref
                                                 _pat171837_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth171839_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat171837_))
                                                      (let ((__tmp176563
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth171839_ _pat171837_))))
                (declare (not safe))
                (cons __tmp176563 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat171837_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e171834_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e171834_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e171834_))
                                                (let* ((_e171841171848_
                                                        _e171834_)
                                                       (_E171843171852_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e171841171848_))))
                                                       (_E171842171931_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e171841171848_))
                      (let ((_e171844171856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e171841171848_))))
                        (let ((_hd171845171859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e171844171856_)))
                              (_tl171846171861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e171844171856_))))
                          (let* ((_hd171864_ _hd171845171859_)
                                 (_rest171866_ _tl171846171861_))
                            (if '#t
                                (if (_is-e?171835_ _hd171864_)
                                    (let* ((_e171867171874_ _rest171866_)
                                           (_E171869171878_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx171781_
                                                 _e171834_))))
                                           (_E171868171892_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e171867171874_))
                                                  (let ((_e171870171882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e171867171874_))))
                                                    (let ((_hd171871171885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e171870171882_)))
                                                          (_tl171872171887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e171870171882_))))
                                                      (let ((_rest171890_
                                                             _hd171871171885_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl171872171887_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur171829_ _rest171890_ false))
                        (let () (declare (not safe)) (_E171869171878_)))
                    (let () (declare (not safe)) (_E171869171878_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171869171878_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E171868171892_)))
                                    (let _lp171896_ ((_rest171898_
                                                      _rest171866_)
                                                     (_depth171899_ '0))
                                      (let* ((_e171900171907_ _rest171898_)
                                             (_E171902171911_
                                              (lambda ()
                                                (if (fxpositive? _depth171899_)
                                                    (let ((__tmp176557
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171829_
                                                              _hd171864_
                                                              _is-e?171835_)))
                                                          (__tmp176556
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171829_
                                                              _rest171898_
                                                              _is-e?171835_))))
                                                      (declare (not safe))
                                                      (_make-splice171828_
                                                       _e171834_
                                                       _depth171899_
                                                       __tmp176557
                                                       __tmp176556))
                                                    (let ((__tmp176555
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171829_
                                                              _hd171864_
                                                              _is-e?171835_)))
                                                          (__tmp176554
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171829_
                                                              _rest171898_
                                                              _is-e?171835_))))
                                                      (declare (not safe))
                                                      (_make-cons171827_
                                                       __tmp176555
                                                       __tmp176554)))))
                                             (_E171901171927_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e171900171907_))
                                                    (let ((_e171903171915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e171900171907_))))
                                                      (let ((_hd171904171918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e171903171915_)))
                    (_tl171905171920_
                     (let () (declare (not safe)) (##cdr _e171903171915_))))
                (let* ((_rest-hd171923_ _hd171904171918_)
                       (_rest-tl171925_ _tl171905171920_))
                  (if '#t
                      (if (_is-e?171835_ _rest-hd171923_)
                          (let ((__tmp176562
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth171899_ '1))))
                            (declare (not safe))
                            (_lp171896_ _rest-tl171925_ __tmp176562))
                          (if (fxpositive? _depth171899_)
                              (let ((__tmp176561
                                     (let ()
                                       (declare (not safe))
                                       (_recur171829_
                                        _hd171864_
                                        _is-e?171835_)))
                                    (__tmp176560
                                     (let ()
                                       (declare (not safe))
                                       (_recur171829_
                                        _rest171898_
                                        _is-e?171835_))))
                                (declare (not safe))
                                (_make-splice171828_
                                 _e171834_
                                 _depth171899_
                                 __tmp176561
                                 __tmp176560))
                              (let ((__tmp176559
                                     (let ()
                                       (declare (not safe))
                                       (_recur171829_
                                        _hd171864_
                                        _is-e?171835_)))
                                    (__tmp176558
                                     (let ()
                                       (declare (not safe))
                                       (_recur171829_
                                        _rest171898_
                                        _is-e?171835_))))
                                (declare (not safe))
                                (_make-cons171827_ __tmp176559 __tmp176558))))
                      (let () (declare (not safe)) (_E171902171911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171902171911_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E171901171927_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E171843171852_))))))
                      (let () (declare (not safe)) (_E171843171852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171842171931_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e171834_))
                                                    (let ((_g176551_
                                                           (let ((__tmp176553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e171834_)))))
                     (declare (not safe))
                     (_recur171829_ __tmp176553 _is-e?171835_))))
              (begin
                (let ((_g176552_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g176551_)
                             (##vector-length _g176551_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g176552_ 2)))
                      (error "Context expects 2 values" _g176552_)))
                (let ((_e171935_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176551_ 0)))
                      (_vars171936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176551_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e171935_))
                          _vars171936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e171834_))
                                                        (let ((_g176548_
                                                               (let ((__tmp176550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e171834_)))))
                         (declare (not safe))
                         (_recur171829_ __tmp176550 _is-e?171835_))))
                  (begin
                    (let ((_g176549_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g176548_)
                                 (##vector-length _g176548_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g176549_ 2)))
                          (error "Context expects 2 values" _g176549_)))
                    (let ((_e171938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176548_ 0)))
                          (_vars171939_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176548_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e171938_))
                              _vars171939_))))
                (values (let () (declare (not safe)) (cons 'datum _e171834_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g176564_
                             (let ()
                               (declare (not safe))
                               (_recur171829_ _e171825_ gx#ellipsis?))))
                        (begin
                          (let ((_g176565_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g176564_)
                                       (##vector-length _g176564_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g176565_ 2)))
                                (error "Context expects 2 values" _g176565_)))
                          (let ((_tree171831_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176564_ 0)))
                                (_vars171832_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176564_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars171832_))
                                _tree171831_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx171781_
                                   _vars171832_))))))))))
          (let* ((_e171785171795_ _stx171781_)
                 (_E171787171799_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx171781_))))
                 (_E171786171821_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171785171795_))
                        (let ((_e171788171803_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171785171795_))))
                          (let ((_hd171789171806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171788171803_)))
                                (_tl171790171808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171788171803_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171790171808_))
                                (let ((_e171791171811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171790171808_))))
                                  (let ((_hd171792171814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171791171811_)))
                                        (_tl171793171816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171791171811_))))
                                    (let ((_form171819_ _hd171792171814_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl171793171816_))
                                          (if '#t
                                              (let ((__tmp176567
                                                     (let ((__tmp176568
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse171784_
                                                               _form171819_))))
                                                       (declare (not safe))
                                                       (_generate171783_
                                                        __tmp176568)))
                                                    (__tmp176566
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx171781_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp176567
                                                 __tmp176566))
                                              (let ()
                                                (declare (not safe))
                                                (_E171787171799_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E171787171799_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171787171799_)))))
                        (let () (declare (not safe)) (_E171787171799_))))))
            (let () (declare (not safe)) (_E171786171821_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx171045_
               _identifier=?171046_
               _unwrap-e171047_
               _wrap-e171048_)
        (letrec ((_generate-bindings171050_
                  (lambda (_target171645_
                           _ids171646_
                           _clauses171647_
                           _clause-ids171648_
                           _E171649_)
                    (letrec ((_generate1171651_
                              (lambda (_clause171748_
                                       _clause-id171749_
                                       _E171750_)
                                (let ((__tmp176573
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id171749_ '())))
                                      (__tmp176569
                                       (let ((__tmp176570
                                              (let ((__tmp176572
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171645_
                                                             '())))
                                                    (__tmp176571
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause171052_
                                                        _target171645_
                                                        _ids171646_
                                                        _clause171748_
                                                        _E171750_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp176572
                                                 __tmp176571))))
                                         (declare (not safe))
                                         (cons __tmp176570 '()))))
                                  (declare (not safe))
                                  (cons __tmp176573 __tmp176569)))))
                      (let _lp171653_ ((_rest171655_ _clauses171647_)
                                       (_rest-ids171656_ _clause-ids171648_)
                                       (_bindings171657_ '()))
                        (let* ((_rest171658171666_ _rest171655_)
                               (_else171660171674_
                                (lambda () _bindings171657_))
                               (_K171662171736_
                                (lambda (_rest171677_ _clause171678_)
                                  (let* ((_rest-ids171679171686_
                                          _rest-ids171656_)
                                         (_E171681171690_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids171679171686_)))
                                         (_K171682171724_
                                          (lambda (_rest-ids171693_
                                                   _clause-id171694_)
                                            (let* ((_rest-ids171695171703_
                                                    _rest-ids171693_)
                                                   (_else171697171711_
                                                    (lambda ()
                                                      (let ((__tmp176574
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1171651_
                        _clause171678_
                        _clause-id171694_
                        _E171649_))))
                (declare (not safe))
                (cons __tmp176574 _bindings171657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K171699171716_
                                                    (lambda (_next-clause-id171714_)
                                                      (let ((__tmp176575
                                                             (let ((__tmp176576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1171651_
                               _clause171678_
                               _clause-id171694_
                               _next-clause-id171714_))))
                       (declare (not safe))
                       (cons __tmp176576 _bindings171657_))))
                (declare (not safe))
                (_lp171653_ _rest171677_ _rest-ids171693_ __tmp176575)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids171695171703_))
                                                  (let* ((_hd171700171719_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids171695171703_)))
                                                         (_next-clause-id171722_
                                                          _hd171700171719_))
                                                    (declare (not safe))
                                                    (_K171699171716_
                                                     _next-clause-id171722_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else171697171711_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids171679171686_))
                                        (let ((_hd171683171727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids171679171686_)))
                                              (_tl171684171729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids171679171686_))))
                                          (let* ((_clause-id171732_
                                                  _hd171683171727_)
                                                 (_rest-ids171734_
                                                  _tl171684171729_))
                                            (declare (not safe))
                                            (_K171682171724_
                                             _rest-ids171734_
                                             _clause-id171732_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171681171690_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest171658171666_))
                              (let ((_hd171663171739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest171658171666_)))
                                    (_tl171664171741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest171658171666_))))
                                (let* ((_clause171744_ _hd171663171739_)
                                       (_rest171746_ _tl171664171741_))
                                  (declare (not safe))
                                  (_K171662171736_
                                   _rest171746_
                                   _clause171744_)))
                              (let ()
                                (declare (not safe))
                                (_else171660171674_))))))))
                 (_generate-body171051_
                  (lambda (_bindings171605_ _body171606_)
                    (let _recur171608_ ((_rest171610_ _bindings171605_))
                      (let* ((_rest171611171619_ _rest171610_)
                             (_else171613171627_ (lambda () _body171606_))
                             (_K171615171633_
                              (lambda (_rest171630_ _hd171631_)
                                (let ((__tmp176578
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd171631_ '())))
                                      (__tmp176577
                                       (let ()
                                         (declare (not safe))
                                         (_recur171608_ _rest171630_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp176578
                                   __tmp176577)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest171611171619_))
                            (let ((_hd171616171636_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest171611171619_)))
                                  (_tl171617171638_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest171611171619_))))
                              (let* ((_hd171641_ _hd171616171636_)
                                     (_rest171643_ _tl171617171638_))
                                (declare (not safe))
                                (_K171615171633_ _rest171643_ _hd171641_)))
                            (let ()
                              (declare (not safe))
                              (_else171613171627_)))))))
                 (_generate-clause171052_
                  (lambda (_target171468_ _ids171469_ _clause171470_ _E171471_)
                    (letrec ((_generate1171473_
                              (lambda (_hd171560_ _fender171561_ _body171562_)
                                (let ((_g176579_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause171054_
                                          _hd171560_
                                          _ids171469_))))
                                  (begin
                                    (let ((_g176580_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176579_)
                                                 (##vector-length _g176579_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176580_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176580_)))
                                    (let ((_e171564_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176579_ 0)))
                                          (_mvars171565_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176579_ 1))))
                                      (let* ((_pvars171567_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars171565_))))
                                             (_E171569_
                                              (let ((__tmp176581
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171468_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E171471_ __tmp176581)))
                                             (_K171602_
                                              (let ((__tmp176582
                                                     (let ((__tmp176584
                                                            (map (lambda (_mvar171571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar171572_)
                           (let* ((_mvar171573171580_ _mvar171571_)
                                  (_E171575171584_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar171573171580_)))
                                  (_K171576171590_
                                   (lambda (_depth171587_ _id171588_)
                                     (let ((__tmp176585
                                            (let ((__tmp176586
                                                   (let ((__tmp176588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id171588_)))
                                                         (__tmp176587
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar171572_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp176588
                                                      __tmp176587
                                                      _depth171587_))))
                                              (declare (not safe))
                                              (cons __tmp176586 '()))))
                                       (declare (not safe))
                                       (cons _id171588_ __tmp176585)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar171573171580_))
                                 (let ((_hd171577171593_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar171573171580_)))
                                       (_tl171578171595_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar171573171580_))))
                                   (let* ((_id171598_ _hd171577171593_)
                                          (_depth171600_ _tl171578171595_))
                                     (declare (not safe))
                                     (_K171576171590_
                                      _depth171600_
                                      _id171598_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E171575171584_)))))
                         _mvars171565_
                         _pvars171567_))
                   (__tmp176583
                    (if (let () (declare (not safe)) (eq? _fender171561_ '#t))
                        _body171562_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender171561_
                           _body171562_
                           _E171569_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp176584 __tmp176583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars171567_
                                                 __tmp176582))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match171053_
                                           _hd171560_
                                           _target171468_
                                           _e171564_
                                           _mvars171565_
                                           _K171602_
                                           _E171569_)))))))))
                      (let* ((_e171474171494_ _clause171470_)
                             (_E171483171498_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e171474171494_))))
                             (_E171476171532_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171474171494_))
                                    (let ((_e171484171502_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171474171494_))))
                                      (let ((_hd171485171505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171484171502_)))
                                            (_tl171486171507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171484171502_))))
                                        (let ((_hd171510_ _hd171485171505_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171486171507_))
                                              (let ((_e171487171512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171486171507_))))
                                                (let ((_hd171488171515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171487171512_)))
                                                      (_tl171489171517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171487171512_))))
                                                  (let ((_fender171520_
                                                         _hd171488171515_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl171489171517_))
                                                        (let ((_e171490171522_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl171489171517_))))
                  (let ((_hd171491171525_
                         (let () (declare (not safe)) (##car _e171490171522_)))
                        (_tl171492171527_
                         (let ()
                           (declare (not safe))
                           (##cdr _e171490171522_))))
                    (let ((_body171530_ _hd171491171525_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl171492171527_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1171473_
                                 _hd171510_
                                 _fender171520_
                                 _body171530_))
                              (let () (declare (not safe)) (_E171483171498_)))
                          (let () (declare (not safe)) (_E171483171498_))))))
                (let () (declare (not safe)) (_E171483171498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E171483171498_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171483171498_)))))
                             (_E171475171556_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171474171494_))
                                    (let ((_e171477171536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171474171494_))))
                                      (let ((_hd171478171539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171477171536_)))
                                            (_tl171479171541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171477171536_))))
                                        (let ((_hd171544_ _hd171478171539_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171479171541_))
                                              (let ((_e171480171546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171479171541_))))
                                                (let ((_hd171481171549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171480171546_)))
                                                      (_tl171482171551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171480171546_))))
                                                  (let ((_body171554_
                                                         _hd171481171549_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl171482171551_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1171473_
                                                               _hd171544_
                                                               '#t
                                                               _body171554_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E171476171532_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E171476171532_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E171476171532_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171476171532_))))))
                        (let () (declare (not safe)) (_E171475171556_))))))
                 (_generate-match171053_
                  (lambda (_where171217_
                           _target171218_
                           _hd171219_
                           _mvars171220_
                           _K171221_
                           _E171222_)
                    (letrec ((_BUG171224_
                              (lambda (_q171466_)
                                (error '"BUG: syntax-case; generate"
                                       _stx171045_
                                       _hd171219_
                                       _q171466_)))
                             (_recur171225_
                              (lambda (_e171316_
                                       _vars171317_
                                       _target171318_
                                       _E171319_
                                       _k171320_)
                                (let* ((_e171321171328_ _e171316_)
                                       (_E171323171332_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e171321171328_)))
                                       (_K171324171454_
                                        (lambda (_body171335_ _tag171336_)
                                          (let ((_$e171338_ _tag171336_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e171338_))
                                                (_k171320_ _vars171317_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e171338_))
                                                    (let ((__tmp176695
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target171318_)))
                                                          (__tmp176691
                                                           (let ((__tmp176693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176694
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e171048_
                                    _body171335_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?171046_
                             __tmp176694
                             _target171318_)))
                         (__tmp176692 (_k171320_ _vars171317_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp176693 __tmp176692 _E171319_))))
              (declare (not safe))
              (gx#core-list 'if __tmp176695 __tmp176691 _E171319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e171338_))
                                                        (_k171320_
                                                         (let ((__tmp176690
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body171335_ _target171318_))))
                   (declare (not safe))
                   (cons __tmp176690 _vars171317_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e171338_))
                    (let ((_$e171341_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd171342_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl171343_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp176689
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target171318_)))
                            (__tmp176670
                             (let ((__tmp176684
                                    (let ((__tmp176685
                                           (let ((__tmp176688
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e171341_ '())))
                                                 (__tmp176686
                                                  (let ((__tmp176687
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e171047_
                                                            _target171318_))))
                                                    (declare (not safe))
                                                    (cons __tmp176687 '()))))
                                             (declare (not safe))
                                             (cons __tmp176688 __tmp176686))))
                                      (declare (not safe))
                                      (cons __tmp176685 '())))
                                   (__tmp176671
                                    (let ((__tmp176674
                                           (let ((__tmp176680
                                                  (let ((__tmp176683
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd171342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp176681
                 (let ((__tmp176682
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e171341_))))
                   (declare (not safe))
                   (cons __tmp176682 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176683
                                                          __tmp176681)))
                                                 (__tmp176675
                                                  (let ((__tmp176676
                                                         (let ((__tmp176679
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl171343_ '())))
                       (__tmp176677
                        (let ((__tmp176678
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e171341_))))
                          (declare (not safe))
                          (cons __tmp176678 '()))))
                   (declare (not safe))
                   (cons __tmp176679 __tmp176677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176676 '()))))
                                             (declare (not safe))
                                             (cons __tmp176680 __tmp176675)))
                                          (__tmp176672
                                           (let* ((_body171344171351_
                                                   _body171335_)
                                                  (_E171346171355_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body171344171351_)))
                                                  (_K171347171363_
                                                   (lambda (_tl171358_
                                                            _hd171359_)
                                                     (let ((__tmp176673
                                                            (lambda (_vars171361_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur171225_
                         _tl171358_
                         _vars171361_
                         _$tl171343_
                         _E171319_
                         _k171320_)))))
               (declare (not safe))
               (_recur171225_
                _hd171359_
                _vars171317_
                _$hd171342_
                _E171319_
                __tmp176673)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body171344171351_))
                                                 (let ((_hd171348171366_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body171344171351_)))
                                                       (_tl171349171368_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body171344171351_))))
                                                   (let* ((_hd171371_
                                                           _hd171348171366_)
                                                          (_tl171373_
                                                           _tl171349171368_))
                                                     (declare (not safe))
                                                     (_K171347171363_
                                                      _tl171373_
                                                      _hd171371_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E171346171355_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp176674
                                       __tmp176672))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp176684
                                __tmp176671))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp176689 __tmp176670 _E171319_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e171338_))
                        (let* ((_body171374171381_ _body171335_)
                               (_E171376171385_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body171374171381_)))
                               (_K171377171436_
                                (lambda (_tl171388_ _hd171389_)
                                  (let* ((_rlen171391_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen171226_ _tl171388_)))
                                         (_$target171393_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd171395_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl171397_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp171399_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e171401_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd171403_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl171405_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars171407_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars171227_ _hd171389_)))
                                         (_lvars171409_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171407_)))
                                         (_tlvars171411_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171407_)))
                                         (_linit171415_
                                          (map (lambda (_var171413_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars171409_)))
                                    (letrec ((_make-loop171418_
                                              (lambda (_vars171422_)
                                                (let ((__tmp176621
                                                       (let ((__tmp176622
                                                              (let ((__tmp176658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp171399_ '())))
                            (__tmp176623
                             (let ((__tmp176624
                                    (let ((__tmp176657
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd171395_ _lvars171409_)))
                                          (__tmp176625
                                           (let ((__tmp176656
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd171395_)))
                                                 (__tmp176634
                                                  (let ((__tmp176651
                                                         (let ((__tmp176652
                                                                (let ((__tmp176655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e171401_ '())))
                              (__tmp176653
                               (let ((__tmp176654
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e171047_
                                         _$hd171395_))))
                                 (declare (not safe))
                                 (cons __tmp176654 '()))))
                          (declare (not safe))
                          (cons __tmp176655 __tmp176653))))
                   (declare (not safe))
                   (cons __tmp176652 '())))
                (__tmp176635
                 (let ((__tmp176641
                        (let ((__tmp176647
                               (let ((__tmp176650
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd171403_ '())))
                                     (__tmp176648
                                      (let ((__tmp176649
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e171401_))))
                                        (declare (not safe))
                                        (cons __tmp176649 '()))))
                                 (declare (not safe))
                                 (cons __tmp176650 __tmp176648)))
                              (__tmp176642
                               (let ((__tmp176643
                                      (let ((__tmp176646
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl171405_ '())))
                                            (__tmp176644
                                             (let ((__tmp176645
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e171401_))))
                                               (declare (not safe))
                                               (cons __tmp176645 '()))))
                                        (declare (not safe))
                                        (cons __tmp176646 __tmp176644))))
                                 (declare (not safe))
                                 (cons __tmp176643 '()))))
                          (declare (not safe))
                          (cons __tmp176647 __tmp176642)))
                       (__tmp176636
                        (let ((__tmp176637
                               (lambda (_hdvars171424_)
                                 (let ((__tmp176638
                                        (let ((__tmp176639
                                               (map (lambda (_svar171426_
                                                             _lvar171427_)
                                                      (let ((__tmp176640
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar171426_ _hdvars171424_ _BUG171224_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp176640 _lvar171427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars171407_
                                                    _lvars171409_)))
                                          (declare (not safe))
                                          (cons _$lp-tl171405_ __tmp176639))))
                                   (declare (not safe))
                                   (cons _$lp171399_ __tmp176638)))))
                          (declare (not safe))
                          (_recur171225_
                           _hd171389_
                           '()
                           _$lp-hd171403_
                           _E171319_
                           __tmp176637))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp176641 __tmp176636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176651
                                                     __tmp176635)))
                                                 (__tmp176626
                                                  (let ((__tmp176630
                                                         (map (lambda (_lvar171429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar171430_)
                        (let ((__tmp176633
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar171430_ '())))
                              (__tmp176631
                               (let ((__tmp176632
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar171429_))))
                                 (declare (not safe))
                                 (cons __tmp176632 '()))))
                          (declare (not safe))
                          (cons __tmp176633 __tmp176631)))
                      _lvars171409_
                      _tlvars171411_))
                (__tmp176627
                 (_k171320_
                  (let ((__tmp176628
                         (lambda (_svar171432_ _tlvar171433_ _r171434_)
                           (let ((__tmp176629
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar171432_ _tlvar171433_))))
                             (declare (not safe))
                             (cons __tmp176629 _r171434_)))))
                    (declare (not safe))
                    (foldl2 __tmp176628
                            _vars171422_
                            _svars171407_
                            _tlvars171411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176630
                                                     __tmp176627))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp176656
                                              __tmp176634
                                              __tmp176626))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp176657
                                       __tmp176625))))
                               (declare (not safe))
                               (cons __tmp176624 '()))))
                        (declare (not safe))
                        (cons __tmp176658 __tmp176623))))
                 (declare (not safe))
                 (cons __tmp176622 '())))
              (__tmp176619
               (let ((__tmp176620
                      (let ()
                        (declare (not safe))
                        (cons _$target171393_ _linit171415_))))
                 (declare (not safe))
                 (cons _$lp171399_ __tmp176620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp176621
                                                   __tmp176619)))))
                                      (let ((_body171420_
                                             (let ((__tmp176660
                                                    (let ((__tmp176661
                                                           (let ((__tmp176664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176665
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl171397_ '()))))
                            (declare (not safe))
                            (cons _$target171393_ __tmp176665)))
                         (__tmp176662
                          (let ((__tmp176663
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target171318_
                                    _rlen171391_))))
                            (declare (not safe))
                            (cons __tmp176663 '()))))
                     (declare (not safe))
                     (cons __tmp176664 __tmp176662))))
              (declare (not safe))
              (cons __tmp176661 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176659
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171225_
                                                       _tl171388_
                                                       _vars171317_
                                                       _$tl171397_
                                                       _E171319_
                                                       _make-loop171418_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176660
                                                __tmp176659))))
                                        (let ((__tmp176669
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target171318_)))
                                              (__tmp176666
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen171391_))
                                                   _body171420_
                                                   (let ((__tmp176667
                                                          (let ((__tmp176668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target171318_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp176668 _rlen171391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp176667
                                                      _body171420_
                                                      _E171319_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp176669
                                           __tmp176666
                                           _E171319_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body171374171381_))
                              (let ((_hd171378171439_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body171374171381_)))
                                    (_tl171379171441_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body171374171381_))))
                                (let* ((_hd171444_ _hd171378171439_)
                                       (_tl171446_ _tl171379171441_))
                                  (declare (not safe))
                                  (_K171377171436_ _tl171446_ _hd171444_)))
                              (let () (declare (not safe)) (_E171376171385_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e171338_))
                            (let ((__tmp176618
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target171318_)))
                                  (__tmp176617 (_k171320_ _vars171317_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp176618
                               __tmp176617
                               _E171319_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e171338_))
                                (let ((_$e171448_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp176616
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target171318_)))
                                        (__tmp176608
                                         (let ((__tmp176610
                                                (let ((__tmp176611
                                                       (let ((__tmp176615
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e171448_ '())))
                     (__tmp176612
                      (let ((__tmp176613
                             (let ((__tmp176614
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e171047_
                                       _target171318_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp176614))))
                        (declare (not safe))
                        (cons __tmp176613 '()))))
                 (declare (not safe))
                 (cons __tmp176615 __tmp176612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp176611 '())))
                                               (__tmp176609
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur171225_
                                                   _body171335_
                                                   _vars171317_
                                                   _$e171448_
                                                   _E171319_
                                                   _k171320_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp176610
                                            __tmp176609))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp176616
                                     __tmp176608
                                     _E171319_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e171338_))
                                    (let ((_$e171450_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp176607
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target171318_)))
                                            (__tmp176599
                                             (let ((__tmp176601
                                                    (let ((__tmp176602
                                                           (let ((__tmp176606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e171450_ '())))
                         (__tmp176603
                          (let ((__tmp176604
                                 (let ((__tmp176605
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e171047_
                                           _target171318_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp176605))))
                            (declare (not safe))
                            (cons __tmp176604 '()))))
                     (declare (not safe))
                     (cons __tmp176606 __tmp176603))))
              (declare (not safe))
              (cons __tmp176602 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176600
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171225_
                                                       _body171335_
                                                       _vars171317_
                                                       _$e171450_
                                                       _E171319_
                                                       _k171320_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176601
                                                __tmp176600))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp176607
                                         __tmp176599
                                         _E171319_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171338_))
                                        (let ((_$e171452_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp176598
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target171318_)))
                                                (__tmp176589
                                                 (let ((__tmp176593
                                                        (let ((__tmp176594
                                                               (let ((__tmp176597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e171452_ '())))
                             (__tmp176595
                              (let ((__tmp176596
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target171318_))))
                                (declare (not safe))
                                (cons __tmp176596 '()))))
                         (declare (not safe))
                         (cons __tmp176597 __tmp176595))))
                  (declare (not safe))
                  (cons __tmp176594 '())))
               (__tmp176590
                (let ((__tmp176592
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e171452_ _body171335_)))
                      (__tmp176591 (_k171320_ _vars171317_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp176592 __tmp176591 _E171319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp176593
                                                    __tmp176590))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp176598
                                             __tmp176589
                                             _E171319_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG171224_ _e171316_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e171321171328_))
                                      (let ((_hd171325171457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171321171328_)))
                                            (_tl171326171459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171321171328_))))
                                        (let* ((_tag171462_ _hd171325171457_)
                                               (_body171464_ _tl171326171459_))
                                          (declare (not safe))
                                          (_K171324171454_
                                           _body171464_
                                           _tag171462_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171323171332_))))))
                             (_splice-rlen171226_
                              (lambda (_e171278_)
                                (let _lp171280_ ((_e171282_ _e171278_)
                                                 (_n171283_ '0))
                                  (let* ((_e171284171291_ _e171282_)
                                         (_E171286171295_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171284171291_)))
                                         (_K171287171304_
                                          (lambda (_body171298_ _tag171299_)
                                            (let ((_$e171301_ _tag171299_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e171301_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx171045_
                                                     _where171217_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e171301_))
                                                      (let ((__tmp176697
                                                             (cdr _body171298_))
                                                            (__tmp176696
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n171283_ '1))))
                (declare (not safe))
                (_lp171280_ __tmp176697 __tmp176696))
              _n171283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171284171291_))
                                        (let ((_hd171288171307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171284171291_)))
                                              (_tl171289171309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171284171291_))))
                                          (let* ((_tag171312_ _hd171288171307_)
                                                 (_body171314_
                                                  _tl171289171309_))
                                            (declare (not safe))
                                            (_K171287171304_
                                             _body171314_
                                             _tag171312_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171286171295_)))))))
                             (_splice-vars171227_
                              (lambda (_e171234_)
                                (let _recur171236_ ((_e171238_ _e171234_)
                                                    (_vars171239_ '()))
                                  (let* ((_e171240171247_ _e171238_)
                                         (_E171242171251_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171240171247_)))
                                         (_K171243171266_
                                          (lambda (_body171254_ _tag171255_)
                                            (let ((_$e171257_ _tag171255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e171257_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body171254_
                                                          _vars171239_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e171257_))
                  (let () (declare (not safe)) (eq? 'splice _$e171257_)))
              (let ((__tmp176700 (cdr _body171254_))
                    (__tmp176698
                     (let ((__tmp176699 (car _body171254_)))
                       (declare (not safe))
                       (_recur171236_ __tmp176699 _vars171239_))))
                (declare (not safe))
                (_recur171236_ __tmp176700 __tmp176698))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e171257_))
                      (let () (declare (not safe)) (eq? 'box _$e171257_)))
                  (let ()
                    (declare (not safe))
                    (_recur171236_ _body171254_ _vars171239_))
                  _vars171239_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171240171247_))
                                        (let ((_hd171244171269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171240171247_)))
                                              (_tl171245171271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171240171247_))))
                                          (let* ((_tag171274_ _hd171244171269_)
                                                 (_body171276_
                                                  _tl171245171271_))
                                            (declare (not safe))
                                            (_K171243171266_
                                             _body171276_
                                             _tag171274_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171242171251_)))))))
                             (_make-body171228_
                              (lambda (_vars171230_)
                                (let ((__tmp176701
                                       (map (lambda (_mvar171232_)
                                              (let ((__tmp176702
                                                     (car _mvar171232_)))
                                                (declare (not safe))
                                                (assgetq __tmp176702
                                                         _vars171230_
                                                         _BUG171224_)))
                                            _mvars171220_)))
                                  (declare (not safe))
                                  (cons _K171221_ __tmp176701)))))
                      (let ()
                        (declare (not safe))
                        (_recur171225_
                         _hd171219_
                         '()
                         _target171218_
                         _E171222_
                         _make-body171228_)))))
                 (_parse-clause171054_
                  (lambda (_hd171123_ _ids171124_)
                    (let _recur171126_ ((_e171128_ _hd171123_)
                                        (_vars171129_ '())
                                        (_depth171130_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e171128_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e171128_))
                              (values '(any) _vars171129_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e171128_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx171045_
                                     _hd171123_))
                                  (if (let ((__tmp176718
                                             (lambda (_id171132_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e171128_
                                                  _id171132_)))))
                                        (declare (not safe))
                                        (find __tmp176718 _ids171124_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e171128_))
                                              _vars171129_)
                                      (if (let ((__tmp176716
                                                 (lambda (_var171134_)
                                                   (let ((__tmp176717
                                                          (car _var171134_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e171128_
                                                      __tmp176717)))))
                                            (declare (not safe))
                                            (find __tmp176716 _vars171129_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx171045_
                                             _e171128_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e171128_))
                                                  (let ((__tmp176715
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e171128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth171130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176715
                                                          _vars171129_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e171128_))
                              (let* ((_e171135171142_ _e171128_)
                                     (_E171137171146_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e171135171142_))))
                                     (_E171136171207_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e171135171142_))
                                            (let ((_e171138171150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e171135171142_))))
                                              (let ((_hd171139171153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e171138171150_)))
                                                    (_tl171140171155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e171138171150_))))
                                                (let* ((_hd171158_
                                                        _hd171139171153_)
                                                       (_rest171160_
                                                        _tl171140171155_))
                                                  (if '#t
                                                      (let* ((_make-pair171175_
                                                              (lambda (_tag171162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd171163_
                               _tl171164_)
                        (let* ((_hd-depth171166_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag171162_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth171130_ '1))
                                    _depth171130_))
                               (_g176710_
                                (let ()
                                  (declare (not safe))
                                  (_recur171126_
                                   _hd171163_
                                   _vars171129_
                                   _hd-depth171166_))))
                          (begin
                            (let ((_g176711_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176710_)
                                         (##vector-length _g176710_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176711_ 2)))
                                  (error "Context expects 2 values"
                                         _g176711_)))
                            (let ((_hd171168_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176710_ 0)))
                                  (_vars171169_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176710_ 1))))
                              (let ((_g176712_
                                     (let ()
                                       (declare (not safe))
                                       (_recur171126_
                                        _tl171164_
                                        _vars171169_
                                        _depth171130_))))
                                (begin
                                  (let ((_g176713_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176712_)
                                               (##vector-length _g176712_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176713_ 2)))
                                        (error "Context expects 2 values"
                                               _g176713_)))
                                  (let ((_tl171171_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176712_ 0)))
                                        (_vars171172_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176712_ 1))))
                                    (let ()
                                      (values (let ((__tmp176714
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd171168_
                                                             _tl171171_))))
                                                (declare (not safe))
                                                (cons _tag171162_ __tmp176714))
                                              _vars171172_))))))))))
                     (_e171176171183_ _rest171160_)
                     (_E171178171187_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair171175_ 'cons _hd171158_ _rest171160_))))
                     (_E171177171203_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e171176171183_))
                            (let ((_e171179171191_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e171176171183_))))
                              (let ((_hd171180171194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171179171191_)))
                                    (_tl171181171196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171179171191_))))
                                (let* ((_rest-hd171199_ _hd171180171194_)
                                       (_rest-tl171201_ _tl171181171196_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd171199_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171175_
                                             'splice
                                             _hd171158_
                                             _rest-tl171201_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171175_
                                             'cons
                                             _hd171158_
                                             _rest171160_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171178171187_))))))
                            (let () (declare (not safe)) (_E171178171187_))))))
                (let () (declare (not safe)) (_E171177171203_)))
              (let () (declare (not safe)) (_E171137171146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E171137171146_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171136171207_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e171128_))
                                  (values '(null) _vars171129_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e171128_))
                                      (let ((_g176707_
                                             (let ((__tmp176709
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e171128_)))))
                                               (declare (not safe))
                                               (_recur171126_
                                                __tmp176709
                                                _vars171129_
                                                _depth171130_))))
                                        (begin
                                          (let ((_g176708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176707_)
                                                       (##vector-length
                                                        _g176707_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176708_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176708_)))
                                          (let ((_e171211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g176707_ 0)))
                                                (_vars171212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g176707_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e171211_))
                                                    _vars171212_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e171128_))
                                          (let ((_g176704_
                                                 (let ((__tmp176706
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e171128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur171126_
                                                    __tmp176706
                                                    _vars171129_
                                                    _depth171130_))))
                                            (begin
                                              (let ((_g176705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g176704_)
                                                           (##vector-length
                                                            _g176704_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g176705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g176705_)))
                                              (let ((_e171214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176704_
                                                        0)))
                                                    (_vars171215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176704_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e171214_))
                                                        _vars171215_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e171128_))
                                              (values (let ((__tmp176703
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e171128_))))
                (declare (not safe))
                (cons 'datum __tmp176703))
              _vars171129_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx171045_
                                                 _e171128_))))))))))))
          (let* ((_e171055171068_ _stx171045_)
                 (_E171057171072_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e171055171068_))))
                 (_E171056171119_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171055171068_))
                        (let ((_e171058171076_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171055171068_))))
                          (let ((_hd171059171079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171058171076_)))
                                (_tl171060171081_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171058171076_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171060171081_))
                                (let ((_e171061171084_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171060171081_))))
                                  (let ((_hd171062171087_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171061171084_)))
                                        (_tl171063171089_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171061171084_))))
                                    (let ((_expr171092_ _hd171062171087_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl171063171089_))
                                          (let ((_e171064171094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl171063171089_))))
                                            (let ((_hd171065171097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e171064171094_)))
                                                  (_tl171066171099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e171064171094_))))
                                              (let* ((_ids171102_
                                                      _hd171065171097_)
                                                     (_clauses171104_
                                                      _tl171066171099_))
                                                (if '#t
                                                    (if (let ((__tmp176736
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids171102_))))
                  (declare (not safe))
                  (not __tmp176736))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx171045_
                   _ids171102_))
                (if (let ((__tmp176735
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses171104_))))
                      (declare (not safe))
                      (not __tmp176735))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx171045_))
                    (let* ((_ids171106_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids171102_)))
                           (_clauses171108_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses171104_)))
                           (_clause-ids171110_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses171108_)))
                           (_E171112_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target171114_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first171116_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses171108_))
                                _E171112_
                                (car _clause-ids171110_))))
                      (let ((__tmp176720
                             (let ((__tmp176721
                                    (let ((__tmp176723
                                           (let ((__tmp176728
                                                  (let ((__tmp176729
                                                         (let ((__tmp176734
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E171112_ '())))
                       (__tmp176730
                        (let ((__tmp176731
                               (let ((__tmp176733
                                      (let ()
                                        (declare (not safe))
                                        (cons _target171114_ '())))
                                     (__tmp176732
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target171114_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp176733
                                  __tmp176732))))
                          (declare (not safe))
                          (cons __tmp176731 '()))))
                   (declare (not safe))
                   (cons __tmp176734 __tmp176730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176729 '())))
                                                 (__tmp176724
                                                  (let ((__tmp176727
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings171050_
                                                            _target171114_
                                                            _ids171106_
                                                            _clauses171108_
                                                            _clause-ids171110_
                                                            _E171112_)))
                                                        (__tmp176725
                                                         (let ((__tmp176726
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr171092_ '()))))
                   (declare (not safe))
                   (cons _first171116_ __tmp176726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body171051_
                                                     __tmp176727
                                                     __tmp176725))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp176728
                                              __tmp176724)))
                                          (__tmp176722
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx171045_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp176723
                                       __tmp176722))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp176721)))
                            (__tmp176719
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx171045_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp176720 __tmp176719)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171057171072_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E171057171072_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171057171072_)))))
                        (let () (declare (not safe)) (_E171057171072_))))))
            (let () (declare (not safe)) (_E171056171119_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx171755_)
        (let* ((_identifier=?171757_ 'free-identifier=?)
               (_unwrap-e171759_ 'syntax-e)
               (_wrap-e171761_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171755_
           _identifier=?171757_
           _unwrap-e171759_
           _wrap-e171761_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx171763_ _identifier=?171764_)
        (let* ((_unwrap-e171766_ 'syntax-e) (_wrap-e171768_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171763_
           _identifier=?171764_
           _unwrap-e171766_
           _wrap-e171768_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx171770_ _identifier=?171771_ _unwrap-e171772_)
        (let ((_wrap-e171774_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171770_
           _identifier=?171771_
           _unwrap-e171772_
           _wrap-e171774_))))
    (define gx#macro-expand-syntax-case
      (lambda _g176738_
        (let ((_g176737_ (let () (declare (not safe)) (##length _g176738_))))
          (cond ((let () (declare (not safe)) (##fx= _g176737_ 1))
                 (apply (lambda (_stx171755_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx171755_)))
                        _g176738_))
                ((let () (declare (not safe)) (##fx= _g176737_ 2))
                 (apply (lambda (_stx171763_ _identifier=?171764_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx171763_
                             _identifier=?171764_)))
                        _g176738_))
                ((let () (declare (not safe)) (##fx= _g176737_ 3))
                 (apply (lambda (_stx171770_
                                 _identifier=?171771_
                                 _unwrap-e171772_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx171770_
                             _identifier=?171771_
                             _unwrap-e171772_)))
                        _g176738_))
                ((let () (declare (not safe)) (##fx= _g176737_ 4))
                 (apply (lambda (_stx171776_
                                 _identifier=?171777_
                                 _unwrap-e171778_
                                 _wrap-e171779_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx171776_
                             _identifier=?171777_
                             _unwrap-e171778_
                             _wrap-e171779_)))
                        _g176738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g176738_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx171042_)
        (if (let () (declare (not safe)) (gx#identifier? _stx171042_))
            (let ((__tmp176739
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx171042_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp176739 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd171000_ . _rest171001_)
        (let ((_len171003_ (length _hd171000_)))
          (let _lp171005_ ((_rest171007_ _rest171001_))
            (let* ((_rest171008171016_ _rest171007_)
                   (_else171010171024_ (lambda () '#!void))
                   (_K171012171030_
                    (lambda (_rest171027_ _hd171028_)
                      (if (fx= _len171003_ (length _hd171028_))
                          (let ()
                            (declare (not safe))
                            (_lp171005_ _rest171027_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd171028_))))))
              (if (let () (declare (not safe)) (##pair? _rest171008171016_))
                  (let ((_hd171013171033_
                         (let ()
                           (declare (not safe))
                           (##car _rest171008171016_)))
                        (_tl171014171035_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest171008171016_))))
                    (let* ((_hd171038_ _hd171013171033_)
                           (_rest171040_ _tl171014171035_))
                      (declare (not safe))
                      (_K171012171030_ _rest171040_ _hd171038_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx170958_ _n170959_)
        (let _lp170961_ ((_rest170963_ _stx170958_) (_r170964_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest170963_))
              (let* ((_g170965170972_
                      (let () (declare (not safe)) (gx#syntax-e _rest170963_)))
                     (_E170967170976_
                      (lambda ()
                        (error '"No clause matching" _g170965170972_)))
                     (_K170968170982_
                      (lambda (_rest170979_ _hd170980_)
                        (let ((__tmp176744
                               (let ()
                                 (declare (not safe))
                                 (cons _hd170980_ _r170964_))))
                          (declare (not safe))
                          (_lp170961_ _rest170979_ __tmp176744)))))
                (if (let () (declare (not safe)) (##pair? _g170965170972_))
                    (let ((_hd170969170985_
                           (let ()
                             (declare (not safe))
                             (##car _g170965170972_)))
                          (_tl170970170987_
                           (let ()
                             (declare (not safe))
                             (##cdr _g170965170972_))))
                      (let* ((_hd170990_ _hd170969170985_)
                             (_rest170992_ _tl170970170987_))
                        (declare (not safe))
                        (_K170968170982_ _rest170992_ _hd170990_)))
                    (let () (declare (not safe)) (_E170967170976_))))
              (let _lp170994_ ((_n170996_ _n170959_)
                               (_l170997_ _r170964_)
                               (_r170998_ _rest170963_))
                (if (let () (declare (not safe)) (null? _l170997_))
                    (values _l170997_ _r170998_)
                    (if (fxpositive? _n170996_)
                        (let ((__tmp176743
                               (let ()
                                 (declare (not safe))
                                 (fx- _n170996_ '1)))
                              (__tmp176742 (cdr _l170997_))
                              (__tmp176740
                               (let ((__tmp176741 (car _l170997_)))
                                 (declare (not safe))
                                 (cons __tmp176741 _r170998_))))
                          (declare (not safe))
                          (_lp170994_ __tmp176743 __tmp176742 __tmp176740))
                        (values (reverse _l170997_) _r170998_))))))))))

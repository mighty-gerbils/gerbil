(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708334576)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp195373 (list gx#expander::t))
            (__tmp195371
             (let ((__tmp195372
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp195372 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp195373
         '(id depth)
         __tmp195371
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args191301_
        (apply make-instance gx#syntax-pattern::t _$args191301_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self191298_ _stx191299_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx191299_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx190780_)
        (letrec ((_generate190782_
                  (lambda (_e191009_)
                    (letrec ((_BUG191011_
                              (lambda (_q191173_)
                                (error '"BUG: syntax; generate"
                                       _stx190780_
                                       _e191009_
                                       _q191173_)))
                             (_local-pattern-e191012_
                              (lambda (_pat191171_)
                                (let ((__tmp195374
                                       (##structure-ref
                                        _pat191171_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp195374))))
                             (_getvar191013_
                              (lambda (_q191168_ _vars191169_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q191168_
                                           _vars191169_
                                           _BUG191011_))))
                             (_getarg191014_
                              (lambda (_arg191134_ _vars191135_)
                                (let* ((_arg191136191143_ _arg191134_)
                                       (_E191138191147_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg191136191143_)))
                                       (_K191139191156_
                                        (lambda (_e191150_ _tag191151_)
                                          (let ((_$e191153_ _tag191151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e191153_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar191013_
                                                   _e191150_
                                                   _vars191135_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e191153_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e191012_
                                                       _e191150_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG191011_
                                                       _arg191134_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg191136191143_))
                                      (let ((_hd191140191159_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg191136191143_)))
                                            (_tl191141191161_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg191136191143_))))
                                        (let* ((_tag191164_ _hd191140191159_)
                                               (_e191166_ _tl191141191161_))
                                          (declare (not safe))
                                          (_K191139191156_
                                           _e191166_
                                           _tag191164_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E191138191147_)))))))
                      (let _recur191016_ ((_e191018_ _e191009_)
                                          (_vars191019_ '()))
                        (let* ((_e191020191027_ _e191018_)
                               (_E191022191031_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e191020191027_)))
                               (_K191023191122_
                                (lambda (_body191034_ _tag191035_)
                                  (let ((_$e191037_ _tag191035_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e191037_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body191034_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e191037_))
                                            (let ((_id191040_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body191034_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id191040_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks191042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id191040_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks191042_))
                                                        (let ((__tmp195402
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body191034_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp195402))
                (let ((__tmp195401
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body191034_)))
                      (__tmp195400
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body191034_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp195401
                   __tmp195400
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id191040_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body191034_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG191011_
                                                         _e191018_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e191037_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e191012_
                                                   _body191034_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e191037_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar191013_
                                                       _body191034_
                                                       _vars191019_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e191037_))
                                                        (let ((__tmp195398
                                                               (let ((__tmp195399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body191034_)))
                         (declare (not safe))
                         (_recur191016_ __tmp195399 _vars191019_)))
                      (__tmp195396
                       (let ((__tmp195397 (cdr _body191034_)))
                         (declare (not safe))
                         (_recur191016_ __tmp195397 _vars191019_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp195398 __tmp195396))
                (if (let () (declare (not safe)) (eq? 'vector _$e191037_))
                    (let ((__tmp195395
                           (let ()
                             (declare (not safe))
                             (_recur191016_ _body191034_ _vars191019_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp195395))
                    (if (let () (declare (not safe)) (eq? 'box _$e191037_))
                        (let ((__tmp195394
                               (let ()
                                 (declare (not safe))
                                 (_recur191016_ _body191034_ _vars191019_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp195394))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e191037_))
                            (let* ((_body191043191054_ _body191034_)
                                   (_E191045191058_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body191043191054_)))
                                   (_K191046191096_
                                    (lambda (_args191061_
                                             _iv191062_
                                             _hd191063_
                                             _depth191064_)
                                      (let* ((_targets191070_
                                              (map (lambda (_g191065191067_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg191014_
                                                        _g191065191067_
                                                        _vars191019_)))
                                                   _args191061_))
                                             (_fold-in191072_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args191061_)))
                                             (_fold-out191074_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args191076_
                                              (let ((__tmp195375
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out191074_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp195375
                                                        _fold-in191072_)))
                                             (_lambda-body191093_
                                              (if (fx> _depth191064_ '1)
                                                  (let ((_r-args191084_
                                                         (map (lambda (_arg191078_)
                                                                (let ((__tmp195380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg191078_)))
                          (declare (not safe))
                          (cons 'ref __tmp195380)))
                      _args191061_))
                (_r-vars191085_
                 (let ((__tmp195381
                        (lambda (_arg191080_ _var191081_ _r191082_)
                          (let ((__tmp195382
                                 (let ((__tmp195383 (cdr _arg191080_)))
                                   (declare (not safe))
                                   (cons __tmp195383 _var191081_))))
                            (declare (not safe))
                            (cons __tmp195382 _r191082_)))))
                   (declare (not safe))
                   (foldr2 __tmp195381
                           _vars191019_
                           _args191061_
                           _fold-in191072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp195384
                                                           (let ((__tmp195385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195389
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth191064_ '1)))
                                (__tmp195386
                                 (let ((__tmp195387
                                        (let ((__tmp195388
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out191074_))))
                                          (declare (not safe))
                                          (cons __tmp195388 _r-args191084_))))
                                   (declare (not safe))
                                   (cons _hd191063_ __tmp195387))))
                            (declare (not safe))
                            (cons __tmp195389 __tmp195386))))
                     (declare (not safe))
                     (cons 'splice __tmp195385))))
              (declare (not safe))
              (_recur191016_ __tmp195384 _r-vars191085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars191091_
                                                          (let ((__tmp195376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg191087_ _var191088_ _r191089_)
                           (let ((__tmp195377
                                  (let ((__tmp195378 (cdr _arg191087_)))
                                    (declare (not safe))
                                    (cons __tmp195378 _var191088_))))
                             (declare (not safe))
                             (cons __tmp195377 _r191089_)))))
                    (declare (not safe))
                    (foldr2 __tmp195376
                            _vars191019_
                            _args191061_
                            _fold-in191072_)))
                 (__tmp195379
                  (let ()
                    (declare (not safe))
                    (_recur191016_ _hd191063_ _hd-vars191091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp195379
                                                     _fold-out191074_)))))
                                        (let ((__tmp195393
                                               (if (fx> (length _targets191070_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets191070_))
                                                   '#!void))
                                              (__tmp195390
                                               (let ((__tmp195392
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args191076_
                                                         _lambda-body191093_)))
                                                     (__tmp195391
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur191016_
                                                         _iv191062_
                                                         _vars191019_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp195392
                                                  __tmp195391
                                                  _targets191070_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp195393
                                           __tmp195390))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body191043191054_))
                                  (let ((_hd191047191099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body191043191054_)))
                                        (_tl191048191101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body191043191054_))))
                                    (let ((_depth191104_ _hd191047191099_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl191048191101_))
                                          (let ((_hd191049191106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl191048191101_)))
                                                (_tl191050191108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl191048191101_))))
                                            (let ((_hd191111_
                                                   _hd191049191106_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl191050191108_))
                                                  (let ((_hd191051191113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl191050191108_)))
                                                        (_tl191052191115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl191050191108_))))
                                                    (let* ((_iv191118_
                                                            _hd191051191113_)
                                                           (_args191120_
                                                            _tl191052191115_))
                                                      (declare (not safe))
                                                      (_K191046191096_
                                                       _args191120_
                                                       _iv191118_
                                                       _hd191111_
                                                       _depth191104_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E191045191058_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E191045191058_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E191045191058_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e191037_))
                                _body191034_
                                (let ()
                                  (declare (not safe))
                                  (_BUG191011_ _e191018_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e191020191027_))
                              (let ((_hd191024191125_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e191020191027_)))
                                    (_tl191025191127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e191020191027_))))
                                (let* ((_tag191130_ _hd191024191125_)
                                       (_body191132_ _tl191025191127_))
                                  (declare (not safe))
                                  (_K191023191122_ _body191132_ _tag191130_)))
                              (let ()
                                (declare (not safe))
                                (_E191022191031_))))))))
                 (_parse190783_
                  (lambda (_e190824_)
                    (letrec ((_make-cons190826_
                              (lambda (_hd191001_ _tl191002_)
                                (let ((_g195403_ _hd191001_)
                                      (_g195405_ _tl191002_))
                                  (begin
                                    (let ((_g195404_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195403_)
                                                 (##vector-length _g195403_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195404_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195404_)))
                                    (let ((_g195406_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195405_)
                                                 (##vector-length _g195405_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195406_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195406_)))
                                    (let ((_hd-e191004_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195403_ 0)))
                                          (_hd-vars191005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195403_ 1))))
                                      (let ((_tl-e191006_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195405_ 0)))
                                            (_tl-vars191007_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195405_ 1))))
                                        (values (let ((__tmp195407
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e191004_
                                                               _tl-e191006_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp195407))
                                                (append _hd-vars191005_
                                                        _tl-vars191007_))))))))
                             (_make-splice190827_
                              (lambda (_where190940_
                                       _depth190941_
                                       _hd190942_
                                       _tl190943_)
                                (let ((_g195408_ _hd190942_)
                                      (_g195410_ _tl190943_))
                                  (begin
                                    (let ((_g195409_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195408_)
                                                 (##vector-length _g195408_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195409_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195409_)))
                                    (let ((_g195411_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195410_)
                                                 (##vector-length _g195410_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195411_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195411_)))
                                    (let ((_hd-e190945_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195408_ 0)))
                                          (_hd-vars190946_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195408_ 1))))
                                      (let ((_tl-e190947_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195410_ 0)))
                                            (_tl-vars190948_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195410_ 1))))
                                        (let _lp190950_ ((_rest190952_
                                                          _hd-vars190946_)
                                                         (_targets190953_ '())
                                                         (_vars190954_
                                                          _tl-vars190948_))
                                          (let* ((_rest190955190965_
                                                  _rest190952_)
                                                 (_else190957190973_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets190953_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx190780_
                                                           _where190940_))
                                                        (values (let ((__tmp195412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195413
                                      (let ((__tmp195414
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e190947_
                                                     _targets190953_))))
                                        (declare (not safe))
                                        (cons _hd-e190945_ __tmp195414))))
                                 (declare (not safe))
                                 (cons _depth190941_ __tmp195413))))
                          (declare (not safe))
                          (cons 'splice __tmp195412))
                        _vars190954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K190959190982_
                                                  (lambda (_rest190976_
                                                           _hd-pat190977_
                                                           _hd-depth*190978_)
                                                    (let ((_hd-depth190980_
                                                           (fx- _hd-depth*190978_
                                                                _depth190941_)))
                                                      (if (fxpositive?
                                                           _hd-depth190980_)
                                                          (let ((__tmp195419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195420
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat190977_))))
                           (declare (not safe))
                           (cons __tmp195420 _targets190953_)))
                        (__tmp195417
                         (let ((__tmp195418
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth190980_ _hd-pat190977_))))
                           (declare (not safe))
                           (cons __tmp195418 _vars190954_))))
                    (declare (not safe))
                    (_lp190950_ _rest190976_ __tmp195419 __tmp195417))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth190980_))
                      (let ((__tmp195415
                             (let ((__tmp195416
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat190977_))))
                               (declare (not safe))
                               (cons __tmp195416 _targets190953_))))
                        (declare (not safe))
                        (_lp190950_ _rest190976_ __tmp195415 _vars190954_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx190780_
                         _where190940_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest190955190965_))
                                                (let ((_hd190960190985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest190955190965_)))
                                                      (_tl190961190987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest190955190965_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd190960190985_))
                                                      (let ((_hd190962190990_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd190960190985_)))
                    (_tl190963190992_
                     (let () (declare (not safe)) (##cdr _hd190960190985_))))
                (let* ((_hd-depth*190995_ _hd190962190990_)
                       (_hd-pat190997_ _tl190963190992_)
                       (_rest190999_ _tl190961190987_))
                  (declare (not safe))
                  (_K190959190982_
                   _rest190999_
                   _hd-pat190997_
                   _hd-depth*190995_)))
              (let () (declare (not safe)) (_else190957190973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else190957190973_)))))))))))
                             (_recur190828_
                              (lambda (_e190833_ _is-e?190834_)
                                (if (_is-e?190834_ _e190833_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx190780_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e190833_))
                                        (let* ((_pat190836_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e190833_)))
                                               (_depth190838_
                                                (##structure-ref
                                                 _pat190836_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth190838_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat190836_))
                                                      (let ((__tmp195436
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth190838_ _pat190836_))))
                (declare (not safe))
                (cons __tmp195436 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat190836_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e190833_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e190833_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e190833_))
                                                (let* ((_e190840190847_
                                                        _e190833_)
                                                       (_E190842190851_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e190840190847_))))
                                                       (_E190841190930_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e190840190847_))
                      (let ((_e190843190855_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e190840190847_))))
                        (let ((_hd190844190858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190843190855_)))
                              (_tl190845190860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190843190855_))))
                          (let* ((_hd190863_ _hd190844190858_)
                                 (_rest190865_ _tl190845190860_))
                            (if '#t
                                (if (_is-e?190834_ _hd190863_)
                                    (let* ((_e190866190873_ _rest190865_)
                                           (_E190868190877_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx190780_
                                                 _e190833_))))
                                           (_E190867190891_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e190866190873_))
                                                  (let ((_e190869190881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e190866190873_))))
                                                    (let ((_hd190870190884_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e190869190881_)))
                                                          (_tl190871190886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e190869190881_))))
                                                      (let ((_rest190889_
                                                             _hd190870190884_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl190871190886_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur190828_ _rest190889_ false))
                        (let () (declare (not safe)) (_E190868190877_)))
                    (let () (declare (not safe)) (_E190868190877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E190868190877_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E190867190891_)))
                                    (let _lp190895_ ((_rest190897_
                                                      _rest190865_)
                                                     (_depth190898_ '0))
                                      (let* ((_e190899190906_ _rest190897_)
                                             (_E190901190910_
                                              (lambda ()
                                                (if (fxpositive? _depth190898_)
                                                    (let ((__tmp195430
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190828_
                                                              _hd190863_
                                                              _is-e?190834_)))
                                                          (__tmp195429
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190828_
                                                              _rest190897_
                                                              _is-e?190834_))))
                                                      (declare (not safe))
                                                      (_make-splice190827_
                                                       _e190833_
                                                       _depth190898_
                                                       __tmp195430
                                                       __tmp195429))
                                                    (let ((__tmp195428
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190828_
                                                              _hd190863_
                                                              _is-e?190834_)))
                                                          (__tmp195427
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190828_
                                                              _rest190897_
                                                              _is-e?190834_))))
                                                      (declare (not safe))
                                                      (_make-cons190826_
                                                       __tmp195428
                                                       __tmp195427)))))
                                             (_E190900190926_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e190899190906_))
                                                    (let ((_e190902190914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e190899190906_))))
                                                      (let ((_hd190903190917_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e190902190914_)))
                    (_tl190904190919_
                     (let () (declare (not safe)) (##cdr _e190902190914_))))
                (let* ((_rest-hd190922_ _hd190903190917_)
                       (_rest-tl190924_ _tl190904190919_))
                  (if '#t
                      (if (_is-e?190834_ _rest-hd190922_)
                          (let ((__tmp195435
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth190898_ '1))))
                            (declare (not safe))
                            (_lp190895_ _rest-tl190924_ __tmp195435))
                          (if (fxpositive? _depth190898_)
                              (let ((__tmp195434
                                     (let ()
                                       (declare (not safe))
                                       (_recur190828_
                                        _hd190863_
                                        _is-e?190834_)))
                                    (__tmp195433
                                     (let ()
                                       (declare (not safe))
                                       (_recur190828_
                                        _rest190897_
                                        _is-e?190834_))))
                                (declare (not safe))
                                (_make-splice190827_
                                 _e190833_
                                 _depth190898_
                                 __tmp195434
                                 __tmp195433))
                              (let ((__tmp195432
                                     (let ()
                                       (declare (not safe))
                                       (_recur190828_
                                        _hd190863_
                                        _is-e?190834_)))
                                    (__tmp195431
                                     (let ()
                                       (declare (not safe))
                                       (_recur190828_
                                        _rest190897_
                                        _is-e?190834_))))
                                (declare (not safe))
                                (_make-cons190826_ __tmp195432 __tmp195431))))
                      (let () (declare (not safe)) (_E190901190910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E190901190910_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E190900190926_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E190842190851_))))))
                      (let () (declare (not safe)) (_E190842190851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E190841190930_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e190833_))
                                                    (let ((_g195424_
                                                           (let ((__tmp195426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e190833_)))))
                     (declare (not safe))
                     (_recur190828_ __tmp195426 _is-e?190834_))))
              (begin
                (let ((_g195425_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g195424_)
                             (##vector-length _g195424_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195425_ 2)))
                      (error "Context expects 2 values" _g195425_)))
                (let ((_e190934_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g195424_ 0)))
                      (_vars190935_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g195424_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e190934_))
                          _vars190935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e190833_))
                                                        (let ((_g195421_
                                                               (let ((__tmp195423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e190833_)))))
                         (declare (not safe))
                         (_recur190828_ __tmp195423 _is-e?190834_))))
                  (begin
                    (let ((_g195422_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g195421_)
                                 (##vector-length _g195421_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g195422_ 2)))
                          (error "Context expects 2 values" _g195422_)))
                    (let ((_e190937_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g195421_ 0)))
                          (_vars190938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g195421_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e190937_))
                              _vars190938_))))
                (values (let () (declare (not safe)) (cons 'datum _e190833_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g195437_
                             (let ()
                               (declare (not safe))
                               (_recur190828_ _e190824_ gx#ellipsis?))))
                        (begin
                          (let ((_g195438_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g195437_)
                                       (##vector-length _g195437_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g195438_ 2)))
                                (error "Context expects 2 values" _g195438_)))
                          (let ((_tree190830_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g195437_ 0)))
                                (_vars190831_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g195437_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars190831_))
                                _tree190830_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx190780_
                                   _vars190831_))))))))))
          (let* ((_e190784190794_ _stx190780_)
                 (_E190786190798_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx190780_))))
                 (_E190785190820_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e190784190794_))
                        (let ((_e190787190802_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e190784190794_))))
                          (let ((_hd190788190805_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e190787190802_)))
                                (_tl190789190807_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e190787190802_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl190789190807_))
                                (let ((_e190790190810_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl190789190807_))))
                                  (let ((_hd190791190813_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e190790190810_)))
                                        (_tl190792190815_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e190790190810_))))
                                    (let ((_form190818_ _hd190791190813_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl190792190815_))
                                          (if '#t
                                              (let ((__tmp195440
                                                     (let ((__tmp195441
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse190783_
                                                               _form190818_))))
                                                       (declare (not safe))
                                                       (_generate190782_
                                                        __tmp195441)))
                                                    (__tmp195439
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx190780_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp195440
                                                 __tmp195439))
                                              (let ()
                                                (declare (not safe))
                                                (_E190786190798_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E190786190798_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E190786190798_)))))
                        (let () (declare (not safe)) (_E190786190798_))))))
            (let () (declare (not safe)) (_E190785190820_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx190044_
               _identifier=?190045_
               _unwrap-e190046_
               _wrap-e190047_)
        (letrec ((_generate-bindings190049_
                  (lambda (_target190644_
                           _ids190645_
                           _clauses190646_
                           _clause-ids190647_
                           _E190648_)
                    (letrec ((_generate1190650_
                              (lambda (_clause190747_
                                       _clause-id190748_
                                       _E190749_)
                                (let ((__tmp195446
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id190748_ '())))
                                      (__tmp195442
                                       (let ((__tmp195443
                                              (let ((__tmp195445
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target190644_
                                                             '())))
                                                    (__tmp195444
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause190051_
                                                        _target190644_
                                                        _ids190645_
                                                        _clause190747_
                                                        _E190749_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp195445
                                                 __tmp195444))))
                                         (declare (not safe))
                                         (cons __tmp195443 '()))))
                                  (declare (not safe))
                                  (cons __tmp195446 __tmp195442)))))
                      (let _lp190652_ ((_rest190654_ _clauses190646_)
                                       (_rest-ids190655_ _clause-ids190647_)
                                       (_bindings190656_ '()))
                        (let* ((_rest190657190665_ _rest190654_)
                               (_else190659190673_
                                (lambda () _bindings190656_))
                               (_K190661190735_
                                (lambda (_rest190676_ _clause190677_)
                                  (let* ((_rest-ids190678190685_
                                          _rest-ids190655_)
                                         (_E190680190689_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids190678190685_)))
                                         (_K190681190723_
                                          (lambda (_rest-ids190692_
                                                   _clause-id190693_)
                                            (let* ((_rest-ids190694190702_
                                                    _rest-ids190692_)
                                                   (_else190696190710_
                                                    (lambda ()
                                                      (let ((__tmp195447
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1190650_
                        _clause190677_
                        _clause-id190693_
                        _E190648_))))
                (declare (not safe))
                (cons __tmp195447 _bindings190656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K190698190715_
                                                    (lambda (_next-clause-id190713_)
                                                      (let ((__tmp195448
                                                             (let ((__tmp195449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1190650_
                               _clause190677_
                               _clause-id190693_
                               _next-clause-id190713_))))
                       (declare (not safe))
                       (cons __tmp195449 _bindings190656_))))
                (declare (not safe))
                (_lp190652_ _rest190676_ _rest-ids190692_ __tmp195448)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids190694190702_))
                                                  (let* ((_hd190699190718_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids190694190702_)))
                                                         (_next-clause-id190721_
                                                          _hd190699190718_))
                                                    (declare (not safe))
                                                    (_K190698190715_
                                                     _next-clause-id190721_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else190696190710_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids190678190685_))
                                        (let ((_hd190682190726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids190678190685_)))
                                              (_tl190683190728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids190678190685_))))
                                          (let* ((_clause-id190731_
                                                  _hd190682190726_)
                                                 (_rest-ids190733_
                                                  _tl190683190728_))
                                            (declare (not safe))
                                            (_K190681190723_
                                             _rest-ids190733_
                                             _clause-id190731_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190680190689_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest190657190665_))
                              (let ((_hd190662190738_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest190657190665_)))
                                    (_tl190663190740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest190657190665_))))
                                (let* ((_clause190743_ _hd190662190738_)
                                       (_rest190745_ _tl190663190740_))
                                  (declare (not safe))
                                  (_K190661190735_
                                   _rest190745_
                                   _clause190743_)))
                              (let ()
                                (declare (not safe))
                                (_else190659190673_))))))))
                 (_generate-body190050_
                  (lambda (_bindings190604_ _body190605_)
                    (let _recur190607_ ((_rest190609_ _bindings190604_))
                      (let* ((_rest190610190618_ _rest190609_)
                             (_else190612190626_ (lambda () _body190605_))
                             (_K190614190632_
                              (lambda (_rest190629_ _hd190630_)
                                (let ((__tmp195451
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd190630_ '())))
                                      (__tmp195450
                                       (let ()
                                         (declare (not safe))
                                         (_recur190607_ _rest190629_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp195451
                                   __tmp195450)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest190610190618_))
                            (let ((_hd190615190635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest190610190618_)))
                                  (_tl190616190637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest190610190618_))))
                              (let* ((_hd190640_ _hd190615190635_)
                                     (_rest190642_ _tl190616190637_))
                                (declare (not safe))
                                (_K190614190632_ _rest190642_ _hd190640_)))
                            (let ()
                              (declare (not safe))
                              (_else190612190626_)))))))
                 (_generate-clause190051_
                  (lambda (_target190467_ _ids190468_ _clause190469_ _E190470_)
                    (letrec ((_generate1190472_
                              (lambda (_hd190559_ _fender190560_ _body190561_)
                                (let ((_g195452_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause190053_
                                          _hd190559_
                                          _ids190468_))))
                                  (begin
                                    (let ((_g195453_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195452_)
                                                 (##vector-length _g195452_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195453_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195453_)))
                                    (let ((_e190563_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195452_ 0)))
                                          (_mvars190564_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195452_ 1))))
                                      (let* ((_pvars190566_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars190564_))))
                                             (_E190568_
                                              (let ((__tmp195454
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target190467_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E190470_ __tmp195454)))
                                             (_K190601_
                                              (let ((__tmp195455
                                                     (let ((__tmp195457
                                                            (map (lambda (_mvar190570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar190571_)
                           (let* ((_mvar190572190579_ _mvar190570_)
                                  (_E190574190583_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar190572190579_)))
                                  (_K190575190589_
                                   (lambda (_depth190586_ _id190587_)
                                     (let ((__tmp195458
                                            (let ((__tmp195459
                                                   (let ((__tmp195461
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id190587_)))
                                                         (__tmp195460
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar190571_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp195461
                                                      __tmp195460
                                                      _depth190586_))))
                                              (declare (not safe))
                                              (cons __tmp195459 '()))))
                                       (declare (not safe))
                                       (cons _id190587_ __tmp195458)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar190572190579_))
                                 (let ((_hd190576190592_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar190572190579_)))
                                       (_tl190577190594_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar190572190579_))))
                                   (let* ((_id190597_ _hd190576190592_)
                                          (_depth190599_ _tl190577190594_))
                                     (declare (not safe))
                                     (_K190575190589_
                                      _depth190599_
                                      _id190597_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E190574190583_)))))
                         _mvars190564_
                         _pvars190566_))
                   (__tmp195456
                    (if (let () (declare (not safe)) (eq? _fender190560_ '#t))
                        _body190561_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender190560_
                           _body190561_
                           _E190568_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp195457 __tmp195456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars190566_
                                                 __tmp195455))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match190052_
                                           _hd190559_
                                           _target190467_
                                           _e190563_
                                           _mvars190564_
                                           _K190601_
                                           _E190568_)))))))))
                      (let* ((_e190473190493_ _clause190469_)
                             (_E190482190497_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e190473190493_))))
                             (_E190475190531_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e190473190493_))
                                    (let ((_e190483190501_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e190473190493_))))
                                      (let ((_hd190484190504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190483190501_)))
                                            (_tl190485190506_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190483190501_))))
                                        (let ((_hd190509_ _hd190484190504_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl190485190506_))
                                              (let ((_e190486190511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl190485190506_))))
                                                (let ((_hd190487190514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e190486190511_)))
                                                      (_tl190488190516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e190486190511_))))
                                                  (let ((_fender190519_
                                                         _hd190487190514_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl190488190516_))
                                                        (let ((_e190489190521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl190488190516_))))
                  (let ((_hd190490190524_
                         (let () (declare (not safe)) (##car _e190489190521_)))
                        (_tl190491190526_
                         (let ()
                           (declare (not safe))
                           (##cdr _e190489190521_))))
                    (let ((_body190529_ _hd190490190524_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl190491190526_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1190472_
                                 _hd190509_
                                 _fender190519_
                                 _body190529_))
                              (let () (declare (not safe)) (_E190482190497_)))
                          (let () (declare (not safe)) (_E190482190497_))))))
                (let () (declare (not safe)) (_E190482190497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E190482190497_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E190482190497_)))))
                             (_E190474190555_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e190473190493_))
                                    (let ((_e190476190535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e190473190493_))))
                                      (let ((_hd190477190538_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190476190535_)))
                                            (_tl190478190540_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190476190535_))))
                                        (let ((_hd190543_ _hd190477190538_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl190478190540_))
                                              (let ((_e190479190545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl190478190540_))))
                                                (let ((_hd190480190548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e190479190545_)))
                                                      (_tl190481190550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e190479190545_))))
                                                  (let ((_body190553_
                                                         _hd190480190548_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl190481190550_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1190472_
                                                               _hd190543_
                                                               '#t
                                                               _body190553_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E190475190531_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E190475190531_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E190475190531_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E190475190531_))))))
                        (let () (declare (not safe)) (_E190474190555_))))))
                 (_generate-match190052_
                  (lambda (_where190216_
                           _target190217_
                           _hd190218_
                           _mvars190219_
                           _K190220_
                           _E190221_)
                    (letrec ((_BUG190223_
                              (lambda (_q190465_)
                                (error '"BUG: syntax-case; generate"
                                       _stx190044_
                                       _hd190218_
                                       _q190465_)))
                             (_recur190224_
                              (lambda (_e190315_
                                       _vars190316_
                                       _target190317_
                                       _E190318_
                                       _k190319_)
                                (let* ((_e190320190327_ _e190315_)
                                       (_E190322190331_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e190320190327_)))
                                       (_K190323190453_
                                        (lambda (_body190334_ _tag190335_)
                                          (let ((_$e190337_ _tag190335_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e190337_))
                                                (_k190319_ _vars190316_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e190337_))
                                                    (let ((__tmp195568
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target190317_)))
                                                          (__tmp195564
                                                           (let ((__tmp195566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195567
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e190047_
                                    _body190334_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?190045_
                             __tmp195567
                             _target190317_)))
                         (__tmp195565 (_k190319_ _vars190316_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp195566 __tmp195565 _E190318_))))
              (declare (not safe))
              (gx#core-list 'if __tmp195568 __tmp195564 _E190318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e190337_))
                                                        (_k190319_
                                                         (let ((__tmp195563
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body190334_ _target190317_))))
                   (declare (not safe))
                   (cons __tmp195563 _vars190316_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e190337_))
                    (let ((_$e190340_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd190341_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl190342_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp195562
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target190317_)))
                            (__tmp195543
                             (let ((__tmp195557
                                    (let ((__tmp195558
                                           (let ((__tmp195561
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e190340_ '())))
                                                 (__tmp195559
                                                  (let ((__tmp195560
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e190046_
                                                            _target190317_))))
                                                    (declare (not safe))
                                                    (cons __tmp195560 '()))))
                                             (declare (not safe))
                                             (cons __tmp195561 __tmp195559))))
                                      (declare (not safe))
                                      (cons __tmp195558 '())))
                                   (__tmp195544
                                    (let ((__tmp195547
                                           (let ((__tmp195553
                                                  (let ((__tmp195556
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd190341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp195554
                 (let ((__tmp195555
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e190340_))))
                   (declare (not safe))
                   (cons __tmp195555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195556
                                                          __tmp195554)))
                                                 (__tmp195548
                                                  (let ((__tmp195549
                                                         (let ((__tmp195552
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl190342_ '())))
                       (__tmp195550
                        (let ((__tmp195551
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e190340_))))
                          (declare (not safe))
                          (cons __tmp195551 '()))))
                   (declare (not safe))
                   (cons __tmp195552 __tmp195550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195549 '()))))
                                             (declare (not safe))
                                             (cons __tmp195553 __tmp195548)))
                                          (__tmp195545
                                           (let* ((_body190343190350_
                                                   _body190334_)
                                                  (_E190345190354_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body190343190350_)))
                                                  (_K190346190362_
                                                   (lambda (_tl190357_
                                                            _hd190358_)
                                                     (let ((__tmp195546
                                                            (lambda (_vars190360_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur190224_
                         _tl190357_
                         _vars190360_
                         _$tl190342_
                         _E190318_
                         _k190319_)))))
               (declare (not safe))
               (_recur190224_
                _hd190358_
                _vars190316_
                _$hd190341_
                _E190318_
                __tmp195546)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body190343190350_))
                                                 (let ((_hd190347190365_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body190343190350_)))
                                                       (_tl190348190367_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body190343190350_))))
                                                   (let* ((_hd190370_
                                                           _hd190347190365_)
                                                          (_tl190372_
                                                           _tl190348190367_))
                                                     (declare (not safe))
                                                     (_K190346190362_
                                                      _tl190372_
                                                      _hd190370_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E190345190354_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp195547
                                       __tmp195545))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp195557
                                __tmp195544))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp195562 __tmp195543 _E190318_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e190337_))
                        (let* ((_body190373190380_ _body190334_)
                               (_E190375190384_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body190373190380_)))
                               (_K190376190435_
                                (lambda (_tl190387_ _hd190388_)
                                  (let* ((_rlen190390_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen190225_ _tl190387_)))
                                         (_$target190392_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd190394_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl190396_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp190398_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e190400_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd190402_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl190404_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars190406_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars190226_ _hd190388_)))
                                         (_lvars190408_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars190406_)))
                                         (_tlvars190410_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars190406_)))
                                         (_linit190414_
                                          (map (lambda (_var190412_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars190408_)))
                                    (letrec ((_make-loop190417_
                                              (lambda (_vars190421_)
                                                (let ((__tmp195494
                                                       (let ((__tmp195495
                                                              (let ((__tmp195531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp190398_ '())))
                            (__tmp195496
                             (let ((__tmp195497
                                    (let ((__tmp195530
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd190394_ _lvars190408_)))
                                          (__tmp195498
                                           (let ((__tmp195529
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd190394_)))
                                                 (__tmp195507
                                                  (let ((__tmp195524
                                                         (let ((__tmp195525
                                                                (let ((__tmp195528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e190400_ '())))
                              (__tmp195526
                               (let ((__tmp195527
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e190046_
                                         _$hd190394_))))
                                 (declare (not safe))
                                 (cons __tmp195527 '()))))
                          (declare (not safe))
                          (cons __tmp195528 __tmp195526))))
                   (declare (not safe))
                   (cons __tmp195525 '())))
                (__tmp195508
                 (let ((__tmp195514
                        (let ((__tmp195520
                               (let ((__tmp195523
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd190402_ '())))
                                     (__tmp195521
                                      (let ((__tmp195522
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e190400_))))
                                        (declare (not safe))
                                        (cons __tmp195522 '()))))
                                 (declare (not safe))
                                 (cons __tmp195523 __tmp195521)))
                              (__tmp195515
                               (let ((__tmp195516
                                      (let ((__tmp195519
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl190404_ '())))
                                            (__tmp195517
                                             (let ((__tmp195518
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e190400_))))
                                               (declare (not safe))
                                               (cons __tmp195518 '()))))
                                        (declare (not safe))
                                        (cons __tmp195519 __tmp195517))))
                                 (declare (not safe))
                                 (cons __tmp195516 '()))))
                          (declare (not safe))
                          (cons __tmp195520 __tmp195515)))
                       (__tmp195509
                        (let ((__tmp195510
                               (lambda (_hdvars190423_)
                                 (let ((__tmp195511
                                        (let ((__tmp195512
                                               (map (lambda (_svar190425_
                                                             _lvar190426_)
                                                      (let ((__tmp195513
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar190425_ _hdvars190423_ _BUG190223_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp195513 _lvar190426_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars190406_
                                                    _lvars190408_)))
                                          (declare (not safe))
                                          (cons _$lp-tl190404_ __tmp195512))))
                                   (declare (not safe))
                                   (cons _$lp190398_ __tmp195511)))))
                          (declare (not safe))
                          (_recur190224_
                           _hd190388_
                           '()
                           _$lp-hd190402_
                           _E190318_
                           __tmp195510))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp195514 __tmp195509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp195524
                                                     __tmp195508)))
                                                 (__tmp195499
                                                  (let ((__tmp195503
                                                         (map (lambda (_lvar190428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar190429_)
                        (let ((__tmp195506
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar190429_ '())))
                              (__tmp195504
                               (let ((__tmp195505
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar190428_))))
                                 (declare (not safe))
                                 (cons __tmp195505 '()))))
                          (declare (not safe))
                          (cons __tmp195506 __tmp195504)))
                      _lvars190408_
                      _tlvars190410_))
                (__tmp195500
                 (_k190319_
                  (let ((__tmp195501
                         (lambda (_svar190431_ _tlvar190432_ _r190433_)
                           (let ((__tmp195502
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar190431_ _tlvar190432_))))
                             (declare (not safe))
                             (cons __tmp195502 _r190433_)))))
                    (declare (not safe))
                    (foldl2 __tmp195501
                            _vars190421_
                            _svars190406_
                            _tlvars190410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp195503
                                                     __tmp195500))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp195529
                                              __tmp195507
                                              __tmp195499))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp195530
                                       __tmp195498))))
                               (declare (not safe))
                               (cons __tmp195497 '()))))
                        (declare (not safe))
                        (cons __tmp195531 __tmp195496))))
                 (declare (not safe))
                 (cons __tmp195495 '())))
              (__tmp195492
               (let ((__tmp195493
                      (let ()
                        (declare (not safe))
                        (cons _$target190392_ _linit190414_))))
                 (declare (not safe))
                 (cons _$lp190398_ __tmp195493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp195494
                                                   __tmp195492)))))
                                      (let ((_body190419_
                                             (let ((__tmp195533
                                                    (let ((__tmp195534
                                                           (let ((__tmp195537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195538
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl190396_ '()))))
                            (declare (not safe))
                            (cons _$target190392_ __tmp195538)))
                         (__tmp195535
                          (let ((__tmp195536
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target190317_
                                    _rlen190390_))))
                            (declare (not safe))
                            (cons __tmp195536 '()))))
                     (declare (not safe))
                     (cons __tmp195537 __tmp195535))))
              (declare (not safe))
              (cons __tmp195534 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195532
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur190224_
                                                       _tl190387_
                                                       _vars190316_
                                                       _$tl190396_
                                                       _E190318_
                                                       _make-loop190417_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp195533
                                                __tmp195532))))
                                        (let ((__tmp195542
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target190317_)))
                                              (__tmp195539
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen190390_))
                                                   _body190419_
                                                   (let ((__tmp195540
                                                          (let ((__tmp195541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target190317_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp195541 _rlen190390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp195540
                                                      _body190419_
                                                      _E190318_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp195542
                                           __tmp195539
                                           _E190318_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body190373190380_))
                              (let ((_hd190377190438_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body190373190380_)))
                                    (_tl190378190440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body190373190380_))))
                                (let* ((_hd190443_ _hd190377190438_)
                                       (_tl190445_ _tl190378190440_))
                                  (declare (not safe))
                                  (_K190376190435_ _tl190445_ _hd190443_)))
                              (let () (declare (not safe)) (_E190375190384_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e190337_))
                            (let ((__tmp195491
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target190317_)))
                                  (__tmp195490 (_k190319_ _vars190316_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp195491
                               __tmp195490
                               _E190318_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e190337_))
                                (let ((_$e190447_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp195489
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target190317_)))
                                        (__tmp195481
                                         (let ((__tmp195483
                                                (let ((__tmp195484
                                                       (let ((__tmp195488
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e190447_ '())))
                     (__tmp195485
                      (let ((__tmp195486
                             (let ((__tmp195487
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e190046_
                                       _target190317_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp195487))))
                        (declare (not safe))
                        (cons __tmp195486 '()))))
                 (declare (not safe))
                 (cons __tmp195488 __tmp195485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp195484 '())))
                                               (__tmp195482
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur190224_
                                                   _body190334_
                                                   _vars190316_
                                                   _$e190447_
                                                   _E190318_
                                                   _k190319_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp195483
                                            __tmp195482))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp195489
                                     __tmp195481
                                     _E190318_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e190337_))
                                    (let ((_$e190449_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp195480
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target190317_)))
                                            (__tmp195472
                                             (let ((__tmp195474
                                                    (let ((__tmp195475
                                                           (let ((__tmp195479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e190449_ '())))
                         (__tmp195476
                          (let ((__tmp195477
                                 (let ((__tmp195478
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e190046_
                                           _target190317_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp195478))))
                            (declare (not safe))
                            (cons __tmp195477 '()))))
                     (declare (not safe))
                     (cons __tmp195479 __tmp195476))))
              (declare (not safe))
              (cons __tmp195475 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195473
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur190224_
                                                       _body190334_
                                                       _vars190316_
                                                       _$e190449_
                                                       _E190318_
                                                       _k190319_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp195474
                                                __tmp195473))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp195480
                                         __tmp195472
                                         _E190318_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e190337_))
                                        (let ((_$e190451_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp195471
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target190317_)))
                                                (__tmp195462
                                                 (let ((__tmp195466
                                                        (let ((__tmp195467
                                                               (let ((__tmp195470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e190451_ '())))
                             (__tmp195468
                              (let ((__tmp195469
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target190317_))))
                                (declare (not safe))
                                (cons __tmp195469 '()))))
                         (declare (not safe))
                         (cons __tmp195470 __tmp195468))))
                  (declare (not safe))
                  (cons __tmp195467 '())))
               (__tmp195463
                (let ((__tmp195465
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e190451_ _body190334_)))
                      (__tmp195464 (_k190319_ _vars190316_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp195465 __tmp195464 _E190318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp195466
                                                    __tmp195463))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp195471
                                             __tmp195462
                                             _E190318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG190223_ _e190315_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e190320190327_))
                                      (let ((_hd190324190456_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190320190327_)))
                                            (_tl190325190458_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190320190327_))))
                                        (let* ((_tag190461_ _hd190324190456_)
                                               (_body190463_ _tl190325190458_))
                                          (declare (not safe))
                                          (_K190323190453_
                                           _body190463_
                                           _tag190461_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190322190331_))))))
                             (_splice-rlen190225_
                              (lambda (_e190277_)
                                (let _lp190279_ ((_e190281_ _e190277_)
                                                 (_n190282_ '0))
                                  (let* ((_e190283190290_ _e190281_)
                                         (_E190285190294_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e190283190290_)))
                                         (_K190286190303_
                                          (lambda (_body190297_ _tag190298_)
                                            (let ((_$e190300_ _tag190298_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e190300_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx190044_
                                                     _where190216_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e190300_))
                                                      (let ((__tmp195570
                                                             (cdr _body190297_))
                                                            (__tmp195569
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n190282_ '1))))
                (declare (not safe))
                (_lp190279_ __tmp195570 __tmp195569))
              _n190282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e190283190290_))
                                        (let ((_hd190287190306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e190283190290_)))
                                              (_tl190288190308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e190283190290_))))
                                          (let* ((_tag190311_ _hd190287190306_)
                                                 (_body190313_
                                                  _tl190288190308_))
                                            (declare (not safe))
                                            (_K190286190303_
                                             _body190313_
                                             _tag190311_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190285190294_)))))))
                             (_splice-vars190226_
                              (lambda (_e190233_)
                                (let _recur190235_ ((_e190237_ _e190233_)
                                                    (_vars190238_ '()))
                                  (let* ((_e190239190246_ _e190237_)
                                         (_E190241190250_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e190239190246_)))
                                         (_K190242190265_
                                          (lambda (_body190253_ _tag190254_)
                                            (let ((_$e190256_ _tag190254_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e190256_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body190253_
                                                          _vars190238_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e190256_))
                  (let () (declare (not safe)) (eq? 'splice _$e190256_)))
              (let ((__tmp195573 (cdr _body190253_))
                    (__tmp195571
                     (let ((__tmp195572 (car _body190253_)))
                       (declare (not safe))
                       (_recur190235_ __tmp195572 _vars190238_))))
                (declare (not safe))
                (_recur190235_ __tmp195573 __tmp195571))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e190256_))
                      (let () (declare (not safe)) (eq? 'box _$e190256_)))
                  (let ()
                    (declare (not safe))
                    (_recur190235_ _body190253_ _vars190238_))
                  _vars190238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e190239190246_))
                                        (let ((_hd190243190268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e190239190246_)))
                                              (_tl190244190270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e190239190246_))))
                                          (let* ((_tag190273_ _hd190243190268_)
                                                 (_body190275_
                                                  _tl190244190270_))
                                            (declare (not safe))
                                            (_K190242190265_
                                             _body190275_
                                             _tag190273_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190241190250_)))))))
                             (_make-body190227_
                              (lambda (_vars190229_)
                                (let ((__tmp195574
                                       (map (lambda (_mvar190231_)
                                              (let ((__tmp195575
                                                     (car _mvar190231_)))
                                                (declare (not safe))
                                                (assgetq __tmp195575
                                                         _vars190229_
                                                         _BUG190223_)))
                                            _mvars190219_)))
                                  (declare (not safe))
                                  (cons _K190220_ __tmp195574)))))
                      (let ()
                        (declare (not safe))
                        (_recur190224_
                         _hd190218_
                         '()
                         _target190217_
                         _E190221_
                         _make-body190227_)))))
                 (_parse-clause190053_
                  (lambda (_hd190122_ _ids190123_)
                    (let _recur190125_ ((_e190127_ _hd190122_)
                                        (_vars190128_ '())
                                        (_depth190129_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e190127_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e190127_))
                              (values '(any) _vars190128_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e190127_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx190044_
                                     _hd190122_))
                                  (if (let ((__tmp195591
                                             (lambda (_id190131_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e190127_
                                                  _id190131_)))))
                                        (declare (not safe))
                                        (find __tmp195591 _ids190123_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e190127_))
                                              _vars190128_)
                                      (if (let ((__tmp195589
                                                 (lambda (_var190133_)
                                                   (let ((__tmp195590
                                                          (car _var190133_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e190127_
                                                      __tmp195590)))))
                                            (declare (not safe))
                                            (find __tmp195589 _vars190128_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx190044_
                                             _e190127_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e190127_))
                                                  (let ((__tmp195588
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e190127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth190129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195588
                                                          _vars190128_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e190127_))
                              (let* ((_e190134190141_ _e190127_)
                                     (_E190136190145_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e190134190141_))))
                                     (_E190135190206_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e190134190141_))
                                            (let ((_e190137190149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e190134190141_))))
                                              (let ((_hd190138190152_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e190137190149_)))
                                                    (_tl190139190154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e190137190149_))))
                                                (let* ((_hd190157_
                                                        _hd190138190152_)
                                                       (_rest190159_
                                                        _tl190139190154_))
                                                  (if '#t
                                                      (let* ((_make-pair190174_
                                                              (lambda (_tag190161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd190162_
                               _tl190163_)
                        (let* ((_hd-depth190165_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag190161_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth190129_ '1))
                                    _depth190129_))
                               (_g195583_
                                (let ()
                                  (declare (not safe))
                                  (_recur190125_
                                   _hd190162_
                                   _vars190128_
                                   _hd-depth190165_))))
                          (begin
                            (let ((_g195584_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g195583_)
                                         (##vector-length _g195583_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g195584_ 2)))
                                  (error "Context expects 2 values"
                                         _g195584_)))
                            (let ((_hd190167_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g195583_ 0)))
                                  (_vars190168_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g195583_ 1))))
                              (let ((_g195585_
                                     (let ()
                                       (declare (not safe))
                                       (_recur190125_
                                        _tl190163_
                                        _vars190168_
                                        _depth190129_))))
                                (begin
                                  (let ((_g195586_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195585_)
                                               (##vector-length _g195585_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195586_ 2)))
                                        (error "Context expects 2 values"
                                               _g195586_)))
                                  (let ((_tl190170_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g195585_ 0)))
                                        (_vars190171_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g195585_ 1))))
                                    (let ()
                                      (values (let ((__tmp195587
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd190167_
                                                             _tl190170_))))
                                                (declare (not safe))
                                                (cons _tag190161_ __tmp195587))
                                              _vars190171_))))))))))
                     (_e190175190182_ _rest190159_)
                     (_E190177190186_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair190174_ 'cons _hd190157_ _rest190159_))))
                     (_E190176190202_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e190175190182_))
                            (let ((_e190178190190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e190175190182_))))
                              (let ((_hd190179190193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e190178190190_)))
                                    (_tl190180190195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e190178190190_))))
                                (let* ((_rest-hd190198_ _hd190179190193_)
                                       (_rest-tl190200_ _tl190180190195_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd190198_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair190174_
                                             'splice
                                             _hd190157_
                                             _rest-tl190200_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair190174_
                                             'cons
                                             _hd190157_
                                             _rest190159_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190177190186_))))))
                            (let () (declare (not safe)) (_E190177190186_))))))
                (let () (declare (not safe)) (_E190176190202_)))
              (let () (declare (not safe)) (_E190136190145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E190136190145_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E190135190206_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e190127_))
                                  (values '(null) _vars190128_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e190127_))
                                      (let ((_g195580_
                                             (let ((__tmp195582
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e190127_)))))
                                               (declare (not safe))
                                               (_recur190125_
                                                __tmp195582
                                                _vars190128_
                                                _depth190129_))))
                                        (begin
                                          (let ((_g195581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195580_)
                                                       (##vector-length
                                                        _g195580_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195581_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195581_)))
                                          (let ((_e190210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g195580_ 0)))
                                                (_vars190211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g195580_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e190210_))
                                                    _vars190211_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e190127_))
                                          (let ((_g195577_
                                                 (let ((__tmp195579
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e190127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur190125_
                                                    __tmp195579
                                                    _vars190128_
                                                    _depth190129_))))
                                            (begin
                                              (let ((_g195578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g195577_)
                                                           (##vector-length
                                                            _g195577_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g195578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g195578_)))
                                              (let ((_e190213_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g195577_
                                                        0)))
                                                    (_vars190214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g195577_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e190213_))
                                                        _vars190214_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e190127_))
                                              (values (let ((__tmp195576
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e190127_))))
                (declare (not safe))
                (cons 'datum __tmp195576))
              _vars190128_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx190044_
                                                 _e190127_))))))))))))
          (let* ((_e190054190067_ _stx190044_)
                 (_E190056190071_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e190054190067_))))
                 (_E190055190118_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e190054190067_))
                        (let ((_e190057190075_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e190054190067_))))
                          (let ((_hd190058190078_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e190057190075_)))
                                (_tl190059190080_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e190057190075_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl190059190080_))
                                (let ((_e190060190083_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl190059190080_))))
                                  (let ((_hd190061190086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e190060190083_)))
                                        (_tl190062190088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e190060190083_))))
                                    (let ((_expr190091_ _hd190061190086_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl190062190088_))
                                          (let ((_e190063190093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl190062190088_))))
                                            (let ((_hd190064190096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e190063190093_)))
                                                  (_tl190065190098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e190063190093_))))
                                              (let* ((_ids190101_
                                                      _hd190064190096_)
                                                     (_clauses190103_
                                                      _tl190065190098_))
                                                (if '#t
                                                    (if (let ((__tmp195609
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids190101_))))
                  (declare (not safe))
                  (not __tmp195609))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx190044_
                   _ids190101_))
                (if (let ((__tmp195608
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses190103_))))
                      (declare (not safe))
                      (not __tmp195608))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx190044_))
                    (let* ((_ids190105_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids190101_)))
                           (_clauses190107_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses190103_)))
                           (_clause-ids190109_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses190107_)))
                           (_E190111_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target190113_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first190115_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses190107_))
                                _E190111_
                                (car _clause-ids190109_))))
                      (let ((__tmp195593
                             (let ((__tmp195594
                                    (let ((__tmp195596
                                           (let ((__tmp195601
                                                  (let ((__tmp195602
                                                         (let ((__tmp195607
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E190111_ '())))
                       (__tmp195603
                        (let ((__tmp195604
                               (let ((__tmp195606
                                      (let ()
                                        (declare (not safe))
                                        (cons _target190113_ '())))
                                     (__tmp195605
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target190113_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp195606
                                  __tmp195605))))
                          (declare (not safe))
                          (cons __tmp195604 '()))))
                   (declare (not safe))
                   (cons __tmp195607 __tmp195603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195602 '())))
                                                 (__tmp195597
                                                  (let ((__tmp195600
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings190049_
                                                            _target190113_
                                                            _ids190105_
                                                            _clauses190107_
                                                            _clause-ids190109_
                                                            _E190111_)))
                                                        (__tmp195598
                                                         (let ((__tmp195599
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr190091_ '()))))
                   (declare (not safe))
                   (cons _first190115_ __tmp195599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body190050_
                                                     __tmp195600
                                                     __tmp195598))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp195601
                                              __tmp195597)))
                                          (__tmp195595
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx190044_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp195596
                                       __tmp195595))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp195594)))
                            (__tmp195592
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx190044_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp195593 __tmp195592)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E190056190071_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E190056190071_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E190056190071_)))))
                        (let () (declare (not safe)) (_E190056190071_))))))
            (let () (declare (not safe)) (_E190055190118_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx190754_)
        (let* ((_identifier=?190756_ 'free-identifier=?)
               (_unwrap-e190758_ 'syntax-e)
               (_wrap-e190760_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190754_
           _identifier=?190756_
           _unwrap-e190758_
           _wrap-e190760_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx190762_ _identifier=?190763_)
        (let* ((_unwrap-e190765_ 'syntax-e) (_wrap-e190767_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190762_
           _identifier=?190763_
           _unwrap-e190765_
           _wrap-e190767_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx190769_ _identifier=?190770_ _unwrap-e190771_)
        (let ((_wrap-e190773_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190769_
           _identifier=?190770_
           _unwrap-e190771_
           _wrap-e190773_))))
    (define gx#macro-expand-syntax-case
      (lambda _g195611_
        (let ((_g195610_ (let () (declare (not safe)) (##length _g195611_))))
          (cond ((let () (declare (not safe)) (##fx= _g195610_ 1))
                 (apply (lambda (_stx190754_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx190754_)))
                        _g195611_))
                ((let () (declare (not safe)) (##fx= _g195610_ 2))
                 (apply (lambda (_stx190762_ _identifier=?190763_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx190762_
                             _identifier=?190763_)))
                        _g195611_))
                ((let () (declare (not safe)) (##fx= _g195610_ 3))
                 (apply (lambda (_stx190769_
                                 _identifier=?190770_
                                 _unwrap-e190771_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx190769_
                             _identifier=?190770_
                             _unwrap-e190771_)))
                        _g195611_))
                ((let () (declare (not safe)) (##fx= _g195610_ 4))
                 (apply (lambda (_stx190775_
                                 _identifier=?190776_
                                 _unwrap-e190777_
                                 _wrap-e190778_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx190775_
                             _identifier=?190776_
                             _unwrap-e190777_
                             _wrap-e190778_)))
                        _g195611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g195611_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx190041_)
        (if (let () (declare (not safe)) (gx#identifier? _stx190041_))
            (let ((__tmp195612
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx190041_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp195612 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd189999_ . _rest190000_)
        (let ((_len190002_ (length _hd189999_)))
          (let _lp190004_ ((_rest190006_ _rest190000_))
            (let* ((_rest190007190015_ _rest190006_)
                   (_else190009190023_ (lambda () '#!void))
                   (_K190011190029_
                    (lambda (_rest190026_ _hd190027_)
                      (if (fx= _len190002_ (length _hd190027_))
                          (let ()
                            (declare (not safe))
                            (_lp190004_ _rest190026_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd190027_))))))
              (if (let () (declare (not safe)) (##pair? _rest190007190015_))
                  (let ((_hd190012190032_
                         (let ()
                           (declare (not safe))
                           (##car _rest190007190015_)))
                        (_tl190013190034_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest190007190015_))))
                    (let* ((_hd190037_ _hd190012190032_)
                           (_rest190039_ _tl190013190034_))
                      (declare (not safe))
                      (_K190011190029_ _rest190039_ _hd190037_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx189957_ _n189958_)
        (let _lp189960_ ((_rest189962_ _stx189957_) (_r189963_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest189962_))
              (let* ((_g189964189971_
                      (let () (declare (not safe)) (gx#syntax-e _rest189962_)))
                     (_E189966189975_
                      (lambda ()
                        (error '"No clause matching" _g189964189971_)))
                     (_K189967189981_
                      (lambda (_rest189978_ _hd189979_)
                        (let ((__tmp195617
                               (let ()
                                 (declare (not safe))
                                 (cons _hd189979_ _r189963_))))
                          (declare (not safe))
                          (_lp189960_ _rest189978_ __tmp195617)))))
                (if (let () (declare (not safe)) (##pair? _g189964189971_))
                    (let ((_hd189968189984_
                           (let ()
                             (declare (not safe))
                             (##car _g189964189971_)))
                          (_tl189969189986_
                           (let ()
                             (declare (not safe))
                             (##cdr _g189964189971_))))
                      (let* ((_hd189989_ _hd189968189984_)
                             (_rest189991_ _tl189969189986_))
                        (declare (not safe))
                        (_K189967189981_ _rest189991_ _hd189989_)))
                    (let () (declare (not safe)) (_E189966189975_))))
              (let _lp189993_ ((_n189995_ _n189958_)
                               (_l189996_ _r189963_)
                               (_r189997_ _rest189962_))
                (if (let () (declare (not safe)) (null? _l189996_))
                    (values _l189996_ _r189997_)
                    (if (fxpositive? _n189995_)
                        (let ((__tmp195616
                               (let ()
                                 (declare (not safe))
                                 (fx- _n189995_ '1)))
                              (__tmp195615 (cdr _l189996_))
                              (__tmp195613
                               (let ((__tmp195614 (car _l189996_)))
                                 (declare (not safe))
                                 (cons __tmp195614 _r189997_))))
                          (declare (not safe))
                          (_lp189993_ __tmp195616 __tmp195615 __tmp195613))
                        (values (reverse _l189996_) _r189997_))))))))))

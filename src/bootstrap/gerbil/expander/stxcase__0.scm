(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708387688)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96271 (list gx#expander::t))
            (__tmp96269
             (let ((__tmp96270
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96270 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96271
         '(id depth)
         __tmp96269
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96266_
        (apply make-instance gx#syntax-pattern::t _$args96266_)))
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
      (lambda (_self96263_ _stx96264_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96264_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95745_)
        (letrec ((_generate95747_
                  (lambda (_e95974_)
                    (letrec ((_BUG95976_
                              (lambda (_q96138_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95745_
                                         _e95974_
                                         _q96138_))))
                             (_local-pattern-e95977_
                              (lambda (_pat96136_)
                                (let ((__tmp96272
                                       (##structure-ref
                                        _pat96136_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96272))))
                             (_getvar95978_
                              (lambda (_q96133_ _vars96134_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96133_
                                   _vars96134_
                                   _BUG95976_))))
                             (_getarg95979_
                              (lambda (_arg96099_ _vars96100_)
                                (let* ((_arg9610196108_ _arg96099_)
                                       (_E9610396112_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9610196108_))))
                                       (_K9610496121_
                                        (lambda (_e96115_ _tag96116_)
                                          (let ((_$e96118_ _tag96116_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96118_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar95978_
                                                   _e96115_
                                                   _vars96100_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96118_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e95977_
                                                       _e96115_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG95976_
                                                       _arg96099_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9610196108_))
                                      (let ((_hd9610596124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9610196108_)))
                                            (_tl9610696126_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9610196108_))))
                                        (let* ((_tag96129_ _hd9610596124_)
                                               (_e96131_ _tl9610696126_))
                                          (declare (not safe))
                                          (_K9610496121_ _e96131_ _tag96129_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9610396112_)))))))
                      (let _recur95981_ ((_e95983_ _e95974_) (_vars95984_ '()))
                        (let* ((_e9598595992_ _e95983_)
                               (_E9598795996_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9598595992_))))
                               (_K9598896087_
                                (lambda (_body95999_ _tag96000_)
                                  (let ((_$e96002_ _tag96000_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96002_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body95999_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96002_))
                                            (let ((_id96005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body95999_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96005_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96005_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96007_))
                                                        (let ((__tmp96300
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body95999_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96300))
                (let ((__tmp96299
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body95999_)))
                      (__tmp96298
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body95999_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96299
                   __tmp96298
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96005_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body95999_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG95976_
                                                         _e95983_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96002_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e95977_
                                                   _body95999_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96002_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar95978_
                                                       _body95999_
                                                       _vars95984_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96002_))
                                                        (let ((__tmp96296
                                                               (let ((__tmp96297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body95999_)))
                         (declare (not safe))
                         (_recur95981_ __tmp96297 _vars95984_)))
                      (__tmp96294
                       (let ((__tmp96295 (cdr _body95999_)))
                         (declare (not safe))
                         (_recur95981_ __tmp96295 _vars95984_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96296 __tmp96294))
                (if (let () (declare (not safe)) (eq? 'vector _$e96002_))
                    (let ((__tmp96293
                           (let ()
                             (declare (not safe))
                             (_recur95981_ _body95999_ _vars95984_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96293))
                    (if (let () (declare (not safe)) (eq? 'box _$e96002_))
                        (let ((__tmp96292
                               (let ()
                                 (declare (not safe))
                                 (_recur95981_ _body95999_ _vars95984_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96292))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96002_))
                            (let* ((_body9600896019_ _body95999_)
                                   (_E9601096023_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9600896019_))))
                                   (_K9601196061_
                                    (lambda (_args96026_
                                             _iv96027_
                                             _hd96028_
                                             _depth96029_)
                                      (let* ((_targets96035_
                                              (map (lambda (_g9603096032_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg95979_
                                                        _g9603096032_
                                                        _vars95984_)))
                                                   _args96026_))
                                             (_fold-in96037_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96026_)))
                                             (_fold-out96039_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96041_
                                              (let ((__tmp96273
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96039_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96273
                                                        _fold-in96037_)))
                                             (_lambda-body96058_
                                              (if (fx> _depth96029_ '1)
                                                  (let ((_r-args96049_
                                                         (map (lambda (_arg96043_)
                                                                (let ((__tmp96278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96043_)))
                          (declare (not safe))
                          (cons 'ref __tmp96278)))
                      _args96026_))
                (_r-vars96050_
                 (let ((__tmp96279
                        (lambda (_arg96045_ _var96046_ _r96047_)
                          (let ((__tmp96280
                                 (let ((__tmp96281 (cdr _arg96045_)))
                                   (declare (not safe))
                                   (cons __tmp96281 _var96046_))))
                            (declare (not safe))
                            (cons __tmp96280 _r96047_)))))
                   (declare (not safe))
                   (foldr2 __tmp96279
                           _vars95984_
                           _args96026_
                           _fold-in96037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96282
                                                           (let ((__tmp96283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96287
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96029_ '1)))
                                (__tmp96284
                                 (let ((__tmp96285
                                        (let ((__tmp96286
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96039_))))
                                          (declare (not safe))
                                          (cons __tmp96286 _r-args96049_))))
                                   (declare (not safe))
                                   (cons _hd96028_ __tmp96285))))
                            (declare (not safe))
                            (cons __tmp96287 __tmp96284))))
                     (declare (not safe))
                     (cons 'splice __tmp96283))))
              (declare (not safe))
              (_recur95981_ __tmp96282 _r-vars96050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96056_
                                                          (let ((__tmp96274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96052_ _var96053_ _r96054_)
                           (let ((__tmp96275
                                  (let ((__tmp96276 (cdr _arg96052_)))
                                    (declare (not safe))
                                    (cons __tmp96276 _var96053_))))
                             (declare (not safe))
                             (cons __tmp96275 _r96054_)))))
                    (declare (not safe))
                    (foldr2 __tmp96274
                            _vars95984_
                            _args96026_
                            _fold-in96037_)))
                 (__tmp96277
                  (let ()
                    (declare (not safe))
                    (_recur95981_ _hd96028_ _hd-vars96056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96277
                                                     _fold-out96039_)))))
                                        (let ((__tmp96291
                                               (if (fx> (length _targets96035_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96035_))
                                                   '#!void))
                                              (__tmp96288
                                               (let ((__tmp96290
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96041_
                                                         _lambda-body96058_)))
                                                     (__tmp96289
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur95981_
                                                         _iv96027_
                                                         _vars95984_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96290
                                                  __tmp96289
                                                  _targets96035_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96291
                                           __tmp96288))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9600896019_))
                                  (let ((_hd9601296064_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9600896019_)))
                                        (_tl9601396066_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9600896019_))))
                                    (let ((_depth96069_ _hd9601296064_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9601396066_))
                                          (let ((_hd9601496071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9601396066_)))
                                                (_tl9601596073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9601396066_))))
                                            (let ((_hd96076_ _hd9601496071_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9601596073_))
                                                  (let ((_hd9601696078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9601596073_)))
                                                        (_tl9601796080_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9601596073_))))
                                                    (let* ((_iv96083_
                                                            _hd9601696078_)
                                                           (_args96085_
                                                            _tl9601796080_))
                                                      (declare (not safe))
                                                      (_K9601196061_
                                                       _args96085_
                                                       _iv96083_
                                                       _hd96076_
                                                       _depth96069_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9601096023_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9601096023_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9601096023_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96002_))
                                _body95999_
                                (let ()
                                  (declare (not safe))
                                  (_BUG95976_ _e95983_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9598595992_))
                              (let ((_hd9598996090_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9598595992_)))
                                    (_tl9599096092_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9598595992_))))
                                (let* ((_tag96095_ _hd9598996090_)
                                       (_body96097_ _tl9599096092_))
                                  (declare (not safe))
                                  (_K9598896087_ _body96097_ _tag96095_)))
                              (let ()
                                (declare (not safe))
                                (_E9598795996_))))))))
                 (_parse95748_
                  (lambda (_e95789_)
                    (letrec ((_make-cons95791_
                              (lambda (_hd95966_ _tl95967_)
                                (let ((_g96301_ _hd95966_)
                                      (_g96303_ _tl95967_))
                                  (begin
                                    (let ((_g96302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96301_)
                                                 (##vector-length _g96301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96302_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96302_)))
                                    (let ((_g96304_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96303_)
                                                 (##vector-length _g96303_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96304_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96304_)))
                                    (let ((_hd-e95969_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96301_ 0)))
                                          (_hd-vars95970_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96301_ 1))))
                                      (let ((_tl-e95971_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96303_ 0)))
                                            (_tl-vars95972_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96303_ 1))))
                                        (values (let ((__tmp96305
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e95969_
                                                               _tl-e95971_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96305))
                                                (append _hd-vars95970_
                                                        _tl-vars95972_))))))))
                             (_make-splice95792_
                              (lambda (_where95905_
                                       _depth95906_
                                       _hd95907_
                                       _tl95908_)
                                (let ((_g96306_ _hd95907_)
                                      (_g96308_ _tl95908_))
                                  (begin
                                    (let ((_g96307_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96306_)
                                                 (##vector-length _g96306_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96307_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96307_)))
                                    (let ((_g96309_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96308_)
                                                 (##vector-length _g96308_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96309_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96309_)))
                                    (let ((_hd-e95910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96306_ 0)))
                                          (_hd-vars95911_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96306_ 1))))
                                      (let ((_tl-e95912_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96308_ 0)))
                                            (_tl-vars95913_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96308_ 1))))
                                        (let _lp95915_ ((_rest95917_
                                                         _hd-vars95911_)
                                                        (_targets95918_ '())
                                                        (_vars95919_
                                                         _tl-vars95913_))
                                          (let* ((_rest9592095930_ _rest95917_)
                                                 (_else9592295938_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95918_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95745_
                                                           _where95905_))
                                                        (values (let ((__tmp96310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96311
                                      (let ((__tmp96312
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95912_
                                                     _targets95918_))))
                                        (declare (not safe))
                                        (cons _hd-e95910_ __tmp96312))))
                                 (declare (not safe))
                                 (cons _depth95906_ __tmp96311))))
                          (declare (not safe))
                          (cons 'splice __tmp96310))
                        _vars95919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9592495947_
                                                  (lambda (_rest95941_
                                                           _hd-pat95942_
                                                           _hd-depth*95943_)
                                                    (let ((_hd-depth95945_
                                                           (fx- _hd-depth*95943_
                                                                _depth95906_)))
                                                      (if (fxpositive?
                                                           _hd-depth95945_)
                                                          (let ((__tmp96317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96318
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat95942_))))
                           (declare (not safe))
                           (cons __tmp96318 _targets95918_)))
                        (__tmp96315
                         (let ((__tmp96316
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth95945_ _hd-pat95942_))))
                           (declare (not safe))
                           (cons __tmp96316 _vars95919_))))
                    (declare (not safe))
                    (_lp95915_ _rest95941_ __tmp96317 __tmp96315))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth95945_))
                      (let ((__tmp96313
                             (let ((__tmp96314
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat95942_))))
                               (declare (not safe))
                               (cons __tmp96314 _targets95918_))))
                        (declare (not safe))
                        (_lp95915_ _rest95941_ __tmp96313 _vars95919_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95745_
                         _where95905_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9592095930_))
                                                (let ((_hd9592595950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9592095930_)))
                                                      (_tl9592695952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9592095930_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9592595950_))
                                                      (let ((_hd9592795955_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9592595950_)))
                    (_tl9592895957_
                     (let () (declare (not safe)) (##cdr _hd9592595950_))))
                (let* ((_hd-depth*95960_ _hd9592795955_)
                       (_hd-pat95962_ _tl9592895957_)
                       (_rest95964_ _tl9592695952_))
                  (declare (not safe))
                  (_K9592495947_ _rest95964_ _hd-pat95962_ _hd-depth*95960_)))
              (let () (declare (not safe)) (_else9592295938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9592295938_)))))))))))
                             (_recur95793_
                              (lambda (_e95798_ _is-e?95799_)
                                (if (_is-e?95799_ _e95798_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95745_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95798_))
                                        (let* ((_pat95801_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95798_)))
                                               (_depth95803_
                                                (##structure-ref
                                                 _pat95801_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95803_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95801_))
                                                      (let ((__tmp96334
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95803_ _pat95801_))))
                (declare (not safe))
                (cons __tmp96334 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95801_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95798_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95798_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95798_))
                                                (let* ((_e9580595812_ _e95798_)
                                                       (_E9580795816_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9580595812_))))
                                                       (_E9580695895_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9580595812_))
                      (let ((_e9580895820_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9580595812_))))
                        (let ((_hd9580995823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9580895820_)))
                              (_tl9581095825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9580895820_))))
                          (let* ((_hd95828_ _hd9580995823_)
                                 (_rest95830_ _tl9581095825_))
                            (if '#t
                                (if (_is-e?95799_ _hd95828_)
                                    (let* ((_e9583195838_ _rest95830_)
                                           (_E9583395842_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95745_
                                                 _e95798_))))
                                           (_E9583295856_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9583195838_))
                                                  (let ((_e9583495846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9583195838_))))
                                                    (let ((_hd9583595849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9583495846_)))
                                                          (_tl9583695851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9583495846_))))
                                                      (let ((_rest95854_
                                                             _hd9583595849_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9583695851_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95793_ _rest95854_ false))
                        (let () (declare (not safe)) (_E9583395842_)))
                    (let () (declare (not safe)) (_E9583395842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9583395842_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9583295856_)))
                                    (let _lp95860_ ((_rest95862_ _rest95830_)
                                                    (_depth95863_ '0))
                                      (let* ((_e9586495871_ _rest95862_)
                                             (_E9586695875_
                                              (lambda ()
                                                (if (fxpositive? _depth95863_)
                                                    (let ((__tmp96328
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95793_
                                                              _hd95828_
                                                              _is-e?95799_)))
                                                          (__tmp96327
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95793_
                                                              _rest95862_
                                                              _is-e?95799_))))
                                                      (declare (not safe))
                                                      (_make-splice95792_
                                                       _e95798_
                                                       _depth95863_
                                                       __tmp96328
                                                       __tmp96327))
                                                    (let ((__tmp96326
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95793_
                                                              _hd95828_
                                                              _is-e?95799_)))
                                                          (__tmp96325
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95793_
                                                              _rest95862_
                                                              _is-e?95799_))))
                                                      (declare (not safe))
                                                      (_make-cons95791_
                                                       __tmp96326
                                                       __tmp96325)))))
                                             (_E9586595891_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9586495871_))
                                                    (let ((_e9586795879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9586495871_))))
                                                      (let ((_hd9586895882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9586795879_)))
                    (_tl9586995884_
                     (let () (declare (not safe)) (##cdr _e9586795879_))))
                (let* ((_rest-hd95887_ _hd9586895882_)
                       (_rest-tl95889_ _tl9586995884_))
                  (if '#t
                      (if (_is-e?95799_ _rest-hd95887_)
                          (let ((__tmp96333
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95863_ '1))))
                            (declare (not safe))
                            (_lp95860_ _rest-tl95889_ __tmp96333))
                          (if (fxpositive? _depth95863_)
                              (let ((__tmp96332
                                     (let ()
                                       (declare (not safe))
                                       (_recur95793_ _hd95828_ _is-e?95799_)))
                                    (__tmp96331
                                     (let ()
                                       (declare (not safe))
                                       (_recur95793_
                                        _rest95862_
                                        _is-e?95799_))))
                                (declare (not safe))
                                (_make-splice95792_
                                 _e95798_
                                 _depth95863_
                                 __tmp96332
                                 __tmp96331))
                              (let ((__tmp96330
                                     (let ()
                                       (declare (not safe))
                                       (_recur95793_ _hd95828_ _is-e?95799_)))
                                    (__tmp96329
                                     (let ()
                                       (declare (not safe))
                                       (_recur95793_
                                        _rest95862_
                                        _is-e?95799_))))
                                (declare (not safe))
                                (_make-cons95791_ __tmp96330 __tmp96329))))
                      (let () (declare (not safe)) (_E9586695875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9586695875_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9586595891_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9580795816_))))))
                      (let () (declare (not safe)) (_E9580795816_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9580695895_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95798_))
                                                    (let ((_g96322_
                                                           (let ((__tmp96324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95798_)))))
                     (declare (not safe))
                     (_recur95793_ __tmp96324 _is-e?95799_))))
              (begin
                (let ((_g96323_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96322_)
                             (##vector-length _g96322_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96323_ 2)))
                      (error "Context expects 2 values" _g96323_)))
                (let ((_e95899_
                       (let () (declare (not safe)) (##vector-ref _g96322_ 0)))
                      (_vars95900_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96322_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95899_))
                          _vars95900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95798_))
                                                        (let ((_g96319_
                                                               (let ((__tmp96321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95798_)))))
                         (declare (not safe))
                         (_recur95793_ __tmp96321 _is-e?95799_))))
                  (begin
                    (let ((_g96320_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96319_)
                                 (##vector-length _g96319_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96320_ 2)))
                          (error "Context expects 2 values" _g96320_)))
                    (let ((_e95902_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96319_ 0)))
                          (_vars95903_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96319_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95902_))
                              _vars95903_))))
                (values (let () (declare (not safe)) (cons 'datum _e95798_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96335_
                             (let ()
                               (declare (not safe))
                               (_recur95793_ _e95789_ gx#ellipsis?))))
                        (begin
                          (let ((_g96336_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96335_)
                                       (##vector-length _g96335_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96336_ 2)))
                                (error "Context expects 2 values" _g96336_)))
                          (let ((_tree95795_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96335_ 0)))
                                (_vars95796_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96335_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95796_))
                                _tree95795_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95745_
                                   _vars95796_))))))))))
          (let* ((_e9574995759_ _stx95745_)
                 (_E9575195763_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95745_))))
                 (_E9575095785_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9574995759_))
                        (let ((_e9575295767_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9574995759_))))
                          (let ((_hd9575395770_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9575295767_)))
                                (_tl9575495772_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9575295767_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9575495772_))
                                (let ((_e9575595775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9575495772_))))
                                  (let ((_hd9575695778_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9575595775_)))
                                        (_tl9575795780_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9575595775_))))
                                    (let ((_form95783_ _hd9575695778_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9575795780_))
                                          (if '#t
                                              (let ((__tmp96338
                                                     (let ((__tmp96339
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95748_
                                                               _form95783_))))
                                                       (declare (not safe))
                                                       (_generate95747_
                                                        __tmp96339)))
                                                    (__tmp96337
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95745_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96338
                                                 __tmp96337))
                                              (let ()
                                                (declare (not safe))
                                                (_E9575195763_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9575195763_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9575195763_)))))
                        (let () (declare (not safe)) (_E9575195763_))))))
            (let () (declare (not safe)) (_E9575095785_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95009_ _identifier=?95010_ _unwrap-e95011_ _wrap-e95012_)
        (letrec ((_generate-bindings95014_
                  (lambda (_target95609_
                           _ids95610_
                           _clauses95611_
                           _clause-ids95612_
                           _E95613_)
                    (letrec ((_generate195615_
                              (lambda (_clause95712_ _clause-id95713_ _E95714_)
                                (let ((__tmp96344
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95713_ '())))
                                      (__tmp96340
                                       (let ((__tmp96341
                                              (let ((__tmp96343
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95609_
                                                             '())))
                                                    (__tmp96342
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95016_
                                                        _target95609_
                                                        _ids95610_
                                                        _clause95712_
                                                        _E95714_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96343
                                                 __tmp96342))))
                                         (declare (not safe))
                                         (cons __tmp96341 '()))))
                                  (declare (not safe))
                                  (cons __tmp96344 __tmp96340)))))
                      (let _lp95617_ ((_rest95619_ _clauses95611_)
                                      (_rest-ids95620_ _clause-ids95612_)
                                      (_bindings95621_ '()))
                        (let* ((_rest9562295630_ _rest95619_)
                               (_else9562495638_ (lambda () _bindings95621_))
                               (_K9562695700_
                                (lambda (_rest95641_ _clause95642_)
                                  (let* ((_rest-ids9564395650_ _rest-ids95620_)
                                         (_E9564595654_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9564395650_))))
                                         (_K9564695688_
                                          (lambda (_rest-ids95657_
                                                   _clause-id95658_)
                                            (let* ((_rest-ids9565995667_
                                                    _rest-ids95657_)
                                                   (_else9566195675_
                                                    (lambda ()
                                                      (let ((__tmp96345
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate195615_
                        _clause95642_
                        _clause-id95658_
                        _E95613_))))
                (declare (not safe))
                (cons __tmp96345 _bindings95621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9566395680_
                                                    (lambda (_next-clause-id95678_)
                                                      (let ((__tmp96346
                                                             (let ((__tmp96347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate195615_
                               _clause95642_
                               _clause-id95658_
                               _next-clause-id95678_))))
                       (declare (not safe))
                       (cons __tmp96347 _bindings95621_))))
                (declare (not safe))
                (_lp95617_ _rest95641_ _rest-ids95657_ __tmp96346)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9565995667_))
                                                  (let* ((_hd9566495683_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9565995667_)))
                                                         (_next-clause-id95686_
                                                          _hd9566495683_))
                                                    (declare (not safe))
                                                    (_K9566395680_
                                                     _next-clause-id95686_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9566195675_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9564395650_))
                                        (let ((_hd9564795691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9564395650_)))
                                              (_tl9564895693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9564395650_))))
                                          (let* ((_clause-id95696_
                                                  _hd9564795691_)
                                                 (_rest-ids95698_
                                                  _tl9564895693_))
                                            (declare (not safe))
                                            (_K9564695688_
                                             _rest-ids95698_
                                             _clause-id95696_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9564595654_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9562295630_))
                              (let ((_hd9562795703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9562295630_)))
                                    (_tl9562895705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9562295630_))))
                                (let* ((_clause95708_ _hd9562795703_)
                                       (_rest95710_ _tl9562895705_))
                                  (declare (not safe))
                                  (_K9562695700_ _rest95710_ _clause95708_)))
                              (let ()
                                (declare (not safe))
                                (_else9562495638_))))))))
                 (_generate-body95015_
                  (lambda (_bindings95569_ _body95570_)
                    (let _recur95572_ ((_rest95574_ _bindings95569_))
                      (let* ((_rest9557595583_ _rest95574_)
                             (_else9557795591_ (lambda () _body95570_))
                             (_K9557995597_
                              (lambda (_rest95594_ _hd95595_)
                                (let ((__tmp96349
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd95595_ '())))
                                      (__tmp96348
                                       (let ()
                                         (declare (not safe))
                                         (_recur95572_ _rest95594_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96349
                                   __tmp96348)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9557595583_))
                            (let ((_hd9558095600_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9557595583_)))
                                  (_tl9558195602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9557595583_))))
                              (let* ((_hd95605_ _hd9558095600_)
                                     (_rest95607_ _tl9558195602_))
                                (declare (not safe))
                                (_K9557995597_ _rest95607_ _hd95605_)))
                            (let ()
                              (declare (not safe))
                              (_else9557795591_)))))))
                 (_generate-clause95016_
                  (lambda (_target95432_ _ids95433_ _clause95434_ _E95435_)
                    (letrec ((_generate195437_
                              (lambda (_hd95524_ _fender95525_ _body95526_)
                                (let ((_g96350_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95018_
                                          _hd95524_
                                          _ids95433_))))
                                  (begin
                                    (let ((_g96351_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96350_)
                                                 (##vector-length _g96350_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96351_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96351_)))
                                    (let ((_e95528_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96350_ 0)))
                                          (_mvars95529_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96350_ 1))))
                                      (let* ((_pvars95531_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars95529_))))
                                             (_E95533_
                                              (let ((__tmp96352
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95432_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E95435_ __tmp96352)))
                                             (_K95566_
                                              (let ((__tmp96353
                                                     (let ((__tmp96355
                                                            (map (lambda (_mvar95535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar95536_)
                           (let* ((_mvar9553795544_ _mvar95535_)
                                  (_E9553995548_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9553795544_))))
                                  (_K9554095554_
                                   (lambda (_depth95551_ _id95552_)
                                     (let ((__tmp96356
                                            (let ((__tmp96357
                                                   (let ((__tmp96359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id95552_)))
                                                         (__tmp96358
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar95536_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96359
                                                      __tmp96358
                                                      _depth95551_))))
                                              (declare (not safe))
                                              (cons __tmp96357 '()))))
                                       (declare (not safe))
                                       (cons _id95552_ __tmp96356)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9553795544_))
                                 (let ((_hd9554195557_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9553795544_)))
                                       (_tl9554295559_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9553795544_))))
                                   (let* ((_id95562_ _hd9554195557_)
                                          (_depth95564_ _tl9554295559_))
                                     (declare (not safe))
                                     (_K9554095554_ _depth95564_ _id95562_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9553995548_)))))
                         _mvars95529_
                         _pvars95531_))
                   (__tmp96354
                    (if (let () (declare (not safe)) (eq? _fender95525_ '#t))
                        _body95526_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender95525_
                           _body95526_
                           _E95533_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96355 __tmp96354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars95531_
                                                 __tmp96353))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95017_
                                           _hd95524_
                                           _target95432_
                                           _e95528_
                                           _mvars95529_
                                           _K95566_
                                           _E95533_)))))))))
                      (let* ((_e9543895458_ _clause95434_)
                             (_E9544795462_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9543895458_))))
                             (_E9544095496_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9543895458_))
                                    (let ((_e9544895466_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9543895458_))))
                                      (let ((_hd9544995469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9544895466_)))
                                            (_tl9545095471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9544895466_))))
                                        (let ((_hd95474_ _hd9544995469_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9545095471_))
                                              (let ((_e9545195476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9545095471_))))
                                                (let ((_hd9545295479_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9545195476_)))
                                                      (_tl9545395481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9545195476_))))
                                                  (let ((_fender95484_
                                                         _hd9545295479_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9545395481_))
                                                        (let ((_e9545495486_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9545395481_))))
                  (let ((_hd9545595489_
                         (let () (declare (not safe)) (##car _e9545495486_)))
                        (_tl9545695491_
                         (let () (declare (not safe)) (##cdr _e9545495486_))))
                    (let ((_body95494_ _hd9545595489_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9545695491_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate195437_
                                 _hd95474_
                                 _fender95484_
                                 _body95494_))
                              (let () (declare (not safe)) (_E9544795462_)))
                          (let () (declare (not safe)) (_E9544795462_))))))
                (let () (declare (not safe)) (_E9544795462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9544795462_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9544795462_)))))
                             (_E9543995520_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9543895458_))
                                    (let ((_e9544195500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9543895458_))))
                                      (let ((_hd9544295503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9544195500_)))
                                            (_tl9544395505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9544195500_))))
                                        (let ((_hd95508_ _hd9544295503_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9544395505_))
                                              (let ((_e9544495510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9544395505_))))
                                                (let ((_hd9544595513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9544495510_)))
                                                      (_tl9544695515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9544495510_))))
                                                  (let ((_body95518_
                                                         _hd9544595513_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9544695515_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate195437_
                                                               _hd95508_
                                                               '#t
                                                               _body95518_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9544095496_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9544095496_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9544095496_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9544095496_))))))
                        (let () (declare (not safe)) (_E9543995520_))))))
                 (_generate-match95017_
                  (lambda (_where95181_
                           _target95182_
                           _hd95183_
                           _mvars95184_
                           _K95185_
                           _E95186_)
                    (letrec ((_BUG95188_
                              (lambda (_q95430_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95009_
                                         _hd95183_
                                         _q95430_))))
                             (_recur95189_
                              (lambda (_e95280_
                                       _vars95281_
                                       _target95282_
                                       _E95283_
                                       _k95284_)
                                (let* ((_e9528595292_ _e95280_)
                                       (_E9528795296_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9528595292_))))
                                       (_K9528895418_
                                        (lambda (_body95299_ _tag95300_)
                                          (let ((_$e95302_ _tag95300_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95302_))
                                                (_k95284_ _vars95281_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95302_))
                                                    (let ((__tmp96466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95282_)))
                                                          (__tmp96462
                                                           (let ((__tmp96464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96465
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95012_ _body95299_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95010_
                             __tmp96465
                             _target95282_)))
                         (__tmp96463 (_k95284_ _vars95281_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp96464 __tmp96463 _E95283_))))
              (declare (not safe))
              (gx#core-list 'if __tmp96466 __tmp96462 _E95283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95302_))
                                                        (_k95284_
                                                         (let ((__tmp96461
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95299_ _target95282_))))
                   (declare (not safe))
                   (cons __tmp96461 _vars95281_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95302_))
                    (let ((_$e95305_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95306_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95307_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp96460
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95282_)))
                            (__tmp96441
                             (let ((__tmp96455
                                    (let ((__tmp96456
                                           (let ((__tmp96459
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95305_ '())))
                                                 (__tmp96457
                                                  (let ((__tmp96458
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95011_
                                                            _target95282_))))
                                                    (declare (not safe))
                                                    (cons __tmp96458 '()))))
                                             (declare (not safe))
                                             (cons __tmp96459 __tmp96457))))
                                      (declare (not safe))
                                      (cons __tmp96456 '())))
                                   (__tmp96442
                                    (let ((__tmp96445
                                           (let ((__tmp96451
                                                  (let ((__tmp96454
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp96452
                 (let ((__tmp96453
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95305_))))
                   (declare (not safe))
                   (cons __tmp96453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96454
                                                          __tmp96452)))
                                                 (__tmp96446
                                                  (let ((__tmp96447
                                                         (let ((__tmp96450
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95307_ '())))
                       (__tmp96448
                        (let ((__tmp96449
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95305_))))
                          (declare (not safe))
                          (cons __tmp96449 '()))))
                   (declare (not safe))
                   (cons __tmp96450 __tmp96448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96447 '()))))
                                             (declare (not safe))
                                             (cons __tmp96451 __tmp96446)))
                                          (__tmp96443
                                           (let* ((_body9530895315_
                                                   _body95299_)
                                                  (_E9531095319_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9530895315_))))
                                                  (_K9531195327_
                                                   (lambda (_tl95322_
                                                            _hd95323_)
                                                     (let ((__tmp96444
                                                            (lambda (_vars95325_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95189_
                         _tl95322_
                         _vars95325_
                         _$tl95307_
                         _E95283_
                         _k95284_)))))
               (declare (not safe))
               (_recur95189_
                _hd95323_
                _vars95281_
                _$hd95306_
                _E95283_
                __tmp96444)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9530895315_))
                                                 (let ((_hd9531295330_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9530895315_)))
                                                       (_tl9531395332_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9530895315_))))
                                                   (let* ((_hd95335_
                                                           _hd9531295330_)
                                                          (_tl95337_
                                                           _tl9531395332_))
                                                     (declare (not safe))
                                                     (_K9531195327_
                                                      _tl95337_
                                                      _hd95335_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9531095319_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp96445
                                       __tmp96443))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp96455
                                __tmp96442))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp96460 __tmp96441 _E95283_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95302_))
                        (let* ((_body9533895345_ _body95299_)
                               (_E9534095349_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9533895345_))))
                               (_K9534195400_
                                (lambda (_tl95352_ _hd95353_)
                                  (let* ((_rlen95355_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95190_ _tl95352_)))
                                         (_$target95357_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95359_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95361_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95363_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95365_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95367_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95369_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95371_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95191_ _hd95353_)))
                                         (_lvars95373_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95371_)))
                                         (_tlvars95375_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95371_)))
                                         (_linit95379_
                                          (map (lambda (_var95377_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95373_)))
                                    (letrec ((_make-loop95382_
                                              (lambda (_vars95386_)
                                                (let ((__tmp96392
                                                       (let ((__tmp96393
                                                              (let ((__tmp96429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95363_ '())))
                            (__tmp96394
                             (let ((__tmp96395
                                    (let ((__tmp96428
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95359_ _lvars95373_)))
                                          (__tmp96396
                                           (let ((__tmp96427
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95359_)))
                                                 (__tmp96405
                                                  (let ((__tmp96422
                                                         (let ((__tmp96423
                                                                (let ((__tmp96426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95365_ '())))
                              (__tmp96424
                               (let ((__tmp96425
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95011_
                                         _$hd95359_))))
                                 (declare (not safe))
                                 (cons __tmp96425 '()))))
                          (declare (not safe))
                          (cons __tmp96426 __tmp96424))))
                   (declare (not safe))
                   (cons __tmp96423 '())))
                (__tmp96406
                 (let ((__tmp96412
                        (let ((__tmp96418
                               (let ((__tmp96421
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95367_ '())))
                                     (__tmp96419
                                      (let ((__tmp96420
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95365_))))
                                        (declare (not safe))
                                        (cons __tmp96420 '()))))
                                 (declare (not safe))
                                 (cons __tmp96421 __tmp96419)))
                              (__tmp96413
                               (let ((__tmp96414
                                      (let ((__tmp96417
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95369_ '())))
                                            (__tmp96415
                                             (let ((__tmp96416
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95365_))))
                                               (declare (not safe))
                                               (cons __tmp96416 '()))))
                                        (declare (not safe))
                                        (cons __tmp96417 __tmp96415))))
                                 (declare (not safe))
                                 (cons __tmp96414 '()))))
                          (declare (not safe))
                          (cons __tmp96418 __tmp96413)))
                       (__tmp96407
                        (let ((__tmp96408
                               (lambda (_hdvars95388_)
                                 (let ((__tmp96409
                                        (let ((__tmp96410
                                               (map (lambda (_svar95390_
                                                             _lvar95391_)
                                                      (let ((__tmp96411
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95390_ _hdvars95388_ _BUG95188_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96411 _lvar95391_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95371_
                                                    _lvars95373_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95369_ __tmp96410))))
                                   (declare (not safe))
                                   (cons _$lp95363_ __tmp96409)))))
                          (declare (not safe))
                          (_recur95189_
                           _hd95353_
                           '()
                           _$lp-hd95367_
                           _E95283_
                           __tmp96408))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96412 __tmp96407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96422
                                                     __tmp96406)))
                                                 (__tmp96397
                                                  (let ((__tmp96401
                                                         (map (lambda (_lvar95393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95394_)
                        (let ((__tmp96404
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95394_ '())))
                              (__tmp96402
                               (let ((__tmp96403
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95393_))))
                                 (declare (not safe))
                                 (cons __tmp96403 '()))))
                          (declare (not safe))
                          (cons __tmp96404 __tmp96402)))
                      _lvars95373_
                      _tlvars95375_))
                (__tmp96398
                 (_k95284_
                  (let ((__tmp96399
                         (lambda (_svar95396_ _tlvar95397_ _r95398_)
                           (let ((__tmp96400
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95396_ _tlvar95397_))))
                             (declare (not safe))
                             (cons __tmp96400 _r95398_)))))
                    (declare (not safe))
                    (foldl2 __tmp96399
                            _vars95386_
                            _svars95371_
                            _tlvars95375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96401
                                                     __tmp96398))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp96427
                                              __tmp96405
                                              __tmp96397))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp96428
                                       __tmp96396))))
                               (declare (not safe))
                               (cons __tmp96395 '()))))
                        (declare (not safe))
                        (cons __tmp96429 __tmp96394))))
                 (declare (not safe))
                 (cons __tmp96393 '())))
              (__tmp96390
               (let ((__tmp96391
                      (let ()
                        (declare (not safe))
                        (cons _$target95357_ _linit95379_))))
                 (declare (not safe))
                 (cons _$lp95363_ __tmp96391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96392
                                                   __tmp96390)))))
                                      (let ((_body95384_
                                             (let ((__tmp96431
                                                    (let ((__tmp96432
                                                           (let ((__tmp96435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96436
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95361_ '()))))
                            (declare (not safe))
                            (cons _$target95357_ __tmp96436)))
                         (__tmp96433
                          (let ((__tmp96434
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95282_
                                    _rlen95355_))))
                            (declare (not safe))
                            (cons __tmp96434 '()))))
                     (declare (not safe))
                     (cons __tmp96435 __tmp96433))))
              (declare (not safe))
              (cons __tmp96432 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96430
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95189_
                                                       _tl95352_
                                                       _vars95281_
                                                       _$tl95361_
                                                       _E95283_
                                                       _make-loop95382_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96431
                                                __tmp96430))))
                                        (let ((__tmp96440
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95282_)))
                                              (__tmp96437
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95355_))
                                                   _body95384_
                                                   (let ((__tmp96438
                                                          (let ((__tmp96439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95282_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp96439 _rlen95355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp96438
                                                      _body95384_
                                                      _E95283_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp96440
                                           __tmp96437
                                           _E95283_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9533895345_))
                              (let ((_hd9534295403_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9533895345_)))
                                    (_tl9534395405_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9533895345_))))
                                (let* ((_hd95408_ _hd9534295403_)
                                       (_tl95410_ _tl9534395405_))
                                  (declare (not safe))
                                  (_K9534195400_ _tl95410_ _hd95408_)))
                              (let () (declare (not safe)) (_E9534095349_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95302_))
                            (let ((__tmp96389
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95282_)))
                                  (__tmp96388 (_k95284_ _vars95281_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96389
                               __tmp96388
                               _E95283_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95302_))
                                (let ((_$e95412_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96387
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95282_)))
                                        (__tmp96379
                                         (let ((__tmp96381
                                                (let ((__tmp96382
                                                       (let ((__tmp96386
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95412_ '())))
                     (__tmp96383
                      (let ((__tmp96384
                             (let ((__tmp96385
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95011_
                                       _target95282_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96385))))
                        (declare (not safe))
                        (cons __tmp96384 '()))))
                 (declare (not safe))
                 (cons __tmp96386 __tmp96383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96382 '())))
                                               (__tmp96380
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95189_
                                                   _body95299_
                                                   _vars95281_
                                                   _$e95412_
                                                   _E95283_
                                                   _k95284_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96381
                                            __tmp96380))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96387
                                     __tmp96379
                                     _E95283_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95302_))
                                    (let ((_$e95414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96378
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95282_)))
                                            (__tmp96370
                                             (let ((__tmp96372
                                                    (let ((__tmp96373
                                                           (let ((__tmp96377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95414_ '())))
                         (__tmp96374
                          (let ((__tmp96375
                                 (let ((__tmp96376
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95011_
                                           _target95282_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96376))))
                            (declare (not safe))
                            (cons __tmp96375 '()))))
                     (declare (not safe))
                     (cons __tmp96377 __tmp96374))))
              (declare (not safe))
              (cons __tmp96373 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96371
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95189_
                                                       _body95299_
                                                       _vars95281_
                                                       _$e95414_
                                                       _E95283_
                                                       _k95284_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96372
                                                __tmp96371))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96378
                                         __tmp96370
                                         _E95283_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95302_))
                                        (let ((_$e95416_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96369
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95282_)))
                                                (__tmp96360
                                                 (let ((__tmp96364
                                                        (let ((__tmp96365
                                                               (let ((__tmp96368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e95416_ '())))
                             (__tmp96366
                              (let ((__tmp96367
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95282_))))
                                (declare (not safe))
                                (cons __tmp96367 '()))))
                         (declare (not safe))
                         (cons __tmp96368 __tmp96366))))
                  (declare (not safe))
                  (cons __tmp96365 '())))
               (__tmp96361
                (let ((__tmp96363
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e95416_ _body95299_)))
                      (__tmp96362 (_k95284_ _vars95281_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96363 __tmp96362 _E95283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96364
                                                    __tmp96361))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96369
                                             __tmp96360
                                             _E95283_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95188_ _e95280_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9528595292_))
                                      (let ((_hd9528995421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9528595292_)))
                                            (_tl9529095423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9528595292_))))
                                        (let* ((_tag95426_ _hd9528995421_)
                                               (_body95428_ _tl9529095423_))
                                          (declare (not safe))
                                          (_K9528895418_
                                           _body95428_
                                           _tag95426_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9528795296_))))))
                             (_splice-rlen95190_
                              (lambda (_e95242_)
                                (let _lp95244_ ((_e95246_ _e95242_)
                                                (_n95247_ '0))
                                  (let* ((_e9524895255_ _e95246_)
                                         (_E9525095259_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9524895255_))))
                                         (_K9525195268_
                                          (lambda (_body95262_ _tag95263_)
                                            (let ((_$e95265_ _tag95263_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95265_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95009_
                                                     _where95181_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95265_))
                                                      (let ((__tmp96468
                                                             (cdr _body95262_))
                                                            (__tmp96467
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95247_ '1))))
                (declare (not safe))
                (_lp95244_ __tmp96468 __tmp96467))
              _n95247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9524895255_))
                                        (let ((_hd9525295271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9524895255_)))
                                              (_tl9525395273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9524895255_))))
                                          (let* ((_tag95276_ _hd9525295271_)
                                                 (_body95278_ _tl9525395273_))
                                            (declare (not safe))
                                            (_K9525195268_
                                             _body95278_
                                             _tag95276_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9525095259_)))))))
                             (_splice-vars95191_
                              (lambda (_e95198_)
                                (let _recur95200_ ((_e95202_ _e95198_)
                                                   (_vars95203_ '()))
                                  (let* ((_e9520495211_ _e95202_)
                                         (_E9520695215_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9520495211_))))
                                         (_K9520795230_
                                          (lambda (_body95218_ _tag95219_)
                                            (let ((_$e95221_ _tag95219_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95221_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95218_
                                                          _vars95203_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95221_))
                  (let () (declare (not safe)) (eq? 'splice _$e95221_)))
              (let ((__tmp96471 (cdr _body95218_))
                    (__tmp96469
                     (let ((__tmp96470 (car _body95218_)))
                       (declare (not safe))
                       (_recur95200_ __tmp96470 _vars95203_))))
                (declare (not safe))
                (_recur95200_ __tmp96471 __tmp96469))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95221_))
                      (let () (declare (not safe)) (eq? 'box _$e95221_)))
                  (let ()
                    (declare (not safe))
                    (_recur95200_ _body95218_ _vars95203_))
                  _vars95203_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9520495211_))
                                        (let ((_hd9520895233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9520495211_)))
                                              (_tl9520995235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9520495211_))))
                                          (let* ((_tag95238_ _hd9520895233_)
                                                 (_body95240_ _tl9520995235_))
                                            (declare (not safe))
                                            (_K9520795230_
                                             _body95240_
                                             _tag95238_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9520695215_)))))))
                             (_make-body95192_
                              (lambda (_vars95194_)
                                (let ((__tmp96472
                                       (map (lambda (_mvar95196_)
                                              (let ((__tmp96473
                                                     (car _mvar95196_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp96473
                                                 _vars95194_
                                                 _BUG95188_)))
                                            _mvars95184_)))
                                  (declare (not safe))
                                  (cons _K95185_ __tmp96472)))))
                      (let ()
                        (declare (not safe))
                        (_recur95189_
                         _hd95183_
                         '()
                         _target95182_
                         _E95186_
                         _make-body95192_)))))
                 (_parse-clause95018_
                  (lambda (_hd95087_ _ids95088_)
                    (let _recur95090_ ((_e95092_ _hd95087_)
                                       (_vars95093_ '())
                                       (_depth95094_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95092_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95092_))
                              (values '(any) _vars95093_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95092_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95009_
                                     _hd95087_))
                                  (if (let ((__tmp96489
                                             (lambda (_id95096_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95092_
                                                  _id95096_)))))
                                        (declare (not safe))
                                        (find __tmp96489 _ids95088_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95092_))
                                              _vars95093_)
                                      (if (let ((__tmp96487
                                                 (lambda (_var95098_)
                                                   (let ((__tmp96488
                                                          (car _var95098_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95092_
                                                      __tmp96488)))))
                                            (declare (not safe))
                                            (find __tmp96487 _vars95093_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95009_
                                             _e95092_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95092_))
                                                  (let ((__tmp96486
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96486
                                                          _vars95093_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95092_))
                              (let* ((_e9509995106_ _e95092_)
                                     (_E9510195110_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9509995106_))))
                                     (_E9510095171_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9509995106_))
                                            (let ((_e9510295114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9509995106_))))
                                              (let ((_hd9510395117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9510295114_)))
                                                    (_tl9510495119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9510295114_))))
                                                (let* ((_hd95122_
                                                        _hd9510395117_)
                                                       (_rest95124_
                                                        _tl9510495119_))
                                                  (if '#t
                                                      (let* ((_make-pair95139_
                                                              (lambda (_tag95126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95127_
                               _tl95128_)
                        (let* ((_hd-depth95130_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95126_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95094_ '1))
                                    _depth95094_))
                               (_g96481_
                                (let ()
                                  (declare (not safe))
                                  (_recur95090_
                                   _hd95127_
                                   _vars95093_
                                   _hd-depth95130_))))
                          (begin
                            (let ((_g96482_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g96481_)
                                         (##vector-length _g96481_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g96482_ 2)))
                                  (error "Context expects 2 values" _g96482_)))
                            (let ((_hd95132_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96481_ 0)))
                                  (_vars95133_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96481_ 1))))
                              (let ((_g96483_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95090_
                                        _tl95128_
                                        _vars95133_
                                        _depth95094_))))
                                (begin
                                  (let ((_g96484_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g96483_)
                                               (##vector-length _g96483_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g96484_ 2)))
                                        (error "Context expects 2 values"
                                               _g96484_)))
                                  (let ((_tl95135_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96483_ 0)))
                                        (_vars95136_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96483_ 1))))
                                    (let ()
                                      (values (let ((__tmp96485
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95132_
                                                             _tl95135_))))
                                                (declare (not safe))
                                                (cons _tag95126_ __tmp96485))
                                              _vars95136_))))))))))
                     (_e9514095147_ _rest95124_)
                     (_E9514295151_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95139_ 'cons _hd95122_ _rest95124_))))
                     (_E9514195167_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9514095147_))
                            (let ((_e9514395155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9514095147_))))
                              (let ((_hd9514495158_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9514395155_)))
                                    (_tl9514595160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9514395155_))))
                                (let* ((_rest-hd95163_ _hd9514495158_)
                                       (_rest-tl95165_ _tl9514595160_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95163_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95139_
                                             'splice
                                             _hd95122_
                                             _rest-tl95165_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95139_
                                             'cons
                                             _hd95122_
                                             _rest95124_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9514295151_))))))
                            (let () (declare (not safe)) (_E9514295151_))))))
                (let () (declare (not safe)) (_E9514195167_)))
              (let () (declare (not safe)) (_E9510195110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9510195110_))))))
                                (let () (declare (not safe)) (_E9510095171_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95092_))
                                  (values '(null) _vars95093_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95092_))
                                      (let ((_g96478_
                                             (let ((__tmp96480
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95092_)))))
                                               (declare (not safe))
                                               (_recur95090_
                                                __tmp96480
                                                _vars95093_
                                                _depth95094_))))
                                        (begin
                                          (let ((_g96479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96478_)
                                                       (##vector-length
                                                        _g96478_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96479_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96479_)))
                                          (let ((_e95175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96478_ 0)))
                                                (_vars95176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96478_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95175_))
                                                    _vars95176_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95092_))
                                          (let ((_g96475_
                                                 (let ((__tmp96477
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95090_
                                                    __tmp96477
                                                    _vars95093_
                                                    _depth95094_))))
                                            (begin
                                              (let ((_g96476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g96475_)
                                                           (##vector-length
                                                            _g96475_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g96476_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g96476_)))
                                              (let ((_e95178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96475_
                                                        0)))
                                                    (_vars95179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96475_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95178_))
                                                        _vars95179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95092_))
                                              (values (let ((__tmp96474
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95092_))))
                (declare (not safe))
                (cons 'datum __tmp96474))
              _vars95093_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95009_
                                                 _e95092_))))))))))))
          (let* ((_e9501995032_ _stx95009_)
                 (_E9502195036_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9501995032_))))
                 (_E9502095083_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9501995032_))
                        (let ((_e9502295040_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9501995032_))))
                          (let ((_hd9502395043_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9502295040_)))
                                (_tl9502495045_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9502295040_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9502495045_))
                                (let ((_e9502595048_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9502495045_))))
                                  (let ((_hd9502695051_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9502595048_)))
                                        (_tl9502795053_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9502595048_))))
                                    (let ((_expr95056_ _hd9502695051_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9502795053_))
                                          (let ((_e9502895058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9502795053_))))
                                            (let ((_hd9502995061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9502895058_)))
                                                  (_tl9503095063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9502895058_))))
                                              (let* ((_ids95066_
                                                      _hd9502995061_)
                                                     (_clauses95068_
                                                      _tl9503095063_))
                                                (if '#t
                                                    (if (let ((__tmp96507
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95066_))))
                  (declare (not safe))
                  (not __tmp96507))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95009_
                   _ids95066_))
                (if (let ((__tmp96506
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95068_))))
                      (declare (not safe))
                      (not __tmp96506))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95009_))
                    (let* ((_ids95070_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95066_)))
                           (_clauses95072_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95068_)))
                           (_clause-ids95074_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95072_)))
                           (_E95076_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95078_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95080_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95072_))
                                _E95076_
                                (car _clause-ids95074_))))
                      (let ((__tmp96491
                             (let ((__tmp96492
                                    (let ((__tmp96494
                                           (let ((__tmp96499
                                                  (let ((__tmp96500
                                                         (let ((__tmp96505
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95076_ '())))
                       (__tmp96501
                        (let ((__tmp96502
                               (let ((__tmp96504
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95078_ '())))
                                     (__tmp96503
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95078_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp96504
                                  __tmp96503))))
                          (declare (not safe))
                          (cons __tmp96502 '()))))
                   (declare (not safe))
                   (cons __tmp96505 __tmp96501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96500 '())))
                                                 (__tmp96495
                                                  (let ((__tmp96498
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95014_
                                                            _target95078_
                                                            _ids95070_
                                                            _clauses95072_
                                                            _clause-ids95074_
                                                            _E95076_)))
                                                        (__tmp96496
                                                         (let ((__tmp96497
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95056_ '()))))
                   (declare (not safe))
                   (cons _first95080_ __tmp96497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95015_
                                                     __tmp96498
                                                     __tmp96496))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp96499
                                              __tmp96495)))
                                          (__tmp96493
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95009_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp96494
                                       __tmp96493))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp96492)))
                            (__tmp96490
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95009_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp96491 __tmp96490)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9502195036_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9502195036_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9502195036_)))))
                        (let () (declare (not safe)) (_E9502195036_))))))
            (let () (declare (not safe)) (_E9502095083_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95719_)
        (let* ((_identifier=?95721_ 'free-identifier=?)
               (_unwrap-e95723_ 'syntax-e)
               (_wrap-e95725_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95719_
           _identifier=?95721_
           _unwrap-e95723_
           _wrap-e95725_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95727_ _identifier=?95728_)
        (let* ((_unwrap-e95730_ 'syntax-e) (_wrap-e95732_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95727_
           _identifier=?95728_
           _unwrap-e95730_
           _wrap-e95732_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95734_ _identifier=?95735_ _unwrap-e95736_)
        (let ((_wrap-e95738_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95734_
           _identifier=?95735_
           _unwrap-e95736_
           _wrap-e95738_))))
    (define gx#macro-expand-syntax-case
      (lambda _g96509_
        (let ((_g96508_ (let () (declare (not safe)) (##length _g96509_))))
          (cond ((let () (declare (not safe)) (##fx= _g96508_ 1))
                 (apply (lambda (_stx95719_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95719_)))
                        _g96509_))
                ((let () (declare (not safe)) (##fx= _g96508_ 2))
                 (apply (lambda (_stx95727_ _identifier=?95728_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95727_
                             _identifier=?95728_)))
                        _g96509_))
                ((let () (declare (not safe)) (##fx= _g96508_ 3))
                 (apply (lambda (_stx95734_
                                 _identifier=?95735_
                                 _unwrap-e95736_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95734_
                             _identifier=?95735_
                             _unwrap-e95736_)))
                        _g96509_))
                ((let () (declare (not safe)) (##fx= _g96508_ 4))
                 (apply (lambda (_stx95740_
                                 _identifier=?95741_
                                 _unwrap-e95742_
                                 _wrap-e95743_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95740_
                             _identifier=?95741_
                             _unwrap-e95742_
                             _wrap-e95743_)))
                        _g96509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g96509_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95006_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95006_))
            (let ((__tmp96510
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95006_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp96510 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd94964_ . _rest94965_)
        (let ((_len94967_ (length _hd94964_)))
          (let _lp94969_ ((_rest94971_ _rest94965_))
            (let* ((_rest9497294980_ _rest94971_)
                   (_else9497494988_ (lambda () '#!void))
                   (_K9497694994_
                    (lambda (_rest94991_ _hd94992_)
                      (if (fx= _len94967_ (length _hd94992_))
                          (let () (declare (not safe)) (_lp94969_ _rest94991_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd94992_))))))
              (if (let () (declare (not safe)) (##pair? _rest9497294980_))
                  (let ((_hd9497794997_
                         (let ()
                           (declare (not safe))
                           (##car _rest9497294980_)))
                        (_tl9497894999_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9497294980_))))
                    (let* ((_hd95002_ _hd9497794997_)
                           (_rest95004_ _tl9497894999_))
                      (declare (not safe))
                      (_K9497694994_ _rest95004_ _hd95002_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94922_ _n94923_)
        (let _lp94925_ ((_rest94927_ _stx94922_) (_r94928_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94927_))
              (let* ((_g9492994936_
                      (let () (declare (not safe)) (gx#syntax-e _rest94927_)))
                     (_E9493194940_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9492994936_))))
                     (_K9493294946_
                      (lambda (_rest94943_ _hd94944_)
                        (let ((__tmp96515
                               (let ()
                                 (declare (not safe))
                                 (cons _hd94944_ _r94928_))))
                          (declare (not safe))
                          (_lp94925_ _rest94943_ __tmp96515)))))
                (if (let () (declare (not safe)) (##pair? _g9492994936_))
                    (let ((_hd9493394949_
                           (let () (declare (not safe)) (##car _g9492994936_)))
                          (_tl9493494951_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9492994936_))))
                      (let* ((_hd94954_ _hd9493394949_)
                             (_rest94956_ _tl9493494951_))
                        (declare (not safe))
                        (_K9493294946_ _rest94956_ _hd94954_)))
                    (let () (declare (not safe)) (_E9493194940_))))
              (let _lp94958_ ((_n94960_ _n94923_)
                              (_l94961_ _r94928_)
                              (_r94962_ _rest94927_))
                (if (let () (declare (not safe)) (null? _l94961_))
                    (values _l94961_ _r94962_)
                    (if (fxpositive? _n94960_)
                        (let ((__tmp96514
                               (let () (declare (not safe)) (fx- _n94960_ '1)))
                              (__tmp96513 (cdr _l94961_))
                              (__tmp96511
                               (let ((__tmp96512 (car _l94961_)))
                                 (declare (not safe))
                                 (cons __tmp96512 _r94962_))))
                          (declare (not safe))
                          (_lp94958_ __tmp96514 __tmp96513 __tmp96511))
                        (values (reverse _l94961_) _r94962_))))))))))

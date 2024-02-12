(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707735857)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp184799 (list gx#expander::t))
            (__tmp184797
             (let ((__tmp184798
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp184798 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp184799
         '(id depth)
         __tmp184797
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180226_
        (apply make-instance gx#syntax-pattern::t _$args180226_)))
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
      (lambda (_self180223_ _stx180224_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180224_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179705_)
        (letrec ((_generate179707_
                  (lambda (_e179934_)
                    (letrec ((_BUG179936_
                              (lambda (_q180098_)
                                (error '"BUG: syntax; generate"
                                       _stx179705_
                                       _e179934_
                                       _q180098_)))
                             (_local-pattern-e179937_
                              (lambda (_pat180096_)
                                (let ((__tmp184800
                                       (##structure-ref
                                        _pat180096_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp184800))))
                             (_getvar179938_
                              (lambda (_q180093_ _vars180094_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180093_
                                           _vars180094_
                                           _BUG179936_))))
                             (_getarg179939_
                              (lambda (_arg180059_ _vars180060_)
                                (let* ((_arg180061180068_ _arg180059_)
                                       (_E180063180072_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180061180068_)))
                                       (_K180064180081_
                                        (lambda (_e180075_ _tag180076_)
                                          (let ((_$e180078_ _tag180076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180078_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar179938_
                                                   _e180075_
                                                   _vars180060_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180078_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e179937_
                                                       _e180075_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG179936_
                                                       _arg180059_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180061180068_))
                                      (let ((_hd180065180084_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180061180068_)))
                                            (_tl180066180086_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180061180068_))))
                                        (let* ((_tag180089_ _hd180065180084_)
                                               (_e180091_ _tl180066180086_))
                                          (declare (not safe))
                                          (_K180064180081_
                                           _e180091_
                                           _tag180089_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180063180072_)))))))
                      (let _recur179941_ ((_e179943_ _e179934_)
                                          (_vars179944_ '()))
                        (let* ((_e179945179952_ _e179943_)
                               (_E179947179956_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e179945179952_)))
                               (_K179948180047_
                                (lambda (_body179959_ _tag179960_)
                                  (let ((_$e179962_ _tag179960_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179962_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body179959_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e179962_))
                                            (let ((_id179965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body179959_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id179965_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks179967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id179965_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks179967_))
                                                        (let ((__tmp184828
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body179959_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp184828))
                (let ((__tmp184827
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body179959_)))
                      (__tmp184826
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body179959_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp184827
                   __tmp184826
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id179965_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body179959_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG179936_
                                                         _e179943_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e179962_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e179937_
                                                   _body179959_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e179962_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar179938_
                                                       _body179959_
                                                       _vars179944_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e179962_))
                                                        (let ((__tmp184824
                                                               (let ((__tmp184825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body179959_)))
                         (declare (not safe))
                         (_recur179941_ __tmp184825 _vars179944_)))
                      (__tmp184822
                       (let ((__tmp184823 (cdr _body179959_)))
                         (declare (not safe))
                         (_recur179941_ __tmp184823 _vars179944_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp184824 __tmp184822))
                (if (let () (declare (not safe)) (eq? 'vector _$e179962_))
                    (let ((__tmp184821
                           (let ()
                             (declare (not safe))
                             (_recur179941_ _body179959_ _vars179944_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp184821))
                    (if (let () (declare (not safe)) (eq? 'box _$e179962_))
                        (let ((__tmp184820
                               (let ()
                                 (declare (not safe))
                                 (_recur179941_ _body179959_ _vars179944_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp184820))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e179962_))
                            (let* ((_body179968179979_ _body179959_)
                                   (_E179970179983_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body179968179979_)))
                                   (_K179971180021_
                                    (lambda (_args179986_
                                             _iv179987_
                                             _hd179988_
                                             _depth179989_)
                                      (let* ((_targets179995_
                                              (map (lambda (_g179990179992_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg179939_
                                                        _g179990179992_
                                                        _vars179944_)))
                                                   _args179986_))
                                             (_fold-in179997_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args179986_)))
                                             (_fold-out179999_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180001_
                                              (let ((__tmp184801
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out179999_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp184801
                                                        _fold-in179997_)))
                                             (_lambda-body180018_
                                              (if (fx> _depth179989_ '1)
                                                  (let ((_r-args180009_
                                                         (map (lambda (_arg180003_)
                                                                (let ((__tmp184806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180003_)))
                          (declare (not safe))
                          (cons 'ref __tmp184806)))
                      _args179986_))
                (_r-vars180010_
                 (let ((__tmp184807
                        (lambda (_arg180005_ _var180006_ _r180007_)
                          (let ((__tmp184808
                                 (let ((__tmp184809 (cdr _arg180005_)))
                                   (declare (not safe))
                                   (cons __tmp184809 _var180006_))))
                            (declare (not safe))
                            (cons __tmp184808 _r180007_)))))
                   (declare (not safe))
                   (foldr2 __tmp184807
                           _vars179944_
                           _args179986_
                           _fold-in179997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp184810
                                                           (let ((__tmp184811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184815
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth179989_ '1)))
                                (__tmp184812
                                 (let ((__tmp184813
                                        (let ((__tmp184814
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out179999_))))
                                          (declare (not safe))
                                          (cons __tmp184814 _r-args180009_))))
                                   (declare (not safe))
                                   (cons _hd179988_ __tmp184813))))
                            (declare (not safe))
                            (cons __tmp184815 __tmp184812))))
                     (declare (not safe))
                     (cons 'splice __tmp184811))))
              (declare (not safe))
              (_recur179941_ __tmp184810 _r-vars180010_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180016_
                                                          (let ((__tmp184802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180012_ _var180013_ _r180014_)
                           (let ((__tmp184803
                                  (let ((__tmp184804 (cdr _arg180012_)))
                                    (declare (not safe))
                                    (cons __tmp184804 _var180013_))))
                             (declare (not safe))
                             (cons __tmp184803 _r180014_)))))
                    (declare (not safe))
                    (foldr2 __tmp184802
                            _vars179944_
                            _args179986_
                            _fold-in179997_)))
                 (__tmp184805
                  (let ()
                    (declare (not safe))
                    (_recur179941_ _hd179988_ _hd-vars180016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp184805
                                                     _fold-out179999_)))))
                                        (let ((__tmp184819
                                               (if (fx> (length _targets179995_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets179995_))
                                                   '#!void))
                                              (__tmp184816
                                               (let ((__tmp184818
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180001_
                                                         _lambda-body180018_)))
                                                     (__tmp184817
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur179941_
                                                         _iv179987_
                                                         _vars179944_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp184818
                                                  __tmp184817
                                                  _targets179995_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp184819
                                           __tmp184816))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body179968179979_))
                                  (let ((_hd179972180024_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body179968179979_)))
                                        (_tl179973180026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body179968179979_))))
                                    (let ((_depth180029_ _hd179972180024_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl179973180026_))
                                          (let ((_hd179974180031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl179973180026_)))
                                                (_tl179975180033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl179973180026_))))
                                            (let ((_hd180036_
                                                   _hd179974180031_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl179975180033_))
                                                  (let ((_hd179976180038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl179975180033_)))
                                                        (_tl179977180040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl179975180033_))))
                                                    (let* ((_iv180043_
                                                            _hd179976180038_)
                                                           (_args180045_
                                                            _tl179977180040_))
                                                      (declare (not safe))
                                                      (_K179971180021_
                                                       _args180045_
                                                       _iv180043_
                                                       _hd180036_
                                                       _depth180029_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179970179983_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179970179983_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E179970179983_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e179962_))
                                _body179959_
                                (let ()
                                  (declare (not safe))
                                  (_BUG179936_ _e179943_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e179945179952_))
                              (let ((_hd179949180050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179945179952_)))
                                    (_tl179950180052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179945179952_))))
                                (let* ((_tag180055_ _hd179949180050_)
                                       (_body180057_ _tl179950180052_))
                                  (declare (not safe))
                                  (_K179948180047_ _body180057_ _tag180055_)))
                              (let ()
                                (declare (not safe))
                                (_E179947179956_))))))))
                 (_parse179708_
                  (lambda (_e179749_)
                    (letrec ((_make-cons179751_
                              (lambda (_hd179926_ _tl179927_)
                                (let ((_g184829_ _hd179926_)
                                      (_g184831_ _tl179927_))
                                  (begin
                                    (let ((_g184830_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184829_)
                                                 (##vector-length _g184829_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184830_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184830_)))
                                    (let ((_g184832_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184831_)
                                                 (##vector-length _g184831_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184832_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184832_)))
                                    (let ((_hd-e179929_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184829_ 0)))
                                          (_hd-vars179930_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184829_ 1))))
                                      (let ((_tl-e179931_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184831_ 0)))
                                            (_tl-vars179932_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184831_ 1))))
                                        (values (let ((__tmp184833
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e179929_
                                                               _tl-e179931_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp184833))
                                                (append _hd-vars179930_
                                                        _tl-vars179932_))))))))
                             (_make-splice179752_
                              (lambda (_where179865_
                                       _depth179866_
                                       _hd179867_
                                       _tl179868_)
                                (let ((_g184834_ _hd179867_)
                                      (_g184836_ _tl179868_))
                                  (begin
                                    (let ((_g184835_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184834_)
                                                 (##vector-length _g184834_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184835_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184835_)))
                                    (let ((_g184837_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184836_)
                                                 (##vector-length _g184836_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184837_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184837_)))
                                    (let ((_hd-e179870_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184834_ 0)))
                                          (_hd-vars179871_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184834_ 1))))
                                      (let ((_tl-e179872_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184836_ 0)))
                                            (_tl-vars179873_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184836_ 1))))
                                        (let _lp179875_ ((_rest179877_
                                                          _hd-vars179871_)
                                                         (_targets179878_ '())
                                                         (_vars179879_
                                                          _tl-vars179873_))
                                          (let* ((_rest179880179890_
                                                  _rest179877_)
                                                 (_else179882179898_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets179878_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179705_
                                                           _where179865_))
                                                        (values (let ((__tmp184838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp184839
                                      (let ((__tmp184840
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e179872_
                                                     _targets179878_))))
                                        (declare (not safe))
                                        (cons _hd-e179870_ __tmp184840))))
                                 (declare (not safe))
                                 (cons _depth179866_ __tmp184839))))
                          (declare (not safe))
                          (cons 'splice __tmp184838))
                        _vars179879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K179884179907_
                                                  (lambda (_rest179901_
                                                           _hd-pat179902_
                                                           _hd-depth*179903_)
                                                    (let ((_hd-depth179905_
                                                           (fx- _hd-depth*179903_
                                                                _depth179866_)))
                                                      (if (fxpositive?
                                                           _hd-depth179905_)
                                                          (let ((__tmp184845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp184846
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat179902_))))
                           (declare (not safe))
                           (cons __tmp184846 _targets179878_)))
                        (__tmp184843
                         (let ((__tmp184844
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth179905_ _hd-pat179902_))))
                           (declare (not safe))
                           (cons __tmp184844 _vars179879_))))
                    (declare (not safe))
                    (_lp179875_ _rest179901_ __tmp184845 __tmp184843))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth179905_))
                      (let ((__tmp184841
                             (let ((__tmp184842
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat179902_))))
                               (declare (not safe))
                               (cons __tmp184842 _targets179878_))))
                        (declare (not safe))
                        (_lp179875_ _rest179901_ __tmp184841 _vars179879_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179705_
                         _where179865_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest179880179890_))
                                                (let ((_hd179885179910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest179880179890_)))
                                                      (_tl179886179912_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest179880179890_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd179885179910_))
                                                      (let ((_hd179887179915_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd179885179910_)))
                    (_tl179888179917_
                     (let () (declare (not safe)) (##cdr _hd179885179910_))))
                (let* ((_hd-depth*179920_ _hd179887179915_)
                       (_hd-pat179922_ _tl179888179917_)
                       (_rest179924_ _tl179886179912_))
                  (declare (not safe))
                  (_K179884179907_
                   _rest179924_
                   _hd-pat179922_
                   _hd-depth*179920_)))
              (let () (declare (not safe)) (_else179882179898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else179882179898_)))))))))))
                             (_recur179753_
                              (lambda (_e179758_ _is-e?179759_)
                                (if (_is-e?179759_ _e179758_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179705_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179758_))
                                        (let* ((_pat179761_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179758_)))
                                               (_depth179763_
                                                (##structure-ref
                                                 _pat179761_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179763_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179761_))
                                                      (let ((__tmp184862
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179763_ _pat179761_))))
                (declare (not safe))
                (cons __tmp184862 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179761_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179758_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179758_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179758_))
                                                (let* ((_e179765179772_
                                                        _e179758_)
                                                       (_E179767179776_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179765179772_))))
                                                       (_E179766179855_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179765179772_))
                      (let ((_e179768179780_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179765179772_))))
                        (let ((_hd179769179783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179768179780_)))
                              (_tl179770179785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179768179780_))))
                          (let* ((_hd179788_ _hd179769179783_)
                                 (_rest179790_ _tl179770179785_))
                            (if '#t
                                (if (_is-e?179759_ _hd179788_)
                                    (let* ((_e179791179798_ _rest179790_)
                                           (_E179793179802_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179705_
                                                 _e179758_))))
                                           (_E179792179816_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e179791179798_))
                                                  (let ((_e179794179806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e179791179798_))))
                                                    (let ((_hd179795179809_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e179794179806_)))
                                                          (_tl179796179811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e179794179806_))))
                                                      (let ((_rest179814_
                                                             _hd179795179809_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl179796179811_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179753_ _rest179814_ false))
                        (let () (declare (not safe)) (_E179793179802_)))
                    (let () (declare (not safe)) (_E179793179802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179793179802_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E179792179816_)))
                                    (let _lp179820_ ((_rest179822_
                                                      _rest179790_)
                                                     (_depth179823_ '0))
                                      (let* ((_e179824179831_ _rest179822_)
                                             (_E179826179835_
                                              (lambda ()
                                                (if (fxpositive? _depth179823_)
                                                    (let ((__tmp184856
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179753_
                                                              _hd179788_
                                                              _is-e?179759_)))
                                                          (__tmp184855
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179753_
                                                              _rest179822_
                                                              _is-e?179759_))))
                                                      (declare (not safe))
                                                      (_make-splice179752_
                                                       _e179758_
                                                       _depth179823_
                                                       __tmp184856
                                                       __tmp184855))
                                                    (let ((__tmp184854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179753_
                                                              _hd179788_
                                                              _is-e?179759_)))
                                                          (__tmp184853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179753_
                                                              _rest179822_
                                                              _is-e?179759_))))
                                                      (declare (not safe))
                                                      (_make-cons179751_
                                                       __tmp184854
                                                       __tmp184853)))))
                                             (_E179825179851_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e179824179831_))
                                                    (let ((_e179827179839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e179824179831_))))
                                                      (let ((_hd179828179842_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e179827179839_)))
                    (_tl179829179844_
                     (let () (declare (not safe)) (##cdr _e179827179839_))))
                (let* ((_rest-hd179847_ _hd179828179842_)
                       (_rest-tl179849_ _tl179829179844_))
                  (if '#t
                      (if (_is-e?179759_ _rest-hd179847_)
                          (let ((__tmp184861
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth179823_ '1))))
                            (declare (not safe))
                            (_lp179820_ _rest-tl179849_ __tmp184861))
                          (if (fxpositive? _depth179823_)
                              (let ((__tmp184860
                                     (let ()
                                       (declare (not safe))
                                       (_recur179753_
                                        _hd179788_
                                        _is-e?179759_)))
                                    (__tmp184859
                                     (let ()
                                       (declare (not safe))
                                       (_recur179753_
                                        _rest179822_
                                        _is-e?179759_))))
                                (declare (not safe))
                                (_make-splice179752_
                                 _e179758_
                                 _depth179823_
                                 __tmp184860
                                 __tmp184859))
                              (let ((__tmp184858
                                     (let ()
                                       (declare (not safe))
                                       (_recur179753_
                                        _hd179788_
                                        _is-e?179759_)))
                                    (__tmp184857
                                     (let ()
                                       (declare (not safe))
                                       (_recur179753_
                                        _rest179822_
                                        _is-e?179759_))))
                                (declare (not safe))
                                (_make-cons179751_ __tmp184858 __tmp184857))))
                      (let () (declare (not safe)) (_E179826179835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179826179835_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E179825179851_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179767179776_))))))
                      (let () (declare (not safe)) (_E179767179776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179766179855_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179758_))
                                                    (let ((_g184850_
                                                           (let ((__tmp184852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179758_)))))
                     (declare (not safe))
                     (_recur179753_ __tmp184852 _is-e?179759_))))
              (begin
                (let ((_g184851_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g184850_)
                             (##vector-length _g184850_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184851_ 2)))
                      (error "Context expects 2 values" _g184851_)))
                (let ((_e179859_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184850_ 0)))
                      (_vars179860_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184850_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e179859_))
                          _vars179860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179758_))
                                                        (let ((_g184847_
                                                               (let ((__tmp184849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179758_)))))
                         (declare (not safe))
                         (_recur179753_ __tmp184849 _is-e?179759_))))
                  (begin
                    (let ((_g184848_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g184847_)
                                 (##vector-length _g184847_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g184848_ 2)))
                          (error "Context expects 2 values" _g184848_)))
                    (let ((_e179862_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184847_ 0)))
                          (_vars179863_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184847_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e179862_))
                              _vars179863_))))
                (values (let () (declare (not safe)) (cons 'datum _e179758_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g184863_
                             (let ()
                               (declare (not safe))
                               (_recur179753_ _e179749_ gx#ellipsis?))))
                        (begin
                          (let ((_g184864_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g184863_)
                                       (##vector-length _g184863_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g184864_ 2)))
                                (error "Context expects 2 values" _g184864_)))
                          (let ((_tree179755_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184863_ 0)))
                                (_vars179756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184863_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179756_))
                                _tree179755_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179705_
                                   _vars179756_))))))))))
          (let* ((_e179709179719_ _stx179705_)
                 (_E179711179723_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179705_))))
                 (_E179710179745_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179709179719_))
                        (let ((_e179712179727_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179709179719_))))
                          (let ((_hd179713179730_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179712179727_)))
                                (_tl179714179732_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179712179727_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179714179732_))
                                (let ((_e179715179735_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179714179732_))))
                                  (let ((_hd179716179738_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179715179735_)))
                                        (_tl179717179740_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179715179735_))))
                                    (let ((_form179743_ _hd179716179738_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179717179740_))
                                          (if '#t
                                              (let ((__tmp184866
                                                     (let ((__tmp184867
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179708_
                                                               _form179743_))))
                                                       (declare (not safe))
                                                       (_generate179707_
                                                        __tmp184867)))
                                                    (__tmp184865
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179705_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp184866
                                                 __tmp184865))
                                              (let ()
                                                (declare (not safe))
                                                (_E179711179723_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179711179723_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179711179723_)))))
                        (let () (declare (not safe)) (_E179711179723_))))))
            (let () (declare (not safe)) (_E179710179745_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx178969_
               _identifier=?178970_
               _unwrap-e178971_
               _wrap-e178972_)
        (letrec ((_generate-bindings178974_
                  (lambda (_target179569_
                           _ids179570_
                           _clauses179571_
                           _clause-ids179572_
                           _E179573_)
                    (letrec ((_generate1179575_
                              (lambda (_clause179672_
                                       _clause-id179673_
                                       _E179674_)
                                (let ((__tmp184872
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179673_ '())))
                                      (__tmp184868
                                       (let ((__tmp184869
                                              (let ((__tmp184871
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179569_
                                                             '())))
                                                    (__tmp184870
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause178976_
                                                        _target179569_
                                                        _ids179570_
                                                        _clause179672_
                                                        _E179674_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp184871
                                                 __tmp184870))))
                                         (declare (not safe))
                                         (cons __tmp184869 '()))))
                                  (declare (not safe))
                                  (cons __tmp184872 __tmp184868)))))
                      (let _lp179577_ ((_rest179579_ _clauses179571_)
                                       (_rest-ids179580_ _clause-ids179572_)
                                       (_bindings179581_ '()))
                        (let* ((_rest179582179590_ _rest179579_)
                               (_else179584179598_
                                (lambda () _bindings179581_))
                               (_K179586179660_
                                (lambda (_rest179601_ _clause179602_)
                                  (let* ((_rest-ids179603179610_
                                          _rest-ids179580_)
                                         (_E179605179614_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179603179610_)))
                                         (_K179606179648_
                                          (lambda (_rest-ids179617_
                                                   _clause-id179618_)
                                            (let* ((_rest-ids179619179627_
                                                    _rest-ids179617_)
                                                   (_else179621179635_
                                                    (lambda ()
                                                      (let ((__tmp184873
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179575_
                        _clause179602_
                        _clause-id179618_
                        _E179573_))))
                (declare (not safe))
                (cons __tmp184873 _bindings179581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179623179640_
                                                    (lambda (_next-clause-id179638_)
                                                      (let ((__tmp184874
                                                             (let ((__tmp184875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179575_
                               _clause179602_
                               _clause-id179618_
                               _next-clause-id179638_))))
                       (declare (not safe))
                       (cons __tmp184875 _bindings179581_))))
                (declare (not safe))
                (_lp179577_ _rest179601_ _rest-ids179617_ __tmp184874)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179619179627_))
                                                  (let* ((_hd179624179643_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179619179627_)))
                                                         (_next-clause-id179646_
                                                          _hd179624179643_))
                                                    (declare (not safe))
                                                    (_K179623179640_
                                                     _next-clause-id179646_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179621179635_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179603179610_))
                                        (let ((_hd179607179651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179603179610_)))
                                              (_tl179608179653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179603179610_))))
                                          (let* ((_clause-id179656_
                                                  _hd179607179651_)
                                                 (_rest-ids179658_
                                                  _tl179608179653_))
                                            (declare (not safe))
                                            (_K179606179648_
                                             _rest-ids179658_
                                             _clause-id179656_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179605179614_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179582179590_))
                              (let ((_hd179587179663_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179582179590_)))
                                    (_tl179588179665_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179582179590_))))
                                (let* ((_clause179668_ _hd179587179663_)
                                       (_rest179670_ _tl179588179665_))
                                  (declare (not safe))
                                  (_K179586179660_
                                   _rest179670_
                                   _clause179668_)))
                              (let ()
                                (declare (not safe))
                                (_else179584179598_))))))))
                 (_generate-body178975_
                  (lambda (_bindings179529_ _body179530_)
                    (let _recur179532_ ((_rest179534_ _bindings179529_))
                      (let* ((_rest179535179543_ _rest179534_)
                             (_else179537179551_ (lambda () _body179530_))
                             (_K179539179557_
                              (lambda (_rest179554_ _hd179555_)
                                (let ((__tmp184877
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179555_ '())))
                                      (__tmp184876
                                       (let ()
                                         (declare (not safe))
                                         (_recur179532_ _rest179554_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp184877
                                   __tmp184876)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179535179543_))
                            (let ((_hd179540179560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179535179543_)))
                                  (_tl179541179562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179535179543_))))
                              (let* ((_hd179565_ _hd179540179560_)
                                     (_rest179567_ _tl179541179562_))
                                (declare (not safe))
                                (_K179539179557_ _rest179567_ _hd179565_)))
                            (let ()
                              (declare (not safe))
                              (_else179537179551_)))))))
                 (_generate-clause178976_
                  (lambda (_target179392_ _ids179393_ _clause179394_ _E179395_)
                    (letrec ((_generate1179397_
                              (lambda (_hd179484_ _fender179485_ _body179486_)
                                (let ((_g184878_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause178978_
                                          _hd179484_
                                          _ids179393_))))
                                  (begin
                                    (let ((_g184879_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184878_)
                                                 (##vector-length _g184878_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184879_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184879_)))
                                    (let ((_e179488_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184878_ 0)))
                                          (_mvars179489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184878_ 1))))
                                      (let* ((_pvars179491_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179489_))))
                                             (_E179493_
                                              (let ((__tmp184880
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179392_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179395_ __tmp184880)))
                                             (_K179526_
                                              (let ((__tmp184881
                                                     (let ((__tmp184883
                                                            (map (lambda (_mvar179495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179496_)
                           (let* ((_mvar179497179504_ _mvar179495_)
                                  (_E179499179508_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179497179504_)))
                                  (_K179500179514_
                                   (lambda (_depth179511_ _id179512_)
                                     (let ((__tmp184884
                                            (let ((__tmp184885
                                                   (let ((__tmp184887
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179512_)))
                                                         (__tmp184886
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179496_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp184887
                                                      __tmp184886
                                                      _depth179511_))))
                                              (declare (not safe))
                                              (cons __tmp184885 '()))))
                                       (declare (not safe))
                                       (cons _id179512_ __tmp184884)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179497179504_))
                                 (let ((_hd179501179517_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179497179504_)))
                                       (_tl179502179519_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179497179504_))))
                                   (let* ((_id179522_ _hd179501179517_)
                                          (_depth179524_ _tl179502179519_))
                                     (declare (not safe))
                                     (_K179500179514_
                                      _depth179524_
                                      _id179522_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179499179508_)))))
                         _mvars179489_
                         _pvars179491_))
                   (__tmp184882
                    (if (let () (declare (not safe)) (eq? _fender179485_ '#t))
                        _body179486_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179485_
                           _body179486_
                           _E179493_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp184883 __tmp184882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179491_
                                                 __tmp184881))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match178977_
                                           _hd179484_
                                           _target179392_
                                           _e179488_
                                           _mvars179489_
                                           _K179526_
                                           _E179493_)))))))))
                      (let* ((_e179398179418_ _clause179394_)
                             (_E179407179422_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179398179418_))))
                             (_E179400179456_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179398179418_))
                                    (let ((_e179408179426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179398179418_))))
                                      (let ((_hd179409179429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179408179426_)))
                                            (_tl179410179431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179408179426_))))
                                        (let ((_hd179434_ _hd179409179429_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179410179431_))
                                              (let ((_e179411179436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179410179431_))))
                                                (let ((_hd179412179439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179411179436_)))
                                                      (_tl179413179441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179411179436_))))
                                                  (let ((_fender179444_
                                                         _hd179412179439_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179413179441_))
                                                        (let ((_e179414179446_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179413179441_))))
                  (let ((_hd179415179449_
                         (let () (declare (not safe)) (##car _e179414179446_)))
                        (_tl179416179451_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179414179446_))))
                    (let ((_body179454_ _hd179415179449_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179416179451_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179397_
                                 _hd179434_
                                 _fender179444_
                                 _body179454_))
                              (let () (declare (not safe)) (_E179407179422_)))
                          (let () (declare (not safe)) (_E179407179422_))))))
                (let () (declare (not safe)) (_E179407179422_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179407179422_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179407179422_)))))
                             (_E179399179480_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179398179418_))
                                    (let ((_e179401179460_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179398179418_))))
                                      (let ((_hd179402179463_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179401179460_)))
                                            (_tl179403179465_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179401179460_))))
                                        (let ((_hd179468_ _hd179402179463_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179403179465_))
                                              (let ((_e179404179470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179403179465_))))
                                                (let ((_hd179405179473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179404179470_)))
                                                      (_tl179406179475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179404179470_))))
                                                  (let ((_body179478_
                                                         _hd179405179473_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179406179475_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179397_
                                                               _hd179468_
                                                               '#t
                                                               _body179478_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179400179456_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179400179456_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179400179456_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179400179456_))))))
                        (let () (declare (not safe)) (_E179399179480_))))))
                 (_generate-match178977_
                  (lambda (_where179141_
                           _target179142_
                           _hd179143_
                           _mvars179144_
                           _K179145_
                           _E179146_)
                    (letrec ((_BUG179148_
                              (lambda (_q179390_)
                                (error '"BUG: syntax-case; generate"
                                       _stx178969_
                                       _hd179143_
                                       _q179390_)))
                             (_recur179149_
                              (lambda (_e179240_
                                       _vars179241_
                                       _target179242_
                                       _E179243_
                                       _k179244_)
                                (let* ((_e179245179252_ _e179240_)
                                       (_E179247179256_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179245179252_)))
                                       (_K179248179378_
                                        (lambda (_body179259_ _tag179260_)
                                          (let ((_$e179262_ _tag179260_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179262_))
                                                (_k179244_ _vars179241_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179262_))
                                                    (let ((__tmp184994
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179242_)))
                                                          (__tmp184990
                                                           (let ((__tmp184992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184993
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e178972_
                                    _body179259_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?178970_
                             __tmp184993
                             _target179242_)))
                         (__tmp184991 (_k179244_ _vars179241_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp184992 __tmp184991 _E179243_))))
              (declare (not safe))
              (gx#core-list 'if __tmp184994 __tmp184990 _E179243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179262_))
                                                        (_k179244_
                                                         (let ((__tmp184989
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179259_ _target179242_))))
                   (declare (not safe))
                   (cons __tmp184989 _vars179241_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179262_))
                    (let ((_$e179265_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179266_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179267_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp184988
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179242_)))
                            (__tmp184969
                             (let ((__tmp184983
                                    (let ((__tmp184984
                                           (let ((__tmp184987
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179265_ '())))
                                                 (__tmp184985
                                                  (let ((__tmp184986
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e178971_
                                                            _target179242_))))
                                                    (declare (not safe))
                                                    (cons __tmp184986 '()))))
                                             (declare (not safe))
                                             (cons __tmp184987 __tmp184985))))
                                      (declare (not safe))
                                      (cons __tmp184984 '())))
                                   (__tmp184970
                                    (let ((__tmp184973
                                           (let ((__tmp184979
                                                  (let ((__tmp184982
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp184980
                 (let ((__tmp184981
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179265_))))
                   (declare (not safe))
                   (cons __tmp184981 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184982
                                                          __tmp184980)))
                                                 (__tmp184974
                                                  (let ((__tmp184975
                                                         (let ((__tmp184978
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179267_ '())))
                       (__tmp184976
                        (let ((__tmp184977
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179265_))))
                          (declare (not safe))
                          (cons __tmp184977 '()))))
                   (declare (not safe))
                   (cons __tmp184978 __tmp184976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184975 '()))))
                                             (declare (not safe))
                                             (cons __tmp184979 __tmp184974)))
                                          (__tmp184971
                                           (let* ((_body179268179275_
                                                   _body179259_)
                                                  (_E179270179279_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179268179275_)))
                                                  (_K179271179287_
                                                   (lambda (_tl179282_
                                                            _hd179283_)
                                                     (let ((__tmp184972
                                                            (lambda (_vars179285_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179149_
                         _tl179282_
                         _vars179285_
                         _$tl179267_
                         _E179243_
                         _k179244_)))))
               (declare (not safe))
               (_recur179149_
                _hd179283_
                _vars179241_
                _$hd179266_
                _E179243_
                __tmp184972)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179268179275_))
                                                 (let ((_hd179272179290_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179268179275_)))
                                                       (_tl179273179292_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179268179275_))))
                                                   (let* ((_hd179295_
                                                           _hd179272179290_)
                                                          (_tl179297_
                                                           _tl179273179292_))
                                                     (declare (not safe))
                                                     (_K179271179287_
                                                      _tl179297_
                                                      _hd179295_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179270179279_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp184973
                                       __tmp184971))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp184983
                                __tmp184970))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp184988 __tmp184969 _E179243_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179262_))
                        (let* ((_body179298179305_ _body179259_)
                               (_E179300179309_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179298179305_)))
                               (_K179301179360_
                                (lambda (_tl179312_ _hd179313_)
                                  (let* ((_rlen179315_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179150_ _tl179312_)))
                                         (_$target179317_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179319_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179321_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179323_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179325_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179327_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179329_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179331_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179151_ _hd179313_)))
                                         (_lvars179333_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179331_)))
                                         (_tlvars179335_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179331_)))
                                         (_linit179339_
                                          (map (lambda (_var179337_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179333_)))
                                    (letrec ((_make-loop179342_
                                              (lambda (_vars179346_)
                                                (let ((__tmp184920
                                                       (let ((__tmp184921
                                                              (let ((__tmp184957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179323_ '())))
                            (__tmp184922
                             (let ((__tmp184923
                                    (let ((__tmp184956
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179319_ _lvars179333_)))
                                          (__tmp184924
                                           (let ((__tmp184955
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179319_)))
                                                 (__tmp184933
                                                  (let ((__tmp184950
                                                         (let ((__tmp184951
                                                                (let ((__tmp184954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179325_ '())))
                              (__tmp184952
                               (let ((__tmp184953
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e178971_
                                         _$hd179319_))))
                                 (declare (not safe))
                                 (cons __tmp184953 '()))))
                          (declare (not safe))
                          (cons __tmp184954 __tmp184952))))
                   (declare (not safe))
                   (cons __tmp184951 '())))
                (__tmp184934
                 (let ((__tmp184940
                        (let ((__tmp184946
                               (let ((__tmp184949
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179327_ '())))
                                     (__tmp184947
                                      (let ((__tmp184948
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179325_))))
                                        (declare (not safe))
                                        (cons __tmp184948 '()))))
                                 (declare (not safe))
                                 (cons __tmp184949 __tmp184947)))
                              (__tmp184941
                               (let ((__tmp184942
                                      (let ((__tmp184945
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179329_ '())))
                                            (__tmp184943
                                             (let ((__tmp184944
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179325_))))
                                               (declare (not safe))
                                               (cons __tmp184944 '()))))
                                        (declare (not safe))
                                        (cons __tmp184945 __tmp184943))))
                                 (declare (not safe))
                                 (cons __tmp184942 '()))))
                          (declare (not safe))
                          (cons __tmp184946 __tmp184941)))
                       (__tmp184935
                        (let ((__tmp184936
                               (lambda (_hdvars179348_)
                                 (let ((__tmp184937
                                        (let ((__tmp184938
                                               (map (lambda (_svar179350_
                                                             _lvar179351_)
                                                      (let ((__tmp184939
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179350_ _hdvars179348_ _BUG179148_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp184939 _lvar179351_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179331_
                                                    _lvars179333_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179329_ __tmp184938))))
                                   (declare (not safe))
                                   (cons _$lp179323_ __tmp184937)))))
                          (declare (not safe))
                          (_recur179149_
                           _hd179313_
                           '()
                           _$lp-hd179327_
                           _E179243_
                           __tmp184936))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp184940 __tmp184935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184950
                                                     __tmp184934)))
                                                 (__tmp184925
                                                  (let ((__tmp184929
                                                         (map (lambda (_lvar179353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179354_)
                        (let ((__tmp184932
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179354_ '())))
                              (__tmp184930
                               (let ((__tmp184931
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179353_))))
                                 (declare (not safe))
                                 (cons __tmp184931 '()))))
                          (declare (not safe))
                          (cons __tmp184932 __tmp184930)))
                      _lvars179333_
                      _tlvars179335_))
                (__tmp184926
                 (_k179244_
                  (let ((__tmp184927
                         (lambda (_svar179356_ _tlvar179357_ _r179358_)
                           (let ((__tmp184928
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179356_ _tlvar179357_))))
                             (declare (not safe))
                             (cons __tmp184928 _r179358_)))))
                    (declare (not safe))
                    (foldl2 __tmp184927
                            _vars179346_
                            _svars179331_
                            _tlvars179335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184929
                                                     __tmp184926))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp184955
                                              __tmp184933
                                              __tmp184925))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp184956
                                       __tmp184924))))
                               (declare (not safe))
                               (cons __tmp184923 '()))))
                        (declare (not safe))
                        (cons __tmp184957 __tmp184922))))
                 (declare (not safe))
                 (cons __tmp184921 '())))
              (__tmp184918
               (let ((__tmp184919
                      (let ()
                        (declare (not safe))
                        (cons _$target179317_ _linit179339_))))
                 (declare (not safe))
                 (cons _$lp179323_ __tmp184919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp184920
                                                   __tmp184918)))))
                                      (let ((_body179344_
                                             (let ((__tmp184959
                                                    (let ((__tmp184960
                                                           (let ((__tmp184963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184964
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179321_ '()))))
                            (declare (not safe))
                            (cons _$target179317_ __tmp184964)))
                         (__tmp184961
                          (let ((__tmp184962
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179242_
                                    _rlen179315_))))
                            (declare (not safe))
                            (cons __tmp184962 '()))))
                     (declare (not safe))
                     (cons __tmp184963 __tmp184961))))
              (declare (not safe))
              (cons __tmp184960 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184958
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179149_
                                                       _tl179312_
                                                       _vars179241_
                                                       _$tl179321_
                                                       _E179243_
                                                       _make-loop179342_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184959
                                                __tmp184958))))
                                        (let ((__tmp184968
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179242_)))
                                              (__tmp184965
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179315_))
                                                   _body179344_
                                                   (let ((__tmp184966
                                                          (let ((__tmp184967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179242_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp184967 _rlen179315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp184966
                                                      _body179344_
                                                      _E179243_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp184968
                                           __tmp184965
                                           _E179243_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179298179305_))
                              (let ((_hd179302179363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179298179305_)))
                                    (_tl179303179365_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179298179305_))))
                                (let* ((_hd179368_ _hd179302179363_)
                                       (_tl179370_ _tl179303179365_))
                                  (declare (not safe))
                                  (_K179301179360_ _tl179370_ _hd179368_)))
                              (let () (declare (not safe)) (_E179300179309_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179262_))
                            (let ((__tmp184917
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179242_)))
                                  (__tmp184916 (_k179244_ _vars179241_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp184917
                               __tmp184916
                               _E179243_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179262_))
                                (let ((_$e179372_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp184915
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179242_)))
                                        (__tmp184907
                                         (let ((__tmp184909
                                                (let ((__tmp184910
                                                       (let ((__tmp184914
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179372_ '())))
                     (__tmp184911
                      (let ((__tmp184912
                             (let ((__tmp184913
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e178971_
                                       _target179242_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp184913))))
                        (declare (not safe))
                        (cons __tmp184912 '()))))
                 (declare (not safe))
                 (cons __tmp184914 __tmp184911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp184910 '())))
                                               (__tmp184908
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179149_
                                                   _body179259_
                                                   _vars179241_
                                                   _$e179372_
                                                   _E179243_
                                                   _k179244_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp184909
                                            __tmp184908))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp184915
                                     __tmp184907
                                     _E179243_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179262_))
                                    (let ((_$e179374_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp184906
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179242_)))
                                            (__tmp184898
                                             (let ((__tmp184900
                                                    (let ((__tmp184901
                                                           (let ((__tmp184905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179374_ '())))
                         (__tmp184902
                          (let ((__tmp184903
                                 (let ((__tmp184904
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e178971_
                                           _target179242_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp184904))))
                            (declare (not safe))
                            (cons __tmp184903 '()))))
                     (declare (not safe))
                     (cons __tmp184905 __tmp184902))))
              (declare (not safe))
              (cons __tmp184901 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184899
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179149_
                                                       _body179259_
                                                       _vars179241_
                                                       _$e179374_
                                                       _E179243_
                                                       _k179244_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184900
                                                __tmp184899))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp184906
                                         __tmp184898
                                         _E179243_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179262_))
                                        (let ((_$e179376_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp184897
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179242_)))
                                                (__tmp184888
                                                 (let ((__tmp184892
                                                        (let ((__tmp184893
                                                               (let ((__tmp184896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179376_ '())))
                             (__tmp184894
                              (let ((__tmp184895
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179242_))))
                                (declare (not safe))
                                (cons __tmp184895 '()))))
                         (declare (not safe))
                         (cons __tmp184896 __tmp184894))))
                  (declare (not safe))
                  (cons __tmp184893 '())))
               (__tmp184889
                (let ((__tmp184891
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179376_ _body179259_)))
                      (__tmp184890 (_k179244_ _vars179241_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp184891 __tmp184890 _E179243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp184892
                                                    __tmp184889))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp184897
                                             __tmp184888
                                             _E179243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179148_ _e179240_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179245179252_))
                                      (let ((_hd179249179381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179245179252_)))
                                            (_tl179250179383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179245179252_))))
                                        (let* ((_tag179386_ _hd179249179381_)
                                               (_body179388_ _tl179250179383_))
                                          (declare (not safe))
                                          (_K179248179378_
                                           _body179388_
                                           _tag179386_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179247179256_))))))
                             (_splice-rlen179150_
                              (lambda (_e179202_)
                                (let _lp179204_ ((_e179206_ _e179202_)
                                                 (_n179207_ '0))
                                  (let* ((_e179208179215_ _e179206_)
                                         (_E179210179219_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179208179215_)))
                                         (_K179211179228_
                                          (lambda (_body179222_ _tag179223_)
                                            (let ((_$e179225_ _tag179223_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179225_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx178969_
                                                     _where179141_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179225_))
                                                      (let ((__tmp184996
                                                             (cdr _body179222_))
                                                            (__tmp184995
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179207_ '1))))
                (declare (not safe))
                (_lp179204_ __tmp184996 __tmp184995))
              _n179207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179208179215_))
                                        (let ((_hd179212179231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179208179215_)))
                                              (_tl179213179233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179208179215_))))
                                          (let* ((_tag179236_ _hd179212179231_)
                                                 (_body179238_
                                                  _tl179213179233_))
                                            (declare (not safe))
                                            (_K179211179228_
                                             _body179238_
                                             _tag179236_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179210179219_)))))))
                             (_splice-vars179151_
                              (lambda (_e179158_)
                                (let _recur179160_ ((_e179162_ _e179158_)
                                                    (_vars179163_ '()))
                                  (let* ((_e179164179171_ _e179162_)
                                         (_E179166179175_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179164179171_)))
                                         (_K179167179190_
                                          (lambda (_body179178_ _tag179179_)
                                            (let ((_$e179181_ _tag179179_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179181_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179178_
                                                          _vars179163_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179181_))
                  (let () (declare (not safe)) (eq? 'splice _$e179181_)))
              (let ((__tmp184999 (cdr _body179178_))
                    (__tmp184997
                     (let ((__tmp184998 (car _body179178_)))
                       (declare (not safe))
                       (_recur179160_ __tmp184998 _vars179163_))))
                (declare (not safe))
                (_recur179160_ __tmp184999 __tmp184997))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179181_))
                      (let () (declare (not safe)) (eq? 'box _$e179181_)))
                  (let ()
                    (declare (not safe))
                    (_recur179160_ _body179178_ _vars179163_))
                  _vars179163_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179164179171_))
                                        (let ((_hd179168179193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179164179171_)))
                                              (_tl179169179195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179164179171_))))
                                          (let* ((_tag179198_ _hd179168179193_)
                                                 (_body179200_
                                                  _tl179169179195_))
                                            (declare (not safe))
                                            (_K179167179190_
                                             _body179200_
                                             _tag179198_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179166179175_)))))))
                             (_make-body179152_
                              (lambda (_vars179154_)
                                (let ((__tmp185000
                                       (map (lambda (_mvar179156_)
                                              (let ((__tmp185001
                                                     (car _mvar179156_)))
                                                (declare (not safe))
                                                (assgetq __tmp185001
                                                         _vars179154_
                                                         _BUG179148_)))
                                            _mvars179144_)))
                                  (declare (not safe))
                                  (cons _K179145_ __tmp185000)))))
                      (let ()
                        (declare (not safe))
                        (_recur179149_
                         _hd179143_
                         '()
                         _target179142_
                         _E179146_
                         _make-body179152_)))))
                 (_parse-clause178978_
                  (lambda (_hd179047_ _ids179048_)
                    (let _recur179050_ ((_e179052_ _hd179047_)
                                        (_vars179053_ '())
                                        (_depth179054_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179052_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179052_))
                              (values '(any) _vars179053_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179052_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx178969_
                                     _hd179047_))
                                  (if (let ((__tmp185017
                                             (lambda (_id179056_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179052_
                                                  _id179056_)))))
                                        (declare (not safe))
                                        (find __tmp185017 _ids179048_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179052_))
                                              _vars179053_)
                                      (if (let ((__tmp185015
                                                 (lambda (_var179058_)
                                                   (let ((__tmp185016
                                                          (car _var179058_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179052_
                                                      __tmp185016)))))
                                            (declare (not safe))
                                            (find __tmp185015 _vars179053_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx178969_
                                             _e179052_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179052_))
                                                  (let ((__tmp185014
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185014
                                                          _vars179053_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179052_))
                              (let* ((_e179059179066_ _e179052_)
                                     (_E179061179070_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179059179066_))))
                                     (_E179060179131_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179059179066_))
                                            (let ((_e179062179074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179059179066_))))
                                              (let ((_hd179063179077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179062179074_)))
                                                    (_tl179064179079_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179062179074_))))
                                                (let* ((_hd179082_
                                                        _hd179063179077_)
                                                       (_rest179084_
                                                        _tl179064179079_))
                                                  (if '#t
                                                      (let* ((_make-pair179099_
                                                              (lambda (_tag179086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179087_
                               _tl179088_)
                        (let* ((_hd-depth179090_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179086_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179054_ '1))
                                    _depth179054_))
                               (_g185009_
                                (let ()
                                  (declare (not safe))
                                  (_recur179050_
                                   _hd179087_
                                   _vars179053_
                                   _hd-depth179090_))))
                          (begin
                            (let ((_g185010_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185009_)
                                         (##vector-length _g185009_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185010_ 2)))
                                  (error "Context expects 2 values"
                                         _g185010_)))
                            (let ((_hd179092_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185009_ 0)))
                                  (_vars179093_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185009_ 1))))
                              (let ((_g185011_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179050_
                                        _tl179088_
                                        _vars179093_
                                        _depth179054_))))
                                (begin
                                  (let ((_g185012_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185011_)
                                               (##vector-length _g185011_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185012_ 2)))
                                        (error "Context expects 2 values"
                                               _g185012_)))
                                  (let ((_tl179095_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185011_ 0)))
                                        (_vars179096_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185011_ 1))))
                                    (let ()
                                      (values (let ((__tmp185013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179092_
                                                             _tl179095_))))
                                                (declare (not safe))
                                                (cons _tag179086_ __tmp185013))
                                              _vars179096_))))))))))
                     (_e179100179107_ _rest179084_)
                     (_E179102179111_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179099_ 'cons _hd179082_ _rest179084_))))
                     (_E179101179127_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179100179107_))
                            (let ((_e179103179115_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179100179107_))))
                              (let ((_hd179104179118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179103179115_)))
                                    (_tl179105179120_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179103179115_))))
                                (let* ((_rest-hd179123_ _hd179104179118_)
                                       (_rest-tl179125_ _tl179105179120_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179123_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179099_
                                             'splice
                                             _hd179082_
                                             _rest-tl179125_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179099_
                                             'cons
                                             _hd179082_
                                             _rest179084_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179102179111_))))))
                            (let () (declare (not safe)) (_E179102179111_))))))
                (let () (declare (not safe)) (_E179101179127_)))
              (let () (declare (not safe)) (_E179061179070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179061179070_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179060179131_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179052_))
                                  (values '(null) _vars179053_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179052_))
                                      (let ((_g185006_
                                             (let ((__tmp185008
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179052_)))))
                                               (declare (not safe))
                                               (_recur179050_
                                                __tmp185008
                                                _vars179053_
                                                _depth179054_))))
                                        (begin
                                          (let ((_g185007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185006_)
                                                       (##vector-length
                                                        _g185006_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185007_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185007_)))
                                          (let ((_e179135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185006_ 0)))
                                                (_vars179136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185006_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179135_))
                                                    _vars179136_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179052_))
                                          (let ((_g185003_
                                                 (let ((__tmp185005
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179050_
                                                    __tmp185005
                                                    _vars179053_
                                                    _depth179054_))))
                                            (begin
                                              (let ((_g185004_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185003_)
                                                           (##vector-length
                                                            _g185003_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185004_)))
                                              (let ((_e179138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185003_
                                                        0)))
                                                    (_vars179139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185003_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179138_))
                                                        _vars179139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179052_))
                                              (values (let ((__tmp185002
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179052_))))
                (declare (not safe))
                (cons 'datum __tmp185002))
              _vars179053_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx178969_
                                                 _e179052_))))))))))))
          (let* ((_e178979178992_ _stx178969_)
                 (_E178981178996_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e178979178992_))))
                 (_E178980179043_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e178979178992_))
                        (let ((_e178982179000_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e178979178992_))))
                          (let ((_hd178983179003_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e178982179000_)))
                                (_tl178984179005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e178982179000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl178984179005_))
                                (let ((_e178985179008_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl178984179005_))))
                                  (let ((_hd178986179011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e178985179008_)))
                                        (_tl178987179013_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e178985179008_))))
                                    (let ((_expr179016_ _hd178986179011_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl178987179013_))
                                          (let ((_e178988179018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl178987179013_))))
                                            (let ((_hd178989179021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e178988179018_)))
                                                  (_tl178990179023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e178988179018_))))
                                              (let* ((_ids179026_
                                                      _hd178989179021_)
                                                     (_clauses179028_
                                                      _tl178990179023_))
                                                (if '#t
                                                    (if (let ((__tmp185035
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179026_))))
                  (declare (not safe))
                  (not __tmp185035))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx178969_
                   _ids179026_))
                (if (let ((__tmp185034
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179028_))))
                      (declare (not safe))
                      (not __tmp185034))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx178969_))
                    (let* ((_ids179030_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179026_)))
                           (_clauses179032_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179028_)))
                           (_clause-ids179034_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179032_)))
                           (_E179036_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179038_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179040_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179032_))
                                _E179036_
                                (car _clause-ids179034_))))
                      (let ((__tmp185019
                             (let ((__tmp185020
                                    (let ((__tmp185022
                                           (let ((__tmp185027
                                                  (let ((__tmp185028
                                                         (let ((__tmp185033
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179036_ '())))
                       (__tmp185029
                        (let ((__tmp185030
                               (let ((__tmp185032
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179038_ '())))
                                     (__tmp185031
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179038_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185032
                                  __tmp185031))))
                          (declare (not safe))
                          (cons __tmp185030 '()))))
                   (declare (not safe))
                   (cons __tmp185033 __tmp185029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185028 '())))
                                                 (__tmp185023
                                                  (let ((__tmp185026
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings178974_
                                                            _target179038_
                                                            _ids179030_
                                                            _clauses179032_
                                                            _clause-ids179034_
                                                            _E179036_)))
                                                        (__tmp185024
                                                         (let ((__tmp185025
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179016_ '()))))
                   (declare (not safe))
                   (cons _first179040_ __tmp185025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body178975_
                                                     __tmp185026
                                                     __tmp185024))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185027
                                              __tmp185023)))
                                          (__tmp185021
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx178969_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185022
                                       __tmp185021))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185020)))
                            (__tmp185018
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx178969_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185019 __tmp185018)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178981178996_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178981178996_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E178981178996_)))))
                        (let () (declare (not safe)) (_E178981178996_))))))
            (let () (declare (not safe)) (_E178980179043_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179679_)
        (let* ((_identifier=?179681_ 'free-identifier=?)
               (_unwrap-e179683_ 'syntax-e)
               (_wrap-e179685_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179679_
           _identifier=?179681_
           _unwrap-e179683_
           _wrap-e179685_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179687_ _identifier=?179688_)
        (let* ((_unwrap-e179690_ 'syntax-e) (_wrap-e179692_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179687_
           _identifier=?179688_
           _unwrap-e179690_
           _wrap-e179692_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179694_ _identifier=?179695_ _unwrap-e179696_)
        (let ((_wrap-e179698_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179694_
           _identifier=?179695_
           _unwrap-e179696_
           _wrap-e179698_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185037_
        (let ((_g185036_ (let () (declare (not safe)) (##length _g185037_))))
          (cond ((let () (declare (not safe)) (##fx= _g185036_ 1))
                 (apply (lambda (_stx179679_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179679_)))
                        _g185037_))
                ((let () (declare (not safe)) (##fx= _g185036_ 2))
                 (apply (lambda (_stx179687_ _identifier=?179688_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179687_
                             _identifier=?179688_)))
                        _g185037_))
                ((let () (declare (not safe)) (##fx= _g185036_ 3))
                 (apply (lambda (_stx179694_
                                 _identifier=?179695_
                                 _unwrap-e179696_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179694_
                             _identifier=?179695_
                             _unwrap-e179696_)))
                        _g185037_))
                ((let () (declare (not safe)) (##fx= _g185036_ 4))
                 (apply (lambda (_stx179700_
                                 _identifier=?179701_
                                 _unwrap-e179702_
                                 _wrap-e179703_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179700_
                             _identifier=?179701_
                             _unwrap-e179702_
                             _wrap-e179703_)))
                        _g185037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185037_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx178966_)
        (if (let () (declare (not safe)) (gx#identifier? _stx178966_))
            (let ((__tmp185038
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx178966_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185038 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd178924_ . _rest178925_)
        (let ((_len178927_ (length _hd178924_)))
          (let _lp178929_ ((_rest178931_ _rest178925_))
            (let* ((_rest178932178940_ _rest178931_)
                   (_else178934178948_ (lambda () '#!void))
                   (_K178936178954_
                    (lambda (_rest178951_ _hd178952_)
                      (if (fx= _len178927_ (length _hd178952_))
                          (let ()
                            (declare (not safe))
                            (_lp178929_ _rest178951_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd178952_))))))
              (if (let () (declare (not safe)) (##pair? _rest178932178940_))
                  (let ((_hd178937178957_
                         (let ()
                           (declare (not safe))
                           (##car _rest178932178940_)))
                        (_tl178938178959_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest178932178940_))))
                    (let* ((_hd178962_ _hd178937178957_)
                           (_rest178964_ _tl178938178959_))
                      (declare (not safe))
                      (_K178936178954_ _rest178964_ _hd178962_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx178882_ _n178883_)
        (let _lp178885_ ((_rest178887_ _stx178882_) (_r178888_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest178887_))
              (let* ((_g178889178896_
                      (let () (declare (not safe)) (gx#syntax-e _rest178887_)))
                     (_E178891178900_
                      (lambda ()
                        (error '"No clause matching" _g178889178896_)))
                     (_K178892178906_
                      (lambda (_rest178903_ _hd178904_)
                        (let ((__tmp185043
                               (let ()
                                 (declare (not safe))
                                 (cons _hd178904_ _r178888_))))
                          (declare (not safe))
                          (_lp178885_ _rest178903_ __tmp185043)))))
                (if (let () (declare (not safe)) (##pair? _g178889178896_))
                    (let ((_hd178893178909_
                           (let ()
                             (declare (not safe))
                             (##car _g178889178896_)))
                          (_tl178894178911_
                           (let ()
                             (declare (not safe))
                             (##cdr _g178889178896_))))
                      (let* ((_hd178914_ _hd178893178909_)
                             (_rest178916_ _tl178894178911_))
                        (declare (not safe))
                        (_K178892178906_ _rest178916_ _hd178914_)))
                    (let () (declare (not safe)) (_E178891178900_))))
              (let _lp178918_ ((_n178920_ _n178883_)
                               (_l178921_ _r178888_)
                               (_r178922_ _rest178887_))
                (if (let () (declare (not safe)) (null? _l178921_))
                    (values _l178921_ _r178922_)
                    (if (fxpositive? _n178920_)
                        (let ((__tmp185042
                               (let ()
                                 (declare (not safe))
                                 (fx- _n178920_ '1)))
                              (__tmp185041 (cdr _l178921_))
                              (__tmp185039
                               (let ((__tmp185040 (car _l178921_)))
                                 (declare (not safe))
                                 (cons __tmp185040 _r178922_))))
                          (declare (not safe))
                          (_lp178918_ __tmp185042 __tmp185041 __tmp185039))
                        (values (reverse _l178921_) _r178922_))))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708337966)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp193201 (list gx#expander::t))
            (__tmp193199
             (let ((__tmp193200
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp193200 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp193201
         '(id depth)
         __tmp193199
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args189210_
        (apply make-instance gx#syntax-pattern::t _$args189210_)))
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
      (lambda (_self189207_ _stx189208_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx189208_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx188689_)
        (letrec ((_generate188691_
                  (lambda (_e188918_)
                    (letrec ((_BUG188920_
                              (lambda (_q189082_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx188689_
                                         _e188918_
                                         _q189082_))))
                             (_local-pattern-e188921_
                              (lambda (_pat189080_)
                                (let ((__tmp193202
                                       (##structure-ref
                                        _pat189080_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp193202))))
                             (_getvar188922_
                              (lambda (_q189077_ _vars189078_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q189077_
                                   _vars189078_
                                   _BUG188920_))))
                             (_getarg188923_
                              (lambda (_arg189043_ _vars189044_)
                                (let* ((_arg189045189052_ _arg189043_)
                                       (_E189047189056_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg189045189052_))))
                                       (_K189048189065_
                                        (lambda (_e189059_ _tag189060_)
                                          (let ((_$e189062_ _tag189060_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e189062_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar188922_
                                                   _e189059_
                                                   _vars189044_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e189062_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e188921_
                                                       _e189059_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG188920_
                                                       _arg189043_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg189045189052_))
                                      (let ((_hd189049189068_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg189045189052_)))
                                            (_tl189050189070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg189045189052_))))
                                        (let* ((_tag189073_ _hd189049189068_)
                                               (_e189075_ _tl189050189070_))
                                          (declare (not safe))
                                          (_K189048189065_
                                           _e189075_
                                           _tag189073_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E189047189056_)))))))
                      (let _recur188925_ ((_e188927_ _e188918_)
                                          (_vars188928_ '()))
                        (let* ((_e188929188936_ _e188927_)
                               (_E188931188940_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e188929188936_))))
                               (_K188932189031_
                                (lambda (_body188943_ _tag188944_)
                                  (let ((_$e188946_ _tag188944_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e188946_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body188943_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e188946_))
                                            (let ((_id188949_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body188943_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id188949_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks188951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id188949_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks188951_))
                                                        (let ((__tmp193230
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body188943_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp193230))
                (let ((__tmp193229
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body188943_)))
                      (__tmp193228
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body188943_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp193229
                   __tmp193228
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id188949_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body188943_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG188920_
                                                         _e188927_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e188946_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e188921_
                                                   _body188943_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e188946_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar188922_
                                                       _body188943_
                                                       _vars188928_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e188946_))
                                                        (let ((__tmp193226
                                                               (let ((__tmp193227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body188943_)))
                         (declare (not safe))
                         (_recur188925_ __tmp193227 _vars188928_)))
                      (__tmp193224
                       (let ((__tmp193225 (cdr _body188943_)))
                         (declare (not safe))
                         (_recur188925_ __tmp193225 _vars188928_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp193226 __tmp193224))
                (if (let () (declare (not safe)) (eq? 'vector _$e188946_))
                    (let ((__tmp193223
                           (let ()
                             (declare (not safe))
                             (_recur188925_ _body188943_ _vars188928_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp193223))
                    (if (let () (declare (not safe)) (eq? 'box _$e188946_))
                        (let ((__tmp193222
                               (let ()
                                 (declare (not safe))
                                 (_recur188925_ _body188943_ _vars188928_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp193222))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e188946_))
                            (let* ((_body188952188963_ _body188943_)
                                   (_E188954188967_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body188952188963_))))
                                   (_K188955189005_
                                    (lambda (_args188970_
                                             _iv188971_
                                             _hd188972_
                                             _depth188973_)
                                      (let* ((_targets188979_
                                              (map (lambda (_g188974188976_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg188923_
                                                        _g188974188976_
                                                        _vars188928_)))
                                                   _args188970_))
                                             (_fold-in188981_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args188970_)))
                                             (_fold-out188983_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args188985_
                                              (let ((__tmp193203
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out188983_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp193203
                                                        _fold-in188981_)))
                                             (_lambda-body189002_
                                              (if (fx> _depth188973_ '1)
                                                  (let ((_r-args188993_
                                                         (map (lambda (_arg188987_)
                                                                (let ((__tmp193208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg188987_)))
                          (declare (not safe))
                          (cons 'ref __tmp193208)))
                      _args188970_))
                (_r-vars188994_
                 (let ((__tmp193209
                        (lambda (_arg188989_ _var188990_ _r188991_)
                          (let ((__tmp193210
                                 (let ((__tmp193211 (cdr _arg188989_)))
                                   (declare (not safe))
                                   (cons __tmp193211 _var188990_))))
                            (declare (not safe))
                            (cons __tmp193210 _r188991_)))))
                   (declare (not safe))
                   (foldr2 __tmp193209
                           _vars188928_
                           _args188970_
                           _fold-in188981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp193212
                                                           (let ((__tmp193213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193217
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth188973_ '1)))
                                (__tmp193214
                                 (let ((__tmp193215
                                        (let ((__tmp193216
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out188983_))))
                                          (declare (not safe))
                                          (cons __tmp193216 _r-args188993_))))
                                   (declare (not safe))
                                   (cons _hd188972_ __tmp193215))))
                            (declare (not safe))
                            (cons __tmp193217 __tmp193214))))
                     (declare (not safe))
                     (cons 'splice __tmp193213))))
              (declare (not safe))
              (_recur188925_ __tmp193212 _r-vars188994_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars189000_
                                                          (let ((__tmp193204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg188996_ _var188997_ _r188998_)
                           (let ((__tmp193205
                                  (let ((__tmp193206 (cdr _arg188996_)))
                                    (declare (not safe))
                                    (cons __tmp193206 _var188997_))))
                             (declare (not safe))
                             (cons __tmp193205 _r188998_)))))
                    (declare (not safe))
                    (foldr2 __tmp193204
                            _vars188928_
                            _args188970_
                            _fold-in188981_)))
                 (__tmp193207
                  (let ()
                    (declare (not safe))
                    (_recur188925_ _hd188972_ _hd-vars189000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp193207
                                                     _fold-out188983_)))))
                                        (let ((__tmp193221
                                               (if (fx> (length _targets188979_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets188979_))
                                                   '#!void))
                                              (__tmp193218
                                               (let ((__tmp193220
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args188985_
                                                         _lambda-body189002_)))
                                                     (__tmp193219
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur188925_
                                                         _iv188971_
                                                         _vars188928_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp193220
                                                  __tmp193219
                                                  _targets188979_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp193221
                                           __tmp193218))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body188952188963_))
                                  (let ((_hd188956189008_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body188952188963_)))
                                        (_tl188957189010_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body188952188963_))))
                                    (let ((_depth189013_ _hd188956189008_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl188957189010_))
                                          (let ((_hd188958189015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl188957189010_)))
                                                (_tl188959189017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl188957189010_))))
                                            (let ((_hd189020_
                                                   _hd188958189015_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl188959189017_))
                                                  (let ((_hd188960189022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl188959189017_)))
                                                        (_tl188961189024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl188959189017_))))
                                                    (let* ((_iv189027_
                                                            _hd188960189022_)
                                                           (_args189029_
                                                            _tl188961189024_))
                                                      (declare (not safe))
                                                      (_K188955189005_
                                                       _args189029_
                                                       _iv189027_
                                                       _hd189020_
                                                       _depth189013_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E188954188967_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E188954188967_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E188954188967_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e188946_))
                                _body188943_
                                (let ()
                                  (declare (not safe))
                                  (_BUG188920_ _e188927_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e188929188936_))
                              (let ((_hd188933189034_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e188929188936_)))
                                    (_tl188934189036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e188929188936_))))
                                (let* ((_tag189039_ _hd188933189034_)
                                       (_body189041_ _tl188934189036_))
                                  (declare (not safe))
                                  (_K188932189031_ _body189041_ _tag189039_)))
                              (let ()
                                (declare (not safe))
                                (_E188931188940_))))))))
                 (_parse188692_
                  (lambda (_e188733_)
                    (letrec ((_make-cons188735_
                              (lambda (_hd188910_ _tl188911_)
                                (let ((_g193231_ _hd188910_)
                                      (_g193233_ _tl188911_))
                                  (begin
                                    (let ((_g193232_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193231_)
                                                 (##vector-length _g193231_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193232_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193232_)))
                                    (let ((_g193234_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193233_)
                                                 (##vector-length _g193233_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193234_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193234_)))
                                    (let ((_hd-e188913_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193231_ 0)))
                                          (_hd-vars188914_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193231_ 1))))
                                      (let ((_tl-e188915_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193233_ 0)))
                                            (_tl-vars188916_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193233_ 1))))
                                        (values (let ((__tmp193235
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e188913_
                                                               _tl-e188915_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp193235))
                                                (append _hd-vars188914_
                                                        _tl-vars188916_))))))))
                             (_make-splice188736_
                              (lambda (_where188849_
                                       _depth188850_
                                       _hd188851_
                                       _tl188852_)
                                (let ((_g193236_ _hd188851_)
                                      (_g193238_ _tl188852_))
                                  (begin
                                    (let ((_g193237_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193236_)
                                                 (##vector-length _g193236_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193237_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193237_)))
                                    (let ((_g193239_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193238_)
                                                 (##vector-length _g193238_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193239_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193239_)))
                                    (let ((_hd-e188854_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193236_ 0)))
                                          (_hd-vars188855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193236_ 1))))
                                      (let ((_tl-e188856_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193238_ 0)))
                                            (_tl-vars188857_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193238_ 1))))
                                        (let _lp188859_ ((_rest188861_
                                                          _hd-vars188855_)
                                                         (_targets188862_ '())
                                                         (_vars188863_
                                                          _tl-vars188857_))
                                          (let* ((_rest188864188874_
                                                  _rest188861_)
                                                 (_else188866188882_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets188862_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx188689_
                                                           _where188849_))
                                                        (values (let ((__tmp193240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp193241
                                      (let ((__tmp193242
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e188856_
                                                     _targets188862_))))
                                        (declare (not safe))
                                        (cons _hd-e188854_ __tmp193242))))
                                 (declare (not safe))
                                 (cons _depth188850_ __tmp193241))))
                          (declare (not safe))
                          (cons 'splice __tmp193240))
                        _vars188863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K188868188891_
                                                  (lambda (_rest188885_
                                                           _hd-pat188886_
                                                           _hd-depth*188887_)
                                                    (let ((_hd-depth188889_
                                                           (fx- _hd-depth*188887_
                                                                _depth188850_)))
                                                      (if (fxpositive?
                                                           _hd-depth188889_)
                                                          (let ((__tmp193247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp193248
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat188886_))))
                           (declare (not safe))
                           (cons __tmp193248 _targets188862_)))
                        (__tmp193245
                         (let ((__tmp193246
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth188889_ _hd-pat188886_))))
                           (declare (not safe))
                           (cons __tmp193246 _vars188863_))))
                    (declare (not safe))
                    (_lp188859_ _rest188885_ __tmp193247 __tmp193245))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth188889_))
                      (let ((__tmp193243
                             (let ((__tmp193244
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat188886_))))
                               (declare (not safe))
                               (cons __tmp193244 _targets188862_))))
                        (declare (not safe))
                        (_lp188859_ _rest188885_ __tmp193243 _vars188863_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx188689_
                         _where188849_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest188864188874_))
                                                (let ((_hd188869188894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest188864188874_)))
                                                      (_tl188870188896_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest188864188874_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd188869188894_))
                                                      (let ((_hd188871188899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd188869188894_)))
                    (_tl188872188901_
                     (let () (declare (not safe)) (##cdr _hd188869188894_))))
                (let* ((_hd-depth*188904_ _hd188871188899_)
                       (_hd-pat188906_ _tl188872188901_)
                       (_rest188908_ _tl188870188896_))
                  (declare (not safe))
                  (_K188868188891_
                   _rest188908_
                   _hd-pat188906_
                   _hd-depth*188904_)))
              (let () (declare (not safe)) (_else188866188882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else188866188882_)))))))))))
                             (_recur188737_
                              (lambda (_e188742_ _is-e?188743_)
                                (if (_is-e?188743_ _e188742_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx188689_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e188742_))
                                        (let* ((_pat188745_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e188742_)))
                                               (_depth188747_
                                                (##structure-ref
                                                 _pat188745_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth188747_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat188745_))
                                                      (let ((__tmp193264
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth188747_ _pat188745_))))
                (declare (not safe))
                (cons __tmp193264 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat188745_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e188742_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e188742_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e188742_))
                                                (let* ((_e188749188756_
                                                        _e188742_)
                                                       (_E188751188760_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e188749188756_))))
                                                       (_E188750188839_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e188749188756_))
                      (let ((_e188752188764_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e188749188756_))))
                        (let ((_hd188753188767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e188752188764_)))
                              (_tl188754188769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e188752188764_))))
                          (let* ((_hd188772_ _hd188753188767_)
                                 (_rest188774_ _tl188754188769_))
                            (if '#t
                                (if (_is-e?188743_ _hd188772_)
                                    (let* ((_e188775188782_ _rest188774_)
                                           (_E188777188786_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx188689_
                                                 _e188742_))))
                                           (_E188776188800_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e188775188782_))
                                                  (let ((_e188778188790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e188775188782_))))
                                                    (let ((_hd188779188793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e188778188790_)))
                                                          (_tl188780188795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e188778188790_))))
                                                      (let ((_rest188798_
                                                             _hd188779188793_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl188780188795_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur188737_ _rest188798_ false))
                        (let () (declare (not safe)) (_E188777188786_)))
                    (let () (declare (not safe)) (_E188777188786_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E188777188786_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E188776188800_)))
                                    (let _lp188804_ ((_rest188806_
                                                      _rest188774_)
                                                     (_depth188807_ '0))
                                      (let* ((_e188808188815_ _rest188806_)
                                             (_E188810188819_
                                              (lambda ()
                                                (if (fxpositive? _depth188807_)
                                                    (let ((__tmp193258
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur188737_
                                                              _hd188772_
                                                              _is-e?188743_)))
                                                          (__tmp193257
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur188737_
                                                              _rest188806_
                                                              _is-e?188743_))))
                                                      (declare (not safe))
                                                      (_make-splice188736_
                                                       _e188742_
                                                       _depth188807_
                                                       __tmp193258
                                                       __tmp193257))
                                                    (let ((__tmp193256
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur188737_
                                                              _hd188772_
                                                              _is-e?188743_)))
                                                          (__tmp193255
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur188737_
                                                              _rest188806_
                                                              _is-e?188743_))))
                                                      (declare (not safe))
                                                      (_make-cons188735_
                                                       __tmp193256
                                                       __tmp193255)))))
                                             (_E188809188835_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e188808188815_))
                                                    (let ((_e188811188823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e188808188815_))))
                                                      (let ((_hd188812188826_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e188811188823_)))
                    (_tl188813188828_
                     (let () (declare (not safe)) (##cdr _e188811188823_))))
                (let* ((_rest-hd188831_ _hd188812188826_)
                       (_rest-tl188833_ _tl188813188828_))
                  (if '#t
                      (if (_is-e?188743_ _rest-hd188831_)
                          (let ((__tmp193263
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth188807_ '1))))
                            (declare (not safe))
                            (_lp188804_ _rest-tl188833_ __tmp193263))
                          (if (fxpositive? _depth188807_)
                              (let ((__tmp193262
                                     (let ()
                                       (declare (not safe))
                                       (_recur188737_
                                        _hd188772_
                                        _is-e?188743_)))
                                    (__tmp193261
                                     (let ()
                                       (declare (not safe))
                                       (_recur188737_
                                        _rest188806_
                                        _is-e?188743_))))
                                (declare (not safe))
                                (_make-splice188736_
                                 _e188742_
                                 _depth188807_
                                 __tmp193262
                                 __tmp193261))
                              (let ((__tmp193260
                                     (let ()
                                       (declare (not safe))
                                       (_recur188737_
                                        _hd188772_
                                        _is-e?188743_)))
                                    (__tmp193259
                                     (let ()
                                       (declare (not safe))
                                       (_recur188737_
                                        _rest188806_
                                        _is-e?188743_))))
                                (declare (not safe))
                                (_make-cons188735_ __tmp193260 __tmp193259))))
                      (let () (declare (not safe)) (_E188810188819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E188810188819_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E188809188835_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E188751188760_))))))
                      (let () (declare (not safe)) (_E188751188760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E188750188839_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e188742_))
                                                    (let ((_g193252_
                                                           (let ((__tmp193254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e188742_)))))
                     (declare (not safe))
                     (_recur188737_ __tmp193254 _is-e?188743_))))
              (begin
                (let ((_g193253_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g193252_)
                             (##vector-length _g193252_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g193253_ 2)))
                      (error "Context expects 2 values" _g193253_)))
                (let ((_e188843_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g193252_ 0)))
                      (_vars188844_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g193252_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e188843_))
                          _vars188844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e188742_))
                                                        (let ((_g193249_
                                                               (let ((__tmp193251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e188742_)))))
                         (declare (not safe))
                         (_recur188737_ __tmp193251 _is-e?188743_))))
                  (begin
                    (let ((_g193250_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g193249_)
                                 (##vector-length _g193249_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g193250_ 2)))
                          (error "Context expects 2 values" _g193250_)))
                    (let ((_e188846_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g193249_ 0)))
                          (_vars188847_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g193249_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e188846_))
                              _vars188847_))))
                (values (let () (declare (not safe)) (cons 'datum _e188742_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g193265_
                             (let ()
                               (declare (not safe))
                               (_recur188737_ _e188733_ gx#ellipsis?))))
                        (begin
                          (let ((_g193266_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g193265_)
                                       (##vector-length _g193265_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g193266_ 2)))
                                (error "Context expects 2 values" _g193266_)))
                          (let ((_tree188739_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g193265_ 0)))
                                (_vars188740_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g193265_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars188740_))
                                _tree188739_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx188689_
                                   _vars188740_))))))))))
          (let* ((_e188693188703_ _stx188689_)
                 (_E188695188707_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx188689_))))
                 (_E188694188729_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e188693188703_))
                        (let ((_e188696188711_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e188693188703_))))
                          (let ((_hd188697188714_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e188696188711_)))
                                (_tl188698188716_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e188696188711_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl188698188716_))
                                (let ((_e188699188719_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl188698188716_))))
                                  (let ((_hd188700188722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e188699188719_)))
                                        (_tl188701188724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e188699188719_))))
                                    (let ((_form188727_ _hd188700188722_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl188701188724_))
                                          (if '#t
                                              (let ((__tmp193268
                                                     (let ((__tmp193269
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse188692_
                                                               _form188727_))))
                                                       (declare (not safe))
                                                       (_generate188691_
                                                        __tmp193269)))
                                                    (__tmp193267
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx188689_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp193268
                                                 __tmp193267))
                                              (let ()
                                                (declare (not safe))
                                                (_E188695188707_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E188695188707_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E188695188707_)))))
                        (let () (declare (not safe)) (_E188695188707_))))))
            (let () (declare (not safe)) (_E188694188729_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx187953_
               _identifier=?187954_
               _unwrap-e187955_
               _wrap-e187956_)
        (letrec ((_generate-bindings187958_
                  (lambda (_target188553_
                           _ids188554_
                           _clauses188555_
                           _clause-ids188556_
                           _E188557_)
                    (letrec ((_generate1188559_
                              (lambda (_clause188656_
                                       _clause-id188657_
                                       _E188658_)
                                (let ((__tmp193274
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id188657_ '())))
                                      (__tmp193270
                                       (let ((__tmp193271
                                              (let ((__tmp193273
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target188553_
                                                             '())))
                                                    (__tmp193272
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause187960_
                                                        _target188553_
                                                        _ids188554_
                                                        _clause188656_
                                                        _E188658_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp193273
                                                 __tmp193272))))
                                         (declare (not safe))
                                         (cons __tmp193271 '()))))
                                  (declare (not safe))
                                  (cons __tmp193274 __tmp193270)))))
                      (let _lp188561_ ((_rest188563_ _clauses188555_)
                                       (_rest-ids188564_ _clause-ids188556_)
                                       (_bindings188565_ '()))
                        (let* ((_rest188566188574_ _rest188563_)
                               (_else188568188582_
                                (lambda () _bindings188565_))
                               (_K188570188644_
                                (lambda (_rest188585_ _clause188586_)
                                  (let* ((_rest-ids188587188594_
                                          _rest-ids188564_)
                                         (_E188589188598_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids188587188594_))))
                                         (_K188590188632_
                                          (lambda (_rest-ids188601_
                                                   _clause-id188602_)
                                            (let* ((_rest-ids188603188611_
                                                    _rest-ids188601_)
                                                   (_else188605188619_
                                                    (lambda ()
                                                      (let ((__tmp193275
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1188559_
                        _clause188586_
                        _clause-id188602_
                        _E188557_))))
                (declare (not safe))
                (cons __tmp193275 _bindings188565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K188607188624_
                                                    (lambda (_next-clause-id188622_)
                                                      (let ((__tmp193276
                                                             (let ((__tmp193277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1188559_
                               _clause188586_
                               _clause-id188602_
                               _next-clause-id188622_))))
                       (declare (not safe))
                       (cons __tmp193277 _bindings188565_))))
                (declare (not safe))
                (_lp188561_ _rest188585_ _rest-ids188601_ __tmp193276)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids188603188611_))
                                                  (let* ((_hd188608188627_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids188603188611_)))
                                                         (_next-clause-id188630_
                                                          _hd188608188627_))
                                                    (declare (not safe))
                                                    (_K188607188624_
                                                     _next-clause-id188630_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else188605188619_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids188587188594_))
                                        (let ((_hd188591188635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids188587188594_)))
                                              (_tl188592188637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids188587188594_))))
                                          (let* ((_clause-id188640_
                                                  _hd188591188635_)
                                                 (_rest-ids188642_
                                                  _tl188592188637_))
                                            (declare (not safe))
                                            (_K188590188632_
                                             _rest-ids188642_
                                             _clause-id188640_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E188589188598_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest188566188574_))
                              (let ((_hd188571188647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest188566188574_)))
                                    (_tl188572188649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest188566188574_))))
                                (let* ((_clause188652_ _hd188571188647_)
                                       (_rest188654_ _tl188572188649_))
                                  (declare (not safe))
                                  (_K188570188644_
                                   _rest188654_
                                   _clause188652_)))
                              (let ()
                                (declare (not safe))
                                (_else188568188582_))))))))
                 (_generate-body187959_
                  (lambda (_bindings188513_ _body188514_)
                    (let _recur188516_ ((_rest188518_ _bindings188513_))
                      (let* ((_rest188519188527_ _rest188518_)
                             (_else188521188535_ (lambda () _body188514_))
                             (_K188523188541_
                              (lambda (_rest188538_ _hd188539_)
                                (let ((__tmp193279
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd188539_ '())))
                                      (__tmp193278
                                       (let ()
                                         (declare (not safe))
                                         (_recur188516_ _rest188538_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp193279
                                   __tmp193278)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest188519188527_))
                            (let ((_hd188524188544_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest188519188527_)))
                                  (_tl188525188546_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest188519188527_))))
                              (let* ((_hd188549_ _hd188524188544_)
                                     (_rest188551_ _tl188525188546_))
                                (declare (not safe))
                                (_K188523188541_ _rest188551_ _hd188549_)))
                            (let ()
                              (declare (not safe))
                              (_else188521188535_)))))))
                 (_generate-clause187960_
                  (lambda (_target188376_ _ids188377_ _clause188378_ _E188379_)
                    (letrec ((_generate1188381_
                              (lambda (_hd188468_ _fender188469_ _body188470_)
                                (let ((_g193280_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause187962_
                                          _hd188468_
                                          _ids188377_))))
                                  (begin
                                    (let ((_g193281_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193280_)
                                                 (##vector-length _g193280_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193281_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193281_)))
                                    (let ((_e188472_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193280_ 0)))
                                          (_mvars188473_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193280_ 1))))
                                      (let* ((_pvars188475_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars188473_))))
                                             (_E188477_
                                              (let ((__tmp193282
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target188376_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E188379_ __tmp193282)))
                                             (_K188510_
                                              (let ((__tmp193283
                                                     (let ((__tmp193285
                                                            (map (lambda (_mvar188479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar188480_)
                           (let* ((_mvar188481188488_ _mvar188479_)
                                  (_E188483188492_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar188481188488_))))
                                  (_K188484188498_
                                   (lambda (_depth188495_ _id188496_)
                                     (let ((__tmp193286
                                            (let ((__tmp193287
                                                   (let ((__tmp193289
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id188496_)))
                                                         (__tmp193288
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar188480_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp193289
                                                      __tmp193288
                                                      _depth188495_))))
                                              (declare (not safe))
                                              (cons __tmp193287 '()))))
                                       (declare (not safe))
                                       (cons _id188496_ __tmp193286)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar188481188488_))
                                 (let ((_hd188485188501_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar188481188488_)))
                                       (_tl188486188503_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar188481188488_))))
                                   (let* ((_id188506_ _hd188485188501_)
                                          (_depth188508_ _tl188486188503_))
                                     (declare (not safe))
                                     (_K188484188498_
                                      _depth188508_
                                      _id188506_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E188483188492_)))))
                         _mvars188473_
                         _pvars188475_))
                   (__tmp193284
                    (if (let () (declare (not safe)) (eq? _fender188469_ '#t))
                        _body188470_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender188469_
                           _body188470_
                           _E188477_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp193285 __tmp193284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars188475_
                                                 __tmp193283))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match187961_
                                           _hd188468_
                                           _target188376_
                                           _e188472_
                                           _mvars188473_
                                           _K188510_
                                           _E188477_)))))))))
                      (let* ((_e188382188402_ _clause188378_)
                             (_E188391188406_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e188382188402_))))
                             (_E188384188440_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e188382188402_))
                                    (let ((_e188392188410_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e188382188402_))))
                                      (let ((_hd188393188413_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188392188410_)))
                                            (_tl188394188415_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188392188410_))))
                                        (let ((_hd188418_ _hd188393188413_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl188394188415_))
                                              (let ((_e188395188420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl188394188415_))))
                                                (let ((_hd188396188423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e188395188420_)))
                                                      (_tl188397188425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e188395188420_))))
                                                  (let ((_fender188428_
                                                         _hd188396188423_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl188397188425_))
                                                        (let ((_e188398188430_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl188397188425_))))
                  (let ((_hd188399188433_
                         (let () (declare (not safe)) (##car _e188398188430_)))
                        (_tl188400188435_
                         (let ()
                           (declare (not safe))
                           (##cdr _e188398188430_))))
                    (let ((_body188438_ _hd188399188433_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl188400188435_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1188381_
                                 _hd188418_
                                 _fender188428_
                                 _body188438_))
                              (let () (declare (not safe)) (_E188391188406_)))
                          (let () (declare (not safe)) (_E188391188406_))))))
                (let () (declare (not safe)) (_E188391188406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E188391188406_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E188391188406_)))))
                             (_E188383188464_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e188382188402_))
                                    (let ((_e188385188444_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e188382188402_))))
                                      (let ((_hd188386188447_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188385188444_)))
                                            (_tl188387188449_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188385188444_))))
                                        (let ((_hd188452_ _hd188386188447_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl188387188449_))
                                              (let ((_e188388188454_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl188387188449_))))
                                                (let ((_hd188389188457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e188388188454_)))
                                                      (_tl188390188459_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e188388188454_))))
                                                  (let ((_body188462_
                                                         _hd188389188457_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl188390188459_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1188381_
                                                               _hd188452_
                                                               '#t
                                                               _body188462_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E188384188440_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E188384188440_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E188384188440_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E188384188440_))))))
                        (let () (declare (not safe)) (_E188383188464_))))))
                 (_generate-match187961_
                  (lambda (_where188125_
                           _target188126_
                           _hd188127_
                           _mvars188128_
                           _K188129_
                           _E188130_)
                    (letrec ((_BUG188132_
                              (lambda (_q188374_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx187953_
                                         _hd188127_
                                         _q188374_))))
                             (_recur188133_
                              (lambda (_e188224_
                                       _vars188225_
                                       _target188226_
                                       _E188227_
                                       _k188228_)
                                (let* ((_e188229188236_ _e188224_)
                                       (_E188231188240_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e188229188236_))))
                                       (_K188232188362_
                                        (lambda (_body188243_ _tag188244_)
                                          (let ((_$e188246_ _tag188244_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e188246_))
                                                (_k188228_ _vars188225_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e188246_))
                                                    (let ((__tmp193396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target188226_)))
                                                          (__tmp193392
                                                           (let ((__tmp193394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193395
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e187956_
                                    _body188243_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?187954_
                             __tmp193395
                             _target188226_)))
                         (__tmp193393 (_k188228_ _vars188225_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp193394 __tmp193393 _E188227_))))
              (declare (not safe))
              (gx#core-list 'if __tmp193396 __tmp193392 _E188227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e188246_))
                                                        (_k188228_
                                                         (let ((__tmp193391
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body188243_ _target188226_))))
                   (declare (not safe))
                   (cons __tmp193391 _vars188225_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e188246_))
                    (let ((_$e188249_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd188250_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl188251_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp193390
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target188226_)))
                            (__tmp193371
                             (let ((__tmp193385
                                    (let ((__tmp193386
                                           (let ((__tmp193389
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e188249_ '())))
                                                 (__tmp193387
                                                  (let ((__tmp193388
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e187955_
                                                            _target188226_))))
                                                    (declare (not safe))
                                                    (cons __tmp193388 '()))))
                                             (declare (not safe))
                                             (cons __tmp193389 __tmp193387))))
                                      (declare (not safe))
                                      (cons __tmp193386 '())))
                                   (__tmp193372
                                    (let ((__tmp193375
                                           (let ((__tmp193381
                                                  (let ((__tmp193384
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd188250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp193382
                 (let ((__tmp193383
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e188249_))))
                   (declare (not safe))
                   (cons __tmp193383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193384
                                                          __tmp193382)))
                                                 (__tmp193376
                                                  (let ((__tmp193377
                                                         (let ((__tmp193380
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl188251_ '())))
                       (__tmp193378
                        (let ((__tmp193379
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e188249_))))
                          (declare (not safe))
                          (cons __tmp193379 '()))))
                   (declare (not safe))
                   (cons __tmp193380 __tmp193378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193377 '()))))
                                             (declare (not safe))
                                             (cons __tmp193381 __tmp193376)))
                                          (__tmp193373
                                           (let* ((_body188252188259_
                                                   _body188243_)
                                                  (_E188254188263_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body188252188259_))))
                                                  (_K188255188271_
                                                   (lambda (_tl188266_
                                                            _hd188267_)
                                                     (let ((__tmp193374
                                                            (lambda (_vars188269_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur188133_
                         _tl188266_
                         _vars188269_
                         _$tl188251_
                         _E188227_
                         _k188228_)))))
               (declare (not safe))
               (_recur188133_
                _hd188267_
                _vars188225_
                _$hd188250_
                _E188227_
                __tmp193374)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body188252188259_))
                                                 (let ((_hd188256188274_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body188252188259_)))
                                                       (_tl188257188276_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body188252188259_))))
                                                   (let* ((_hd188279_
                                                           _hd188256188274_)
                                                          (_tl188281_
                                                           _tl188257188276_))
                                                     (declare (not safe))
                                                     (_K188255188271_
                                                      _tl188281_
                                                      _hd188279_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E188254188263_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp193375
                                       __tmp193373))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp193385
                                __tmp193372))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp193390 __tmp193371 _E188227_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e188246_))
                        (let* ((_body188282188289_ _body188243_)
                               (_E188284188293_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body188282188289_))))
                               (_K188285188344_
                                (lambda (_tl188296_ _hd188297_)
                                  (let* ((_rlen188299_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen188134_ _tl188296_)))
                                         (_$target188301_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd188303_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl188305_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp188307_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e188309_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd188311_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl188313_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars188315_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars188135_ _hd188297_)))
                                         (_lvars188317_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars188315_)))
                                         (_tlvars188319_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars188315_)))
                                         (_linit188323_
                                          (map (lambda (_var188321_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars188317_)))
                                    (letrec ((_make-loop188326_
                                              (lambda (_vars188330_)
                                                (let ((__tmp193322
                                                       (let ((__tmp193323
                                                              (let ((__tmp193359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp188307_ '())))
                            (__tmp193324
                             (let ((__tmp193325
                                    (let ((__tmp193358
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd188303_ _lvars188317_)))
                                          (__tmp193326
                                           (let ((__tmp193357
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd188303_)))
                                                 (__tmp193335
                                                  (let ((__tmp193352
                                                         (let ((__tmp193353
                                                                (let ((__tmp193356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e188309_ '())))
                              (__tmp193354
                               (let ((__tmp193355
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e187955_
                                         _$hd188303_))))
                                 (declare (not safe))
                                 (cons __tmp193355 '()))))
                          (declare (not safe))
                          (cons __tmp193356 __tmp193354))))
                   (declare (not safe))
                   (cons __tmp193353 '())))
                (__tmp193336
                 (let ((__tmp193342
                        (let ((__tmp193348
                               (let ((__tmp193351
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd188311_ '())))
                                     (__tmp193349
                                      (let ((__tmp193350
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e188309_))))
                                        (declare (not safe))
                                        (cons __tmp193350 '()))))
                                 (declare (not safe))
                                 (cons __tmp193351 __tmp193349)))
                              (__tmp193343
                               (let ((__tmp193344
                                      (let ((__tmp193347
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl188313_ '())))
                                            (__tmp193345
                                             (let ((__tmp193346
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e188309_))))
                                               (declare (not safe))
                                               (cons __tmp193346 '()))))
                                        (declare (not safe))
                                        (cons __tmp193347 __tmp193345))))
                                 (declare (not safe))
                                 (cons __tmp193344 '()))))
                          (declare (not safe))
                          (cons __tmp193348 __tmp193343)))
                       (__tmp193337
                        (let ((__tmp193338
                               (lambda (_hdvars188332_)
                                 (let ((__tmp193339
                                        (let ((__tmp193340
                                               (map (lambda (_svar188334_
                                                             _lvar188335_)
                                                      (let ((__tmp193341
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar188334_ _hdvars188332_ _BUG188132_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp193341 _lvar188335_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars188315_
                                                    _lvars188317_)))
                                          (declare (not safe))
                                          (cons _$lp-tl188313_ __tmp193340))))
                                   (declare (not safe))
                                   (cons _$lp188307_ __tmp193339)))))
                          (declare (not safe))
                          (_recur188133_
                           _hd188297_
                           '()
                           _$lp-hd188311_
                           _E188227_
                           __tmp193338))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp193342 __tmp193337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193352
                                                     __tmp193336)))
                                                 (__tmp193327
                                                  (let ((__tmp193331
                                                         (map (lambda (_lvar188337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar188338_)
                        (let ((__tmp193334
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar188338_ '())))
                              (__tmp193332
                               (let ((__tmp193333
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar188337_))))
                                 (declare (not safe))
                                 (cons __tmp193333 '()))))
                          (declare (not safe))
                          (cons __tmp193334 __tmp193332)))
                      _lvars188317_
                      _tlvars188319_))
                (__tmp193328
                 (_k188228_
                  (let ((__tmp193329
                         (lambda (_svar188340_ _tlvar188341_ _r188342_)
                           (let ((__tmp193330
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar188340_ _tlvar188341_))))
                             (declare (not safe))
                             (cons __tmp193330 _r188342_)))))
                    (declare (not safe))
                    (foldl2 __tmp193329
                            _vars188330_
                            _svars188315_
                            _tlvars188319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193331
                                                     __tmp193328))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp193357
                                              __tmp193335
                                              __tmp193327))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp193358
                                       __tmp193326))))
                               (declare (not safe))
                               (cons __tmp193325 '()))))
                        (declare (not safe))
                        (cons __tmp193359 __tmp193324))))
                 (declare (not safe))
                 (cons __tmp193323 '())))
              (__tmp193320
               (let ((__tmp193321
                      (let ()
                        (declare (not safe))
                        (cons _$target188301_ _linit188323_))))
                 (declare (not safe))
                 (cons _$lp188307_ __tmp193321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp193322
                                                   __tmp193320)))))
                                      (let ((_body188328_
                                             (let ((__tmp193361
                                                    (let ((__tmp193362
                                                           (let ((__tmp193365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193366
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl188305_ '()))))
                            (declare (not safe))
                            (cons _$target188301_ __tmp193366)))
                         (__tmp193363
                          (let ((__tmp193364
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target188226_
                                    _rlen188299_))))
                            (declare (not safe))
                            (cons __tmp193364 '()))))
                     (declare (not safe))
                     (cons __tmp193365 __tmp193363))))
              (declare (not safe))
              (cons __tmp193362 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp193360
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur188133_
                                                       _tl188296_
                                                       _vars188225_
                                                       _$tl188305_
                                                       _E188227_
                                                       _make-loop188326_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp193361
                                                __tmp193360))))
                                        (let ((__tmp193370
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target188226_)))
                                              (__tmp193367
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen188299_))
                                                   _body188328_
                                                   (let ((__tmp193368
                                                          (let ((__tmp193369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target188226_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp193369 _rlen188299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp193368
                                                      _body188328_
                                                      _E188227_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp193370
                                           __tmp193367
                                           _E188227_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body188282188289_))
                              (let ((_hd188286188347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body188282188289_)))
                                    (_tl188287188349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body188282188289_))))
                                (let* ((_hd188352_ _hd188286188347_)
                                       (_tl188354_ _tl188287188349_))
                                  (declare (not safe))
                                  (_K188285188344_ _tl188354_ _hd188352_)))
                              (let () (declare (not safe)) (_E188284188293_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e188246_))
                            (let ((__tmp193319
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target188226_)))
                                  (__tmp193318 (_k188228_ _vars188225_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp193319
                               __tmp193318
                               _E188227_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e188246_))
                                (let ((_$e188356_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp193317
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target188226_)))
                                        (__tmp193309
                                         (let ((__tmp193311
                                                (let ((__tmp193312
                                                       (let ((__tmp193316
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e188356_ '())))
                     (__tmp193313
                      (let ((__tmp193314
                             (let ((__tmp193315
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e187955_
                                       _target188226_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp193315))))
                        (declare (not safe))
                        (cons __tmp193314 '()))))
                 (declare (not safe))
                 (cons __tmp193316 __tmp193313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp193312 '())))
                                               (__tmp193310
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur188133_
                                                   _body188243_
                                                   _vars188225_
                                                   _$e188356_
                                                   _E188227_
                                                   _k188228_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp193311
                                            __tmp193310))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp193317
                                     __tmp193309
                                     _E188227_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e188246_))
                                    (let ((_$e188358_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp193308
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target188226_)))
                                            (__tmp193300
                                             (let ((__tmp193302
                                                    (let ((__tmp193303
                                                           (let ((__tmp193307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e188358_ '())))
                         (__tmp193304
                          (let ((__tmp193305
                                 (let ((__tmp193306
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e187955_
                                           _target188226_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp193306))))
                            (declare (not safe))
                            (cons __tmp193305 '()))))
                     (declare (not safe))
                     (cons __tmp193307 __tmp193304))))
              (declare (not safe))
              (cons __tmp193303 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp193301
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur188133_
                                                       _body188243_
                                                       _vars188225_
                                                       _$e188358_
                                                       _E188227_
                                                       _k188228_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp193302
                                                __tmp193301))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp193308
                                         __tmp193300
                                         _E188227_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e188246_))
                                        (let ((_$e188360_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp193299
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target188226_)))
                                                (__tmp193290
                                                 (let ((__tmp193294
                                                        (let ((__tmp193295
                                                               (let ((__tmp193298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e188360_ '())))
                             (__tmp193296
                              (let ((__tmp193297
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target188226_))))
                                (declare (not safe))
                                (cons __tmp193297 '()))))
                         (declare (not safe))
                         (cons __tmp193298 __tmp193296))))
                  (declare (not safe))
                  (cons __tmp193295 '())))
               (__tmp193291
                (let ((__tmp193293
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e188360_ _body188243_)))
                      (__tmp193292 (_k188228_ _vars188225_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp193293 __tmp193292 _E188227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp193294
                                                    __tmp193291))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp193299
                                             __tmp193290
                                             _E188227_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG188132_ _e188224_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e188229188236_))
                                      (let ((_hd188233188365_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188229188236_)))
                                            (_tl188234188367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188229188236_))))
                                        (let* ((_tag188370_ _hd188233188365_)
                                               (_body188372_ _tl188234188367_))
                                          (declare (not safe))
                                          (_K188232188362_
                                           _body188372_
                                           _tag188370_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E188231188240_))))))
                             (_splice-rlen188134_
                              (lambda (_e188186_)
                                (let _lp188188_ ((_e188190_ _e188186_)
                                                 (_n188191_ '0))
                                  (let* ((_e188192188199_ _e188190_)
                                         (_E188194188203_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e188192188199_))))
                                         (_K188195188212_
                                          (lambda (_body188206_ _tag188207_)
                                            (let ((_$e188209_ _tag188207_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e188209_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx187953_
                                                     _where188125_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e188209_))
                                                      (let ((__tmp193398
                                                             (cdr _body188206_))
                                                            (__tmp193397
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n188191_ '1))))
                (declare (not safe))
                (_lp188188_ __tmp193398 __tmp193397))
              _n188191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e188192188199_))
                                        (let ((_hd188196188215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e188192188199_)))
                                              (_tl188197188217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e188192188199_))))
                                          (let* ((_tag188220_ _hd188196188215_)
                                                 (_body188222_
                                                  _tl188197188217_))
                                            (declare (not safe))
                                            (_K188195188212_
                                             _body188222_
                                             _tag188220_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E188194188203_)))))))
                             (_splice-vars188135_
                              (lambda (_e188142_)
                                (let _recur188144_ ((_e188146_ _e188142_)
                                                    (_vars188147_ '()))
                                  (let* ((_e188148188155_ _e188146_)
                                         (_E188150188159_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e188148188155_))))
                                         (_K188151188174_
                                          (lambda (_body188162_ _tag188163_)
                                            (let ((_$e188165_ _tag188163_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e188165_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body188162_
                                                          _vars188147_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e188165_))
                  (let () (declare (not safe)) (eq? 'splice _$e188165_)))
              (let ((__tmp193401 (cdr _body188162_))
                    (__tmp193399
                     (let ((__tmp193400 (car _body188162_)))
                       (declare (not safe))
                       (_recur188144_ __tmp193400 _vars188147_))))
                (declare (not safe))
                (_recur188144_ __tmp193401 __tmp193399))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e188165_))
                      (let () (declare (not safe)) (eq? 'box _$e188165_)))
                  (let ()
                    (declare (not safe))
                    (_recur188144_ _body188162_ _vars188147_))
                  _vars188147_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e188148188155_))
                                        (let ((_hd188152188177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e188148188155_)))
                                              (_tl188153188179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e188148188155_))))
                                          (let* ((_tag188182_ _hd188152188177_)
                                                 (_body188184_
                                                  _tl188153188179_))
                                            (declare (not safe))
                                            (_K188151188174_
                                             _body188184_
                                             _tag188182_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E188150188159_)))))))
                             (_make-body188136_
                              (lambda (_vars188138_)
                                (let ((__tmp193402
                                       (map (lambda (_mvar188140_)
                                              (let ((__tmp193403
                                                     (car _mvar188140_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp193403
                                                 _vars188138_
                                                 _BUG188132_)))
                                            _mvars188128_)))
                                  (declare (not safe))
                                  (cons _K188129_ __tmp193402)))))
                      (let ()
                        (declare (not safe))
                        (_recur188133_
                         _hd188127_
                         '()
                         _target188126_
                         _E188130_
                         _make-body188136_)))))
                 (_parse-clause187962_
                  (lambda (_hd188031_ _ids188032_)
                    (let _recur188034_ ((_e188036_ _hd188031_)
                                        (_vars188037_ '())
                                        (_depth188038_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e188036_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e188036_))
                              (values '(any) _vars188037_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e188036_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx187953_
                                     _hd188031_))
                                  (if (let ((__tmp193419
                                             (lambda (_id188040_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e188036_
                                                  _id188040_)))))
                                        (declare (not safe))
                                        (find __tmp193419 _ids188032_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e188036_))
                                              _vars188037_)
                                      (if (let ((__tmp193417
                                                 (lambda (_var188042_)
                                                   (let ((__tmp193418
                                                          (car _var188042_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e188036_
                                                      __tmp193418)))))
                                            (declare (not safe))
                                            (find __tmp193417 _vars188037_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx187953_
                                             _e188036_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e188036_))
                                                  (let ((__tmp193416
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e188036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth188038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193416
                                                          _vars188037_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e188036_))
                              (let* ((_e188043188050_ _e188036_)
                                     (_E188045188054_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e188043188050_))))
                                     (_E188044188115_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e188043188050_))
                                            (let ((_e188046188058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e188043188050_))))
                                              (let ((_hd188047188061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e188046188058_)))
                                                    (_tl188048188063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e188046188058_))))
                                                (let* ((_hd188066_
                                                        _hd188047188061_)
                                                       (_rest188068_
                                                        _tl188048188063_))
                                                  (if '#t
                                                      (let* ((_make-pair188083_
                                                              (lambda (_tag188070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd188071_
                               _tl188072_)
                        (let* ((_hd-depth188074_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag188070_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth188038_ '1))
                                    _depth188038_))
                               (_g193411_
                                (let ()
                                  (declare (not safe))
                                  (_recur188034_
                                   _hd188071_
                                   _vars188037_
                                   _hd-depth188074_))))
                          (begin
                            (let ((_g193412_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g193411_)
                                         (##vector-length _g193411_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g193412_ 2)))
                                  (error "Context expects 2 values"
                                         _g193412_)))
                            (let ((_hd188076_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193411_ 0)))
                                  (_vars188077_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193411_ 1))))
                              (let ((_g193413_
                                     (let ()
                                       (declare (not safe))
                                       (_recur188034_
                                        _tl188072_
                                        _vars188077_
                                        _depth188038_))))
                                (begin
                                  (let ((_g193414_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g193413_)
                                               (##vector-length _g193413_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g193414_ 2)))
                                        (error "Context expects 2 values"
                                               _g193414_)))
                                  (let ((_tl188079_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193413_ 0)))
                                        (_vars188080_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193413_ 1))))
                                    (let ()
                                      (values (let ((__tmp193415
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd188076_
                                                             _tl188079_))))
                                                (declare (not safe))
                                                (cons _tag188070_ __tmp193415))
                                              _vars188080_))))))))))
                     (_e188084188091_ _rest188068_)
                     (_E188086188095_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair188083_ 'cons _hd188066_ _rest188068_))))
                     (_E188085188111_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e188084188091_))
                            (let ((_e188087188099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e188084188091_))))
                              (let ((_hd188088188102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e188087188099_)))
                                    (_tl188089188104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e188087188099_))))
                                (let* ((_rest-hd188107_ _hd188088188102_)
                                       (_rest-tl188109_ _tl188089188104_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd188107_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair188083_
                                             'splice
                                             _hd188066_
                                             _rest-tl188109_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair188083_
                                             'cons
                                             _hd188066_
                                             _rest188068_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E188086188095_))))))
                            (let () (declare (not safe)) (_E188086188095_))))))
                (let () (declare (not safe)) (_E188085188111_)))
              (let () (declare (not safe)) (_E188045188054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E188045188054_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E188044188115_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e188036_))
                                  (values '(null) _vars188037_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e188036_))
                                      (let ((_g193408_
                                             (let ((__tmp193410
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e188036_)))))
                                               (declare (not safe))
                                               (_recur188034_
                                                __tmp193410
                                                _vars188037_
                                                _depth188038_))))
                                        (begin
                                          (let ((_g193409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g193408_)
                                                       (##vector-length
                                                        _g193408_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g193409_ 2)))
                                                (error "Context expects 2 values"
                                                       _g193409_)))
                                          (let ((_e188119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g193408_ 0)))
                                                (_vars188120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g193408_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e188119_))
                                                    _vars188120_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e188036_))
                                          (let ((_g193405_
                                                 (let ((__tmp193407
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e188036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur188034_
                                                    __tmp193407
                                                    _vars188037_
                                                    _depth188038_))))
                                            (begin
                                              (let ((_g193406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g193405_)
                                                           (##vector-length
                                                            _g193405_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g193406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g193406_)))
                                              (let ((_e188122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193405_
                                                        0)))
                                                    (_vars188123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193405_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e188122_))
                                                        _vars188123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e188036_))
                                              (values (let ((__tmp193404
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e188036_))))
                (declare (not safe))
                (cons 'datum __tmp193404))
              _vars188037_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx187953_
                                                 _e188036_))))))))))))
          (let* ((_e187963187976_ _stx187953_)
                 (_E187965187980_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e187963187976_))))
                 (_E187964188027_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e187963187976_))
                        (let ((_e187966187984_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e187963187976_))))
                          (let ((_hd187967187987_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187966187984_)))
                                (_tl187968187989_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187966187984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl187968187989_))
                                (let ((_e187969187992_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl187968187989_))))
                                  (let ((_hd187970187995_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e187969187992_)))
                                        (_tl187971187997_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e187969187992_))))
                                    (let ((_expr188000_ _hd187970187995_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl187971187997_))
                                          (let ((_e187972188002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl187971187997_))))
                                            (let ((_hd187973188005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e187972188002_)))
                                                  (_tl187974188007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e187972188002_))))
                                              (let* ((_ids188010_
                                                      _hd187973188005_)
                                                     (_clauses188012_
                                                      _tl187974188007_))
                                                (if '#t
                                                    (if (let ((__tmp193437
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids188010_))))
                  (declare (not safe))
                  (not __tmp193437))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx187953_
                   _ids188010_))
                (if (let ((__tmp193436
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses188012_))))
                      (declare (not safe))
                      (not __tmp193436))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx187953_))
                    (let* ((_ids188014_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids188010_)))
                           (_clauses188016_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses188012_)))
                           (_clause-ids188018_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses188016_)))
                           (_E188020_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target188022_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first188024_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses188016_))
                                _E188020_
                                (car _clause-ids188018_))))
                      (let ((__tmp193421
                             (let ((__tmp193422
                                    (let ((__tmp193424
                                           (let ((__tmp193429
                                                  (let ((__tmp193430
                                                         (let ((__tmp193435
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E188020_ '())))
                       (__tmp193431
                        (let ((__tmp193432
                               (let ((__tmp193434
                                      (let ()
                                        (declare (not safe))
                                        (cons _target188022_ '())))
                                     (__tmp193433
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target188022_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp193434
                                  __tmp193433))))
                          (declare (not safe))
                          (cons __tmp193432 '()))))
                   (declare (not safe))
                   (cons __tmp193435 __tmp193431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193430 '())))
                                                 (__tmp193425
                                                  (let ((__tmp193428
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings187958_
                                                            _target188022_
                                                            _ids188014_
                                                            _clauses188016_
                                                            _clause-ids188018_
                                                            _E188020_)))
                                                        (__tmp193426
                                                         (let ((__tmp193427
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr188000_ '()))))
                   (declare (not safe))
                   (cons _first188024_ __tmp193427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body187959_
                                                     __tmp193428
                                                     __tmp193426))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp193429
                                              __tmp193425)))
                                          (__tmp193423
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx187953_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp193424
                                       __tmp193423))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp193422)))
                            (__tmp193420
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx187953_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp193421 __tmp193420)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E187965187980_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E187965187980_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E187965187980_)))))
                        (let () (declare (not safe)) (_E187965187980_))))))
            (let () (declare (not safe)) (_E187964188027_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx188663_)
        (let* ((_identifier=?188665_ 'free-identifier=?)
               (_unwrap-e188667_ 'syntax-e)
               (_wrap-e188669_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx188663_
           _identifier=?188665_
           _unwrap-e188667_
           _wrap-e188669_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx188671_ _identifier=?188672_)
        (let* ((_unwrap-e188674_ 'syntax-e) (_wrap-e188676_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx188671_
           _identifier=?188672_
           _unwrap-e188674_
           _wrap-e188676_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx188678_ _identifier=?188679_ _unwrap-e188680_)
        (let ((_wrap-e188682_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx188678_
           _identifier=?188679_
           _unwrap-e188680_
           _wrap-e188682_))))
    (define gx#macro-expand-syntax-case
      (lambda _g193439_
        (let ((_g193438_ (let () (declare (not safe)) (##length _g193439_))))
          (cond ((let () (declare (not safe)) (##fx= _g193438_ 1))
                 (apply (lambda (_stx188663_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx188663_)))
                        _g193439_))
                ((let () (declare (not safe)) (##fx= _g193438_ 2))
                 (apply (lambda (_stx188671_ _identifier=?188672_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx188671_
                             _identifier=?188672_)))
                        _g193439_))
                ((let () (declare (not safe)) (##fx= _g193438_ 3))
                 (apply (lambda (_stx188678_
                                 _identifier=?188679_
                                 _unwrap-e188680_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx188678_
                             _identifier=?188679_
                             _unwrap-e188680_)))
                        _g193439_))
                ((let () (declare (not safe)) (##fx= _g193438_ 4))
                 (apply (lambda (_stx188684_
                                 _identifier=?188685_
                                 _unwrap-e188686_
                                 _wrap-e188687_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx188684_
                             _identifier=?188685_
                             _unwrap-e188686_
                             _wrap-e188687_)))
                        _g193439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g193439_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx187950_)
        (if (let () (declare (not safe)) (gx#identifier? _stx187950_))
            (let ((__tmp193440
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx187950_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp193440 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd187908_ . _rest187909_)
        (let ((_len187911_ (length _hd187908_)))
          (let _lp187913_ ((_rest187915_ _rest187909_))
            (let* ((_rest187916187924_ _rest187915_)
                   (_else187918187932_ (lambda () '#!void))
                   (_K187920187938_
                    (lambda (_rest187935_ _hd187936_)
                      (if (fx= _len187911_ (length _hd187936_))
                          (let ()
                            (declare (not safe))
                            (_lp187913_ _rest187935_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd187936_))))))
              (if (let () (declare (not safe)) (##pair? _rest187916187924_))
                  (let ((_hd187921187941_
                         (let ()
                           (declare (not safe))
                           (##car _rest187916187924_)))
                        (_tl187922187943_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest187916187924_))))
                    (let* ((_hd187946_ _hd187921187941_)
                           (_rest187948_ _tl187922187943_))
                      (declare (not safe))
                      (_K187920187938_ _rest187948_ _hd187946_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx187866_ _n187867_)
        (let _lp187869_ ((_rest187871_ _stx187866_) (_r187872_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest187871_))
              (let* ((_g187873187880_
                      (let () (declare (not safe)) (gx#syntax-e _rest187871_)))
                     (_E187875187884_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g187873187880_))))
                     (_K187876187890_
                      (lambda (_rest187887_ _hd187888_)
                        (let ((__tmp193445
                               (let ()
                                 (declare (not safe))
                                 (cons _hd187888_ _r187872_))))
                          (declare (not safe))
                          (_lp187869_ _rest187887_ __tmp193445)))))
                (if (let () (declare (not safe)) (##pair? _g187873187880_))
                    (let ((_hd187877187893_
                           (let ()
                             (declare (not safe))
                             (##car _g187873187880_)))
                          (_tl187878187895_
                           (let ()
                             (declare (not safe))
                             (##cdr _g187873187880_))))
                      (let* ((_hd187898_ _hd187877187893_)
                             (_rest187900_ _tl187878187895_))
                        (declare (not safe))
                        (_K187876187890_ _rest187900_ _hd187898_)))
                    (let () (declare (not safe)) (_E187875187884_))))
              (let _lp187902_ ((_n187904_ _n187867_)
                               (_l187905_ _r187872_)
                               (_r187906_ _rest187871_))
                (if (let () (declare (not safe)) (null? _l187905_))
                    (values _l187905_ _r187906_)
                    (if (fxpositive? _n187904_)
                        (let ((__tmp193444
                               (let ()
                                 (declare (not safe))
                                 (fx- _n187904_ '1)))
                              (__tmp193443 (cdr _l187905_))
                              (__tmp193441
                               (let ((__tmp193442 (car _l187905_)))
                                 (declare (not safe))
                                 (cons __tmp193442 _r187906_))))
                          (declare (not safe))
                          (_lp187902_ __tmp193444 __tmp193443 __tmp193441))
                        (values (reverse _l187905_) _r187906_))))))))))

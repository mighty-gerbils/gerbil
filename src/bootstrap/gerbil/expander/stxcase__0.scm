(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707841980)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186179 (list gx#expander::t))
            (__tmp186177
             (let ((__tmp186178
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp186178 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186179
         '(id depth)
         __tmp186177
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args181606_
        (apply make-instance gx#syntax-pattern::t _$args181606_)))
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
      (lambda (_self181603_ _stx181604_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx181604_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx181085_)
        (letrec ((_generate181087_
                  (lambda (_e181314_)
                    (letrec ((_BUG181316_
                              (lambda (_q181478_)
                                (error '"BUG: syntax; generate"
                                       _stx181085_
                                       _e181314_
                                       _q181478_)))
                             (_local-pattern-e181317_
                              (lambda (_pat181476_)
                                (let ((__tmp186180
                                       (##structure-ref
                                        _pat181476_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186180))))
                             (_getvar181318_
                              (lambda (_q181473_ _vars181474_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q181473_
                                           _vars181474_
                                           _BUG181316_))))
                             (_getarg181319_
                              (lambda (_arg181439_ _vars181440_)
                                (let* ((_arg181441181448_ _arg181439_)
                                       (_E181443181452_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg181441181448_)))
                                       (_K181444181461_
                                        (lambda (_e181455_ _tag181456_)
                                          (let ((_$e181458_ _tag181456_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e181458_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar181318_
                                                   _e181455_
                                                   _vars181440_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e181458_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e181317_
                                                       _e181455_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG181316_
                                                       _arg181439_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg181441181448_))
                                      (let ((_hd181445181464_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg181441181448_)))
                                            (_tl181446181466_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg181441181448_))))
                                        (let* ((_tag181469_ _hd181445181464_)
                                               (_e181471_ _tl181446181466_))
                                          (declare (not safe))
                                          (_K181444181461_
                                           _e181471_
                                           _tag181469_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181443181452_)))))))
                      (let _recur181321_ ((_e181323_ _e181314_)
                                          (_vars181324_ '()))
                        (let* ((_e181325181332_ _e181323_)
                               (_E181327181336_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e181325181332_)))
                               (_K181328181427_
                                (lambda (_body181339_ _tag181340_)
                                  (let ((_$e181342_ _tag181340_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e181342_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body181339_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e181342_))
                                            (let ((_id181345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body181339_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id181345_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks181347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id181345_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks181347_))
                                                        (let ((__tmp186208
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body181339_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186208))
                (let ((__tmp186207
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body181339_)))
                      (__tmp186206
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body181339_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186207
                   __tmp186206
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id181345_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body181339_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG181316_
                                                         _e181323_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e181342_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e181317_
                                                   _body181339_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e181342_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar181318_
                                                       _body181339_
                                                       _vars181324_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e181342_))
                                                        (let ((__tmp186204
                                                               (let ((__tmp186205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body181339_)))
                         (declare (not safe))
                         (_recur181321_ __tmp186205 _vars181324_)))
                      (__tmp186202
                       (let ((__tmp186203 (cdr _body181339_)))
                         (declare (not safe))
                         (_recur181321_ __tmp186203 _vars181324_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp186204 __tmp186202))
                (if (let () (declare (not safe)) (eq? 'vector _$e181342_))
                    (let ((__tmp186201
                           (let ()
                             (declare (not safe))
                             (_recur181321_ _body181339_ _vars181324_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186201))
                    (if (let () (declare (not safe)) (eq? 'box _$e181342_))
                        (let ((__tmp186200
                               (let ()
                                 (declare (not safe))
                                 (_recur181321_ _body181339_ _vars181324_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186200))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e181342_))
                            (let* ((_body181348181359_ _body181339_)
                                   (_E181350181363_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body181348181359_)))
                                   (_K181351181401_
                                    (lambda (_args181366_
                                             _iv181367_
                                             _hd181368_
                                             _depth181369_)
                                      (let* ((_targets181375_
                                              (map (lambda (_g181370181372_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg181319_
                                                        _g181370181372_
                                                        _vars181324_)))
                                                   _args181366_))
                                             (_fold-in181377_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args181366_)))
                                             (_fold-out181379_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args181381_
                                              (let ((__tmp186181
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out181379_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp186181
                                                        _fold-in181377_)))
                                             (_lambda-body181398_
                                              (if (fx> _depth181369_ '1)
                                                  (let ((_r-args181389_
                                                         (map (lambda (_arg181383_)
                                                                (let ((__tmp186186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg181383_)))
                          (declare (not safe))
                          (cons 'ref __tmp186186)))
                      _args181366_))
                (_r-vars181390_
                 (let ((__tmp186187
                        (lambda (_arg181385_ _var181386_ _r181387_)
                          (let ((__tmp186188
                                 (let ((__tmp186189 (cdr _arg181385_)))
                                   (declare (not safe))
                                   (cons __tmp186189 _var181386_))))
                            (declare (not safe))
                            (cons __tmp186188 _r181387_)))))
                   (declare (not safe))
                   (foldr2 __tmp186187
                           _vars181324_
                           _args181366_
                           _fold-in181377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186190
                                                           (let ((__tmp186191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186195
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth181369_ '1)))
                                (__tmp186192
                                 (let ((__tmp186193
                                        (let ((__tmp186194
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out181379_))))
                                          (declare (not safe))
                                          (cons __tmp186194 _r-args181389_))))
                                   (declare (not safe))
                                   (cons _hd181368_ __tmp186193))))
                            (declare (not safe))
                            (cons __tmp186195 __tmp186192))))
                     (declare (not safe))
                     (cons 'splice __tmp186191))))
              (declare (not safe))
              (_recur181321_ __tmp186190 _r-vars181390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars181396_
                                                          (let ((__tmp186182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg181392_ _var181393_ _r181394_)
                           (let ((__tmp186183
                                  (let ((__tmp186184 (cdr _arg181392_)))
                                    (declare (not safe))
                                    (cons __tmp186184 _var181393_))))
                             (declare (not safe))
                             (cons __tmp186183 _r181394_)))))
                    (declare (not safe))
                    (foldr2 __tmp186182
                            _vars181324_
                            _args181366_
                            _fold-in181377_)))
                 (__tmp186185
                  (let ()
                    (declare (not safe))
                    (_recur181321_ _hd181368_ _hd-vars181396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186185
                                                     _fold-out181379_)))))
                                        (let ((__tmp186199
                                               (if (fx> (length _targets181375_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets181375_))
                                                   '#!void))
                                              (__tmp186196
                                               (let ((__tmp186198
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args181381_
                                                         _lambda-body181398_)))
                                                     (__tmp186197
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur181321_
                                                         _iv181367_
                                                         _vars181324_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186198
                                                  __tmp186197
                                                  _targets181375_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186199
                                           __tmp186196))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body181348181359_))
                                  (let ((_hd181352181404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body181348181359_)))
                                        (_tl181353181406_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body181348181359_))))
                                    (let ((_depth181409_ _hd181352181404_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl181353181406_))
                                          (let ((_hd181354181411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl181353181406_)))
                                                (_tl181355181413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl181353181406_))))
                                            (let ((_hd181416_
                                                   _hd181354181411_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl181355181413_))
                                                  (let ((_hd181356181418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl181355181413_)))
                                                        (_tl181357181420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl181355181413_))))
                                                    (let* ((_iv181423_
                                                            _hd181356181418_)
                                                           (_args181425_
                                                            _tl181357181420_))
                                                      (declare (not safe))
                                                      (_K181351181401_
                                                       _args181425_
                                                       _iv181423_
                                                       _hd181416_
                                                       _depth181409_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181350181363_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E181350181363_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E181350181363_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e181342_))
                                _body181339_
                                (let ()
                                  (declare (not safe))
                                  (_BUG181316_ _e181323_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e181325181332_))
                              (let ((_hd181329181430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e181325181332_)))
                                    (_tl181330181432_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e181325181332_))))
                                (let* ((_tag181435_ _hd181329181430_)
                                       (_body181437_ _tl181330181432_))
                                  (declare (not safe))
                                  (_K181328181427_ _body181437_ _tag181435_)))
                              (let ()
                                (declare (not safe))
                                (_E181327181336_))))))))
                 (_parse181088_
                  (lambda (_e181129_)
                    (letrec ((_make-cons181131_
                              (lambda (_hd181306_ _tl181307_)
                                (let ((_g186209_ _hd181306_)
                                      (_g186211_ _tl181307_))
                                  (begin
                                    (let ((_g186210_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186209_)
                                                 (##vector-length _g186209_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186210_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186210_)))
                                    (let ((_g186212_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186211_)
                                                 (##vector-length _g186211_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186212_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186212_)))
                                    (let ((_hd-e181309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186209_ 0)))
                                          (_hd-vars181310_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186209_ 1))))
                                      (let ((_tl-e181311_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186211_ 0)))
                                            (_tl-vars181312_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186211_ 1))))
                                        (values (let ((__tmp186213
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e181309_
                                                               _tl-e181311_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp186213))
                                                (append _hd-vars181310_
                                                        _tl-vars181312_))))))))
                             (_make-splice181132_
                              (lambda (_where181245_
                                       _depth181246_
                                       _hd181247_
                                       _tl181248_)
                                (let ((_g186214_ _hd181247_)
                                      (_g186216_ _tl181248_))
                                  (begin
                                    (let ((_g186215_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186214_)
                                                 (##vector-length _g186214_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186215_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186215_)))
                                    (let ((_g186217_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186216_)
                                                 (##vector-length _g186216_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186217_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186217_)))
                                    (let ((_hd-e181250_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186214_ 0)))
                                          (_hd-vars181251_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186214_ 1))))
                                      (let ((_tl-e181252_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186216_ 0)))
                                            (_tl-vars181253_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186216_ 1))))
                                        (let _lp181255_ ((_rest181257_
                                                          _hd-vars181251_)
                                                         (_targets181258_ '())
                                                         (_vars181259_
                                                          _tl-vars181253_))
                                          (let* ((_rest181260181270_
                                                  _rest181257_)
                                                 (_else181262181278_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets181258_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx181085_
                                                           _where181245_))
                                                        (values (let ((__tmp186218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp186219
                                      (let ((__tmp186220
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e181252_
                                                     _targets181258_))))
                                        (declare (not safe))
                                        (cons _hd-e181250_ __tmp186220))))
                                 (declare (not safe))
                                 (cons _depth181246_ __tmp186219))))
                          (declare (not safe))
                          (cons 'splice __tmp186218))
                        _vars181259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K181264181287_
                                                  (lambda (_rest181281_
                                                           _hd-pat181282_
                                                           _hd-depth*181283_)
                                                    (let ((_hd-depth181285_
                                                           (fx- _hd-depth*181283_
                                                                _depth181246_)))
                                                      (if (fxpositive?
                                                           _hd-depth181285_)
                                                          (let ((__tmp186225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp186226
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat181282_))))
                           (declare (not safe))
                           (cons __tmp186226 _targets181258_)))
                        (__tmp186223
                         (let ((__tmp186224
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth181285_ _hd-pat181282_))))
                           (declare (not safe))
                           (cons __tmp186224 _vars181259_))))
                    (declare (not safe))
                    (_lp181255_ _rest181281_ __tmp186225 __tmp186223))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth181285_))
                      (let ((__tmp186221
                             (let ((__tmp186222
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat181282_))))
                               (declare (not safe))
                               (cons __tmp186222 _targets181258_))))
                        (declare (not safe))
                        (_lp181255_ _rest181281_ __tmp186221 _vars181259_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx181085_
                         _where181245_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest181260181270_))
                                                (let ((_hd181265181290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest181260181270_)))
                                                      (_tl181266181292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest181260181270_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd181265181290_))
                                                      (let ((_hd181267181295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd181265181290_)))
                    (_tl181268181297_
                     (let () (declare (not safe)) (##cdr _hd181265181290_))))
                (let* ((_hd-depth*181300_ _hd181267181295_)
                       (_hd-pat181302_ _tl181268181297_)
                       (_rest181304_ _tl181266181292_))
                  (declare (not safe))
                  (_K181264181287_
                   _rest181304_
                   _hd-pat181302_
                   _hd-depth*181300_)))
              (let () (declare (not safe)) (_else181262181278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else181262181278_)))))))))))
                             (_recur181133_
                              (lambda (_e181138_ _is-e?181139_)
                                (if (_is-e?181139_ _e181138_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx181085_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e181138_))
                                        (let* ((_pat181141_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e181138_)))
                                               (_depth181143_
                                                (##structure-ref
                                                 _pat181141_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth181143_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat181141_))
                                                      (let ((__tmp186242
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth181143_ _pat181141_))))
                (declare (not safe))
                (cons __tmp186242 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat181141_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e181138_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e181138_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e181138_))
                                                (let* ((_e181145181152_
                                                        _e181138_)
                                                       (_E181147181156_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e181145181152_))))
                                                       (_E181146181235_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e181145181152_))
                      (let ((_e181148181160_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e181145181152_))))
                        (let ((_hd181149181163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181148181160_)))
                              (_tl181150181165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181148181160_))))
                          (let* ((_hd181168_ _hd181149181163_)
                                 (_rest181170_ _tl181150181165_))
                            (if '#t
                                (if (_is-e?181139_ _hd181168_)
                                    (let* ((_e181171181178_ _rest181170_)
                                           (_E181173181182_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx181085_
                                                 _e181138_))))
                                           (_E181172181196_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e181171181178_))
                                                  (let ((_e181174181186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e181171181178_))))
                                                    (let ((_hd181175181189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e181174181186_)))
                                                          (_tl181176181191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e181174181186_))))
                                                      (let ((_rest181194_
                                                             _hd181175181189_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl181176181191_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur181133_ _rest181194_ false))
                        (let () (declare (not safe)) (_E181173181182_)))
                    (let () (declare (not safe)) (_E181173181182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181173181182_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E181172181196_)))
                                    (let _lp181200_ ((_rest181202_
                                                      _rest181170_)
                                                     (_depth181203_ '0))
                                      (let* ((_e181204181211_ _rest181202_)
                                             (_E181206181215_
                                              (lambda ()
                                                (if (fxpositive? _depth181203_)
                                                    (let ((__tmp186236
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181133_
                                                              _hd181168_
                                                              _is-e?181139_)))
                                                          (__tmp186235
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181133_
                                                              _rest181202_
                                                              _is-e?181139_))))
                                                      (declare (not safe))
                                                      (_make-splice181132_
                                                       _e181138_
                                                       _depth181203_
                                                       __tmp186236
                                                       __tmp186235))
                                                    (let ((__tmp186234
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181133_
                                                              _hd181168_
                                                              _is-e?181139_)))
                                                          (__tmp186233
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181133_
                                                              _rest181202_
                                                              _is-e?181139_))))
                                                      (declare (not safe))
                                                      (_make-cons181131_
                                                       __tmp186234
                                                       __tmp186233)))))
                                             (_E181205181231_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e181204181211_))
                                                    (let ((_e181207181219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e181204181211_))))
                                                      (let ((_hd181208181222_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e181207181219_)))
                    (_tl181209181224_
                     (let () (declare (not safe)) (##cdr _e181207181219_))))
                (let* ((_rest-hd181227_ _hd181208181222_)
                       (_rest-tl181229_ _tl181209181224_))
                  (if '#t
                      (if (_is-e?181139_ _rest-hd181227_)
                          (let ((__tmp186241
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth181203_ '1))))
                            (declare (not safe))
                            (_lp181200_ _rest-tl181229_ __tmp186241))
                          (if (fxpositive? _depth181203_)
                              (let ((__tmp186240
                                     (let ()
                                       (declare (not safe))
                                       (_recur181133_
                                        _hd181168_
                                        _is-e?181139_)))
                                    (__tmp186239
                                     (let ()
                                       (declare (not safe))
                                       (_recur181133_
                                        _rest181202_
                                        _is-e?181139_))))
                                (declare (not safe))
                                (_make-splice181132_
                                 _e181138_
                                 _depth181203_
                                 __tmp186240
                                 __tmp186239))
                              (let ((__tmp186238
                                     (let ()
                                       (declare (not safe))
                                       (_recur181133_
                                        _hd181168_
                                        _is-e?181139_)))
                                    (__tmp186237
                                     (let ()
                                       (declare (not safe))
                                       (_recur181133_
                                        _rest181202_
                                        _is-e?181139_))))
                                (declare (not safe))
                                (_make-cons181131_ __tmp186238 __tmp186237))))
                      (let () (declare (not safe)) (_E181206181215_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E181206181215_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E181205181231_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E181147181156_))))))
                      (let () (declare (not safe)) (_E181147181156_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181146181235_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e181138_))
                                                    (let ((_g186230_
                                                           (let ((__tmp186232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e181138_)))))
                     (declare (not safe))
                     (_recur181133_ __tmp186232 _is-e?181139_))))
              (begin
                (let ((_g186231_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186230_)
                             (##vector-length _g186230_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186231_ 2)))
                      (error "Context expects 2 values" _g186231_)))
                (let ((_e181239_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186230_ 0)))
                      (_vars181240_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186230_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e181239_))
                          _vars181240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e181138_))
                                                        (let ((_g186227_
                                                               (let ((__tmp186229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e181138_)))))
                         (declare (not safe))
                         (_recur181133_ __tmp186229 _is-e?181139_))))
                  (begin
                    (let ((_g186228_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186227_)
                                 (##vector-length _g186227_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186228_ 2)))
                          (error "Context expects 2 values" _g186228_)))
                    (let ((_e181242_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186227_ 0)))
                          (_vars181243_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186227_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e181242_))
                              _vars181243_))))
                (values (let () (declare (not safe)) (cons 'datum _e181138_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186243_
                             (let ()
                               (declare (not safe))
                               (_recur181133_ _e181129_ gx#ellipsis?))))
                        (begin
                          (let ((_g186244_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186243_)
                                       (##vector-length _g186243_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186244_ 2)))
                                (error "Context expects 2 values" _g186244_)))
                          (let ((_tree181135_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186243_ 0)))
                                (_vars181136_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186243_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars181136_))
                                _tree181135_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx181085_
                                   _vars181136_))))))))))
          (let* ((_e181089181099_ _stx181085_)
                 (_E181091181103_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx181085_))))
                 (_E181090181125_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e181089181099_))
                        (let ((_e181092181107_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e181089181099_))))
                          (let ((_hd181093181110_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181092181107_)))
                                (_tl181094181112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181092181107_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl181094181112_))
                                (let ((_e181095181115_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl181094181112_))))
                                  (let ((_hd181096181118_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e181095181115_)))
                                        (_tl181097181120_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e181095181115_))))
                                    (let ((_form181123_ _hd181096181118_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl181097181120_))
                                          (if '#t
                                              (let ((__tmp186246
                                                     (let ((__tmp186247
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse181088_
                                                               _form181123_))))
                                                       (declare (not safe))
                                                       (_generate181087_
                                                        __tmp186247)))
                                                    (__tmp186245
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx181085_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp186246
                                                 __tmp186245))
                                              (let ()
                                                (declare (not safe))
                                                (_E181091181103_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E181091181103_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181091181103_)))))
                        (let () (declare (not safe)) (_E181091181103_))))))
            (let () (declare (not safe)) (_E181090181125_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx180349_
               _identifier=?180350_
               _unwrap-e180351_
               _wrap-e180352_)
        (letrec ((_generate-bindings180354_
                  (lambda (_target180949_
                           _ids180950_
                           _clauses180951_
                           _clause-ids180952_
                           _E180953_)
                    (letrec ((_generate1180955_
                              (lambda (_clause181052_
                                       _clause-id181053_
                                       _E181054_)
                                (let ((__tmp186252
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id181053_ '())))
                                      (__tmp186248
                                       (let ((__tmp186249
                                              (let ((__tmp186251
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180949_
                                                             '())))
                                                    (__tmp186250
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause180356_
                                                        _target180949_
                                                        _ids180950_
                                                        _clause181052_
                                                        _E181054_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp186251
                                                 __tmp186250))))
                                         (declare (not safe))
                                         (cons __tmp186249 '()))))
                                  (declare (not safe))
                                  (cons __tmp186252 __tmp186248)))))
                      (let _lp180957_ ((_rest180959_ _clauses180951_)
                                       (_rest-ids180960_ _clause-ids180952_)
                                       (_bindings180961_ '()))
                        (let* ((_rest180962180970_ _rest180959_)
                               (_else180964180978_
                                (lambda () _bindings180961_))
                               (_K180966181040_
                                (lambda (_rest180981_ _clause180982_)
                                  (let* ((_rest-ids180983180990_
                                          _rest-ids180960_)
                                         (_E180985180994_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids180983180990_)))
                                         (_K180986181028_
                                          (lambda (_rest-ids180997_
                                                   _clause-id180998_)
                                            (let* ((_rest-ids180999181007_
                                                    _rest-ids180997_)
                                                   (_else181001181015_
                                                    (lambda ()
                                                      (let ((__tmp186253
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1180955_
                        _clause180982_
                        _clause-id180998_
                        _E180953_))))
                (declare (not safe))
                (cons __tmp186253 _bindings180961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K181003181020_
                                                    (lambda (_next-clause-id181018_)
                                                      (let ((__tmp186254
                                                             (let ((__tmp186255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1180955_
                               _clause180982_
                               _clause-id180998_
                               _next-clause-id181018_))))
                       (declare (not safe))
                       (cons __tmp186255 _bindings180961_))))
                (declare (not safe))
                (_lp180957_ _rest180981_ _rest-ids180997_ __tmp186254)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids180999181007_))
                                                  (let* ((_hd181004181023_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids180999181007_)))
                                                         (_next-clause-id181026_
                                                          _hd181004181023_))
                                                    (declare (not safe))
                                                    (_K181003181020_
                                                     _next-clause-id181026_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else181001181015_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids180983180990_))
                                        (let ((_hd180987181031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids180983180990_)))
                                              (_tl180988181033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids180983180990_))))
                                          (let* ((_clause-id181036_
                                                  _hd180987181031_)
                                                 (_rest-ids181038_
                                                  _tl180988181033_))
                                            (declare (not safe))
                                            (_K180986181028_
                                             _rest-ids181038_
                                             _clause-id181036_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180985180994_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest180962180970_))
                              (let ((_hd180967181043_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest180962180970_)))
                                    (_tl180968181045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest180962180970_))))
                                (let* ((_clause181048_ _hd180967181043_)
                                       (_rest181050_ _tl180968181045_))
                                  (declare (not safe))
                                  (_K180966181040_
                                   _rest181050_
                                   _clause181048_)))
                              (let ()
                                (declare (not safe))
                                (_else180964180978_))))))))
                 (_generate-body180355_
                  (lambda (_bindings180909_ _body180910_)
                    (let _recur180912_ ((_rest180914_ _bindings180909_))
                      (let* ((_rest180915180923_ _rest180914_)
                             (_else180917180931_ (lambda () _body180910_))
                             (_K180919180937_
                              (lambda (_rest180934_ _hd180935_)
                                (let ((__tmp186257
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd180935_ '())))
                                      (__tmp186256
                                       (let ()
                                         (declare (not safe))
                                         (_recur180912_ _rest180934_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186257
                                   __tmp186256)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest180915180923_))
                            (let ((_hd180920180940_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest180915180923_)))
                                  (_tl180921180942_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest180915180923_))))
                              (let* ((_hd180945_ _hd180920180940_)
                                     (_rest180947_ _tl180921180942_))
                                (declare (not safe))
                                (_K180919180937_ _rest180947_ _hd180945_)))
                            (let ()
                              (declare (not safe))
                              (_else180917180931_)))))))
                 (_generate-clause180356_
                  (lambda (_target180772_ _ids180773_ _clause180774_ _E180775_)
                    (letrec ((_generate1180777_
                              (lambda (_hd180864_ _fender180865_ _body180866_)
                                (let ((_g186258_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause180358_
                                          _hd180864_
                                          _ids180773_))))
                                  (begin
                                    (let ((_g186259_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186258_)
                                                 (##vector-length _g186258_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186259_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186259_)))
                                    (let ((_e180868_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186258_ 0)))
                                          (_mvars180869_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186258_ 1))))
                                      (let* ((_pvars180871_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars180869_))))
                                             (_E180873_
                                              (let ((__tmp186260
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180772_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E180775_ __tmp186260)))
                                             (_K180906_
                                              (let ((__tmp186261
                                                     (let ((__tmp186263
                                                            (map (lambda (_mvar180875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar180876_)
                           (let* ((_mvar180877180884_ _mvar180875_)
                                  (_E180879180888_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar180877180884_)))
                                  (_K180880180894_
                                   (lambda (_depth180891_ _id180892_)
                                     (let ((__tmp186264
                                            (let ((__tmp186265
                                                   (let ((__tmp186267
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id180892_)))
                                                         (__tmp186266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar180876_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp186267
                                                      __tmp186266
                                                      _depth180891_))))
                                              (declare (not safe))
                                              (cons __tmp186265 '()))))
                                       (declare (not safe))
                                       (cons _id180892_ __tmp186264)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar180877180884_))
                                 (let ((_hd180881180897_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar180877180884_)))
                                       (_tl180882180899_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar180877180884_))))
                                   (let* ((_id180902_ _hd180881180897_)
                                          (_depth180904_ _tl180882180899_))
                                     (declare (not safe))
                                     (_K180880180894_
                                      _depth180904_
                                      _id180902_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E180879180888_)))))
                         _mvars180869_
                         _pvars180871_))
                   (__tmp186262
                    (if (let () (declare (not safe)) (eq? _fender180865_ '#t))
                        _body180866_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender180865_
                           _body180866_
                           _E180873_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186263 __tmp186262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars180871_
                                                 __tmp186261))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match180357_
                                           _hd180864_
                                           _target180772_
                                           _e180868_
                                           _mvars180869_
                                           _K180906_
                                           _E180873_)))))))))
                      (let* ((_e180778180798_ _clause180774_)
                             (_E180787180802_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e180778180798_))))
                             (_E180780180836_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180778180798_))
                                    (let ((_e180788180806_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180778180798_))))
                                      (let ((_hd180789180809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180788180806_)))
                                            (_tl180790180811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180788180806_))))
                                        (let ((_hd180814_ _hd180789180809_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180790180811_))
                                              (let ((_e180791180816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180790180811_))))
                                                (let ((_hd180792180819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180791180816_)))
                                                      (_tl180793180821_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180791180816_))))
                                                  (let ((_fender180824_
                                                         _hd180792180819_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl180793180821_))
                                                        (let ((_e180794180826_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl180793180821_))))
                  (let ((_hd180795180829_
                         (let () (declare (not safe)) (##car _e180794180826_)))
                        (_tl180796180831_
                         (let ()
                           (declare (not safe))
                           (##cdr _e180794180826_))))
                    (let ((_body180834_ _hd180795180829_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl180796180831_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1180777_
                                 _hd180814_
                                 _fender180824_
                                 _body180834_))
                              (let () (declare (not safe)) (_E180787180802_)))
                          (let () (declare (not safe)) (_E180787180802_))))))
                (let () (declare (not safe)) (_E180787180802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E180787180802_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180787180802_)))))
                             (_E180779180860_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180778180798_))
                                    (let ((_e180781180840_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180778180798_))))
                                      (let ((_hd180782180843_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180781180840_)))
                                            (_tl180783180845_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180781180840_))))
                                        (let ((_hd180848_ _hd180782180843_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180783180845_))
                                              (let ((_e180784180850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180783180845_))))
                                                (let ((_hd180785180853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180784180850_)))
                                                      (_tl180786180855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180784180850_))))
                                                  (let ((_body180858_
                                                         _hd180785180853_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl180786180855_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1180777_
                                                               _hd180848_
                                                               '#t
                                                               _body180858_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E180780180836_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E180780180836_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E180780180836_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180780180836_))))))
                        (let () (declare (not safe)) (_E180779180860_))))))
                 (_generate-match180357_
                  (lambda (_where180521_
                           _target180522_
                           _hd180523_
                           _mvars180524_
                           _K180525_
                           _E180526_)
                    (letrec ((_BUG180528_
                              (lambda (_q180770_)
                                (error '"BUG: syntax-case; generate"
                                       _stx180349_
                                       _hd180523_
                                       _q180770_)))
                             (_recur180529_
                              (lambda (_e180620_
                                       _vars180621_
                                       _target180622_
                                       _E180623_
                                       _k180624_)
                                (let* ((_e180625180632_ _e180620_)
                                       (_E180627180636_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e180625180632_)))
                                       (_K180628180758_
                                        (lambda (_body180639_ _tag180640_)
                                          (let ((_$e180642_ _tag180640_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e180642_))
                                                (_k180624_ _vars180621_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e180642_))
                                                    (let ((__tmp186374
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target180622_)))
                                                          (__tmp186370
                                                           (let ((__tmp186372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186373
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e180352_
                                    _body180639_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?180350_
                             __tmp186373
                             _target180622_)))
                         (__tmp186371 (_k180624_ _vars180621_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186372 __tmp186371 _E180623_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186374 __tmp186370 _E180623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e180642_))
                                                        (_k180624_
                                                         (let ((__tmp186369
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body180639_ _target180622_))))
                   (declare (not safe))
                   (cons __tmp186369 _vars180621_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e180642_))
                    (let ((_$e180645_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd180646_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl180647_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186368
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target180622_)))
                            (__tmp186349
                             (let ((__tmp186363
                                    (let ((__tmp186364
                                           (let ((__tmp186367
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e180645_ '())))
                                                 (__tmp186365
                                                  (let ((__tmp186366
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e180351_
                                                            _target180622_))))
                                                    (declare (not safe))
                                                    (cons __tmp186366 '()))))
                                             (declare (not safe))
                                             (cons __tmp186367 __tmp186365))))
                                      (declare (not safe))
                                      (cons __tmp186364 '())))
                                   (__tmp186350
                                    (let ((__tmp186353
                                           (let ((__tmp186359
                                                  (let ((__tmp186362
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd180646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp186360
                 (let ((__tmp186361
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e180645_))))
                   (declare (not safe))
                   (cons __tmp186361 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186362
                                                          __tmp186360)))
                                                 (__tmp186354
                                                  (let ((__tmp186355
                                                         (let ((__tmp186358
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl180647_ '())))
                       (__tmp186356
                        (let ((__tmp186357
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e180645_))))
                          (declare (not safe))
                          (cons __tmp186357 '()))))
                   (declare (not safe))
                   (cons __tmp186358 __tmp186356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186355 '()))))
                                             (declare (not safe))
                                             (cons __tmp186359 __tmp186354)))
                                          (__tmp186351
                                           (let* ((_body180648180655_
                                                   _body180639_)
                                                  (_E180650180659_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body180648180655_)))
                                                  (_K180651180667_
                                                   (lambda (_tl180662_
                                                            _hd180663_)
                                                     (let ((__tmp186352
                                                            (lambda (_vars180665_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur180529_
                         _tl180662_
                         _vars180665_
                         _$tl180647_
                         _E180623_
                         _k180624_)))))
               (declare (not safe))
               (_recur180529_
                _hd180663_
                _vars180621_
                _$hd180646_
                _E180623_
                __tmp186352)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body180648180655_))
                                                 (let ((_hd180652180670_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body180648180655_)))
                                                       (_tl180653180672_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body180648180655_))))
                                                   (let* ((_hd180675_
                                                           _hd180652180670_)
                                                          (_tl180677_
                                                           _tl180653180672_))
                                                     (declare (not safe))
                                                     (_K180651180667_
                                                      _tl180677_
                                                      _hd180675_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E180650180659_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186353
                                       __tmp186351))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186363
                                __tmp186350))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp186368 __tmp186349 _E180623_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e180642_))
                        (let* ((_body180678180685_ _body180639_)
                               (_E180680180689_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body180678180685_)))
                               (_K180681180740_
                                (lambda (_tl180692_ _hd180693_)
                                  (let* ((_rlen180695_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen180530_ _tl180692_)))
                                         (_$target180697_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd180699_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl180701_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp180703_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e180705_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd180707_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl180709_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars180711_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars180531_ _hd180693_)))
                                         (_lvars180713_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180711_)))
                                         (_tlvars180715_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180711_)))
                                         (_linit180719_
                                          (map (lambda (_var180717_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars180713_)))
                                    (letrec ((_make-loop180722_
                                              (lambda (_vars180726_)
                                                (let ((__tmp186300
                                                       (let ((__tmp186301
                                                              (let ((__tmp186337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp180703_ '())))
                            (__tmp186302
                             (let ((__tmp186303
                                    (let ((__tmp186336
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd180699_ _lvars180713_)))
                                          (__tmp186304
                                           (let ((__tmp186335
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd180699_)))
                                                 (__tmp186313
                                                  (let ((__tmp186330
                                                         (let ((__tmp186331
                                                                (let ((__tmp186334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e180705_ '())))
                              (__tmp186332
                               (let ((__tmp186333
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e180351_
                                         _$hd180699_))))
                                 (declare (not safe))
                                 (cons __tmp186333 '()))))
                          (declare (not safe))
                          (cons __tmp186334 __tmp186332))))
                   (declare (not safe))
                   (cons __tmp186331 '())))
                (__tmp186314
                 (let ((__tmp186320
                        (let ((__tmp186326
                               (let ((__tmp186329
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd180707_ '())))
                                     (__tmp186327
                                      (let ((__tmp186328
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e180705_))))
                                        (declare (not safe))
                                        (cons __tmp186328 '()))))
                                 (declare (not safe))
                                 (cons __tmp186329 __tmp186327)))
                              (__tmp186321
                               (let ((__tmp186322
                                      (let ((__tmp186325
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl180709_ '())))
                                            (__tmp186323
                                             (let ((__tmp186324
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e180705_))))
                                               (declare (not safe))
                                               (cons __tmp186324 '()))))
                                        (declare (not safe))
                                        (cons __tmp186325 __tmp186323))))
                                 (declare (not safe))
                                 (cons __tmp186322 '()))))
                          (declare (not safe))
                          (cons __tmp186326 __tmp186321)))
                       (__tmp186315
                        (let ((__tmp186316
                               (lambda (_hdvars180728_)
                                 (let ((__tmp186317
                                        (let ((__tmp186318
                                               (map (lambda (_svar180730_
                                                             _lvar180731_)
                                                      (let ((__tmp186319
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar180730_ _hdvars180728_ _BUG180528_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp186319 _lvar180731_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars180711_
                                                    _lvars180713_)))
                                          (declare (not safe))
                                          (cons _$lp-tl180709_ __tmp186318))))
                                   (declare (not safe))
                                   (cons _$lp180703_ __tmp186317)))))
                          (declare (not safe))
                          (_recur180529_
                           _hd180693_
                           '()
                           _$lp-hd180707_
                           _E180623_
                           __tmp186316))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp186320 __tmp186315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186330
                                                     __tmp186314)))
                                                 (__tmp186305
                                                  (let ((__tmp186309
                                                         (map (lambda (_lvar180733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar180734_)
                        (let ((__tmp186312
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar180734_ '())))
                              (__tmp186310
                               (let ((__tmp186311
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar180733_))))
                                 (declare (not safe))
                                 (cons __tmp186311 '()))))
                          (declare (not safe))
                          (cons __tmp186312 __tmp186310)))
                      _lvars180713_
                      _tlvars180715_))
                (__tmp186306
                 (_k180624_
                  (let ((__tmp186307
                         (lambda (_svar180736_ _tlvar180737_ _r180738_)
                           (let ((__tmp186308
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar180736_ _tlvar180737_))))
                             (declare (not safe))
                             (cons __tmp186308 _r180738_)))))
                    (declare (not safe))
                    (foldl2 __tmp186307
                            _vars180726_
                            _svars180711_
                            _tlvars180715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186309
                                                     __tmp186306))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp186335
                                              __tmp186313
                                              __tmp186305))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp186336
                                       __tmp186304))))
                               (declare (not safe))
                               (cons __tmp186303 '()))))
                        (declare (not safe))
                        (cons __tmp186337 __tmp186302))))
                 (declare (not safe))
                 (cons __tmp186301 '())))
              (__tmp186298
               (let ((__tmp186299
                      (let ()
                        (declare (not safe))
                        (cons _$target180697_ _linit180719_))))
                 (declare (not safe))
                 (cons _$lp180703_ __tmp186299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186300
                                                   __tmp186298)))))
                                      (let ((_body180724_
                                             (let ((__tmp186339
                                                    (let ((__tmp186340
                                                           (let ((__tmp186343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186344
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl180701_ '()))))
                            (declare (not safe))
                            (cons _$target180697_ __tmp186344)))
                         (__tmp186341
                          (let ((__tmp186342
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target180622_
                                    _rlen180695_))))
                            (declare (not safe))
                            (cons __tmp186342 '()))))
                     (declare (not safe))
                     (cons __tmp186343 __tmp186341))))
              (declare (not safe))
              (cons __tmp186340 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186338
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180529_
                                                       _tl180692_
                                                       _vars180621_
                                                       _$tl180701_
                                                       _E180623_
                                                       _make-loop180722_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186339
                                                __tmp186338))))
                                        (let ((__tmp186348
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target180622_)))
                                              (__tmp186345
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen180695_))
                                                   _body180724_
                                                   (let ((__tmp186346
                                                          (let ((__tmp186347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target180622_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186347 _rlen180695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186346
                                                      _body180724_
                                                      _E180623_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186348
                                           __tmp186345
                                           _E180623_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body180678180685_))
                              (let ((_hd180682180743_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body180678180685_)))
                                    (_tl180683180745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body180678180685_))))
                                (let* ((_hd180748_ _hd180682180743_)
                                       (_tl180750_ _tl180683180745_))
                                  (declare (not safe))
                                  (_K180681180740_ _tl180750_ _hd180748_)))
                              (let () (declare (not safe)) (_E180680180689_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e180642_))
                            (let ((__tmp186297
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target180622_)))
                                  (__tmp186296 (_k180624_ _vars180621_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186297
                               __tmp186296
                               _E180623_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e180642_))
                                (let ((_$e180752_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186295
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target180622_)))
                                        (__tmp186287
                                         (let ((__tmp186289
                                                (let ((__tmp186290
                                                       (let ((__tmp186294
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e180752_ '())))
                     (__tmp186291
                      (let ((__tmp186292
                             (let ((__tmp186293
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e180351_
                                       _target180622_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp186293))))
                        (declare (not safe))
                        (cons __tmp186292 '()))))
                 (declare (not safe))
                 (cons __tmp186294 __tmp186291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp186290 '())))
                                               (__tmp186288
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur180529_
                                                   _body180639_
                                                   _vars180621_
                                                   _$e180752_
                                                   _E180623_
                                                   _k180624_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186289
                                            __tmp186288))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186295
                                     __tmp186287
                                     _E180623_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e180642_))
                                    (let ((_$e180754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186286
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target180622_)))
                                            (__tmp186278
                                             (let ((__tmp186280
                                                    (let ((__tmp186281
                                                           (let ((__tmp186285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e180754_ '())))
                         (__tmp186282
                          (let ((__tmp186283
                                 (let ((__tmp186284
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e180351_
                                           _target180622_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp186284))))
                            (declare (not safe))
                            (cons __tmp186283 '()))))
                     (declare (not safe))
                     (cons __tmp186285 __tmp186282))))
              (declare (not safe))
              (cons __tmp186281 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186279
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180529_
                                                       _body180639_
                                                       _vars180621_
                                                       _$e180754_
                                                       _E180623_
                                                       _k180624_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186280
                                                __tmp186279))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186286
                                         __tmp186278
                                         _E180623_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180642_))
                                        (let ((_$e180756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186277
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target180622_)))
                                                (__tmp186268
                                                 (let ((__tmp186272
                                                        (let ((__tmp186273
                                                               (let ((__tmp186276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e180756_ '())))
                             (__tmp186274
                              (let ((__tmp186275
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target180622_))))
                                (declare (not safe))
                                (cons __tmp186275 '()))))
                         (declare (not safe))
                         (cons __tmp186276 __tmp186274))))
                  (declare (not safe))
                  (cons __tmp186273 '())))
               (__tmp186269
                (let ((__tmp186271
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e180756_ _body180639_)))
                      (__tmp186270 (_k180624_ _vars180621_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186271 __tmp186270 _E180623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186272
                                                    __tmp186269))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186277
                                             __tmp186268
                                             _E180623_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG180528_ _e180620_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e180625180632_))
                                      (let ((_hd180629180761_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180625180632_)))
                                            (_tl180630180763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180625180632_))))
                                        (let* ((_tag180766_ _hd180629180761_)
                                               (_body180768_ _tl180630180763_))
                                          (declare (not safe))
                                          (_K180628180758_
                                           _body180768_
                                           _tag180766_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180627180636_))))))
                             (_splice-rlen180530_
                              (lambda (_e180582_)
                                (let _lp180584_ ((_e180586_ _e180582_)
                                                 (_n180587_ '0))
                                  (let* ((_e180588180595_ _e180586_)
                                         (_E180590180599_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180588180595_)))
                                         (_K180591180608_
                                          (lambda (_body180602_ _tag180603_)
                                            (let ((_$e180605_ _tag180603_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e180605_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx180349_
                                                     _where180521_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e180605_))
                                                      (let ((__tmp186376
                                                             (cdr _body180602_))
                                                            (__tmp186375
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n180587_ '1))))
                (declare (not safe))
                (_lp180584_ __tmp186376 __tmp186375))
              _n180587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180588180595_))
                                        (let ((_hd180592180611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180588180595_)))
                                              (_tl180593180613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180588180595_))))
                                          (let* ((_tag180616_ _hd180592180611_)
                                                 (_body180618_
                                                  _tl180593180613_))
                                            (declare (not safe))
                                            (_K180591180608_
                                             _body180618_
                                             _tag180616_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180590180599_)))))))
                             (_splice-vars180531_
                              (lambda (_e180538_)
                                (let _recur180540_ ((_e180542_ _e180538_)
                                                    (_vars180543_ '()))
                                  (let* ((_e180544180551_ _e180542_)
                                         (_E180546180555_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180544180551_)))
                                         (_K180547180570_
                                          (lambda (_body180558_ _tag180559_)
                                            (let ((_$e180561_ _tag180559_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e180561_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body180558_
                                                          _vars180543_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e180561_))
                  (let () (declare (not safe)) (eq? 'splice _$e180561_)))
              (let ((__tmp186379 (cdr _body180558_))
                    (__tmp186377
                     (let ((__tmp186378 (car _body180558_)))
                       (declare (not safe))
                       (_recur180540_ __tmp186378 _vars180543_))))
                (declare (not safe))
                (_recur180540_ __tmp186379 __tmp186377))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e180561_))
                      (let () (declare (not safe)) (eq? 'box _$e180561_)))
                  (let ()
                    (declare (not safe))
                    (_recur180540_ _body180558_ _vars180543_))
                  _vars180543_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180544180551_))
                                        (let ((_hd180548180573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180544180551_)))
                                              (_tl180549180575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180544180551_))))
                                          (let* ((_tag180578_ _hd180548180573_)
                                                 (_body180580_
                                                  _tl180549180575_))
                                            (declare (not safe))
                                            (_K180547180570_
                                             _body180580_
                                             _tag180578_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180546180555_)))))))
                             (_make-body180532_
                              (lambda (_vars180534_)
                                (let ((__tmp186380
                                       (map (lambda (_mvar180536_)
                                              (let ((__tmp186381
                                                     (car _mvar180536_)))
                                                (declare (not safe))
                                                (assgetq __tmp186381
                                                         _vars180534_
                                                         _BUG180528_)))
                                            _mvars180524_)))
                                  (declare (not safe))
                                  (cons _K180525_ __tmp186380)))))
                      (let ()
                        (declare (not safe))
                        (_recur180529_
                         _hd180523_
                         '()
                         _target180522_
                         _E180526_
                         _make-body180532_)))))
                 (_parse-clause180358_
                  (lambda (_hd180427_ _ids180428_)
                    (let _recur180430_ ((_e180432_ _hd180427_)
                                        (_vars180433_ '())
                                        (_depth180434_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e180432_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e180432_))
                              (values '(any) _vars180433_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e180432_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx180349_
                                     _hd180427_))
                                  (if (let ((__tmp186397
                                             (lambda (_id180436_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e180432_
                                                  _id180436_)))))
                                        (declare (not safe))
                                        (find __tmp186397 _ids180428_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e180432_))
                                              _vars180433_)
                                      (if (let ((__tmp186395
                                                 (lambda (_var180438_)
                                                   (let ((__tmp186396
                                                          (car _var180438_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e180432_
                                                      __tmp186396)))))
                                            (declare (not safe))
                                            (find __tmp186395 _vars180433_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx180349_
                                             _e180432_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e180432_))
                                                  (let ((__tmp186394
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e180432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth180434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186394
                                                          _vars180433_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e180432_))
                              (let* ((_e180439180446_ _e180432_)
                                     (_E180441180450_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e180439180446_))))
                                     (_E180440180511_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e180439180446_))
                                            (let ((_e180442180454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e180439180446_))))
                                              (let ((_hd180443180457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e180442180454_)))
                                                    (_tl180444180459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e180442180454_))))
                                                (let* ((_hd180462_
                                                        _hd180443180457_)
                                                       (_rest180464_
                                                        _tl180444180459_))
                                                  (if '#t
                                                      (let* ((_make-pair180479_
                                                              (lambda (_tag180466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd180467_
                               _tl180468_)
                        (let* ((_hd-depth180470_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag180466_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth180434_ '1))
                                    _depth180434_))
                               (_g186389_
                                (let ()
                                  (declare (not safe))
                                  (_recur180430_
                                   _hd180467_
                                   _vars180433_
                                   _hd-depth180470_))))
                          (begin
                            (let ((_g186390_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186389_)
                                         (##vector-length _g186389_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186390_ 2)))
                                  (error "Context expects 2 values"
                                         _g186390_)))
                            (let ((_hd180472_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186389_ 0)))
                                  (_vars180473_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186389_ 1))))
                              (let ((_g186391_
                                     (let ()
                                       (declare (not safe))
                                       (_recur180430_
                                        _tl180468_
                                        _vars180473_
                                        _depth180434_))))
                                (begin
                                  (let ((_g186392_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g186391_)
                                               (##vector-length _g186391_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g186392_ 2)))
                                        (error "Context expects 2 values"
                                               _g186392_)))
                                  (let ((_tl180475_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186391_ 0)))
                                        (_vars180476_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186391_ 1))))
                                    (let ()
                                      (values (let ((__tmp186393
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd180472_
                                                             _tl180475_))))
                                                (declare (not safe))
                                                (cons _tag180466_ __tmp186393))
                                              _vars180476_))))))))))
                     (_e180480180487_ _rest180464_)
                     (_E180482180491_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair180479_ 'cons _hd180462_ _rest180464_))))
                     (_E180481180507_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e180480180487_))
                            (let ((_e180483180495_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e180480180487_))))
                              (let ((_hd180484180498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180483180495_)))
                                    (_tl180485180500_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180483180495_))))
                                (let* ((_rest-hd180503_ _hd180484180498_)
                                       (_rest-tl180505_ _tl180485180500_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd180503_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180479_
                                             'splice
                                             _hd180462_
                                             _rest-tl180505_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180479_
                                             'cons
                                             _hd180462_
                                             _rest180464_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180482180491_))))))
                            (let () (declare (not safe)) (_E180482180491_))))))
                (let () (declare (not safe)) (_E180481180507_)))
              (let () (declare (not safe)) (_E180441180450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E180441180450_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180440180511_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e180432_))
                                  (values '(null) _vars180433_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e180432_))
                                      (let ((_g186386_
                                             (let ((__tmp186388
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e180432_)))))
                                               (declare (not safe))
                                               (_recur180430_
                                                __tmp186388
                                                _vars180433_
                                                _depth180434_))))
                                        (begin
                                          (let ((_g186387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186386_)
                                                       (##vector-length
                                                        _g186386_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186387_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186387_)))
                                          (let ((_e180515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g186386_ 0)))
                                                (_vars180516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g186386_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e180515_))
                                                    _vars180516_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e180432_))
                                          (let ((_g186383_
                                                 (let ((__tmp186385
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e180432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur180430_
                                                    __tmp186385
                                                    _vars180433_
                                                    _depth180434_))))
                                            (begin
                                              (let ((_g186384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186383_)
                                                           (##vector-length
                                                            _g186383_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186384_)))
                                              (let ((_e180518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186383_
                                                        0)))
                                                    (_vars180519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186383_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e180518_))
                                                        _vars180519_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e180432_))
                                              (values (let ((__tmp186382
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e180432_))))
                (declare (not safe))
                (cons 'datum __tmp186382))
              _vars180433_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx180349_
                                                 _e180432_))))))))))))
          (let* ((_e180359180372_ _stx180349_)
                 (_E180361180376_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e180359180372_))))
                 (_E180360180423_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e180359180372_))
                        (let ((_e180362180380_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e180359180372_))))
                          (let ((_hd180363180383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180362180380_)))
                                (_tl180364180385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180362180380_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl180364180385_))
                                (let ((_e180365180388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl180364180385_))))
                                  (let ((_hd180366180391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e180365180388_)))
                                        (_tl180367180393_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e180365180388_))))
                                    (let ((_expr180396_ _hd180366180391_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl180367180393_))
                                          (let ((_e180368180398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl180367180393_))))
                                            (let ((_hd180369180401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e180368180398_)))
                                                  (_tl180370180403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e180368180398_))))
                                              (let* ((_ids180406_
                                                      _hd180369180401_)
                                                     (_clauses180408_
                                                      _tl180370180403_))
                                                (if '#t
                                                    (if (let ((__tmp186415
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids180406_))))
                  (declare (not safe))
                  (not __tmp186415))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx180349_
                   _ids180406_))
                (if (let ((__tmp186414
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses180408_))))
                      (declare (not safe))
                      (not __tmp186414))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx180349_))
                    (let* ((_ids180410_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids180406_)))
                           (_clauses180412_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses180408_)))
                           (_clause-ids180414_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses180412_)))
                           (_E180416_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target180418_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first180420_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses180412_))
                                _E180416_
                                (car _clause-ids180414_))))
                      (let ((__tmp186399
                             (let ((__tmp186400
                                    (let ((__tmp186402
                                           (let ((__tmp186407
                                                  (let ((__tmp186408
                                                         (let ((__tmp186413
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E180416_ '())))
                       (__tmp186409
                        (let ((__tmp186410
                               (let ((__tmp186412
                                      (let ()
                                        (declare (not safe))
                                        (cons _target180418_ '())))
                                     (__tmp186411
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target180418_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp186412
                                  __tmp186411))))
                          (declare (not safe))
                          (cons __tmp186410 '()))))
                   (declare (not safe))
                   (cons __tmp186413 __tmp186409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186408 '())))
                                                 (__tmp186403
                                                  (let ((__tmp186406
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings180354_
                                                            _target180418_
                                                            _ids180410_
                                                            _clauses180412_
                                                            _clause-ids180414_
                                                            _E180416_)))
                                                        (__tmp186404
                                                         (let ((__tmp186405
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr180396_ '()))))
                   (declare (not safe))
                   (cons _first180420_ __tmp186405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body180355_
                                                     __tmp186406
                                                     __tmp186404))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp186407
                                              __tmp186403)))
                                          (__tmp186401
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx180349_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp186402
                                       __tmp186401))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp186400)))
                            (__tmp186398
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx180349_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp186399 __tmp186398)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180361180376_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180361180376_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180361180376_)))))
                        (let () (declare (not safe)) (_E180361180376_))))))
            (let () (declare (not safe)) (_E180360180423_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx181059_)
        (let* ((_identifier=?181061_ 'free-identifier=?)
               (_unwrap-e181063_ 'syntax-e)
               (_wrap-e181065_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181059_
           _identifier=?181061_
           _unwrap-e181063_
           _wrap-e181065_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx181067_ _identifier=?181068_)
        (let* ((_unwrap-e181070_ 'syntax-e) (_wrap-e181072_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181067_
           _identifier=?181068_
           _unwrap-e181070_
           _wrap-e181072_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx181074_ _identifier=?181075_ _unwrap-e181076_)
        (let ((_wrap-e181078_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181074_
           _identifier=?181075_
           _unwrap-e181076_
           _wrap-e181078_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186417_
        (let ((_g186416_ (let () (declare (not safe)) (##length _g186417_))))
          (cond ((let () (declare (not safe)) (##fx= _g186416_ 1))
                 (apply (lambda (_stx181059_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx181059_)))
                        _g186417_))
                ((let () (declare (not safe)) (##fx= _g186416_ 2))
                 (apply (lambda (_stx181067_ _identifier=?181068_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx181067_
                             _identifier=?181068_)))
                        _g186417_))
                ((let () (declare (not safe)) (##fx= _g186416_ 3))
                 (apply (lambda (_stx181074_
                                 _identifier=?181075_
                                 _unwrap-e181076_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx181074_
                             _identifier=?181075_
                             _unwrap-e181076_)))
                        _g186417_))
                ((let () (declare (not safe)) (##fx= _g186416_ 4))
                 (apply (lambda (_stx181080_
                                 _identifier=?181081_
                                 _unwrap-e181082_
                                 _wrap-e181083_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx181080_
                             _identifier=?181081_
                             _unwrap-e181082_
                             _wrap-e181083_)))
                        _g186417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186417_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx180346_)
        (if (let () (declare (not safe)) (gx#identifier? _stx180346_))
            (let ((__tmp186418
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx180346_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186418 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd180304_ . _rest180305_)
        (let ((_len180307_ (length _hd180304_)))
          (let _lp180309_ ((_rest180311_ _rest180305_))
            (let* ((_rest180312180320_ _rest180311_)
                   (_else180314180328_ (lambda () '#!void))
                   (_K180316180334_
                    (lambda (_rest180331_ _hd180332_)
                      (if (fx= _len180307_ (length _hd180332_))
                          (let ()
                            (declare (not safe))
                            (_lp180309_ _rest180331_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd180332_))))))
              (if (let () (declare (not safe)) (##pair? _rest180312180320_))
                  (let ((_hd180317180337_
                         (let ()
                           (declare (not safe))
                           (##car _rest180312180320_)))
                        (_tl180318180339_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest180312180320_))))
                    (let* ((_hd180342_ _hd180317180337_)
                           (_rest180344_ _tl180318180339_))
                      (declare (not safe))
                      (_K180316180334_ _rest180344_ _hd180342_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx180262_ _n180263_)
        (let _lp180265_ ((_rest180267_ _stx180262_) (_r180268_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest180267_))
              (let* ((_g180269180276_
                      (let () (declare (not safe)) (gx#syntax-e _rest180267_)))
                     (_E180271180280_
                      (lambda ()
                        (error '"No clause matching" _g180269180276_)))
                     (_K180272180286_
                      (lambda (_rest180283_ _hd180284_)
                        (let ((__tmp186423
                               (let ()
                                 (declare (not safe))
                                 (cons _hd180284_ _r180268_))))
                          (declare (not safe))
                          (_lp180265_ _rest180283_ __tmp186423)))))
                (if (let () (declare (not safe)) (##pair? _g180269180276_))
                    (let ((_hd180273180289_
                           (let ()
                             (declare (not safe))
                             (##car _g180269180276_)))
                          (_tl180274180291_
                           (let ()
                             (declare (not safe))
                             (##cdr _g180269180276_))))
                      (let* ((_hd180294_ _hd180273180289_)
                             (_rest180296_ _tl180274180291_))
                        (declare (not safe))
                        (_K180272180286_ _rest180296_ _hd180294_)))
                    (let () (declare (not safe)) (_E180271180280_))))
              (let _lp180298_ ((_n180300_ _n180263_)
                               (_l180301_ _r180268_)
                               (_r180302_ _rest180267_))
                (if (let () (declare (not safe)) (null? _l180301_))
                    (values _l180301_ _r180302_)
                    (if (fxpositive? _n180300_)
                        (let ((__tmp186422
                               (let ()
                                 (declare (not safe))
                                 (fx- _n180300_ '1)))
                              (__tmp186421 (cdr _l180301_))
                              (__tmp186419
                               (let ((__tmp186420 (car _l180301_)))
                                 (declare (not safe))
                                 (cons __tmp186420 _r180302_))))
                          (declare (not safe))
                          (_lp180298_ __tmp186422 __tmp186421 __tmp186419))
                        (values (reverse _l180301_) _r180302_))))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args9909_
      (apply make-struct-instance gx#module-import::t _$args9909_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args9906_
      (apply make-struct-instance gx#module-export::t _$args9906_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args9903_
      (apply make-struct-instance gx#import-set::t _$args9903_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args9900_
      (apply make-struct-instance gx#export-set::t _$args9900_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args9897_
      (apply make-struct-instance gx#import-expander::t _$args9897_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args9894_
      (apply make-struct-instance gx#export-expander::t _$args9894_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self9888_ _id9889_ _super9890_ _ns9891_ _path9892_)
      (direct-struct-instance-init!
       _self9888_
       _id9889_
       (make-hash-table-eq)
       _super9890_
       '#f
       '#f
       _ns9891_
       _path9892_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda9852
      (lambda (_self9854_ _ctx9855_ _root9856_)
        (let ((_super9864_
               (let ((_$e9858_ _root9856_))
                 (if _$e9858_
                     _$e9858_
                     (let ((_$e9861_ (gx#core-context-root__0)))
                       (if _$e9861_
                           _$e9861_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx9855_
              (let ((_id9867_
                     (##structure-ref _ctx9855_ '1 gx#expander-context::t '#f))
                    (_path9868_
                     (##structure-ref _ctx9855_ '7 gx#module-context::t '#f))
                    (_in9869_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx9855_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e9870_ (make-promise
                              (lambda () (gx#eval-module _ctx9855_)))))
                (begin
                  (direct-struct-instance-init!
                   _self9854_
                   _id9867_
                   (make-hash-table-eq)
                   _super9864_
                   '#f
                   '#f
                   _path9868_
                   _in9869_
                   _e9870_)
                  (for-each
                   (lambda (_g98719873_)
                     (gx#core-bind-weak-import!__opt-lambda9377
                      _g98719873_
                      _self9854_))
                   _in9869_)))
              (direct-struct-instance-init!
               _self9854_
               '#f
               (make-hash-table-eq)
               _super9864_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self9879_ _ctx9880_)
          (let ((_root9882_ '#f))
            (gx#prelude-context:::init!__opt-lambda9852
             _self9879_
             _ctx9880_
             _root9882_))))
      (define gx#prelude-context:::init!
        (lambda _g9916_
          (let ((_g9915_ (length _g9916_)))
            (cond ((fx= _g9915_ 2)
                   (apply (lambda (_self9879_ _ctx9880_)
                            (gx#prelude-context:::init!__0
                             _self9879_
                             _ctx9880_))
                          _g9916_))
                  ((fx= _g9915_ 3)
                   (apply (lambda (_self9884_ _ctx9885_ _root9886_)
                            (gx#prelude-context:::init!__opt-lambda9852
                             _self9884_
                             _ctx9885_
                             _root9886_))
                          _g9916_))
                  (else (error "No clause matching arguments" _g9916_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self9850_ _e9851_)
      (direct-struct-instance-init!
       _self9850_
       _e9851_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self9847_ _e9848_)
      (direct-struct-instance-init!
       _self9847_
       _e9848_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g98399842_ _g98409844_)
      (gx#core-apply-user-expander__opt-lambda3399
       _g98399842_
       _g98409844_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g98329835_ _g98339837_)
      (gx#core-apply-user-expander__opt-lambda3399
       _g98329835_
       _g98339837_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx9826_)
      (let ((_path9828_
             (##structure-ref _ctx9826_ '7 gx#module-context::t '#f)))
        (let ((_path9830_
               (if (pair? _path9828_) (last _path9828_) _path9828_)))
          (let () (if (string? _path9830_) _path9830_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda9800
      (lambda (_path9802_ _reload?9803_ _eval?9804_)
        (let ((_ctx9806_
               ((gx#current-expander-module-import) _path9802_ _reload?9803_)))
          (begin
            (if (if _ctx9806_ _eval?9804_ '#f)
                (gx#eval-module _ctx9806_)
                '#!void)
            _ctx9806_))))
    (begin
      (define gx#import-module__0
        (lambda (_path9811_)
          (let ((_reload?9813_ '#f))
            (let ((_eval?9815_ '#f))
              (gx#import-module__opt-lambda9800
               _path9811_
               _reload?9813_
               _eval?9815_)))))
      (define gx#import-module__1
        (lambda (_path9817_ _reload?9818_)
          (let ((_eval?9820_ '#f))
            (gx#import-module__opt-lambda9800
             _path9817_
             _reload?9818_
             _eval?9820_))))
      (define gx#import-module
        (lambda _g9918_
          (let ((_g9917_ (length _g9918_)))
            (cond ((fx= _g9917_ 1)
                   (apply (lambda (_path9811_)
                            (gx#import-module__0 _path9811_))
                          _g9918_))
                  ((fx= _g9917_ 2)
                   (apply (lambda (_path9817_ _reload?9818_)
                            (gx#import-module__1 _path9817_ _reload?9818_))
                          _g9918_))
                  ((fx= _g9917_ 3)
                   (apply (lambda (_path9822_ _reload?9823_ _eval?9824_)
                            (gx#import-module__opt-lambda9800
                             _path9822_
                             _reload?9823_
                             _eval?9824_))
                          _g9918_))
                  (else (error "No clause matching arguments" _g9918_))))))))
  (define gx#eval-module
    (lambda (_mod9799_) ((gx#current-expander-module-eval) _mod9799_)))
  (define gx#core-eval-module
    (lambda (_obj9784_)
      (let ((_force-e9786_
             (lambda (_getf9795_ _e9796_)
               (call-with-parameters
                (lambda () (force (_getf9795_ _e9796_)))
                gx#current-expander-context
                _e9796_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur9788_
                   (lambda (_e9790_)
                     (if (##structure-instance-of?
                          _e9790_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e9792_
                                  (gx#core-context-prelude__opt-lambda9765
                                   _e9790_)))
                             (if _$e9792_ (_recur9788_ _$e9792_) '#!void))
                           (_force-e9786_ gx#module-context-e _e9790_))
                         (if (##structure-instance-of?
                              _e9790_
                              'gx#prelude-context::t)
                             (_force-e9786_ gx#prelude-context-e _e9790_)
                             (if (gx#stx-string? _e9790_)
                                 (_recur9788_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e9790_)))
                                 (if (gx#core-library-module-path? _e9790_)
                                     (_recur9788_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e9790_)))
                                     (error '"Cannot eval module"
                                            _obj9784_))))))))
           _recur9788_)
         _obj9784_))))
  (begin
    (define gx#core-context-prelude__opt-lambda9765
      (lambda (_ctx9767_)
        ((letrec ((_lp9769_
                   (lambda (_e9771_)
                     (if (let ((_$e9773_
                                (##structure-instance-of?
                                 _e9771_
                                 'gx#module-context::t)))
                           (if _$e9773_
                               _$e9773_
                               (##structure-instance-of?
                                _e9771_
                                'gx#local-context::t)))
                         (_lp9769_
                          (##structure-ref _e9771_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e9771_
                              'gx#prelude-context::t)
                             _e9771_
                             '#f)))))
           _lp9769_)
         _ctx9767_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx9780_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda9765 _ctx9780_))))
      (define gx#core-context-prelude
        (lambda _g9920_
          (let ((_g9919_ (length _g9920_)))
            (cond ((fx= _g9919_ 0)
                   (apply (lambda () (gx#core-context-prelude__0)) _g9920_))
                  ((fx= _g9919_ 1)
                   (apply (lambda (_ctx9782_)
                            (gx#core-context-prelude__opt-lambda9765
                             _ctx9782_))
                          _g9920_))
                  (else (error "No clause matching arguments" _g9920_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx9757_)
      (let ((_ht9759_ (gx#current-expander-module-registry)))
        (let ((_$e9761_ (hash-get _ht9759_ _ctx9757_)))
          (if _$e9761_
              (values _$e9761_)
              (let ((_pre9764_
                     (let ((__obj9911 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj9911 _ctx9757_)
                         __obj9911))))
                (begin
                  (hash-put! _ht9759_ _ctx9757_ _pre9764_)
                  _pre9764_)))))))
  (begin
    (define gx#core-import-module__opt-lambda9709
      (lambda (_rpath9711_ _reload?9712_)
        (let ((_import-source9714_
               (lambda (_path9726_)
                 (begin
                   (if (member _path9726_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path9726_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g9921_ (gx#core-read-module _path9726_)))
                        (begin
                          (let ((_g9922_ (values-count _g9921_)))
                            (if (not (fx= _g9922_ 4))
                                (error "Context expects 4 values" _g9922_)))
                          (let ((_pre9729_ (values-ref _g9921_ 0))
                                (_id9730_ (values-ref _g9921_ 1))
                                (_ns9731_ (values-ref _g9921_ 2))
                                (_body9732_ (values-ref _g9921_ 3)))
                            (let ((_prelude9737_
                                   (if (##structure-instance-of?
                                        _pre9729_
                                        'gx#prelude-context::t)
                                       _pre9729_
                                       (if (##structure-instance-of?
                                            _pre9729_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre9729_)
                                           (if (string? _pre9729_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre9729_))
                                               (if (not _pre9729_)
                                                   (let ((_$e9734_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e9734_
                                                         _$e9734_
                                                         (let ((__obj9912
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj9912 '#f)
                     __obj9912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath9711_
                                                          _pre9729_)))))))
                              (let ((_ctx9739_
                                     (let ((__obj9913
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj9913
                                          _id9730_
                                          _prelude9737_
                                          _ns9731_
                                          _path9726_)
                                         __obj9913))))
                                (let ((_body9741_
                                       (gx#core-expand-module-begin
                                        _body9732_
                                        _ctx9739_)))
                                  (let ((_body9743_
                                         (gx#core-quote-syntax__opt-lambda2759
                                          (gx#core-cons '%#begin _body9741_)
                                          _path9726_
                                          _ctx9739_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx9739_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body9743_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx9739_
                                         _body9743_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _path9726_
                                         _ctx9739_)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _id9730_
                                         _ctx9739_)
                                        _ctx9739_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path9726_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e9716_
                 (if (not _reload?9712_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath9711_)
                     '#f)))
            (if _$e9716_
                (values _$e9716_)
                (if (gx#core-library-module-path? _rpath9711_)
                    (let ((_ctx9719_
                           (gx#core-import-module__opt-lambda9709
                            (gx#core-resolve-library-module-path _rpath9711_)
                            _reload?9712_)))
                      (begin
                        (hash-put!
                         (gx#current-expander-module-registry)
                         _rpath9711_
                         _ctx9719_)
                        _ctx9719_))
                    (let ((_npath9721_ (path-normalize _rpath9711_)))
                      (let ((_$e9723_
                             (if (not _reload?9712_)
                                 (hash-get
                                  (gx#current-expander-module-registry)
                                  _npath9721_)
                                 '#f)))
                        (if _$e9723_
                            (values _$e9723_)
                            (_import-source9714_ _npath9721_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath9750_)
          (let ((_reload?9752_ '#f))
            (gx#core-import-module__opt-lambda9709
             _rpath9750_
             _reload?9752_))))
      (define gx#core-import-module
        (lambda _g9924_
          (let ((_g9923_ (length _g9924_)))
            (cond ((fx= _g9923_ 1)
                   (apply (lambda (_rpath9750_)
                            (gx#core-import-module__0 _rpath9750_))
                          _g9924_))
                  ((fx= _g9923_ 2)
                   (apply (lambda (_rpath9754_ _reload?9755_)
                            (gx#core-import-module__opt-lambda9709
                             _rpath9754_
                             _reload?9755_))
                          _g9924_))
                  (else (error "No clause matching arguments" _g9924_))))))))
  (define gx#core-read-module
    (lambda (_path9574_)
      ((letrec ((_lp9576_
                 (lambda (_body9578_ _pre9579_ _ns9580_ _pkg9581_)
                   (let ((_e95829606_ _body9578_))
                     (let ((_E95989624_
                            (lambda ()
                              (let ((_prelude9610_
                                     (if (gx#core-bound-module-prelude?
                                          _pre9579_)
                                         (gx#syntax-local-e__0 _pre9579_)
                                         (if (gx#core-library-module-path?
                                              _pre9579_)
                                             (gx#core-resolve-library-module-path
                                              _pre9579_)
                                             (if (gx#stx-string? _pre9579_)
                                                 (gx#core-resolve-module-path__opt-lambda9547
                                                  _pre9579_
                                                  _path9574_)
                                                 (gx#stx-e _pre9579_))))))
                                (let ((_path-id9612_
                                       (gx#core-module-path->namespace
                                        _path9574_)))
                                  (let ((_pkg-id9614_
                                         (if _pkg9581_
                                             (string-append
                                              _pkg9581_
                                              '"/"
                                              _path-id9612_)
                                             _path-id9612_)))
                                    (let ((_module-id9616_
                                           (string->symbol _pkg-id9614_)))
                                      (let ((_module-ns9621_
                                             (let ((_$e9618_ _ns9580_))
                                               (if _$e9618_
                                                   _$e9618_
                                                   _pkg-id9614_))))
                                        (let ()
                                          (values _prelude9610_
                                                  _module-id9616_
                                                  _module-ns9621_
                                                  _body9578_))))))))))
                       (let ((_E95919653_
                              (lambda ()
                                (if (gx#stx-pair? _e95829606_)
                                    (let ((_e95999628_
                                           (gx#syntax-e _e95829606_)))
                                      (let ((_hd96009631_ (##car _e95999628_))
                                            (_tl96019633_ (##cdr _e95999628_)))
                                        (if (eq? (gx#stx-e _hd96009631_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl96019633_)
                                                (let ((_e96029636_
                                                       (gx#syntax-e
                                                        _tl96019633_)))
                                                  (let ((_hd96039639_
                                                         (##car _e96029636_))
                                                        (_tl96049641_
                                                         (##cdr _e96029636_)))
                                                    (let ((_pkg9644_
                                                           _hd96039639_))
                                                      (let ((_rest9646_
                                                             _tl96049641_))
                                                        (if '#t
                                                            (let ((_pkg9651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg9644_)
                               (symbol->string (gx#stx-e _pkg9644_))
                               (if (let ((_$e9648_ (gx#stx-string? _pkg9644_)))
                                     (if _$e9648_
                                         _$e9648_
                                         (gx#stx-false? _pkg9644_)))
                                   (gx#stx-e _pkg9644_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg9644_)))))
                      (_lp9576_ _rest9646_ _pre9579_ _ns9580_ _pkg9651_))
                    (_E95989624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E95989624_))
                                            (_E95989624_))))
                                    (_E95989624_)))))
                         (let ((_E95849682_
                                (lambda ()
                                  (if (gx#stx-pair? _e95829606_)
                                      (let ((_e95929657_
                                             (gx#syntax-e _e95829606_)))
                                        (let ((_hd95939660_
                                               (##car _e95929657_))
                                              (_tl95949662_
                                               (##cdr _e95929657_)))
                                          (if (eq? (gx#stx-e _hd95939660_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl95949662_)
                                                  (let ((_e95959665_
                                                         (gx#syntax-e
                                                          _tl95949662_)))
                                                    (let ((_hd95969668_
                                                           (##car _e95959665_))
                                                          (_tl95979670_
                                                           (##cdr _e95959665_)))
                                                      (let ((_ns9673_
                                                             _hd95969668_))
                                                        (let ((_rest9675_
                                                               _tl95979670_))
                                                          (if '#t
                                                              (let ((_ns9680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns9673_)
                                 (symbol->string (gx#stx-e _ns9673_))
                                 (if (let ((_$e9677_
                                            (gx#stx-string? _ns9673_)))
                                       (if _$e9677_
                                           _$e9677_
                                           (gx#stx-false? _ns9673_)))
                                     (gx#stx-e _ns9673_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns9673_)))))
                        (_lp9576_ _rest9675_ _pre9579_ _ns9680_ _pkg9581_))
                      (_E95919653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E95919653_))
                                              (_E95919653_))))
                                      (_E95919653_)))))
                           (let ((_E95839706_
                                  (lambda ()
                                    (if (gx#stx-pair? _e95829606_)
                                        (let ((_e95859686_
                                               (gx#syntax-e _e95829606_)))
                                          (let ((_hd95869689_
                                                 (##car _e95859686_))
                                                (_tl95879691_
                                                 (##cdr _e95859686_)))
                                            (if (eq? (gx#stx-e _hd95869689_)
                                                     'prelude:)
                                                (if (gx#stx-pair? _tl95879691_)
                                                    (let ((_e95889694_
                                                           (gx#syntax-e
                                                            _tl95879691_)))
                                                      (let ((_hd95899697_
                                                             (##car _e95889694_))
                                                            (_tl95909699_
                                                             (##cdr _e95889694_)))
                                                        (let ((_prelude9702_
                                                               _hd95899697_))
                                                          (let ((_rest9704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl95909699_))
                    (if '#t
                        (_lp9576_ _rest9704_ _prelude9702_ _ns9580_ _pkg9581_)
                        (_E95849682_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95849682_))
                                                (_E95849682_))))
                                        (_E95849682_)))))
                             (let () (_E95839706_))))))))))
         _lp9576_)
       (read-syntax-from-file _path9574_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path9572_)
      (path-strip-extension (path-strip-directory _path9572_))))
  (define gx#core-module-path->id
    (lambda (_path9570_)
      (string->symbol (gx#core-module-path->namespace _path9570_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda9547
      (lambda (_stx-path9549_ _rel9550_)
        (let ((_path9552_ (gx#stx-e _stx-path9549_)))
          (let ((_path9554_
                 (if (equal? (path-extension _path9552_) '".ss")
                     _path9552_
                     (string-append _path9552_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda2723
               _path9554_
               (let ((_$e9557_ (gx#stx-source _stx-path9549_)))
                 (if _$e9557_ _$e9557_ _rel9550_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path9563_)
          (let ((_rel9565_ '#f))
            (gx#core-resolve-module-path__opt-lambda9547
             _stx-path9563_
             _rel9565_))))
      (define gx#core-resolve-module-path
        (lambda _g9926_
          (let ((_g9925_ (length _g9926_)))
            (cond ((fx= _g9925_ 1)
                   (apply (lambda (_stx-path9563_)
                            (gx#core-resolve-module-path__0 _stx-path9563_))
                          _g9926_))
                  ((fx= _g9925_ 2)
                   (apply (lambda (_stx-path9567_ _rel9568_)
                            (gx#core-resolve-module-path__opt-lambda9547
                             _stx-path9567_
                             _rel9568_))
                          _g9926_))
                  (else (error "No clause matching arguments" _g9926_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath9495_)
      (let ((_spath9497_ (symbol->string (gx#stx-e _libpath9495_))))
        (let ((_spath9499_
               (substring _spath9497_ '1 (string-length _spath9497_))))
          (let ()
            ((letrec ((_lp9502_
                       (lambda (_rest9504_)
                         (let ((_rest95059514_ _rest9504_))
                           (let ((_E95089518_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest95059514_))))
                             (let ((_try-match95079526_
                                    (lambda ()
                                      (let ((_K95099523_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath9495_))))
                                        (if (##null? _rest95059514_)
                                            (_K95099523_)
                                            (_E95089518_))))))
                               (let ((_K95109536_
                                      (lambda (_rest9529_ _dir9530_)
                                        (let ((_compiled-path9532_
                                               (path-expand
                                                (string-append
                                                 _spath9499_
                                                 '".ssi")
                                                _dir9530_)))
                                          (if (file-exists?
                                               _compiled-path9532_)
                                              (path-normalize
                                               _compiled-path9532_)
                                              (let ((_src-path9534_
                                                     (path-expand
                                                      (string-append
                                                       _spath9499_
                                                       '".ss")
                                                      _dir9530_)))
                                                (if (file-exists?
                                                     _src-path9534_)
                                                    (path-normalize
                                                     _src-path9534_)
                                                    (_lp9502_
                                                     _rest9529_))))))))
                                 (if (##pair? _rest95059514_)
                                     (let ((_hd95119539_
                                            (##car _rest95059514_))
                                           (_tl95129541_
                                            (##cdr _rest95059514_)))
                                       (let ((_dir9544_ _hd95119539_))
                                         (let ((_rest9546_ _tl95129541_))
                                           (_K95109536_
                                            _rest9546_
                                            _dir9544_))))
                                     (_try-match95079526_)))))))))
               _lp9502_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx9493_) (gx#core-special-module-path? _stx9493_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx9488_ _char9489_)
      (if (gx#identifier? _stx9488_)
          (if (interned-symbol? (gx#stx-e _stx9488_))
              (let ((_str9491_ (symbol->string (gx#stx-e _stx9488_))))
                (if (fx> (string-length _str9491_) '1)
                    (eq? (string-ref _str9491_ '0) _char9489_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx9482_)
      (gx#core-bound-identifier?__opt-lambda2813
       _stx9482_
       (lambda (_g94839485_)
         (gx#expander-binding?__opt-lambda2844
          _g94839485_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx9476_)
      (gx#core-bound-identifier?__opt-lambda2813
       _stx9476_
       (lambda (_g94779479_)
         (gx#expander-binding?__opt-lambda2844
          _g94779479_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx9463_)
      (let ((_module-prelude?9465_
             (lambda (_e9471_)
               (let ((_$e9473_
                      (##structure-instance-of?
                       _e9471_
                       'gx#module-context::t)))
                 (if _$e9473_
                     _$e9473_
                     (##structure-instance-of?
                      _e9471_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda2813
         _stx9463_
         (lambda (_g94669468_)
           (gx#expander-binding?__opt-lambda2844
            _g94669468_
            _module-prelude?9465_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda9391
      (lambda (_in9393_ _ctx9394_ _force-weak?9395_)
        (let ((_in93969405_ _in9393_))
          (let ((_E93989409_
                 (lambda () (error '"No clause matching" _in93969405_))))
            (let ((_K93999422_
                   (lambda (_weak?9412_ _phi9413_ _key9414_ _source9415_)
                     (gx#core-bind!__opt-lambda3083
                      _key9414_
                      (let ((_e9417_ (gx#core-resolve-module-export
                                      _source9415_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e9417_ '1 gx#binding::t '#f)
                         _key9414_
                         _phi9413_
                         _e9417_
                         (##structure-ref
                          _source9415_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e9419_ _force-weak?9395_))
                           (if _$e9419_ _$e9419_ _weak?9412_))))
                      gx#core-context-rebind?
                      _phi9413_
                      _ctx9394_))))
              (if (direct-struct-instance? gx#module-import::t _in93969405_)
                  (let ((_e94009425_ (##vector-ref _in93969405_ '1)))
                    (let ((_source9428_ _e94009425_))
                      (let ((_e94019430_ (##vector-ref _in93969405_ '2)))
                        (let ((_key9433_ _e94019430_))
                          (let ((_e94029435_ (##vector-ref _in93969405_ '3)))
                            (let ((_phi9438_ _e94029435_))
                              (let ((_e94039440_
                                     (##vector-ref _in93969405_ '4)))
                                (let ((_weak?9443_ _e94039440_))
                                  (_K93999422_
                                   _weak?9443_
                                   _phi9438_
                                   _key9433_
                                   _source9428_)))))))))
                  (_E93989409_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in9448_)
          (let ((_ctx9450_ (gx#current-expander-context)))
            (let ((_force-weak?9452_ '#f))
              (gx#core-bind-import!__opt-lambda9391
               _in9448_
               _ctx9450_
               _force-weak?9452_)))))
      (define gx#core-bind-import!__1
        (lambda (_in9454_ _ctx9455_)
          (let ((_force-weak?9457_ '#f))
            (gx#core-bind-import!__opt-lambda9391
             _in9454_
             _ctx9455_
             _force-weak?9457_))))
      (define gx#core-bind-import!
        (lambda _g9928_
          (let ((_g9927_ (length _g9928_)))
            (cond ((fx= _g9927_ 1)
                   (apply (lambda (_in9448_)
                            (gx#core-bind-import!__0 _in9448_))
                          _g9928_))
                  ((fx= _g9927_ 2)
                   (apply (lambda (_in9454_ _ctx9455_)
                            (gx#core-bind-import!__1 _in9454_ _ctx9455_))
                          _g9928_))
                  ((fx= _g9927_ 3)
                   (apply (lambda (_in9459_ _ctx9460_ _force-weak?9461_)
                            (gx#core-bind-import!__opt-lambda9391
                             _in9459_
                             _ctx9460_
                             _force-weak?9461_))
                          _g9928_))
                  (else (error "No clause matching arguments" _g9928_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda9377
      (lambda (_in9379_ _ctx9380_)
        (gx#core-bind-import!__opt-lambda9391 _in9379_ _ctx9380_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in9385_)
          (let ((_ctx9387_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda9377 _in9385_ _ctx9387_))))
      (define gx#core-bind-weak-import!
        (lambda _g9930_
          (let ((_g9929_ (length _g9930_)))
            (cond ((fx= _g9929_ 1)
                   (apply (lambda (_in9385_)
                            (gx#core-bind-weak-import!__0 _in9385_))
                          _g9930_))
                  ((fx= _g9929_ 2)
                   (apply (lambda (_in9389_ _ctx9390_)
                            (gx#core-bind-weak-import!__opt-lambda9377
                             _in9389_
                             _ctx9390_))
                          _g9930_))
                  (else (error "No clause matching arguments" _g9930_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out9270_)
      (let ((_subst9272_
             (lambda (_key9318_)
               (let ((_key93199327_ _key9318_))
                 (let ((_E93229331_
                        (lambda ()
                          (error '"No clause matching" _key93199327_))))
                   (let ((_else93219335_ (lambda () _key9318_)))
                     (let ((_K93239366_
                            (lambda (_mark9338_ _id9339_)
                              (let ((_mark93409346_ _mark9338_))
                                (let ((_E93429350_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark93409346_))))
                                  (let ((_K93439358_
                                         (lambda (_subst9353_)
                                           (let ((_$e9355_
                                                  (if _subst9353_
                                                      (hash-get
                                                       _subst9353_
                                                       _id9339_)
                                                      '#f)))
                                             (if _$e9355_
                                                 _$e9355_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key9318_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark93409346_)
                                        (let ((_e93449361_
                                               (##vector-ref
                                                _mark93409346_
                                                '1)))
                                          (let ((_subst9364_ _e93449361_))
                                            (_K93439358_ _subst9364_)))
                                        (_E93429350_))))))))
                       (if (##pair? _key93199327_)
                           (let ((_hd93249369_ (##car _key93199327_))
                                 (_tl93259371_ (##cdr _key93199327_)))
                             (let ((_id9374_ _hd93249369_))
                               (let ((_mark9376_ _tl93259371_))
                                 (_K93239366_ _mark9376_ _id9374_))))
                           (_else93219335_)))))))))
        (let ((_out92739283_ _out9270_))
          (let ((_E92759287_
                 (lambda () (error '"No clause matching" _out92739283_))))
            (let ((_K92769294_
                   (lambda (_phi9290_ _key9291_ _ctx9292_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx9292_ _phi9290_)
                      (_subst9272_ _key9291_)))))
              (if (direct-struct-instance? gx#module-export::t _out92739283_)
                  (let ((_e92779297_ (##vector-ref _out92739283_ '1)))
                    (let ((_ctx9300_ _e92779297_))
                      (let ((_e92789302_ (##vector-ref _out92739283_ '2)))
                        (let ((_key9305_ _e92789302_))
                          (let ((_e92799307_ (##vector-ref _out92739283_ '3)))
                            (let ((_phi9310_ _e92799307_))
                              (let ((_e92809312_
                                     (##vector-ref _out92739283_ '4)))
                                (let ((_e92819315_
                                       (##vector-ref _out92739283_ '5)))
                                  (_K92769294_
                                   _phi9310_
                                   _key9305_
                                   _ctx9300_)))))))))
                  (_E92759287_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda9193
      (lambda (_out9195_ _rename9196_ _dphi9197_)
        (let ((_out91989208_ _out9195_))
          (let ((_E92009212_
                 (lambda () (error '"No clause matching" _out91989208_))))
            (let ((_K92019224_
                   (lambda (_weak?9215_
                            _name9216_
                            _phi9217_
                            _key9218_
                            _ctx9219_)
                     (##structure
                      gx#module-import::t
                      _out9195_
                      (let ((_$e9221_ _rename9196_))
                        (if _$e9221_ _$e9221_ _name9216_))
                      (fx+ _phi9217_ _dphi9197_)
                      _weak?9215_))))
              (if (direct-struct-instance? gx#module-export::t _out91989208_)
                  (let ((_e92029227_ (##vector-ref _out91989208_ '1)))
                    (let ((_ctx9230_ _e92029227_))
                      (let ((_e92039232_ (##vector-ref _out91989208_ '2)))
                        (let ((_key9235_ _e92039232_))
                          (let ((_e92049237_ (##vector-ref _out91989208_ '3)))
                            (let ((_phi9240_ _e92049237_))
                              (let ((_e92059242_
                                     (##vector-ref _out91989208_ '4)))
                                (let ((_name9245_ _e92059242_))
                                  (let ((_e92069247_
                                         (##vector-ref _out91989208_ '5)))
                                    (let ((_weak?9250_ _e92069247_))
                                      (_K92019224_
                                       _weak?9250_
                                       _name9245_
                                       _phi9240_
                                       _key9235_
                                       _ctx9230_)))))))))))
                  (_E92009212_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out9255_)
          (let ((_rename9257_ '#f))
            (let ((_dphi9259_ '0))
              (gx#core-module-export->import__opt-lambda9193
               _out9255_
               _rename9257_
               _dphi9259_)))))
      (define gx#core-module-export->import__1
        (lambda (_out9261_ _rename9262_)
          (let ((_dphi9264_ '0))
            (gx#core-module-export->import__opt-lambda9193
             _out9261_
             _rename9262_
             _dphi9264_))))
      (define gx#core-module-export->import
        (lambda _g9932_
          (let ((_g9931_ (length _g9932_)))
            (cond ((fx= _g9931_ 1)
                   (apply (lambda (_out9255_)
                            (gx#core-module-export->import__0 _out9255_))
                          _g9932_))
                  ((fx= _g9931_ 2)
                   (apply (lambda (_out9261_ _rename9262_)
                            (gx#core-module-export->import__1
                             _out9261_
                             _rename9262_))
                          _g9932_))
                  ((fx= _g9931_ 3)
                   (apply (lambda (_out9266_ _rename9267_ _dphi9268_)
                            (gx#core-module-export->import__opt-lambda9193
                             _out9266_
                             _rename9267_
                             _dphi9268_))
                          _g9932_))
                  (else (error "No clause matching arguments" _g9932_))))))))
  (define gx#core-expand-module%
    (lambda (_stx9123_)
      (let ((_make-context9125_
             (lambda (_id9176_)
               (let ((_super9178_ (gx#current-expander-context)))
                 (let ((_bind-id9180_ (gx#stx-e _id9176_)))
                   (let ((_mod-id9182_
                          (if (##structure-instance-of?
                               _super9178_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super9178_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id9180_)
                              _bind-id9180_)))
                     (let ((_ns9184_ (symbol->string _mod-id9182_)))
                       (let ((_path9191_
                              (if (##structure-instance-of?
                                   _super9178_
                                   'gx#module-context::t)
                                  (let ((_path9186_
                                         (##structure-ref
                                          _super9178_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e9188_ (pair? _path9186_)))
                                          (if _$e9188_
                                              _$e9188_
                                              (null? _path9186_)))
                                        (cons _bind-id9180_ _path9186_)
                                        (if (not _path9186_)
                                            _bind-id9180_
                                            (cons _bind-id9180_
                                                  (cons _path9186_ '())))))
                                  _bind-id9180_)))
                         (let ()
                           (let ((__obj9914
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj9914
                                _mod-id9182_
                                _super9178_
                                _ns9184_
                                _path9191_)
                               __obj9914)))))))))))
        (let ((_e91269136_ _stx9123_))
          (let ((_E91289140_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e91269136_))))
            (let ((_E91279172_
                   (lambda ()
                     (if (gx#stx-pair? _e91269136_)
                         (let ((_e91299144_ (gx#syntax-e _e91269136_)))
                           (let ((_hd91309147_ (##car _e91299144_))
                                 (_tl91319149_ (##cdr _e91299144_)))
                             (if (gx#stx-pair? _tl91319149_)
                                 (let ((_e91329152_
                                        (gx#syntax-e _tl91319149_)))
                                   (let ((_hd91339155_ (##car _e91329152_))
                                         (_tl91349157_ (##cdr _e91329152_)))
                                     (let ((_id9160_ _hd91339155_))
                                       (let ((_body9162_ _tl91349157_))
                                         (if (if (gx#identifier? _id9160_)
                                                 (gx#stx-list? _body9162_)
                                                 '#f)
                                             (let ((_ctx9164_
                                                    (_make-context9125_
                                                     _id9160_)))
                                               (let ((_body9166_
                                                      (gx#core-expand-module-begin
                                                       _body9162_
                                                       _ctx9164_)))
                                                 (let ((_body9168_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body9166_)
                                                         (gx#stx-source
                                                          _stx9123_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx9164_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body9168_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx9164_
                                                        _body9168_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id9160_
                                                        _ctx9164_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id9160_)
                                                         _body9168_)
                                                        (gx#stx-source
                                                         _stx9123_)))))))
                                             (_E91289140_))))))
                                 (_E91289140_))))
                         (_E91289140_)))))
              (let () (_E91279172_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body9119_ _ctx9120_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body9119_)))
       gx#current-expander-context
       _ctx9120_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body8915_)
      (let ((_expand-special8917_
             (lambda (_hd9046_ _K9047_ _rest9048_ _r9049_)
               (let ((_e90509067_ _hd9046_))
                 (let ((_E90629071_
                        (lambda ()
                          (_K9047_ _rest9048_
                                   (cons (gx#core-expand-top _hd9046_)
                                         _r9049_)))))
                   (let ((_E90529083_
                          (lambda ()
                            (if (gx#stx-pair? _e90509067_)
                                (let ((_e90639075_ (gx#syntax-e _e90509067_)))
                                  (let ((_hd90649078_ (##car _e90639075_))
                                        (_tl90659080_ (##cdr _e90639075_)))
                                    (if (if (gx#identifier? _hd90649078_)
                                            (gx#core-identifier=?
                                             _hd90649078_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K9047_ _rest9048_
                                                     (cons _hd9046_ _r9049_))
                                            (_E90629071_))
                                        (_E90629071_))))
                                (_E90629071_)))))
                     (let ((_E90519115_
                            (lambda ()
                              (if (gx#stx-pair? _e90509067_)
                                  (let ((_e90539087_
                                         (gx#syntax-e _e90509067_)))
                                    (let ((_hd90549090_ (##car _e90539087_))
                                          (_tl90559092_ (##cdr _e90539087_)))
                                      (if (if (gx#identifier? _hd90549090_)
                                              (gx#core-identifier=?
                                               _hd90549090_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl90559092_)
                                              (let ((_e90569095_
                                                     (gx#syntax-e
                                                      _tl90559092_)))
                                                (let ((_hd90579098_
                                                       (##car _e90569095_))
                                                      (_tl90589100_
                                                       (##cdr _e90569095_)))
                                                  (let ((_hd-bind9103_
                                                         _hd90579098_))
                                                    (if (gx#stx-pair?
                                                         _tl90589100_)
                                                        (let ((_e90599105_
                                                               (gx#syntax-e
                                                                _tl90589100_)))
                                                          (let ((_hd90609108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90599105_))
                        (_tl90619110_ (##cdr _e90599105_)))
                    (let ((_expr9113_ _hd90609108_))
                      (if (gx#stx-null? _tl90619110_)
                          (if (gx#core-bind-values? _hd-bind9103_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind9103_)
                                (_K9047_ _rest9048_ (cons _hd9046_ _r9049_)))
                              (_E90529083_))
                          (_E90529083_)))))
                (_E90529083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90529083_))
                                          (_E90529083_))))
                                  (_E90529083_)))))
                       (let () (_E90519115_)))))))))
        (let ((_expand-body8918_
               (lambda (_rbody8920_)
                 ((letrec ((_lp8922_
                            (lambda (_rest8924_ _body8925_)
                              (let ((_rest89268934_ _rest8924_))
                                (let ((_E89298938_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest89268934_))))
                                  (let ((_else89288942_
                                         (lambda () _body8925_)))
                                    (let ((_K89309034_
                                           (lambda (_rest8945_ _hd8946_)
                                             (let ((_e89478968_ _hd8946_))
                                               (let ((_E89638972_
                                                      (lambda ()
                                                        (_lp8922_
                                                         _rest8945_
                                                         (cons (gx#core-expand-expression
                                                                _hd8946_)
                                                               _body8925_)))))
                                                 (let ((_E89598986_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e89478968_)
                                                              (let ((_e89648976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e89478968_)))
                        (let ((_hd89658979_ (##car _e89648976_))
                              (_tl89668981_ (##cdr _e89648976_)))
                          (let ((_form8984_ _hd89658979_))
                            (if (gx#core-bound-identifier?__opt-lambda2813
                                 _form8984_
                                 gx#special-form-binding?)
                                (_lp8922_
                                 _rest8945_
                                 (cons _hd8946_ _body8925_))
                                (_E89638972_)))))
                      (_E89638972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E89498998_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e89478968_)
                        (let ((_e89608990_ (gx#syntax-e _e89478968_)))
                          (let ((_hd89618993_ (##car _e89608990_))
                                (_tl89628995_ (##cdr _e89608990_)))
                            (if (if (gx#identifier? _hd89618993_)
                                    (gx#core-identifier=?
                                     _hd89618993_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp8922_
                                     _rest8945_
                                     (cons (gx#core-expand-export%__0 _hd8946_)
                                           _body8925_))
                                    (_E89598986_))
                                (_E89598986_))))
                        (_E89598986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E89489030_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e89478968_)
                          (let ((_e89509002_ (gx#syntax-e _e89478968_)))
                            (let ((_hd89519005_ (##car _e89509002_))
                                  (_tl89529007_ (##cdr _e89509002_)))
                              (if (if (gx#identifier? _hd89519005_)
                                      (gx#core-identifier=?
                                       _hd89519005_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl89529007_)
                                      (let ((_e89539010_
                                             (gx#syntax-e _tl89529007_)))
                                        (let ((_hd89549013_
                                               (##car _e89539010_))
                                              (_tl89559015_
                                               (##cdr _e89539010_)))
                                          (let ((_hd-bind9018_ _hd89549013_))
                                            (if (gx#stx-pair? _tl89559015_)
                                                (let ((_e89569020_
                                                       (gx#syntax-e
                                                        _tl89559015_)))
                                                  (let ((_hd89579023_
                                                         (##car _e89569020_))
                                                        (_tl89589025_
                                                         (##cdr _e89569020_)))
                                                    (let ((_expr9028_
                                                           _hd89579023_))
                                                      (if (gx#stx-null?
                                                           _tl89589025_)
                                                          (if '#t
                                                              (_lp8922_
                                                               _rest8945_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind9018_)
                               (gx#core-expand-expression _expr9028_))
                              (gx#stx-source _hd8946_))
                             _body8925_))
                      (_E89498998_))
                  (_E89498998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E89498998_)))))
                                      (_E89498998_))
                                  (_E89498998_))))
                          (_E89498998_)))))
               (let () (_E89489030_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest89268934_)
                                          (let ((_hd89319037_
                                                 (##car _rest89268934_))
                                                (_tl89329039_
                                                 (##cdr _rest89268934_)))
                                            (let ((_hd9042_ _hd89319037_))
                                              (let ((_rest9044_ _tl89329039_))
                                                (_K89309034_
                                                 _rest9044_
                                                 _hd9042_))))
                                          (_else89288942_)))))))))
                    _lp8922_)
                  _rbody8920_
                  '()))))
          (_expand-body8918_
           (gx#core-expand-block__opt-lambda3860
            (cons '%#begin-module _body8915_)
            _expand-special8917_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx8758_
             _expanded?8759_
             _method8760_
             _current-phi8761_
             _expand18762_)
      (letrec ((_K8764_ (lambda (_rest8882_ _r8883_)
                          (let ((_e88848891_ _rest8882_))
                            (let ((_E88868895_ (lambda () _r8883_)))
                              (let ((_E88858911_
                                     (lambda ()
                                       (if (gx#stx-pair? _e88848891_)
                                           (let ((_e88878899_
                                                  (gx#syntax-e _e88848891_)))
                                             (let ((_hd88888902_
                                                    (##car _e88878899_))
                                                   (_tl88898904_
                                                    (##cdr _e88878899_)))
                                               (let ((_hd8907_ _hd88888902_))
                                                 (let ((_rest8909_
                                                        _tl88898904_))
                                                   (if '#t
                                                       (_step8765_
                                                        _hd8907_
                                                        _rest8909_
                                                        _r8883_)
                                                       (_E88868895_))))))
                                           (_E88868895_)))))
                                (let () (_E88858911_)))))))
               (_step8765_
                (lambda (_hd8796_ _rest8797_ _r8798_)
                  (let ((_e87998817_ _hd8796_))
                    (let ((_E88128821_
                           (lambda ()
                             (if (_expanded?8759_ (gx#stx-e _hd8796_))
                                 (_K8764_ _rest8797_
                                          (cons (gx#stx-e _hd8796_) _r8798_))
                                 (_expand18762_
                                  _hd8796_
                                  _K8764_
                                  _rest8797_
                                  _r8798_)))))
                      (let ((_E88088837_
                             (lambda ()
                               (if (gx#stx-pair? _e87998817_)
                                   (let ((_e88138825_
                                          (gx#syntax-e _e87998817_)))
                                     (let ((_hd88148828_ (##car _e88138825_))
                                           (_tl88158830_ (##cdr _e88138825_)))
                                       (let ((_macro8833_ _hd88148828_))
                                         (let ((_body8835_ _tl88158830_))
                                           (if (gx#core-bound-identifier?__opt-lambda2813
                                                _macro8833_
                                                gx#syntax-binding?)
                                               (_K8764_ (cons (gx#core-apply-expander__opt-lambda3578
                                                               (gx#syntax-local-e__0
                                                                _macro8833_)
                                                               _hd8796_
                                                               _method8760_)
                                                              _rest8797_)
                                                        _r8798_)
                                               (_E88128821_))))))
                                   (_E88128821_)))))
                        (let ((_E88018851_
                               (lambda ()
                                 (if (gx#stx-pair? _e87998817_)
                                     (let ((_e88098841_
                                            (gx#syntax-e _e87998817_)))
                                       (let ((_hd88108844_ (##car _e88098841_))
                                             (_tl88118846_
                                              (##cdr _e88098841_)))
                                         (if (eq? (gx#stx-e _hd88108844_)
                                                  'begin:)
                                             (let ((_body8849_ _tl88118846_))
                                               (if '#t
                                                   (_K8764_ (gx#stx-foldr
                                                             cons
                                                             _rest8797_
                                                             _body8849_)
                                                            _r8798_)
                                                   (_E88088837_)))
                                             (_E88088837_))))
                                     (_E88088837_)))))
                          (let ((_E88008878_
                                 (lambda ()
                                   (if (gx#stx-pair? _e87998817_)
                                       (let ((_e88028855_
                                              (gx#syntax-e _e87998817_)))
                                         (let ((_hd88038858_
                                                (##car _e88028855_))
                                               (_tl88048860_
                                                (##cdr _e88028855_)))
                                           (if (eq? (gx#stx-e _hd88038858_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl88048860_)
                                                   (let ((_e88058863_
                                                          (gx#syntax-e
                                                           _tl88048860_)))
                                                     (let ((_hd88068866_
                                                            (##car _e88058863_))
                                                           (_tl88078868_
                                                            (##cdr _e88058863_)))
                                                       (let ((_dphi8871_
                                                              _hd88068866_))
                                                         (let ((_body8873_
                                                                _tl88078868_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi8871_)
                                                               (let ((_rbody8876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K8764_ _body8873_ '()))
                               _current-phi8761_
                               (fx+ (gx#stx-e _dphi8871_)
                                    (_current-phi8761_)))))
                         (_K8764_ _rest8797_ (foldr cons _r8798_ _rbody8876_)))
                       (_E88018851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E88018851_))
                                               (_E88018851_))))
                                       (_E88018851_)))))
                            (let () (_E88008878_))))))))))
        (let ((_e87668773_ _stx8758_))
          (let ((_E87688777_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e87668773_))))
            (let ((_E87678792_
                   (lambda ()
                     (if (gx#stx-pair? _e87668773_)
                         (let ((_e87698781_ (gx#syntax-e _e87668773_)))
                           (let ((_hd87708784_ (##car _e87698781_))
                                 (_tl87718786_ (##cdr _e87698781_)))
                             (let ((_body8789_ _tl87718786_))
                               (if '#t
                                   (if (_current-phi8761_)
                                       (_K8764_ _body8789_ '())
                                       (call-with-parameters
                                        (lambda () (_K8764_ _body8789_ '()))
                                        _current-phi8761_
                                        (gx#current-expander-phi)))
                                   (_E87688777_)))))
                         (_E87688777_)))))
              (let () (_E87678792_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda8295
      (lambda (_stx8297_ _internal-expand?8298_)
        (let ((_import18301_
               (lambda (_ctx8732_ _K8733_ _rest8734_ _r8735_)
                 (let ((_dphi8737_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K8733_ _rest8734_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx8732_
                                   _dphi8737_
                                   (map (lambda (_g87388740_)
                                          (gx#core-module-export->import__opt-lambda9193
                                           _g87388740_
                                           '#f
                                           _dphi8737_))
                                        (##structure-ref
                                         _ctx8732_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r8735_))))))
          (let ((_import-spec?8302_
                 (lambda (_hd8689_)
                   (let ((_e86908700_ _hd8689_))
                     (let ((_E86928704_ (lambda () '#f)))
                       (let ((_E86918728_
                              (lambda ()
                                (if (gx#stx-pair? _e86908700_)
                                    (let ((_e86938708_
                                           (gx#syntax-e _e86908700_)))
                                      (let ((_hd86948711_ (##car _e86938708_))
                                            (_tl86958713_ (##cdr _e86938708_)))
                                        (if (eq? (gx#stx-e _hd86948711_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl86958713_)
                                                (let ((_e86968716_
                                                       (gx#syntax-e
                                                        _tl86958713_)))
                                                  (let ((_hd86978719_
                                                         (##car _e86968716_))
                                                        (_tl86988721_
                                                         (##cdr _e86968716_)))
                                                    (let ((_spath8724_
                                                           _hd86978719_))
                                                      (let ((_specs8726_
                                                             _tl86988721_))
                                                        (if '#t
                                                            '#t
                                                            (_E86928704_))))))
                                                (_E86928704_))
                                            (_E86928704_))))
                                    (_E86928704_)))))
                         (let () (_E86918728_))))))))
            (let ((_import-submodule?8303_
                   (lambda (_hd8646_)
                     (let ((_e86478657_ _hd8646_))
                       (let ((_E86498661_ (lambda () '#f)))
                         (let ((_E86488685_
                                (lambda ()
                                  (if (gx#stx-pair? _e86478657_)
                                      (let ((_e86508665_
                                             (gx#syntax-e _e86478657_)))
                                        (let ((_hd86518668_
                                               (##car _e86508665_))
                                              (_tl86528670_
                                               (##cdr _e86508665_)))
                                          (if (eq? (gx#stx-e _hd86518668_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl86528670_)
                                                  (let ((_e86538673_
                                                         (gx#syntax-e
                                                          _tl86528670_)))
                                                    (let ((_hd86548676_
                                                           (##car _e86538673_))
                                                          (_tl86558678_
                                                           (##cdr _e86538673_)))
                                                      (let ((_top8681_
                                                             _hd86548676_))
                                                        (let ((_sub8683_
                                                               _tl86558678_))
                                                          (if '#t
                                                              '#t
                                                              (_E86498661_))))))
                                                  (_E86498661_))
                                              (_E86498661_))))
                                      (_E86498661_)))))
                           (let () (_E86488685_))))))))
              (let ((_import-runtime?8304_
                     (lambda (_hd8603_)
                       (let ((_e86048614_ _hd8603_))
                         (let ((_E86068618_ (lambda () '#f)))
                           (let ((_E86058642_
                                  (lambda ()
                                    (if (gx#stx-pair? _e86048614_)
                                        (let ((_e86078622_
                                               (gx#syntax-e _e86048614_)))
                                          (let ((_hd86088625_
                                                 (##car _e86078622_))
                                                (_tl86098627_
                                                 (##cdr _e86078622_)))
                                            (if (eq? (gx#stx-e _hd86088625_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl86098627_)
                                                    (let ((_e86108630_
                                                           (gx#syntax-e
                                                            _tl86098627_)))
                                                      (let ((_hd86118633_
                                                             (##car _e86108630_))
                                                            (_tl86128635_
                                                             (##cdr _e86108630_)))
                                                        (let ((_top8638_
                                                               _hd86118633_))
                                                          (let ((_spath8640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86128635_))
                    (if '#t '#t (_E86068618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86068618_))
                                                (_E86068618_))))
                                        (_E86068618_)))))
                             (let () (_E86058642_))))))))
                (let ((_import-spec-source8308_
                       (lambda (_spath8374_)
                         (gx#core-import-nested-module
                          _spath8374_
                          _stx8297_))))
                  (let ((_import!8309_
                         (lambda (_rbody8322_)
                           (let ((_current-ctx8324_
                                  (gx#current-expander-context)))
                             (let ((_deps8325_ (make-hash-table-eq)))
                               (let ((_bind!8326_
                                      (lambda (_hd8372_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd8372_
                                           _current-ctx8324_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd8372_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd8372_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (hash-put!
                                               _deps8325_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd8372_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e8327_
                                        (lambda (_in8369_ _r8370_)
                                          (if (##structure-direct-instance-of?
                                               _in8369_
                                               'gx#module-import::t)
                                              (cons _in8369_ _r8370_)
                                              (if (##structure-direct-instance-of?
                                                   _in8369_
                                                   'gx#import-set::t)
                                                  (foldl cons
                                                         _r8370_
                                                         (##structure-ref
                                                          _in8369_
                                                          '3
                                                          gx#import-set::t
                                                          '#f))
                                                  _r8370_)))))
                                   ((letrec ((_lp8329_
                                              (lambda (_rest8331_ _body8332_)
                                                (let ((_rest83338341_
                                                       _rest8331_))
                                                  (let ((_E83368345_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest83338341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else83358351_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx8324_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx8324_
                            (foldl _fold-e8327_
                                   (##structure-ref
                                    _current-ctx8324_
                                    '8
                                    gx#module-context::t
                                    '#f)
                                   _body8332_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (hash-for-each
                        (lambda (_ctx8349_ _g9933_) (gx#eval-module _ctx8349_))
                        _deps8325_)
                       _body8332_))))
              (let ((_K83378357_
                     (lambda (_rest8354_ _hd8355_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd8355_
                              'gx#module-import::t)
                             (_bind!8326_ _hd8355_)
                             (if (##structure-direct-instance-of?
                                  _hd8355_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!8326_
                                  (##structure-ref
                                   _hd8355_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd8355_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx8297_
                                      _hd8355_))))
                         (_lp8329_ _rest8354_ (cons _hd8355_ _body8332_))))))
                (if (##pair? _rest83338341_)
                    (let ((_hd83388360_ (##car _rest83338341_))
                          (_tl83398362_ (##cdr _rest83338341_)))
                      (let ((_hd8365_ _hd83388360_))
                        (let ((_rest8367_ _tl83398362_))
                          (_K83378357_ _rest8367_ _hd8365_))))
                    (_else83358351_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp8329_)
                                    _rbody8322_
                                    '()))))))))
                    (let ((_expanded-import?8310_
                           (lambda (_e8314_)
                             (let ((_$e8316_
                                    (##structure-direct-instance-of?
                                     _e8314_
                                     'gx#import-set::t)))
                               (if _$e8316_
                                   _$e8316_
                                   (let ((_$e8319_
                                          (##structure-direct-instance-of?
                                           _e8314_
                                           'gx#module-import::t)))
                                     (if _$e8319_
                                         _$e8319_
                                         (##structure-instance-of?
                                          _e8314_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule8305_
                             (lambda (_hd8570_ _K8571_ _rest8572_ _r8573_)
                               (let ((_e85748581_ _hd8570_))
                                 (let ((_E85768585_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e85748581_))))
                                   (let ((_E85758599_
                                          (lambda ()
                                            (if (gx#stx-pair? _e85748581_)
                                                (let ((_e85778589_
                                                       (gx#syntax-e
                                                        _e85748581_)))
                                                  (let ((_hd85788592_
                                                         (##car _e85778589_))
                                                        (_tl85798594_
                                                         (##cdr _e85778589_)))
                                                    (let ((_spath8597_
                                                           _tl85798594_))
                                                      (if '#t
                                                          (_import18301_
                                                           (_import-spec-source8308_
                                                            _spath8597_)
                                                           _K8571_
                                                           _rest8572_
                                                           _r8573_)
                                                          (_E85768585_)))))
                                                (_E85768585_)))))
                                     (let () (_E85758599_))))))))
                        (let ((_import-runtime8306_
                               (lambda (_hd8537_ _K8538_ _rest8539_ _r8540_)
                                 (let ((_e85418548_ _hd8537_))
                                   (let ((_E85438552_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e85418548_))))
                                     (let ((_E85428566_
                                            (lambda ()
                                              (if (gx#stx-pair? _e85418548_)
                                                  (let ((_e85448556_
                                                         (gx#syntax-e
                                                          _e85418548_)))
                                                    (let ((_hd85458559_
                                                           (##car _e85448556_))
                                                          (_tl85468561_
                                                           (##cdr _e85448556_)))
                                                      (let ((_spath8564_
                                                             _tl85468561_))
                                                        (if '#t
                                                            (_K8538_ _rest8539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source8308_ _spath8564_)
                                   _r8540_))
                    (_E85438552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85438552_)))))
                                       (let () (_E85428566_))))))))
                          (let ((_import-spec8307_
                                 (lambda (_hd8376_ _K8377_ _rest8378_ _r8379_)
                                   (let ((_e83808397_ _hd8376_))
                                     (let ((_E83898401_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e83808397_))))
                                       (let ((_E83828511_
                                              (lambda ()
                                                (if (gx#stx-pair? _e83808397_)
                                                    (let ((_e83908405_
                                                           (gx#syntax-e
                                                            _e83808397_)))
                                                      (let ((_hd83918408_
                                                             (##car _e83908405_))
                                                            (_tl83928410_
                                                             (##cdr _e83908405_)))
                                                        (if (gx#stx-pair?
                                                             _tl83928410_)
                                                            (let ((_e83938413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl83928410_)))
                      (let ((_hd83948416_ (##car _e83938413_))
                            (_tl83958418_ (##cdr _e83938413_)))
                        (let ((_path8421_ _hd83948416_))
                          (let ((_specs8423_ _tl83958418_))
                            (if '#t
                                (let ((_src-ctx8425_
                                       (_import-spec-source8308_ _path8421_))
                                      (_exports8426_ (make-hash-table))
                                      (_specs8427_
                                       (gx#syntax->list _specs8423_)))
                                  (begin
                                    (for-each
                                     (lambda (_out8429_)
                                       (hash-put!
                                        _exports8426_
                                        (cons (##structure-ref
                                               _out8429_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out8429_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out8429_))
                                     (##structure-ref
                                      _src-ctx8425_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K8377_ _rest8378_
                                             (foldl (lambda (_spec8431_
                                                             _r8432_)
                                                      (let ((_e84338449_
                                                             _spec8431_))
                                                        (let ((_E84358453_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _e84338449_))))
                  (let ((_E84348507_
                         (lambda ()
                           (if (gx#stx-pair? _e84338449_)
                               (let ((_e84368457_ (gx#syntax-e _e84338449_)))
                                 (let ((_hd84378460_ (##car _e84368457_))
                                       (_tl84388462_ (##cdr _e84368457_)))
                                   (let ((_phi8465_ _hd84378460_))
                                     (if (gx#stx-pair? _tl84388462_)
                                         (let ((_e84398467_
                                                (gx#syntax-e _tl84388462_)))
                                           (let ((_hd84408470_
                                                  (##car _e84398467_))
                                                 (_tl84418472_
                                                  (##cdr _e84398467_)))
                                             (let ((_name8475_ _hd84408470_))
                                               (if (gx#stx-pair? _tl84418472_)
                                                   (let ((_e84428477_
                                                          (gx#syntax-e
                                                           _tl84418472_)))
                                                     (let ((_hd84438480_
                                                            (##car _e84428477_))
                                                           (_tl84448482_
                                                            (##cdr _e84428477_)))
                                                       (let ((_src-phi8485_
                                                              _hd84438480_))
                                                         (if (gx#stx-pair?
                                                              _tl84448482_)
                                                             (let ((_e84458487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84448482_)))
                       (let ((_hd84468490_ (##car _e84458487_))
                             (_tl84478492_ (##cdr _e84458487_)))
                         (let ((_src-name8495_ _hd84468490_))
                           (if (gx#stx-null? _tl84478492_)
                               (if (if (gx#stx-fixnum? _src-phi8485_)
                                       (if (gx#identifier? _src-name8495_)
                                           (if (gx#stx-fixnum? _phi8465_)
                                               (gx#identifier? _name8475_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   (let ((_src-phi8497_
                                          (gx#stx-e _src-phi8485_))
                                         (_src-name8498_
                                          (gx#core-identifier-key
                                           _src-name8495_))
                                         (_phi8499_ (gx#stx-e _phi8465_))
                                         (_name8500_
                                          (gx#core-identifier-key _name8475_)))
                                     (let ((_$e8502_
                                            (hash-get
                                             _exports8426_
                                             (cons _src-phi8497_
                                                   _src-name8498_))))
                                       (if _$e8502_
                                           ((lambda (_out8505_)
                                              (cons (gx#core-module-export->import__opt-lambda9193
                                                     _out8505_
                                                     _name8500_
                                                     (fx- _phi8499_
                                                          _src-phi8497_))
                                                    _r8432_))
                                            _$e8502_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; no matching export"
                                            _stx8297_
                                            _hd8376_))))
                                   (_E84358453_))
                               (_E84358453_)))))
                     (_E84358453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84358453_)))))
                                         (_E84358453_)))))
                               (_E84358453_)))))
                    (let () (_E84348507_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r8379_
                                                    _specs8427_))))
                                (_E83898401_))))))
                    (_E83898401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83898401_)))))
                                         (let ((_E83818533_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e83808397_)
                                                      (let ((_e83838515_
                                                             (gx#syntax-e
                                                              _e83808397_)))
                                                        (let ((_hd83848518_
                                                               (##car _e83838515_))
                                                              (_tl83858520_
                                                               (##cdr _e83838515_)))
                                                          (if (gx#stx-pair?
                                                               _tl83858520_)
                                                              (let ((_e83868523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl83858520_)))
                        (let ((_hd83878526_ (##car _e83868523_))
                              (_tl83888528_ (##cdr _e83868523_)))
                          (let ((_path8531_ _hd83878526_))
                            (if (gx#stx-null? _tl83888528_)
                                (if '#t
                                    (_K8377_ _rest8378_
                                             (cons (_import-spec-source8308_
                                                    _path8531_)
                                                   _r8379_))
                                    (_E83828511_))
                                (_E83828511_)))))
                      (_E83828511_))))
              (_E83828511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E83818533_)))))))))
                            (let ((_expand18300_
                                   (lambda (_hd8743_
                                            _K8744_
                                            _rest8745_
                                            _r8746_)
                                     (if (gx#core-bound-module? _hd8743_)
                                         (_import18301_
                                          (gx#syntax-local-e__0 _hd8743_)
                                          _K8744_
                                          _rest8745_
                                          _r8746_)
                                         (if (gx#core-library-module-path?
                                              _hd8743_)
                                             (_import18301_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd8743_))
                                              _K8744_
                                              _rest8745_
                                              _r8746_)
                                             (if (gx#stx-string? _hd8743_)
                                                 (_import18301_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda9547
                                                    _hd8743_
                                                    (gx#stx-source _stx8297_)))
                                                  _K8744_
                                                  _rest8745_
                                                  _r8746_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd8743_)
                                                      'gx#module-context::t)
                                                     (_K8744_ _rest8745_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd8743_)
                            _r8746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?8302_
                                                          _hd8743_)
                                                         (_import-spec8307_
                                                          _hd8743_
                                                          _K8744_
                                                          _rest8745_
                                                          _r8746_)
                                                         (if (_import-submodule?8303_
                                                              _hd8743_)
                                                             (_import-submodule8305_
                                                              _hd8743_
                                                              _K8744_
                                                              _rest8745_
                                                              _r8746_)
                                                             (if (_import-runtime?8304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8743_)
                         (_import-runtime8306_
                          _hd8743_
                          _K8744_
                          _rest8745_
                          _r8746_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx8297_
                          _hd8743_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody8312_
                                     (gx#core-expand-import/export
                                      _stx8297_
                                      _expanded-import?8310_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand18300_)))
                                (if _internal-expand?8298_
                                    (reverse _rbody8312_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!8309_ _rbody8312_))
                                     (gx#stx-source _stx8297_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx8751_)
          (let ((_internal-expand?8753_ '#f))
            (gx#core-expand-import%__opt-lambda8295
             _stx8751_
             _internal-expand?8753_))))
      (define gx#core-expand-import%
        (lambda _g9935_
          (let ((_g9934_ (length _g9935_)))
            (cond ((fx= _g9934_ 1)
                   (apply (lambda (_stx8751_)
                            (gx#core-expand-import%__0 _stx8751_))
                          _g9935_))
                  ((fx= _g9934_ 2)
                   (apply (lambda (_stx8755_ _internal-expand?8756_)
                            (gx#core-expand-import%__opt-lambda8295
                             _stx8755_
                             _internal-expand?8756_))
                          _g9935_))
                  (else (error "No clause matching arguments" _g9935_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath8224_ _where8225_)
      (let ((_e82268233_ _spath8224_))
        (let ((_E82288237_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82268233_))))
          (let ((_E82278292_
                 (lambda ()
                   (if (gx#stx-pair? _e82268233_)
                       (let ((_e82298241_ (gx#syntax-e _e82268233_)))
                         (let ((_hd82308244_ (##car _e82298241_))
                               (_tl82318246_ (##cdr _e82298241_)))
                           (let ((_origin8249_ _hd82308244_))
                             (let ((_sub8251_ _tl82318246_))
                               (if '#t
                                   (let ((_origin-ctx8253_
                                          (if (gx#stx-false? _origin8249_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin8249_))))
                                     ((letrec ((_lp8255_
                                                (lambda (_rest8257_ _ctx8258_)
                                                  (let ((_e82598266_
                                                         _rest8257_))
                                                    (let ((_E82618270_
                                                           (lambda ()
                                                             _ctx8258_)))
                                                      (let ((_E82608288_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e82598266_)
                           (let ((_e82628274_ (gx#syntax-e _e82598266_)))
                             (let ((_hd82638277_ (##car _e82628274_))
                                   (_tl82648279_ (##cdr _e82628274_)))
                               (let ((_id8282_ _hd82638277_))
                                 (let ((_rest8284_ _tl82648279_))
                                   (if '#t
                                       (let ((_bind8286_
                                              (gx#resolve-identifier__opt-lambda3363
                                               _id8282_
                                               '0
                                               _ctx8258_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind8286_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind8286_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where8225_
                                                _spath8224_
                                                _id8282_))
                                           (_lp8255_
                                            _rest8284_
                                            (##structure-ref
                                             _bind8286_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E82618270_))))))
                           (_E82618270_)))))
                (let () (_E82608288_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp8255_)
                                      _sub8251_
                                      _origin-ctx8253_))
                                   (_E82288237_))))))
                       (_E82288237_)))))
            (let () (_E82278292_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd8222_)
      (gx#core-expand-import%__opt-lambda8295
       (cons 'import-internal% (cons _hd8222_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda7804
      (lambda (_stx7806_ _internal-expand?7807_)
        (let ((_make-export7809_
               (let ((_opt-lambda81688183_
                      (lambda (_bind8170_ _phi8171_ _ctx8172_ _name8173_)
                        (let ((_key8175_
                               (##structure-ref
                                _bind8170_
                                '2
                                gx#binding::t
                                '#f)))
                          (let ((_export-key8177_
                                 (if _name8173_
                                     (gx#core-identifier-key _name8173_)
                                     _key8175_)))
                            (let ()
                              (##structure
                               gx#module-export::t
                               _ctx8172_
                               _key8175_
                               _phi8171_
                               _export-key8177_
                               (let ((_$e8180_
                                      (##structure-instance-of?
                                       _bind8170_
                                       'gx#extern-binding::t)))
                                 (if _$e8180_
                                     _$e8180_
                                     (##structure-direct-instance-of?
                                      _bind8170_
                                      'gx#import-binding::t))))))))))
                 (lambda _g9937_
                   (let ((_g9936_ (length _g9937_)))
                     (cond ((fx= _g9936_ 1)
                            (apply (lambda (_bind8186_)
                                     (let ((_phi8188_
                                            (gx#current-export-expander-phi)))
                                       (let ((_ctx8190_
                                              (gx#current-expander-context)))
                                         (let ((_name8192_ '#f))
                                           (_opt-lambda81688183_
                                            _bind8186_
                                            _phi8188_
                                            _ctx8190_
                                            _name8192_)))))
                                   _g9937_))
                           ((fx= _g9936_ 2)
                            (apply (lambda (_bind8194_ _phi8195_)
                                     (let ((_ctx8197_
                                            (gx#current-expander-context)))
                                       (let ((_name8199_ '#f))
                                         (_opt-lambda81688183_
                                          _bind8194_
                                          _phi8195_
                                          _ctx8197_
                                          _name8199_))))
                                   _g9937_))
                           ((fx= _g9936_ 3)
                            (apply (lambda (_bind8201_ _phi8202_ _ctx8203_)
                                     (let ((_name8205_ '#f))
                                       (_opt-lambda81688183_
                                        _bind8201_
                                        _phi8202_
                                        _ctx8203_
                                        _name8205_)))
                                   _g9937_))
                           ((fx= _g9936_ 4)
                            (apply (lambda (_bind8207_
                                            _phi8208_
                                            _ctx8209_
                                            _name8210_)
                                     (_opt-lambda81688183_
                                      _bind8207_
                                      _phi8208_
                                      _ctx8209_
                                      _name8210_))
                                   _g9937_))
                           (else
                            (error "No clause matching arguments"
                                   _g9937_))))))))
          (let ((_export-imports7811_
                 (lambda (_src7832_ _r7833_)
                   (let ((_current-ctx7835_ (gx#current-expander-context)))
                     (let ((_current-phi7836_
                            (gx#current-export-expander-phi)))
                       (let ((_import->export7837_
                              (lambda (_in7845_)
                                (let ((_in78467854_ _in7845_))
                                  (let ((_E78487858_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _in78467854_))))
                                    (let ((_K78497865_
                                           (lambda (_phi7861_
                                                    _key7862_
                                                    _out7863_)
                                             (if (fx= _phi7861_
                                                      _current-phi7836_)
                                                 (if (eq? _src7832_
                                                          (##structure-ref
                                                           _out7863_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     (##structure
                                                      gx#module-export::t
                                                      _current-ctx7835_
                                                      _key7862_
                                                      _phi7861_
                                                      _key7862_
                                                      '#t)
                                                     '#f)
                                                 '#f))))
                                      (if (direct-struct-instance?
                                           gx#module-import::t
                                           _in78467854_)
                                          (let ((_e78507868_
                                                 (##vector-ref
                                                  _in78467854_
                                                  '1)))
                                            (let ((_out7871_ _e78507868_))
                                              (let ((_e78517873_
                                                     (##vector-ref
                                                      _in78467854_
                                                      '2)))
                                                (let ((_key7876_ _e78517873_))
                                                  (let ((_e78527878_
                                                         (##vector-ref
                                                          _in78467854_
                                                          '3)))
                                                    (let ((_phi7881_
                                                           _e78527878_))
                                                      (_K78497865_
                                                       _phi7881_
                                                       _key7876_
                                                       _out7871_)))))))
                                          (_E78487858_))))))))
                         (let ((_fold-e7838_
                                (lambda (_in7840_ _r7841_)
                                  (let ((_out7843_
                                         (_import->export7837_ _in7840_)))
                                    (if _out7843_
                                        (cons _out7843_ _r7841_)
                                        _r7841_)))))
                           (cons (##structure
                                  gx#export-set::t
                                  _src7832_
                                  _current-phi7836_
                                  (foldl _fold-e7838_
                                         '()
                                         (##structure-ref
                                          _current-ctx7835_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _r7833_))))))))
            (let ((_export!7812_
                   (lambda (_rbody7822_)
                     (let ((_current-ctx7824_ (gx#current-expander-context)))
                       (let ((_fold-e7825_
                              (lambda (_out7829_ _r7830_)
                                (if (##structure-direct-instance-of?
                                     _out7829_
                                     'gx#module-export::t)
                                    (cons _out7829_ _r7830_)
                                    (if (##structure-direct-instance-of?
                                         _out7829_
                                         'gx#export-set::t)
                                        (foldl cons
                                               _r7830_
                                               (##structure-ref
                                                _out7829_
                                                '3
                                                gx#export-set::t
                                                '#f))
                                        _r7830_)))))
                         (let ((_body7827_ (reverse _rbody7822_)))
                           (begin
                             (##structure-set!
                              _current-ctx7824_
                              (foldl _fold-e7825_
                                     (##structure-ref
                                      _current-ctx7824_
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body7827_)
                              '9
                              gx#module-context::t
                              '#f)
                             _body7827_)))))))
              (let ((_expanded-export?7813_
                     (lambda (_e7817_)
                       (let ((_$e7819_
                              (##structure-direct-instance-of?
                               _e7817_
                               'gx#module-export::t)))
                         (if _$e7819_
                             _$e7819_
                             (##structure-direct-instance-of?
                              _e7817_
                              'gx#export-set::t))))))
                (let ((_expand17810_
                       (lambda (_hd7883_ _K7884_ _rest7885_ _r7886_)
                         (let ((_e78877919_ _hd7883_))
                           (let ((_E79147923_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; illegal export"
                                     _stx7806_
                                     _hd7883_))))
                             (let ((_E79048002_
                                    (lambda ()
                                      (if (gx#stx-pair? _e78877919_)
                                          (let ((_e79157927_
                                                 (gx#syntax-e _e78877919_)))
                                            (let ((_hd79167930_
                                                   (##car _e79157927_))
                                                  (_tl79177932_
                                                   (##cdr _e79157927_)))
                                              (if (eq? (gx#stx-e _hd79167930_)
                                                       'import:)
                                                  (let ((_in7935_
                                                         _tl79177932_))
                                                    (if (gx#stx-list? _in7935_)
                                                        ((letrec ((_lp7937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_in-rest7939_ _r7940_)
                             (let ((_e79417948_ _in-rest7939_))
                               (let ((_E79437952_
                                      (lambda ()
                                        (_K7884_ _rest7885_ _r7940_))))
                                 (let ((_E79427998_
                                        (lambda ()
                                          (if (gx#stx-pair? _e79417948_)
                                              (let ((_e79447956_
                                                     (gx#syntax-e
                                                      _e79417948_)))
                                                (let ((_hd79457959_
                                                       (##car _e79447956_))
                                                      (_tl79467961_
                                                       (##cdr _e79447956_)))
                                                  (let ((_hd7964_
                                                         _hd79457959_))
                                                    (let ((_in-rest7966_
                                                           _tl79467961_))
                                                      (if '#t
                                                          (let ((_src7996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#core-bound-module? _hd7964_)
                             (gx#syntax-local-e__0 _hd7964_)
                             (if (gx#core-library-module-path? _hd7964_)
                                 (gx#import-module__0
                                  (gx#core-resolve-library-module-path
                                   _hd7964_))
                                 (if (gx#stx-string? _hd7964_)
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__opt-lambda9547
                                       _hd7964_
                                       (gx#stx-source _stx7806_)))
                                     (let ((_e79677974_ _hd7964_))
                                       (let ((_E79697978_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal re-export"
                                                 _stx7806_
                                                 _hd7964_))))
                                         (let ((_E79687992_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e79677974_)
                                                      (let ((_e79707982_
                                                             (gx#syntax-e
                                                              _e79677974_)))
                                                        (let ((_hd79717985_
                                                               (##car _e79707982_))
                                                              (_tl79727987_
                                                               (##cdr _e79707982_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd79717985_)
                           'in:)
                      (let ((_spath7990_ _tl79727987_))
                        (if '#t
                            (gx#core-import-nested-module
                             _spath7990_
                             _stx7806_)
                            (_E79697978_)))
                      (_E79697978_))))
              (_E79697978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E79687992_))))))))))
                    (_lp7937_
                     _in-rest7966_
                     (_export-imports7811_ _src7996_ _r7940_)))
                  (_E79437952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E79437952_)))))
                                   (let () (_E79427998_))))))))
                   _lp7937_)
                 _in7935_
                 _r7886_)
                (_E79147923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E79147923_))))
                                          (_E79147923_)))))
                               (let ((_E78918041_
                                      (lambda ()
                                        (if (gx#stx-pair? _e78877919_)
                                            (let ((_e79058006_
                                                   (gx#syntax-e _e78877919_)))
                                              (let ((_hd79068009_
                                                     (##car _e79058006_))
                                                    (_tl79078011_
                                                     (##cdr _e79058006_)))
                                                (if (eq? (gx#stx-e
                                                          _hd79068009_)
                                                         'rename:)
                                                    (if (gx#stx-pair?
                                                         _tl79078011_)
                                                        (let ((_e79088014_
                                                               (gx#syntax-e
                                                                _tl79078011_)))
                                                          (let ((_hd79098017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e79088014_))
                        (_tl79108019_ (##cdr _e79088014_)))
                    (let ((_id8022_ _hd79098017_))
                      (if (gx#stx-pair? _tl79108019_)
                          (let ((_e79118024_ (gx#syntax-e _tl79108019_)))
                            (let ((_hd79128027_ (##car _e79118024_))
                                  (_tl79138029_ (##cdr _e79118024_)))
                              (let ((_name8032_ _hd79128027_))
                                (if (gx#stx-null? _tl79138029_)
                                    (if '#t
                                        (let ((_phi8034_
                                               (gx#current-export-expander-phi)))
                                          (let ((_$e8036_
                                                 (gx#core-resolve-identifier__1
                                                  _id8022_
                                                  _phi8034_)))
                                            (if _$e8036_
                                                ((lambda (_bind8039_)
                                                   (_K7884_ _rest7885_
                                                            (cons (_make-export7809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind8039_
                           _phi8034_
                           (gx#current-expander-context)
                           _name8032_)
                          _r7886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e8036_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Reference to unbound identifier"
                                                 _stx7806_
                                                 _hd7883_
                                                 _id8022_))))
                                        (_E79048002_))
                                    (_E79048002_)))))
                          (_E79048002_)))))
                (_E79048002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E79048002_))))
                                            (_E79048002_)))))
                                 (let ((_E78908090_
                                        (lambda ()
                                          (if (gx#stx-pair? _e78877919_)
                                              (let ((_e78928045_
                                                     (gx#syntax-e
                                                      _e78877919_)))
                                                (let ((_hd78938048_
                                                       (##car _e78928045_))
                                                      (_tl78948050_
                                                       (##cdr _e78928045_)))
                                                  (if (eq? (gx#stx-e
                                                            _hd78938048_)
                                                           'spec:)
                                                      (if (gx#stx-pair?
                                                           _tl78948050_)
                                                          (let ((_e78958053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl78948050_)))
                    (let ((_hd78968056_ (##car _e78958053_))
                          (_tl78978058_ (##cdr _e78958053_)))
                      (let ((_phi8061_ _hd78968056_))
                        (if (gx#stx-pair? _tl78978058_)
                            (let ((_e78988063_ (gx#syntax-e _tl78978058_)))
                              (let ((_hd78998066_ (##car _e78988063_))
                                    (_tl79008068_ (##cdr _e78988063_)))
                                (let ((_id8071_ _hd78998066_))
                                  (if (gx#stx-pair? _tl79008068_)
                                      (let ((_e79018073_
                                             (gx#syntax-e _tl79008068_)))
                                        (let ((_hd79028076_
                                               (##car _e79018073_))
                                              (_tl79038078_
                                               (##cdr _e79018073_)))
                                          (let ((_name8081_ _hd79028076_))
                                            (if (gx#stx-null? _tl79038078_)
                                                (if (if (gx#stx-fixnum?
                                                         _phi8061_)
                                                        (if (gx#identifier?
                                                             _id8071_)
                                                            (gx#identifier?
                                                             _name8081_)
                                                            '#f)
                                                        '#f)
                                                    (let ((_phi8083_
                                                           (gx#stx-e
                                                            _phi8061_)))
                                                      (let ((_$e8085_
                                                             (gx#core-resolve-identifier__1
                                                              _id8071_
                                                              _phi8083_)))
                                                        (if _$e8085_
                                                            ((lambda (_bind8088_)
                                                               (_K7884_ _rest7885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (_make-export7809_
                                       _bind8088_
                                       _phi8083_
                                       (gx#current-expander-context)
                                       _name8081_)
                                      _r7886_)))
                     _$e8085_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _stx7806_
                     _hd7883_
                     _id8071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E78918041_))
                                                (_E78918041_)))))
                                      (_E78918041_)))))
                            (_E78918041_)))))
                  (_E78918041_))
              (_E78918041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E78918041_)))))
                                   (let ((_E78898101_
                                          (lambda ()
                                            (let ((_id8094_ _e78877919_))
                                              (if (gx#identifier? _id8094_)
                                                  (let ((_$e8096_
                                                         (gx#core-resolve-identifier__1
                                                          _id8094_
                                                          (gx#current-export-expander-phi))))
                                                    (if _$e8096_
                                                        ((lambda (_bind8099_)
                                                           (_K7884_ _rest7885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export7809_ _bind8099_) _r7886_)))
                 _$e8096_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx7806_
                 _hd7883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E78908090_))))))
                                     (let ((_E78888165_
                                            (lambda ()
                                              (if (eq? (gx#stx-e _e78877919_)
                                                       '#t)
                                                  (if '#t
                                                      (let ((_current-ctx8105_
                                                             (gx#current-expander-context)))
                                                        (let ((_current-phi8107_
                                                               (gx#current-export-expander-phi)))
                                                          (let ((_phi-ctx8109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-context-shift
                          _current-ctx8105_
                          _current-phi8107_)))
                    (let ((_phi-bind8111_
                           (hash->list
                            (##structure-ref
                             _phi-ctx8109_
                             '2
                             gx#expander-context::t
                             '#f))))
                      (let ()
                        ((letrec ((_lp8114_
                                   (lambda (_bind-rest8116_ _set8117_)
                                     (let ((_bind-rest81188128_
                                            _bind-rest8116_))
                                       (let ((_E81218132_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _bind-rest81188128_))))
                                         (let ((_else81208136_
                                                (lambda ()
                                                  (_K7884_ _rest7885_
                                                           (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#export-set::t
                          '#f
                          _current-phi8107_
                          _set8117_)
                         _r7886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_K81228146_
                                                  (lambda (_bind-rest8139_
                                                           _bind8140_
                                                           _key8141_)
                                                    (if (let ((_$e8143_
                                                               (##structure-direct-instance-of?
                                                                _bind8140_
                                                                'gx#import-binding::t)))
                                                          (if _$e8143_
                                                              _$e8143_
                                                              (gx#private-feature-binding?
                                                               _bind8140_)))
                                                        (_lp8114_
                                                         _bind-rest8139_
                                                         _set8117_)
                                                        (_lp8114_
                                                         _bind-rest8139_
                                                         (cons (_make-export7809_
                                                                _bind8140_
                                                                _current-phi8107_
                                                                _current-ctx8105_)
                                                               _set8117_))))))
                                             (if (##pair? _bind-rest81188128_)
                                                 (let ((_hd81238149_
                                                        (##car _bind-rest81188128_))
                                                       (_tl81248151_
                                                        (##cdr _bind-rest81188128_)))
                                                   (if (##pair? _hd81238149_)
                                                       (let ((_hd81258154_
                                                              (##car _hd81238149_))
                                                             (_tl81268156_
                                                              (##cdr _hd81238149_)))
                                                         (let ((_key8159_
                                                                _hd81258154_))
                                                           (let ((_bind8161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81268156_))
                     (let ((_bind-rest8163_ _tl81248151_))
                       (_K81228146_ _bind-rest8163_ _bind8161_ _key8159_)))))
               (_else81208136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else81208136_)))))))))
                           _lp8114_)
                         _phi-bind8111_
                         '()))))))
              (_E78898101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E78898101_)))))
                                       (let () (_E78888165_))))))))))))
                  (let ((_rbody7815_
                         (gx#core-expand-import/export
                          _stx7806_
                          gx#module-export?
                          'apply-export-expander
                          gx#current-export-expander-phi
                          _expand17810_)))
                    (if _internal-expand?7807_
                        (reverse _rbody7815_)
                        (gx#core-quote-syntax__1
                         (gx#core-cons '%#export (_export!7812_ _rbody7815_))
                         (gx#stx-source _stx7806_)))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx8215_)
          (let ((_internal-expand?8217_ '#f))
            (gx#core-expand-export%__opt-lambda7804
             _stx8215_
             _internal-expand?8217_))))
      (define gx#core-expand-export%
        (lambda _g9939_
          (let ((_g9938_ (length _g9939_)))
            (cond ((fx= _g9938_ 1)
                   (apply (lambda (_stx8215_)
                            (gx#core-expand-export%__0 _stx8215_))
                          _g9939_))
                  ((fx= _g9938_ 2)
                   (apply (lambda (_stx8219_ _internal-expand?8220_)
                            (gx#core-expand-export%__opt-lambda7804
                             _stx8219_
                             _internal-expand?8220_))
                          _g9939_))
                  (else (error "No clause matching arguments" _g9939_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd7803_)
      (gx#core-expand-export%__opt-lambda7804
       (cons 'export-macro% (cons _hd7803_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx7773_)
      (let ((_e77747781_ _stx7773_))
        (let ((_E77767785_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77747781_))))
          (let ((_E77757799_
                 (lambda ()
                   (if (gx#stx-pair? _e77747781_)
                       (let ((_e77777789_ (gx#syntax-e _e77747781_)))
                         (let ((_hd77787792_ (##car _e77777789_))
                               (_tl77797794_ (##cdr _e77777789_)))
                           (let ((_body7797_ _tl77797794_))
                             (if (gx#identifier-list? _body7797_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body7797_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body7797_))
                                    (gx#stx-source _stx7773_)))
                                 (_E77767785_)))))
                       (_E77767785_)))))
            (let () (_E77757799_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda7737
      (lambda (_id7739_ _private?7740_ _phi7741_ _ctx7742_)
        (gx#core-bind-syntax!__opt-lambda4832
         _id7739_
         ((if _private?7740_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id7739_))
         _private?7740_
         _phi7741_
         _ctx7742_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id7747_)
          (let ((_private?7749_ '#f))
            (let ((_phi7751_ (gx#current-expander-phi)))
              (let ((_ctx7753_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda7737
                 _id7747_
                 _private?7749_
                 _phi7751_
                 _ctx7753_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id7755_ _private?7756_)
          (let ((_phi7758_ (gx#current-expander-phi)))
            (let ((_ctx7760_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda7737
               _id7755_
               _private?7756_
               _phi7758_
               _ctx7760_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id7762_ _private?7763_ _phi7764_)
          (let ((_ctx7766_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda7737
             _id7762_
             _private?7763_
             _phi7764_
             _ctx7766_))))
      (define gx#core-bind-feature!
        (lambda _g9941_
          (let ((_g9940_ (length _g9941_)))
            (cond ((fx= _g9940_ 1)
                   (apply (lambda (_id7747_)
                            (gx#core-bind-feature!__0 _id7747_))
                          _g9941_))
                  ((fx= _g9940_ 2)
                   (apply (lambda (_id7755_ _private?7756_)
                            (gx#core-bind-feature!__1 _id7755_ _private?7756_))
                          _g9941_))
                  ((fx= _g9940_ 3)
                   (apply (lambda (_id7762_ _private?7763_ _phi7764_)
                            (gx#core-bind-feature!__2
                             _id7762_
                             _private?7763_
                             _phi7764_))
                          _g9941_))
                  ((fx= _g9940_ 4)
                   (apply (lambda (_id7768_ _private?7769_ _phi7770_ _ctx7771_)
                            (gx#core-bind-feature!__opt-lambda7737
                             _id7768_
                             _private?7769_
                             _phi7770_
                             _ctx7771_))
                          _g9941_))
                  (else (error "No clause matching arguments" _g9941_)))))))))

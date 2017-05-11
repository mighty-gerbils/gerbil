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
    (lambda _$args9911_
      (apply make-struct-instance gx#module-import::t _$args9911_)))
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
    (lambda _$args9908_
      (apply make-struct-instance gx#module-export::t _$args9908_)))
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
    (lambda _$args9905_
      (apply make-struct-instance gx#import-set::t _$args9905_)))
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
    (lambda _$args9902_
      (apply make-struct-instance gx#export-set::t _$args9902_)))
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
    (lambda _$args9899_
      (apply make-struct-instance gx#import-expander::t _$args9899_)))
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
    (lambda _$args9896_
      (apply make-struct-instance gx#export-expander::t _$args9896_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self9890_ _id9891_ _super9892_ _ns9893_ _path9894_)
      (direct-struct-instance-init!
       _self9890_
       _id9891_
       (make-hash-table-eq)
       _super9892_
       '#f
       '#f
       _ns9893_
       _path9894_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda9854
      (lambda (_self9856_ _ctx9857_ _root9858_)
        (let ((_super9866_
               (let ((_$e9860_ _root9858_))
                 (if _$e9860_
                     _$e9860_
                     (let ((_$e9863_ (gx#core-context-root__0)))
                       (if _$e9863_
                           _$e9863_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx9857_
              (let ((_id9869_
                     (##structure-ref _ctx9857_ '1 gx#expander-context::t '#f))
                    (_path9870_
                     (##structure-ref _ctx9857_ '7 gx#module-context::t '#f))
                    (_in9871_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx9857_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e9872_ (make-promise
                              (lambda () (gx#eval-module _ctx9857_)))))
                (begin
                  (direct-struct-instance-init!
                   _self9856_
                   _id9869_
                   (make-hash-table-eq)
                   _super9866_
                   '#f
                   '#f
                   _path9870_
                   _in9871_
                   _e9872_)
                  (for-each
                   (lambda (_g98739875_)
                     (gx#core-bind-weak-import!__opt-lambda9379
                      _g98739875_
                      _self9856_))
                   _in9871_)))
              (direct-struct-instance-init!
               _self9856_
               '#f
               (make-hash-table-eq)
               _super9866_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self9881_ _ctx9882_)
          (let ((_root9884_ '#f))
            (gx#prelude-context:::init!__opt-lambda9854
             _self9881_
             _ctx9882_
             _root9884_))))
      (define gx#prelude-context:::init!
        (lambda _g9918_
          (let ((_g9917_ (length _g9918_)))
            (cond ((fx= _g9917_ 2)
                   (apply gx#prelude-context:::init!__0 _g9918_))
                  ((fx= _g9917_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda9854 _g9918_))
                  (else (error "No clause matching arguments" _g9918_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self9852_ _e9853_)
      (direct-struct-instance-init!
       _self9852_
       _e9853_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self9849_ _e9850_)
      (direct-struct-instance-init!
       _self9849_
       _e9850_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g98419844_ _g98429846_)
      (gx#core-apply-user-expander__opt-lambda3401
       _g98419844_
       _g98429846_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g98349837_ _g98359839_)
      (gx#core-apply-user-expander__opt-lambda3401
       _g98349837_
       _g98359839_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx9828_)
      (let ((_path9830_
             (##structure-ref _ctx9828_ '7 gx#module-context::t '#f)))
        (let ((_path9832_
               (if (pair? _path9830_) (last _path9830_) _path9830_)))
          (let () (if (string? _path9832_) _path9832_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda9802
      (lambda (_path9804_ _reload?9805_ _eval?9806_)
        (let ((_ctx9808_
               ((gx#current-expander-module-import) _path9804_ _reload?9805_)))
          (begin
            (if (if _ctx9808_ _eval?9806_ '#f)
                (gx#eval-module _ctx9808_)
                '#!void)
            _ctx9808_))))
    (begin
      (define gx#import-module__0
        (lambda (_path9813_)
          (let ((_reload?9815_ '#f))
            (let ((_eval?9817_ '#f))
              (gx#import-module__opt-lambda9802
               _path9813_
               _reload?9815_
               _eval?9817_)))))
      (define gx#import-module__1
        (lambda (_path9819_ _reload?9820_)
          (let ((_eval?9822_ '#f))
            (gx#import-module__opt-lambda9802
             _path9819_
             _reload?9820_
             _eval?9822_))))
      (define gx#import-module
        (lambda _g9920_
          (let ((_g9919_ (length _g9920_)))
            (cond ((fx= _g9919_ 1) (apply gx#import-module__0 _g9920_))
                  ((fx= _g9919_ 2) (apply gx#import-module__1 _g9920_))
                  ((fx= _g9919_ 3)
                   (apply gx#import-module__opt-lambda9802 _g9920_))
                  (else (error "No clause matching arguments" _g9920_))))))))
  (define gx#eval-module
    (lambda (_mod9801_) ((gx#current-expander-module-eval) _mod9801_)))
  (define gx#core-eval-module
    (lambda (_obj9786_)
      (let ((_force-e9788_
             (lambda (_getf9797_ _e9798_)
               (call-with-parameters
                (lambda () (force (_getf9797_ _e9798_)))
                gx#current-expander-context
                _e9798_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur9790_
                   (lambda (_e9792_)
                     (if (##structure-instance-of?
                          _e9792_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e9794_
                                  (gx#core-context-prelude__opt-lambda9767
                                   _e9792_)))
                             (if _$e9794_ (_recur9790_ _$e9794_) '#!void))
                           (_force-e9788_ gx#module-context-e _e9792_))
                         (if (##structure-instance-of?
                              _e9792_
                              'gx#prelude-context::t)
                             (_force-e9788_ gx#prelude-context-e _e9792_)
                             (if (gx#stx-string? _e9792_)
                                 (_recur9790_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e9792_)))
                                 (if (gx#core-library-module-path? _e9792_)
                                     (_recur9790_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e9792_)))
                                     (error '"Cannot eval module"
                                            _obj9786_))))))))
           _recur9790_)
         _obj9786_))))
  (begin
    (define gx#core-context-prelude__opt-lambda9767
      (lambda (_ctx9769_)
        ((letrec ((_lp9771_
                   (lambda (_e9773_)
                     (if (let ((_$e9775_
                                (##structure-instance-of?
                                 _e9773_
                                 'gx#module-context::t)))
                           (if _$e9775_
                               _$e9775_
                               (##structure-instance-of?
                                _e9773_
                                'gx#local-context::t)))
                         (_lp9771_
                          (##structure-ref _e9773_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e9773_
                              'gx#prelude-context::t)
                             _e9773_
                             '#f)))))
           _lp9771_)
         _ctx9769_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx9782_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda9767 _ctx9782_))))
      (define gx#core-context-prelude
        (lambda _g9922_
          (let ((_g9921_ (length _g9922_)))
            (cond ((fx= _g9921_ 0) (apply gx#core-context-prelude__0 _g9922_))
                  ((fx= _g9921_ 1)
                   (apply gx#core-context-prelude__opt-lambda9767 _g9922_))
                  (else (error "No clause matching arguments" _g9922_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx9759_)
      (let ((_ht9761_ (gx#current-expander-module-registry)))
        (let ((_$e9763_ (hash-get _ht9761_ _ctx9759_)))
          (if _$e9763_
              (values _$e9763_)
              (let ((_pre9766_
                     (let ((__obj9913 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj9913 _ctx9759_)
                         __obj9913))))
                (begin
                  (hash-put! _ht9761_ _ctx9759_ _pre9766_)
                  _pre9766_)))))))
  (begin
    (define gx#core-import-module__opt-lambda9711
      (lambda (_rpath9713_ _reload?9714_)
        (let ((_import-source9716_
               (lambda (_path9728_)
                 (begin
                   (if (member _path9728_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path9728_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g9923_ (gx#core-read-module _path9728_)))
                        (begin
                          (let ((_g9924_ (values-count _g9923_)))
                            (if (not (fx= _g9924_ 4))
                                (error "Context expects 4 values" _g9924_)))
                          (let ((_pre9731_ (values-ref _g9923_ 0))
                                (_id9732_ (values-ref _g9923_ 1))
                                (_ns9733_ (values-ref _g9923_ 2))
                                (_body9734_ (values-ref _g9923_ 3)))
                            (let ((_prelude9739_
                                   (if (##structure-instance-of?
                                        _pre9731_
                                        'gx#prelude-context::t)
                                       _pre9731_
                                       (if (##structure-instance-of?
                                            _pre9731_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre9731_)
                                           (if (string? _pre9731_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre9731_))
                                               (if (not _pre9731_)
                                                   (let ((_$e9736_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e9736_
                                                         _$e9736_
                                                         (let ((__obj9914
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj9914 '#f)
                     __obj9914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath9713_
                                                          _pre9731_)))))))
                              (let ((_ctx9741_
                                     (let ((__obj9915
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj9915
                                          _id9732_
                                          _prelude9739_
                                          _ns9733_
                                          _path9728_)
                                         __obj9915))))
                                (let ((_body9743_
                                       (gx#core-expand-module-begin
                                        _body9734_
                                        _ctx9741_)))
                                  (let ((_body9745_
                                         (gx#core-quote-syntax__opt-lambda2761
                                          (gx#core-cons '%#begin _body9743_)
                                          _path9728_
                                          _ctx9741_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx9741_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body9745_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx9741_
                                         _body9745_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _path9728_
                                         _ctx9741_)
                                        (hash-put!
                                         (gx#current-expander-module-registry)
                                         _id9732_
                                         _ctx9741_)
                                        _ctx9741_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path9728_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e9718_
                 (if (not _reload?9714_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath9713_)
                     '#f)))
            (if _$e9718_
                (values _$e9718_)
                (if (gx#core-library-module-path? _rpath9713_)
                    (let ((_ctx9721_
                           (gx#core-import-module__opt-lambda9711
                            (gx#core-resolve-library-module-path _rpath9713_)
                            _reload?9714_)))
                      (begin
                        (hash-put!
                         (gx#current-expander-module-registry)
                         _rpath9713_
                         _ctx9721_)
                        _ctx9721_))
                    (let ((_npath9723_ (path-normalize _rpath9713_)))
                      (let ((_$e9725_
                             (if (not _reload?9714_)
                                 (hash-get
                                  (gx#current-expander-module-registry)
                                  _npath9723_)
                                 '#f)))
                        (if _$e9725_
                            (values _$e9725_)
                            (_import-source9716_ _npath9723_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath9752_)
          (let ((_reload?9754_ '#f))
            (gx#core-import-module__opt-lambda9711
             _rpath9752_
             _reload?9754_))))
      (define gx#core-import-module
        (lambda _g9926_
          (let ((_g9925_ (length _g9926_)))
            (cond ((fx= _g9925_ 1) (apply gx#core-import-module__0 _g9926_))
                  ((fx= _g9925_ 2)
                   (apply gx#core-import-module__opt-lambda9711 _g9926_))
                  (else (error "No clause matching arguments" _g9926_))))))))
  (define gx#core-read-module
    (lambda (_path9576_)
      ((letrec ((_lp9578_
                 (lambda (_body9580_ _pre9581_ _ns9582_ _pkg9583_)
                   (let ((_e95849608_ _body9580_))
                     (let ((_E96009626_
                            (lambda ()
                              (let ((_prelude9612_
                                     (if (gx#core-bound-module-prelude?
                                          _pre9581_)
                                         (gx#syntax-local-e__0 _pre9581_)
                                         (if (gx#core-library-module-path?
                                              _pre9581_)
                                             (gx#core-resolve-library-module-path
                                              _pre9581_)
                                             (if (gx#stx-string? _pre9581_)
                                                 (gx#core-resolve-module-path__opt-lambda9549
                                                  _pre9581_
                                                  _path9576_)
                                                 (gx#stx-e _pre9581_))))))
                                (let ((_path-id9614_
                                       (gx#core-module-path->namespace
                                        _path9576_)))
                                  (let ((_pkg-id9616_
                                         (if _pkg9583_
                                             (string-append
                                              _pkg9583_
                                              '"/"
                                              _path-id9614_)
                                             _path-id9614_)))
                                    (let ((_module-id9618_
                                           (string->symbol _pkg-id9616_)))
                                      (let ((_module-ns9623_
                                             (let ((_$e9620_ _ns9582_))
                                               (if _$e9620_
                                                   _$e9620_
                                                   _pkg-id9616_))))
                                        (let ()
                                          (values _prelude9612_
                                                  _module-id9618_
                                                  _module-ns9623_
                                                  _body9580_))))))))))
                       (let ((_E95939655_
                              (lambda ()
                                (if (gx#stx-pair? _e95849608_)
                                    (let ((_e96019630_
                                           (gx#syntax-e _e95849608_)))
                                      (let ((_hd96029633_ (##car _e96019630_))
                                            (_tl96039635_ (##cdr _e96019630_)))
                                        (if (eq? (gx#stx-e _hd96029633_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl96039635_)
                                                (let ((_e96049638_
                                                       (gx#syntax-e
                                                        _tl96039635_)))
                                                  (let ((_hd96059641_
                                                         (##car _e96049638_))
                                                        (_tl96069643_
                                                         (##cdr _e96049638_)))
                                                    (let ((_pkg9646_
                                                           _hd96059641_))
                                                      (let ((_rest9648_
                                                             _tl96069643_))
                                                        (if '#t
                                                            (let ((_pkg9653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg9646_)
                               (symbol->string (gx#stx-e _pkg9646_))
                               (if (let ((_$e9650_ (gx#stx-string? _pkg9646_)))
                                     (if _$e9650_
                                         _$e9650_
                                         (gx#stx-false? _pkg9646_)))
                                   (gx#stx-e _pkg9646_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg9646_)))))
                      (_lp9578_ _rest9648_ _pre9581_ _ns9582_ _pkg9653_))
                    (_E96009626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E96009626_))
                                            (_E96009626_))))
                                    (_E96009626_)))))
                         (let ((_E95869684_
                                (lambda ()
                                  (if (gx#stx-pair? _e95849608_)
                                      (let ((_e95949659_
                                             (gx#syntax-e _e95849608_)))
                                        (let ((_hd95959662_
                                               (##car _e95949659_))
                                              (_tl95969664_
                                               (##cdr _e95949659_)))
                                          (if (eq? (gx#stx-e _hd95959662_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl95969664_)
                                                  (let ((_e95979667_
                                                         (gx#syntax-e
                                                          _tl95969664_)))
                                                    (let ((_hd95989670_
                                                           (##car _e95979667_))
                                                          (_tl95999672_
                                                           (##cdr _e95979667_)))
                                                      (let ((_ns9675_
                                                             _hd95989670_))
                                                        (let ((_rest9677_
                                                               _tl95999672_))
                                                          (if '#t
                                                              (let ((_ns9682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns9675_)
                                 (symbol->string (gx#stx-e _ns9675_))
                                 (if (let ((_$e9679_
                                            (gx#stx-string? _ns9675_)))
                                       (if _$e9679_
                                           _$e9679_
                                           (gx#stx-false? _ns9675_)))
                                     (gx#stx-e _ns9675_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns9675_)))))
                        (_lp9578_ _rest9677_ _pre9581_ _ns9682_ _pkg9583_))
                      (_E95939655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E95939655_))
                                              (_E95939655_))))
                                      (_E95939655_)))))
                           (let ((_E95859708_
                                  (lambda ()
                                    (if (gx#stx-pair? _e95849608_)
                                        (let ((_e95879688_
                                               (gx#syntax-e _e95849608_)))
                                          (let ((_hd95889691_
                                                 (##car _e95879688_))
                                                (_tl95899693_
                                                 (##cdr _e95879688_)))
                                            (if (eq? (gx#stx-e _hd95889691_)
                                                     'prelude:)
                                                (if (gx#stx-pair? _tl95899693_)
                                                    (let ((_e95909696_
                                                           (gx#syntax-e
                                                            _tl95899693_)))
                                                      (let ((_hd95919699_
                                                             (##car _e95909696_))
                                                            (_tl95929701_
                                                             (##cdr _e95909696_)))
                                                        (let ((_prelude9704_
                                                               _hd95919699_))
                                                          (let ((_rest9706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl95929701_))
                    (if '#t
                        (_lp9578_ _rest9706_ _prelude9704_ _ns9582_ _pkg9583_)
                        (_E95869684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95869684_))
                                                (_E95869684_))))
                                        (_E95869684_)))))
                             (let () (_E95859708_))))))))))
         _lp9578_)
       (read-syntax-from-file _path9576_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path9574_)
      (path-strip-extension (path-strip-directory _path9574_))))
  (define gx#core-module-path->id
    (lambda (_path9572_)
      (string->symbol (gx#core-module-path->namespace _path9572_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda9549
      (lambda (_stx-path9551_ _rel9552_)
        (let ((_path9554_ (gx#stx-e _stx-path9551_)))
          (let ((_path9556_
                 (if (equal? (path-extension _path9554_) '".ss")
                     _path9554_
                     (string-append _path9554_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda2725
               _path9556_
               (let ((_$e9559_ (gx#stx-source _stx-path9551_)))
                 (if _$e9559_ _$e9559_ _rel9552_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path9565_)
          (let ((_rel9567_ '#f))
            (gx#core-resolve-module-path__opt-lambda9549
             _stx-path9565_
             _rel9567_))))
      (define gx#core-resolve-module-path
        (lambda _g9928_
          (let ((_g9927_ (length _g9928_)))
            (cond ((fx= _g9927_ 1)
                   (apply gx#core-resolve-module-path__0 _g9928_))
                  ((fx= _g9927_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda9549 _g9928_))
                  (else (error "No clause matching arguments" _g9928_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath9497_)
      (let ((_spath9499_ (symbol->string (gx#stx-e _libpath9497_))))
        (let ((_spath9501_
               (substring _spath9499_ '1 (string-length _spath9499_))))
          (let ()
            ((letrec ((_lp9504_
                       (lambda (_rest9506_)
                         (let ((_rest95079516_ _rest9506_))
                           (let ((_E95109520_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest95079516_))))
                             (let ((_try-match95099528_
                                    (lambda ()
                                      (let ((_K95119525_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath9497_))))
                                        (if (##null? _rest95079516_)
                                            (_K95119525_)
                                            (_E95109520_))))))
                               (let ((_K95129538_
                                      (lambda (_rest9531_ _dir9532_)
                                        (let ((_compiled-path9534_
                                               (path-expand
                                                (string-append
                                                 _spath9501_
                                                 '".ssi")
                                                _dir9532_)))
                                          (if (file-exists?
                                               _compiled-path9534_)
                                              (path-normalize
                                               _compiled-path9534_)
                                              (let ((_src-path9536_
                                                     (path-expand
                                                      (string-append
                                                       _spath9501_
                                                       '".ss")
                                                      _dir9532_)))
                                                (if (file-exists?
                                                     _src-path9536_)
                                                    (path-normalize
                                                     _src-path9536_)
                                                    (_lp9504_
                                                     _rest9531_))))))))
                                 (if (##pair? _rest95079516_)
                                     (let ((_hd95139541_
                                            (##car _rest95079516_))
                                           (_tl95149543_
                                            (##cdr _rest95079516_)))
                                       (let ((_dir9546_ _hd95139541_))
                                         (let ((_rest9548_ _tl95149543_))
                                           (_K95129538_
                                            _rest9548_
                                            _dir9546_))))
                                     (_try-match95099528_)))))))))
               _lp9504_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx9495_) (gx#core-special-module-path? _stx9495_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx9490_ _char9491_)
      (if (gx#identifier? _stx9490_)
          (if (interned-symbol? (gx#stx-e _stx9490_))
              (let ((_str9493_ (symbol->string (gx#stx-e _stx9490_))))
                (if (fx> (string-length _str9493_) '1)
                    (eq? (string-ref _str9493_ '0) _char9491_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx9484_)
      (gx#core-bound-identifier?__opt-lambda2815
       _stx9484_
       (lambda (_g94859487_)
         (gx#expander-binding?__opt-lambda2846
          _g94859487_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx9478_)
      (gx#core-bound-identifier?__opt-lambda2815
       _stx9478_
       (lambda (_g94799481_)
         (gx#expander-binding?__opt-lambda2846
          _g94799481_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx9465_)
      (let ((_module-prelude?9467_
             (lambda (_e9473_)
               (let ((_$e9475_
                      (##structure-instance-of?
                       _e9473_
                       'gx#module-context::t)))
                 (if _$e9475_
                     _$e9475_
                     (##structure-instance-of?
                      _e9473_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda2815
         _stx9465_
         (lambda (_g94689470_)
           (gx#expander-binding?__opt-lambda2846
            _g94689470_
            _module-prelude?9467_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda9393
      (lambda (_in9395_ _ctx9396_ _force-weak?9397_)
        (let ((_in93989407_ _in9395_))
          (let ((_E94009411_
                 (lambda () (error '"No clause matching" _in93989407_))))
            (let ((_K94019424_
                   (lambda (_weak?9414_ _phi9415_ _key9416_ _source9417_)
                     (gx#core-bind!__opt-lambda3085
                      _key9416_
                      (let ((_e9419_ (gx#core-resolve-module-export
                                      _source9417_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e9419_ '1 gx#binding::t '#f)
                         _key9416_
                         _phi9415_
                         _e9419_
                         (##structure-ref
                          _source9417_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e9421_ _force-weak?9397_))
                           (if _$e9421_ _$e9421_ _weak?9414_))))
                      gx#core-context-rebind?
                      _phi9415_
                      _ctx9396_))))
              (if (direct-struct-instance? gx#module-import::t _in93989407_)
                  (let ((_e94029427_ (##vector-ref _in93989407_ '1)))
                    (let ((_source9430_ _e94029427_))
                      (let ((_e94039432_ (##vector-ref _in93989407_ '2)))
                        (let ((_key9435_ _e94039432_))
                          (let ((_e94049437_ (##vector-ref _in93989407_ '3)))
                            (let ((_phi9440_ _e94049437_))
                              (let ((_e94059442_
                                     (##vector-ref _in93989407_ '4)))
                                (let ((_weak?9445_ _e94059442_))
                                  (_K94019424_
                                   _weak?9445_
                                   _phi9440_
                                   _key9435_
                                   _source9430_)))))))))
                  (_E94009411_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in9450_)
          (let ((_ctx9452_ (gx#current-expander-context)))
            (let ((_force-weak?9454_ '#f))
              (gx#core-bind-import!__opt-lambda9393
               _in9450_
               _ctx9452_
               _force-weak?9454_)))))
      (define gx#core-bind-import!__1
        (lambda (_in9456_ _ctx9457_)
          (let ((_force-weak?9459_ '#f))
            (gx#core-bind-import!__opt-lambda9393
             _in9456_
             _ctx9457_
             _force-weak?9459_))))
      (define gx#core-bind-import!
        (lambda _g9930_
          (let ((_g9929_ (length _g9930_)))
            (cond ((fx= _g9929_ 1) (apply gx#core-bind-import!__0 _g9930_))
                  ((fx= _g9929_ 2) (apply gx#core-bind-import!__1 _g9930_))
                  ((fx= _g9929_ 3)
                   (apply gx#core-bind-import!__opt-lambda9393 _g9930_))
                  (else (error "No clause matching arguments" _g9930_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda9379
      (lambda (_in9381_ _ctx9382_)
        (gx#core-bind-import!__opt-lambda9393 _in9381_ _ctx9382_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in9387_)
          (let ((_ctx9389_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda9379 _in9387_ _ctx9389_))))
      (define gx#core-bind-weak-import!
        (lambda _g9932_
          (let ((_g9931_ (length _g9932_)))
            (cond ((fx= _g9931_ 1)
                   (apply gx#core-bind-weak-import!__0 _g9932_))
                  ((fx= _g9931_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda9379 _g9932_))
                  (else (error "No clause matching arguments" _g9932_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out9272_)
      (let ((_subst9274_
             (lambda (_key9320_)
               (let ((_key93219329_ _key9320_))
                 (let ((_E93249333_
                        (lambda ()
                          (error '"No clause matching" _key93219329_))))
                   (let ((_else93239337_ (lambda () _key9320_)))
                     (let ((_K93259368_
                            (lambda (_mark9340_ _id9341_)
                              (let ((_mark93429348_ _mark9340_))
                                (let ((_E93449352_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark93429348_))))
                                  (let ((_K93459360_
                                         (lambda (_subst9355_)
                                           (let ((_$e9357_
                                                  (if _subst9355_
                                                      (hash-get
                                                       _subst9355_
                                                       _id9341_)
                                                      '#f)))
                                             (if _$e9357_
                                                 _$e9357_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key9320_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark93429348_)
                                        (let ((_e93469363_
                                               (##vector-ref
                                                _mark93429348_
                                                '1)))
                                          (let ((_subst9366_ _e93469363_))
                                            (_K93459360_ _subst9366_)))
                                        (_E93449352_))))))))
                       (if (##pair? _key93219329_)
                           (let ((_hd93269371_ (##car _key93219329_))
                                 (_tl93279373_ (##cdr _key93219329_)))
                             (let ((_id9376_ _hd93269371_))
                               (let ((_mark9378_ _tl93279373_))
                                 (_K93259368_ _mark9378_ _id9376_))))
                           (_else93239337_)))))))))
        (let ((_out92759285_ _out9272_))
          (let ((_E92779289_
                 (lambda () (error '"No clause matching" _out92759285_))))
            (let ((_K92789296_
                   (lambda (_phi9292_ _key9293_ _ctx9294_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx9294_ _phi9292_)
                      (_subst9274_ _key9293_)))))
              (if (direct-struct-instance? gx#module-export::t _out92759285_)
                  (let ((_e92799299_ (##vector-ref _out92759285_ '1)))
                    (let ((_ctx9302_ _e92799299_))
                      (let ((_e92809304_ (##vector-ref _out92759285_ '2)))
                        (let ((_key9307_ _e92809304_))
                          (let ((_e92819309_ (##vector-ref _out92759285_ '3)))
                            (let ((_phi9312_ _e92819309_))
                              (let ((_e92829314_
                                     (##vector-ref _out92759285_ '4)))
                                (let ((_e92839317_
                                       (##vector-ref _out92759285_ '5)))
                                  (_K92789296_
                                   _phi9312_
                                   _key9307_
                                   _ctx9302_)))))))))
                  (_E92779289_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda9195
      (lambda (_out9197_ _rename9198_ _dphi9199_)
        (let ((_out92009210_ _out9197_))
          (let ((_E92029214_
                 (lambda () (error '"No clause matching" _out92009210_))))
            (let ((_K92039226_
                   (lambda (_weak?9217_
                            _name9218_
                            _phi9219_
                            _key9220_
                            _ctx9221_)
                     (##structure
                      gx#module-import::t
                      _out9197_
                      (let ((_$e9223_ _rename9198_))
                        (if _$e9223_ _$e9223_ _name9218_))
                      (fx+ _phi9219_ _dphi9199_)
                      _weak?9217_))))
              (if (direct-struct-instance? gx#module-export::t _out92009210_)
                  (let ((_e92049229_ (##vector-ref _out92009210_ '1)))
                    (let ((_ctx9232_ _e92049229_))
                      (let ((_e92059234_ (##vector-ref _out92009210_ '2)))
                        (let ((_key9237_ _e92059234_))
                          (let ((_e92069239_ (##vector-ref _out92009210_ '3)))
                            (let ((_phi9242_ _e92069239_))
                              (let ((_e92079244_
                                     (##vector-ref _out92009210_ '4)))
                                (let ((_name9247_ _e92079244_))
                                  (let ((_e92089249_
                                         (##vector-ref _out92009210_ '5)))
                                    (let ((_weak?9252_ _e92089249_))
                                      (_K92039226_
                                       _weak?9252_
                                       _name9247_
                                       _phi9242_
                                       _key9237_
                                       _ctx9232_)))))))))))
                  (_E92029214_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out9257_)
          (let ((_rename9259_ '#f))
            (let ((_dphi9261_ '0))
              (gx#core-module-export->import__opt-lambda9195
               _out9257_
               _rename9259_
               _dphi9261_)))))
      (define gx#core-module-export->import__1
        (lambda (_out9263_ _rename9264_)
          (let ((_dphi9266_ '0))
            (gx#core-module-export->import__opt-lambda9195
             _out9263_
             _rename9264_
             _dphi9266_))))
      (define gx#core-module-export->import
        (lambda _g9934_
          (let ((_g9933_ (length _g9934_)))
            (cond ((fx= _g9933_ 1)
                   (apply gx#core-module-export->import__0 _g9934_))
                  ((fx= _g9933_ 2)
                   (apply gx#core-module-export->import__1 _g9934_))
                  ((fx= _g9933_ 3)
                   (apply gx#core-module-export->import__opt-lambda9195
                          _g9934_))
                  (else (error "No clause matching arguments" _g9934_))))))))
  (define gx#core-expand-module%
    (lambda (_stx9125_)
      (let ((_make-context9127_
             (lambda (_id9178_)
               (let ((_super9180_ (gx#current-expander-context)))
                 (let ((_bind-id9182_ (gx#stx-e _id9178_)))
                   (let ((_mod-id9184_
                          (if (##structure-instance-of?
                               _super9180_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super9180_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id9182_)
                              _bind-id9182_)))
                     (let ((_ns9186_ (symbol->string _mod-id9184_)))
                       (let ((_path9193_
                              (if (##structure-instance-of?
                                   _super9180_
                                   'gx#module-context::t)
                                  (let ((_path9188_
                                         (##structure-ref
                                          _super9180_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e9190_ (pair? _path9188_)))
                                          (if _$e9190_
                                              _$e9190_
                                              (null? _path9188_)))
                                        (cons _bind-id9182_ _path9188_)
                                        (if (not _path9188_)
                                            _bind-id9182_
                                            (cons _bind-id9182_
                                                  (cons _path9188_ '())))))
                                  _bind-id9182_)))
                         (let ()
                           (let ((__obj9916
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj9916
                                _mod-id9184_
                                _super9180_
                                _ns9186_
                                _path9193_)
                               __obj9916)))))))))))
        (let ((_e91289138_ _stx9125_))
          (let ((_E91309142_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e91289138_))))
            (let ((_E91299174_
                   (lambda ()
                     (if (gx#stx-pair? _e91289138_)
                         (let ((_e91319146_ (gx#syntax-e _e91289138_)))
                           (let ((_hd91329149_ (##car _e91319146_))
                                 (_tl91339151_ (##cdr _e91319146_)))
                             (if (gx#stx-pair? _tl91339151_)
                                 (let ((_e91349154_
                                        (gx#syntax-e _tl91339151_)))
                                   (let ((_hd91359157_ (##car _e91349154_))
                                         (_tl91369159_ (##cdr _e91349154_)))
                                     (let ((_id9162_ _hd91359157_))
                                       (let ((_body9164_ _tl91369159_))
                                         (if (if (gx#identifier? _id9162_)
                                                 (gx#stx-list? _body9164_)
                                                 '#f)
                                             (let ((_ctx9166_
                                                    (_make-context9127_
                                                     _id9162_)))
                                               (let ((_body9168_
                                                      (gx#core-expand-module-begin
                                                       _body9164_
                                                       _ctx9166_)))
                                                 (let ((_body9170_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body9168_)
                                                         (gx#stx-source
                                                          _stx9125_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx9166_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body9170_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx9166_
                                                        _body9170_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id9162_
                                                        _ctx9166_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id9162_)
                                                         _body9170_)
                                                        (gx#stx-source
                                                         _stx9125_)))))))
                                             (_E91309142_))))))
                                 (_E91309142_))))
                         (_E91309142_)))))
              (let () (_E91299174_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body9121_ _ctx9122_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body9121_)))
       gx#current-expander-context
       _ctx9122_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body8917_)
      (let ((_expand-special8919_
             (lambda (_hd9048_ _K9049_ _rest9050_ _r9051_)
               (let ((_e90529069_ _hd9048_))
                 (let ((_E90649073_
                        (lambda ()
                          (_K9049_ _rest9050_
                                   (cons (gx#core-expand-top _hd9048_)
                                         _r9051_)))))
                   (let ((_E90549085_
                          (lambda ()
                            (if (gx#stx-pair? _e90529069_)
                                (let ((_e90659077_ (gx#syntax-e _e90529069_)))
                                  (let ((_hd90669080_ (##car _e90659077_))
                                        (_tl90679082_ (##cdr _e90659077_)))
                                    (if (if (gx#identifier? _hd90669080_)
                                            (gx#core-identifier=?
                                             _hd90669080_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K9049_ _rest9050_
                                                     (cons _hd9048_ _r9051_))
                                            (_E90649073_))
                                        (_E90649073_))))
                                (_E90649073_)))))
                     (let ((_E90539117_
                            (lambda ()
                              (if (gx#stx-pair? _e90529069_)
                                  (let ((_e90559089_
                                         (gx#syntax-e _e90529069_)))
                                    (let ((_hd90569092_ (##car _e90559089_))
                                          (_tl90579094_ (##cdr _e90559089_)))
                                      (if (if (gx#identifier? _hd90569092_)
                                              (gx#core-identifier=?
                                               _hd90569092_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl90579094_)
                                              (let ((_e90589097_
                                                     (gx#syntax-e
                                                      _tl90579094_)))
                                                (let ((_hd90599100_
                                                       (##car _e90589097_))
                                                      (_tl90609102_
                                                       (##cdr _e90589097_)))
                                                  (let ((_hd-bind9105_
                                                         _hd90599100_))
                                                    (if (gx#stx-pair?
                                                         _tl90609102_)
                                                        (let ((_e90619107_
                                                               (gx#syntax-e
                                                                _tl90609102_)))
                                                          (let ((_hd90629110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90619107_))
                        (_tl90639112_ (##cdr _e90619107_)))
                    (let ((_expr9115_ _hd90629110_))
                      (if (gx#stx-null? _tl90639112_)
                          (if (gx#core-bind-values? _hd-bind9105_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind9105_)
                                (_K9049_ _rest9050_ (cons _hd9048_ _r9051_)))
                              (_E90549085_))
                          (_E90549085_)))))
                (_E90549085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90549085_))
                                          (_E90549085_))))
                                  (_E90549085_)))))
                       (let () (_E90539117_)))))))))
        (let ((_expand-body8920_
               (lambda (_rbody8922_)
                 ((letrec ((_lp8924_
                            (lambda (_rest8926_ _body8927_)
                              (let ((_rest89288936_ _rest8926_))
                                (let ((_E89318940_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest89288936_))))
                                  (let ((_else89308944_
                                         (lambda () _body8927_)))
                                    (let ((_K89329036_
                                           (lambda (_rest8947_ _hd8948_)
                                             (let ((_e89498970_ _hd8948_))
                                               (let ((_E89658974_
                                                      (lambda ()
                                                        (_lp8924_
                                                         _rest8947_
                                                         (cons (gx#core-expand-expression
                                                                _hd8948_)
                                                               _body8927_)))))
                                                 (let ((_E89618988_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e89498970_)
                                                              (let ((_e89668978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e89498970_)))
                        (let ((_hd89678981_ (##car _e89668978_))
                              (_tl89688983_ (##cdr _e89668978_)))
                          (let ((_form8986_ _hd89678981_))
                            (if (gx#core-bound-identifier?__opt-lambda2815
                                 _form8986_
                                 gx#special-form-binding?)
                                (_lp8924_
                                 _rest8947_
                                 (cons _hd8948_ _body8927_))
                                (_E89658974_)))))
                      (_E89658974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E89519000_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e89498970_)
                        (let ((_e89628992_ (gx#syntax-e _e89498970_)))
                          (let ((_hd89638995_ (##car _e89628992_))
                                (_tl89648997_ (##cdr _e89628992_)))
                            (if (if (gx#identifier? _hd89638995_)
                                    (gx#core-identifier=?
                                     _hd89638995_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp8924_
                                     _rest8947_
                                     (cons (gx#core-expand-export%__0 _hd8948_)
                                           _body8927_))
                                    (_E89618988_))
                                (_E89618988_))))
                        (_E89618988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E89509032_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e89498970_)
                          (let ((_e89529004_ (gx#syntax-e _e89498970_)))
                            (let ((_hd89539007_ (##car _e89529004_))
                                  (_tl89549009_ (##cdr _e89529004_)))
                              (if (if (gx#identifier? _hd89539007_)
                                      (gx#core-identifier=?
                                       _hd89539007_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl89549009_)
                                      (let ((_e89559012_
                                             (gx#syntax-e _tl89549009_)))
                                        (let ((_hd89569015_
                                               (##car _e89559012_))
                                              (_tl89579017_
                                               (##cdr _e89559012_)))
                                          (let ((_hd-bind9020_ _hd89569015_))
                                            (if (gx#stx-pair? _tl89579017_)
                                                (let ((_e89589022_
                                                       (gx#syntax-e
                                                        _tl89579017_)))
                                                  (let ((_hd89599025_
                                                         (##car _e89589022_))
                                                        (_tl89609027_
                                                         (##cdr _e89589022_)))
                                                    (let ((_expr9030_
                                                           _hd89599025_))
                                                      (if (gx#stx-null?
                                                           _tl89609027_)
                                                          (if '#t
                                                              (_lp8924_
                                                               _rest8947_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind9020_)
                               (gx#core-expand-expression _expr9030_))
                              (gx#stx-source _hd8948_))
                             _body8927_))
                      (_E89519000_))
                  (_E89519000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E89519000_)))))
                                      (_E89519000_))
                                  (_E89519000_))))
                          (_E89519000_)))))
               (let () (_E89509032_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest89288936_)
                                          (let ((_hd89339039_
                                                 (##car _rest89288936_))
                                                (_tl89349041_
                                                 (##cdr _rest89288936_)))
                                            (let ((_hd9044_ _hd89339039_))
                                              (let ((_rest9046_ _tl89349041_))
                                                (_K89329036_
                                                 _rest9046_
                                                 _hd9044_))))
                                          (_else89308944_)))))))))
                    _lp8924_)
                  _rbody8922_
                  '()))))
          (_expand-body8920_
           (gx#core-expand-block__opt-lambda3862
            (cons '%#begin-module _body8917_)
            _expand-special8919_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx8760_
             _expanded?8761_
             _method8762_
             _current-phi8763_
             _expand18764_)
      (letrec ((_K8766_ (lambda (_rest8884_ _r8885_)
                          (let ((_e88868893_ _rest8884_))
                            (let ((_E88888897_ (lambda () _r8885_)))
                              (let ((_E88878913_
                                     (lambda ()
                                       (if (gx#stx-pair? _e88868893_)
                                           (let ((_e88898901_
                                                  (gx#syntax-e _e88868893_)))
                                             (let ((_hd88908904_
                                                    (##car _e88898901_))
                                                   (_tl88918906_
                                                    (##cdr _e88898901_)))
                                               (let ((_hd8909_ _hd88908904_))
                                                 (let ((_rest8911_
                                                        _tl88918906_))
                                                   (if '#t
                                                       (_step8767_
                                                        _hd8909_
                                                        _rest8911_
                                                        _r8885_)
                                                       (_E88888897_))))))
                                           (_E88888897_)))))
                                (let () (_E88878913_)))))))
               (_step8767_
                (lambda (_hd8798_ _rest8799_ _r8800_)
                  (let ((_e88018819_ _hd8798_))
                    (let ((_E88148823_
                           (lambda ()
                             (if (_expanded?8761_ (gx#stx-e _hd8798_))
                                 (_K8766_ _rest8799_
                                          (cons (gx#stx-e _hd8798_) _r8800_))
                                 (_expand18764_
                                  _hd8798_
                                  _K8766_
                                  _rest8799_
                                  _r8800_)))))
                      (let ((_E88108839_
                             (lambda ()
                               (if (gx#stx-pair? _e88018819_)
                                   (let ((_e88158827_
                                          (gx#syntax-e _e88018819_)))
                                     (let ((_hd88168830_ (##car _e88158827_))
                                           (_tl88178832_ (##cdr _e88158827_)))
                                       (let ((_macro8835_ _hd88168830_))
                                         (let ((_body8837_ _tl88178832_))
                                           (if (gx#core-bound-identifier?__opt-lambda2815
                                                _macro8835_
                                                gx#syntax-binding?)
                                               (_K8766_ (cons (gx#core-apply-expander__opt-lambda3580
                                                               (gx#syntax-local-e__0
                                                                _macro8835_)
                                                               _hd8798_
                                                               _method8762_)
                                                              _rest8799_)
                                                        _r8800_)
                                               (_E88148823_))))))
                                   (_E88148823_)))))
                        (let ((_E88038853_
                               (lambda ()
                                 (if (gx#stx-pair? _e88018819_)
                                     (let ((_e88118843_
                                            (gx#syntax-e _e88018819_)))
                                       (let ((_hd88128846_ (##car _e88118843_))
                                             (_tl88138848_
                                              (##cdr _e88118843_)))
                                         (if (eq? (gx#stx-e _hd88128846_)
                                                  'begin:)
                                             (let ((_body8851_ _tl88138848_))
                                               (if '#t
                                                   (_K8766_ (gx#stx-foldr
                                                             cons
                                                             _rest8799_
                                                             _body8851_)
                                                            _r8800_)
                                                   (_E88108839_)))
                                             (_E88108839_))))
                                     (_E88108839_)))))
                          (let ((_E88028880_
                                 (lambda ()
                                   (if (gx#stx-pair? _e88018819_)
                                       (let ((_e88048857_
                                              (gx#syntax-e _e88018819_)))
                                         (let ((_hd88058860_
                                                (##car _e88048857_))
                                               (_tl88068862_
                                                (##cdr _e88048857_)))
                                           (if (eq? (gx#stx-e _hd88058860_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl88068862_)
                                                   (let ((_e88078865_
                                                          (gx#syntax-e
                                                           _tl88068862_)))
                                                     (let ((_hd88088868_
                                                            (##car _e88078865_))
                                                           (_tl88098870_
                                                            (##cdr _e88078865_)))
                                                       (let ((_dphi8873_
                                                              _hd88088868_))
                                                         (let ((_body8875_
                                                                _tl88098870_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi8873_)
                                                               (let ((_rbody8878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K8766_ _body8875_ '()))
                               _current-phi8763_
                               (fx+ (gx#stx-e _dphi8873_)
                                    (_current-phi8763_)))))
                         (_K8766_ _rest8799_ (foldr cons _r8800_ _rbody8878_)))
                       (_E88038853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E88038853_))
                                               (_E88038853_))))
                                       (_E88038853_)))))
                            (let () (_E88028880_))))))))))
        (let ((_e87688775_ _stx8760_))
          (let ((_E87708779_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e87688775_))))
            (let ((_E87698794_
                   (lambda ()
                     (if (gx#stx-pair? _e87688775_)
                         (let ((_e87718783_ (gx#syntax-e _e87688775_)))
                           (let ((_hd87728786_ (##car _e87718783_))
                                 (_tl87738788_ (##cdr _e87718783_)))
                             (let ((_body8791_ _tl87738788_))
                               (if '#t
                                   (if (_current-phi8763_)
                                       (_K8766_ _body8791_ '())
                                       (call-with-parameters
                                        (lambda () (_K8766_ _body8791_ '()))
                                        _current-phi8763_
                                        (gx#current-expander-phi)))
                                   (_E87708779_)))))
                         (_E87708779_)))))
              (let () (_E87698794_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda8297
      (lambda (_stx8299_ _internal-expand?8300_)
        (let ((_import18303_
               (lambda (_ctx8734_ _K8735_ _rest8736_ _r8737_)
                 (let ((_dphi8739_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K8735_ _rest8736_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx8734_
                                   _dphi8739_
                                   (map (lambda (_g87408742_)
                                          (gx#core-module-export->import__opt-lambda9195
                                           _g87408742_
                                           '#f
                                           _dphi8739_))
                                        (##structure-ref
                                         _ctx8734_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r8737_))))))
          (let ((_import-spec?8304_
                 (lambda (_hd8691_)
                   (let ((_e86928702_ _hd8691_))
                     (let ((_E86948706_ (lambda () '#f)))
                       (let ((_E86938730_
                              (lambda ()
                                (if (gx#stx-pair? _e86928702_)
                                    (let ((_e86958710_
                                           (gx#syntax-e _e86928702_)))
                                      (let ((_hd86968713_ (##car _e86958710_))
                                            (_tl86978715_ (##cdr _e86958710_)))
                                        (if (eq? (gx#stx-e _hd86968713_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl86978715_)
                                                (let ((_e86988718_
                                                       (gx#syntax-e
                                                        _tl86978715_)))
                                                  (let ((_hd86998721_
                                                         (##car _e86988718_))
                                                        (_tl87008723_
                                                         (##cdr _e86988718_)))
                                                    (let ((_spath8726_
                                                           _hd86998721_))
                                                      (let ((_specs8728_
                                                             _tl87008723_))
                                                        (if '#t
                                                            '#t
                                                            (_E86948706_))))))
                                                (_E86948706_))
                                            (_E86948706_))))
                                    (_E86948706_)))))
                         (let () (_E86938730_))))))))
            (let ((_import-submodule?8305_
                   (lambda (_hd8648_)
                     (let ((_e86498659_ _hd8648_))
                       (let ((_E86518663_ (lambda () '#f)))
                         (let ((_E86508687_
                                (lambda ()
                                  (if (gx#stx-pair? _e86498659_)
                                      (let ((_e86528667_
                                             (gx#syntax-e _e86498659_)))
                                        (let ((_hd86538670_
                                               (##car _e86528667_))
                                              (_tl86548672_
                                               (##cdr _e86528667_)))
                                          (if (eq? (gx#stx-e _hd86538670_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl86548672_)
                                                  (let ((_e86558675_
                                                         (gx#syntax-e
                                                          _tl86548672_)))
                                                    (let ((_hd86568678_
                                                           (##car _e86558675_))
                                                          (_tl86578680_
                                                           (##cdr _e86558675_)))
                                                      (let ((_top8683_
                                                             _hd86568678_))
                                                        (let ((_sub8685_
                                                               _tl86578680_))
                                                          (if '#t
                                                              '#t
                                                              (_E86518663_))))))
                                                  (_E86518663_))
                                              (_E86518663_))))
                                      (_E86518663_)))))
                           (let () (_E86508687_))))))))
              (let ((_import-runtime?8306_
                     (lambda (_hd8605_)
                       (let ((_e86068616_ _hd8605_))
                         (let ((_E86088620_ (lambda () '#f)))
                           (let ((_E86078644_
                                  (lambda ()
                                    (if (gx#stx-pair? _e86068616_)
                                        (let ((_e86098624_
                                               (gx#syntax-e _e86068616_)))
                                          (let ((_hd86108627_
                                                 (##car _e86098624_))
                                                (_tl86118629_
                                                 (##cdr _e86098624_)))
                                            (if (eq? (gx#stx-e _hd86108627_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl86118629_)
                                                    (let ((_e86128632_
                                                           (gx#syntax-e
                                                            _tl86118629_)))
                                                      (let ((_hd86138635_
                                                             (##car _e86128632_))
                                                            (_tl86148637_
                                                             (##cdr _e86128632_)))
                                                        (let ((_top8640_
                                                               _hd86138635_))
                                                          (let ((_spath8642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86148637_))
                    (if '#t '#t (_E86088620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86088620_))
                                                (_E86088620_))))
                                        (_E86088620_)))))
                             (let () (_E86078644_))))))))
                (let ((_import-spec-source8310_
                       (lambda (_spath8376_)
                         (gx#core-import-nested-module
                          _spath8376_
                          _stx8299_))))
                  (let ((_import!8311_
                         (lambda (_rbody8324_)
                           (let ((_current-ctx8326_
                                  (gx#current-expander-context)))
                             (let ((_deps8327_ (make-hash-table-eq)))
                               (let ((_bind!8328_
                                      (lambda (_hd8374_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd8374_
                                           _current-ctx8326_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd8374_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd8374_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (hash-put!
                                               _deps8327_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd8374_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e8329_
                                        (lambda (_in8371_ _r8372_)
                                          (if (##structure-direct-instance-of?
                                               _in8371_
                                               'gx#module-import::t)
                                              (cons _in8371_ _r8372_)
                                              (if (##structure-direct-instance-of?
                                                   _in8371_
                                                   'gx#import-set::t)
                                                  (foldl cons
                                                         _r8372_
                                                         (##structure-ref
                                                          _in8371_
                                                          '3
                                                          gx#import-set::t
                                                          '#f))
                                                  _r8372_)))))
                                   ((letrec ((_lp8331_
                                              (lambda (_rest8333_ _body8334_)
                                                (let ((_rest83358343_
                                                       _rest8333_))
                                                  (let ((_E83388347_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest83358343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else83378353_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx8326_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx8326_
                            (foldl _fold-e8329_
                                   (##structure-ref
                                    _current-ctx8326_
                                    '8
                                    gx#module-context::t
                                    '#f)
                                   _body8334_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (hash-for-each
                        (lambda (_ctx8351_ _g9935_) (gx#eval-module _ctx8351_))
                        _deps8327_)
                       _body8334_))))
              (let ((_K83398359_
                     (lambda (_rest8356_ _hd8357_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd8357_
                              'gx#module-import::t)
                             (_bind!8328_ _hd8357_)
                             (if (##structure-direct-instance-of?
                                  _hd8357_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!8328_
                                  (##structure-ref
                                   _hd8357_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd8357_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx8299_
                                      _hd8357_))))
                         (_lp8331_ _rest8356_ (cons _hd8357_ _body8334_))))))
                (if (##pair? _rest83358343_)
                    (let ((_hd83408362_ (##car _rest83358343_))
                          (_tl83418364_ (##cdr _rest83358343_)))
                      (let ((_hd8367_ _hd83408362_))
                        (let ((_rest8369_ _tl83418364_))
                          (_K83398359_ _rest8369_ _hd8367_))))
                    (_else83378353_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp8331_)
                                    _rbody8324_
                                    '()))))))))
                    (let ((_expanded-import?8312_
                           (lambda (_e8316_)
                             (let ((_$e8318_
                                    (##structure-direct-instance-of?
                                     _e8316_
                                     'gx#import-set::t)))
                               (if _$e8318_
                                   _$e8318_
                                   (let ((_$e8321_
                                          (##structure-direct-instance-of?
                                           _e8316_
                                           'gx#module-import::t)))
                                     (if _$e8321_
                                         _$e8321_
                                         (##structure-instance-of?
                                          _e8316_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule8307_
                             (lambda (_hd8572_ _K8573_ _rest8574_ _r8575_)
                               (let ((_e85768583_ _hd8572_))
                                 (let ((_E85788587_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e85768583_))))
                                   (let ((_E85778601_
                                          (lambda ()
                                            (if (gx#stx-pair? _e85768583_)
                                                (let ((_e85798591_
                                                       (gx#syntax-e
                                                        _e85768583_)))
                                                  (let ((_hd85808594_
                                                         (##car _e85798591_))
                                                        (_tl85818596_
                                                         (##cdr _e85798591_)))
                                                    (let ((_spath8599_
                                                           _tl85818596_))
                                                      (if '#t
                                                          (_import18303_
                                                           (_import-spec-source8310_
                                                            _spath8599_)
                                                           _K8573_
                                                           _rest8574_
                                                           _r8575_)
                                                          (_E85788587_)))))
                                                (_E85788587_)))))
                                     (let () (_E85778601_))))))))
                        (let ((_import-runtime8308_
                               (lambda (_hd8539_ _K8540_ _rest8541_ _r8542_)
                                 (let ((_e85438550_ _hd8539_))
                                   (let ((_E85458554_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e85438550_))))
                                     (let ((_E85448568_
                                            (lambda ()
                                              (if (gx#stx-pair? _e85438550_)
                                                  (let ((_e85468558_
                                                         (gx#syntax-e
                                                          _e85438550_)))
                                                    (let ((_hd85478561_
                                                           (##car _e85468558_))
                                                          (_tl85488563_
                                                           (##cdr _e85468558_)))
                                                      (let ((_spath8566_
                                                             _tl85488563_))
                                                        (if '#t
                                                            (_K8540_ _rest8541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source8310_ _spath8566_)
                                   _r8542_))
                    (_E85458554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85458554_)))))
                                       (let () (_E85448568_))))))))
                          (let ((_import-spec8309_
                                 (lambda (_hd8378_ _K8379_ _rest8380_ _r8381_)
                                   (let ((_e83828399_ _hd8378_))
                                     (let ((_E83918403_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e83828399_))))
                                       (let ((_E83848513_
                                              (lambda ()
                                                (if (gx#stx-pair? _e83828399_)
                                                    (let ((_e83928407_
                                                           (gx#syntax-e
                                                            _e83828399_)))
                                                      (let ((_hd83938410_
                                                             (##car _e83928407_))
                                                            (_tl83948412_
                                                             (##cdr _e83928407_)))
                                                        (if (gx#stx-pair?
                                                             _tl83948412_)
                                                            (let ((_e83958415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl83948412_)))
                      (let ((_hd83968418_ (##car _e83958415_))
                            (_tl83978420_ (##cdr _e83958415_)))
                        (let ((_path8423_ _hd83968418_))
                          (let ((_specs8425_ _tl83978420_))
                            (if '#t
                                (let ((_src-ctx8427_
                                       (_import-spec-source8310_ _path8423_))
                                      (_exports8428_ (make-hash-table))
                                      (_specs8429_
                                       (gx#syntax->list _specs8425_)))
                                  (begin
                                    (for-each
                                     (lambda (_out8431_)
                                       (hash-put!
                                        _exports8428_
                                        (cons (##structure-ref
                                               _out8431_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out8431_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out8431_))
                                     (##structure-ref
                                      _src-ctx8427_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K8379_ _rest8380_
                                             (foldl (lambda (_spec8433_
                                                             _r8434_)
                                                      (let ((_e84358451_
                                                             _spec8433_))
                                                        (let ((_E84378455_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _e84358451_))))
                  (let ((_E84368509_
                         (lambda ()
                           (if (gx#stx-pair? _e84358451_)
                               (let ((_e84388459_ (gx#syntax-e _e84358451_)))
                                 (let ((_hd84398462_ (##car _e84388459_))
                                       (_tl84408464_ (##cdr _e84388459_)))
                                   (let ((_phi8467_ _hd84398462_))
                                     (if (gx#stx-pair? _tl84408464_)
                                         (let ((_e84418469_
                                                (gx#syntax-e _tl84408464_)))
                                           (let ((_hd84428472_
                                                  (##car _e84418469_))
                                                 (_tl84438474_
                                                  (##cdr _e84418469_)))
                                             (let ((_name8477_ _hd84428472_))
                                               (if (gx#stx-pair? _tl84438474_)
                                                   (let ((_e84448479_
                                                          (gx#syntax-e
                                                           _tl84438474_)))
                                                     (let ((_hd84458482_
                                                            (##car _e84448479_))
                                                           (_tl84468484_
                                                            (##cdr _e84448479_)))
                                                       (let ((_src-phi8487_
                                                              _hd84458482_))
                                                         (if (gx#stx-pair?
                                                              _tl84468484_)
                                                             (let ((_e84478489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84468484_)))
                       (let ((_hd84488492_ (##car _e84478489_))
                             (_tl84498494_ (##cdr _e84478489_)))
                         (let ((_src-name8497_ _hd84488492_))
                           (if (gx#stx-null? _tl84498494_)
                               (if (if (gx#stx-fixnum? _src-phi8487_)
                                       (if (gx#identifier? _src-name8497_)
                                           (if (gx#stx-fixnum? _phi8467_)
                                               (gx#identifier? _name8477_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   (let ((_src-phi8499_
                                          (gx#stx-e _src-phi8487_))
                                         (_src-name8500_
                                          (gx#core-identifier-key
                                           _src-name8497_))
                                         (_phi8501_ (gx#stx-e _phi8467_))
                                         (_name8502_
                                          (gx#core-identifier-key _name8477_)))
                                     (let ((_$e8504_
                                            (hash-get
                                             _exports8428_
                                             (cons _src-phi8499_
                                                   _src-name8500_))))
                                       (if _$e8504_
                                           ((lambda (_out8507_)
                                              (cons (gx#core-module-export->import__opt-lambda9195
                                                     _out8507_
                                                     _name8502_
                                                     (fx- _phi8501_
                                                          _src-phi8499_))
                                                    _r8434_))
                                            _$e8504_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; no matching export"
                                            _stx8299_
                                            _hd8378_))))
                                   (_E84378455_))
                               (_E84378455_)))))
                     (_E84378455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84378455_)))))
                                         (_E84378455_)))))
                               (_E84378455_)))))
                    (let () (_E84368509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r8381_
                                                    _specs8429_))))
                                (_E83918403_))))))
                    (_E83918403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83918403_)))))
                                         (let ((_E83838535_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e83828399_)
                                                      (let ((_e83858517_
                                                             (gx#syntax-e
                                                              _e83828399_)))
                                                        (let ((_hd83868520_
                                                               (##car _e83858517_))
                                                              (_tl83878522_
                                                               (##cdr _e83858517_)))
                                                          (if (gx#stx-pair?
                                                               _tl83878522_)
                                                              (let ((_e83888525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl83878522_)))
                        (let ((_hd83898528_ (##car _e83888525_))
                              (_tl83908530_ (##cdr _e83888525_)))
                          (let ((_path8533_ _hd83898528_))
                            (if (gx#stx-null? _tl83908530_)
                                (if '#t
                                    (_K8379_ _rest8380_
                                             (cons (_import-spec-source8310_
                                                    _path8533_)
                                                   _r8381_))
                                    (_E83848513_))
                                (_E83848513_)))))
                      (_E83848513_))))
              (_E83848513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E83838535_)))))))))
                            (let ((_expand18302_
                                   (lambda (_hd8745_
                                            _K8746_
                                            _rest8747_
                                            _r8748_)
                                     (if (gx#core-bound-module? _hd8745_)
                                         (_import18303_
                                          (gx#syntax-local-e__0 _hd8745_)
                                          _K8746_
                                          _rest8747_
                                          _r8748_)
                                         (if (gx#core-library-module-path?
                                              _hd8745_)
                                             (_import18303_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd8745_))
                                              _K8746_
                                              _rest8747_
                                              _r8748_)
                                             (if (gx#stx-string? _hd8745_)
                                                 (_import18303_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda9549
                                                    _hd8745_
                                                    (gx#stx-source _stx8299_)))
                                                  _K8746_
                                                  _rest8747_
                                                  _r8748_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd8745_)
                                                      'gx#module-context::t)
                                                     (_K8746_ _rest8747_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd8745_)
                            _r8748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?8304_
                                                          _hd8745_)
                                                         (_import-spec8309_
                                                          _hd8745_
                                                          _K8746_
                                                          _rest8747_
                                                          _r8748_)
                                                         (if (_import-submodule?8305_
                                                              _hd8745_)
                                                             (_import-submodule8307_
                                                              _hd8745_
                                                              _K8746_
                                                              _rest8747_
                                                              _r8748_)
                                                             (if (_import-runtime?8306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8745_)
                         (_import-runtime8308_
                          _hd8745_
                          _K8746_
                          _rest8747_
                          _r8748_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx8299_
                          _hd8745_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody8314_
                                     (gx#core-expand-import/export
                                      _stx8299_
                                      _expanded-import?8312_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand18302_)))
                                (if _internal-expand?8300_
                                    (reverse _rbody8314_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!8311_ _rbody8314_))
                                     (gx#stx-source _stx8299_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx8753_)
          (let ((_internal-expand?8755_ '#f))
            (gx#core-expand-import%__opt-lambda8297
             _stx8753_
             _internal-expand?8755_))))
      (define gx#core-expand-import%
        (lambda _g9937_
          (let ((_g9936_ (length _g9937_)))
            (cond ((fx= _g9936_ 1) (apply gx#core-expand-import%__0 _g9937_))
                  ((fx= _g9936_ 2)
                   (apply gx#core-expand-import%__opt-lambda8297 _g9937_))
                  (else (error "No clause matching arguments" _g9937_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath8226_ _where8227_)
      (let ((_e82288235_ _spath8226_))
        (let ((_E82308239_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82288235_))))
          (let ((_E82298294_
                 (lambda ()
                   (if (gx#stx-pair? _e82288235_)
                       (let ((_e82318243_ (gx#syntax-e _e82288235_)))
                         (let ((_hd82328246_ (##car _e82318243_))
                               (_tl82338248_ (##cdr _e82318243_)))
                           (let ((_origin8251_ _hd82328246_))
                             (let ((_sub8253_ _tl82338248_))
                               (if '#t
                                   (let ((_origin-ctx8255_
                                          (if (gx#stx-false? _origin8251_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin8251_))))
                                     ((letrec ((_lp8257_
                                                (lambda (_rest8259_ _ctx8260_)
                                                  (let ((_e82618268_
                                                         _rest8259_))
                                                    (let ((_E82638272_
                                                           (lambda ()
                                                             _ctx8260_)))
                                                      (let ((_E82628290_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e82618268_)
                           (let ((_e82648276_ (gx#syntax-e _e82618268_)))
                             (let ((_hd82658279_ (##car _e82648276_))
                                   (_tl82668281_ (##cdr _e82648276_)))
                               (let ((_id8284_ _hd82658279_))
                                 (let ((_rest8286_ _tl82668281_))
                                   (if '#t
                                       (let ((_bind8288_
                                              (gx#resolve-identifier__opt-lambda3365
                                               _id8284_
                                               '0
                                               _ctx8260_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind8288_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind8288_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where8227_
                                                _spath8226_
                                                _id8284_))
                                           (_lp8257_
                                            _rest8286_
                                            (##structure-ref
                                             _bind8288_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E82638272_))))))
                           (_E82638272_)))))
                (let () (_E82628290_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp8257_)
                                      _sub8253_
                                      _origin-ctx8255_))
                                   (_E82308239_))))))
                       (_E82308239_)))))
            (let () (_E82298294_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd8224_)
      (gx#core-expand-import%__opt-lambda8297
       (cons 'import-internal% (cons _hd8224_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda7806
      (lambda (_stx7808_ _internal-expand?7809_)
        (let ((_make-export7811_
               (let ((_opt-lambda81708185_
                      (lambda (_bind8172_ _phi8173_ _ctx8174_ _name8175_)
                        (let ((_key8177_
                               (##structure-ref
                                _bind8172_
                                '2
                                gx#binding::t
                                '#f)))
                          (let ((_export-key8179_
                                 (if _name8175_
                                     (gx#core-identifier-key _name8175_)
                                     _key8177_)))
                            (let ()
                              (##structure
                               gx#module-export::t
                               _ctx8174_
                               _key8177_
                               _phi8173_
                               _export-key8179_
                               (let ((_$e8182_
                                      (##structure-instance-of?
                                       _bind8172_
                                       'gx#extern-binding::t)))
                                 (if _$e8182_
                                     _$e8182_
                                     (##structure-direct-instance-of?
                                      _bind8172_
                                      'gx#import-binding::t))))))))))
                 (lambda _g9939_
                   (let ((_g9938_ (length _g9939_)))
                     (cond ((fx= _g9938_ 1)
                            (apply (lambda (_bind8188_)
                                     (let ((_phi8190_
                                            (gx#current-export-expander-phi)))
                                       (let ((_ctx8192_
                                              (gx#current-expander-context)))
                                         (let ((_name8194_ '#f))
                                           (_opt-lambda81708185_
                                            _bind8188_
                                            _phi8190_
                                            _ctx8192_
                                            _name8194_)))))
                                   _g9939_))
                           ((fx= _g9938_ 2)
                            (apply (lambda (_bind8196_ _phi8197_)
                                     (let ((_ctx8199_
                                            (gx#current-expander-context)))
                                       (let ((_name8201_ '#f))
                                         (_opt-lambda81708185_
                                          _bind8196_
                                          _phi8197_
                                          _ctx8199_
                                          _name8201_))))
                                   _g9939_))
                           ((fx= _g9938_ 3)
                            (apply (lambda (_bind8203_ _phi8204_ _ctx8205_)
                                     (let ((_name8207_ '#f))
                                       (_opt-lambda81708185_
                                        _bind8203_
                                        _phi8204_
                                        _ctx8205_
                                        _name8207_)))
                                   _g9939_))
                           ((fx= _g9938_ 4)
                            (apply _opt-lambda81708185_ _g9939_))
                           (else
                            (error "No clause matching arguments"
                                   _g9939_))))))))
          (let ((_export-imports7813_
                 (lambda (_src7834_ _r7835_)
                   (let ((_current-ctx7837_ (gx#current-expander-context)))
                     (let ((_current-phi7838_
                            (gx#current-export-expander-phi)))
                       (let ((_import->export7839_
                              (lambda (_in7847_)
                                (let ((_in78487856_ _in7847_))
                                  (let ((_E78507860_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _in78487856_))))
                                    (let ((_K78517867_
                                           (lambda (_phi7863_
                                                    _key7864_
                                                    _out7865_)
                                             (if (fx= _phi7863_
                                                      _current-phi7838_)
                                                 (if (eq? _src7834_
                                                          (##structure-ref
                                                           _out7865_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     (##structure
                                                      gx#module-export::t
                                                      _current-ctx7837_
                                                      _key7864_
                                                      _phi7863_
                                                      _key7864_
                                                      '#t)
                                                     '#f)
                                                 '#f))))
                                      (if (direct-struct-instance?
                                           gx#module-import::t
                                           _in78487856_)
                                          (let ((_e78527870_
                                                 (##vector-ref
                                                  _in78487856_
                                                  '1)))
                                            (let ((_out7873_ _e78527870_))
                                              (let ((_e78537875_
                                                     (##vector-ref
                                                      _in78487856_
                                                      '2)))
                                                (let ((_key7878_ _e78537875_))
                                                  (let ((_e78547880_
                                                         (##vector-ref
                                                          _in78487856_
                                                          '3)))
                                                    (let ((_phi7883_
                                                           _e78547880_))
                                                      (_K78517867_
                                                       _phi7883_
                                                       _key7878_
                                                       _out7873_)))))))
                                          (_E78507860_))))))))
                         (let ((_fold-e7840_
                                (lambda (_in7842_ _r7843_)
                                  (let ((_out7845_
                                         (_import->export7839_ _in7842_)))
                                    (if _out7845_
                                        (cons _out7845_ _r7843_)
                                        _r7843_)))))
                           (cons (##structure
                                  gx#export-set::t
                                  _src7834_
                                  _current-phi7838_
                                  (foldl _fold-e7840_
                                         '()
                                         (##structure-ref
                                          _current-ctx7837_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _r7835_))))))))
            (let ((_export!7814_
                   (lambda (_rbody7824_)
                     (let ((_current-ctx7826_ (gx#current-expander-context)))
                       (let ((_fold-e7827_
                              (lambda (_out7831_ _r7832_)
                                (if (##structure-direct-instance-of?
                                     _out7831_
                                     'gx#module-export::t)
                                    (cons _out7831_ _r7832_)
                                    (if (##structure-direct-instance-of?
                                         _out7831_
                                         'gx#export-set::t)
                                        (foldl cons
                                               _r7832_
                                               (##structure-ref
                                                _out7831_
                                                '3
                                                gx#export-set::t
                                                '#f))
                                        _r7832_)))))
                         (let ((_body7829_ (reverse _rbody7824_)))
                           (begin
                             (##structure-set!
                              _current-ctx7826_
                              (foldl _fold-e7827_
                                     (##structure-ref
                                      _current-ctx7826_
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body7829_)
                              '9
                              gx#module-context::t
                              '#f)
                             _body7829_)))))))
              (let ((_expanded-export?7815_
                     (lambda (_e7819_)
                       (let ((_$e7821_
                              (##structure-direct-instance-of?
                               _e7819_
                               'gx#module-export::t)))
                         (if _$e7821_
                             _$e7821_
                             (##structure-direct-instance-of?
                              _e7819_
                              'gx#export-set::t))))))
                (let ((_expand17812_
                       (lambda (_hd7885_ _K7886_ _rest7887_ _r7888_)
                         (let ((_e78897921_ _hd7885_))
                           (let ((_E79167925_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; illegal export"
                                     _stx7808_
                                     _hd7885_))))
                             (let ((_E79068004_
                                    (lambda ()
                                      (if (gx#stx-pair? _e78897921_)
                                          (let ((_e79177929_
                                                 (gx#syntax-e _e78897921_)))
                                            (let ((_hd79187932_
                                                   (##car _e79177929_))
                                                  (_tl79197934_
                                                   (##cdr _e79177929_)))
                                              (if (eq? (gx#stx-e _hd79187932_)
                                                       'import:)
                                                  (let ((_in7937_
                                                         _tl79197934_))
                                                    (if (gx#stx-list? _in7937_)
                                                        ((letrec ((_lp7939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_in-rest7941_ _r7942_)
                             (let ((_e79437950_ _in-rest7941_))
                               (let ((_E79457954_
                                      (lambda ()
                                        (_K7886_ _rest7887_ _r7942_))))
                                 (let ((_E79448000_
                                        (lambda ()
                                          (if (gx#stx-pair? _e79437950_)
                                              (let ((_e79467958_
                                                     (gx#syntax-e
                                                      _e79437950_)))
                                                (let ((_hd79477961_
                                                       (##car _e79467958_))
                                                      (_tl79487963_
                                                       (##cdr _e79467958_)))
                                                  (let ((_hd7966_
                                                         _hd79477961_))
                                                    (let ((_in-rest7968_
                                                           _tl79487963_))
                                                      (if '#t
                                                          (let ((_src7998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#core-bound-module? _hd7966_)
                             (gx#syntax-local-e__0 _hd7966_)
                             (if (gx#core-library-module-path? _hd7966_)
                                 (gx#import-module__0
                                  (gx#core-resolve-library-module-path
                                   _hd7966_))
                                 (if (gx#stx-string? _hd7966_)
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__opt-lambda9549
                                       _hd7966_
                                       (gx#stx-source _stx7808_)))
                                     (let ((_e79697976_ _hd7966_))
                                       (let ((_E79717980_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal re-export"
                                                 _stx7808_
                                                 _hd7966_))))
                                         (let ((_E79707994_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e79697976_)
                                                      (let ((_e79727984_
                                                             (gx#syntax-e
                                                              _e79697976_)))
                                                        (let ((_hd79737987_
                                                               (##car _e79727984_))
                                                              (_tl79747989_
                                                               (##cdr _e79727984_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd79737987_)
                           'in:)
                      (let ((_spath7992_ _tl79747989_))
                        (if '#t
                            (gx#core-import-nested-module
                             _spath7992_
                             _stx7808_)
                            (_E79717980_)))
                      (_E79717980_))))
              (_E79717980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E79707994_))))))))))
                    (_lp7939_
                     _in-rest7968_
                     (_export-imports7813_ _src7998_ _r7942_)))
                  (_E79457954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E79457954_)))))
                                   (let () (_E79448000_))))))))
                   _lp7939_)
                 _in7937_
                 _r7888_)
                (_E79167925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E79167925_))))
                                          (_E79167925_)))))
                               (let ((_E78938043_
                                      (lambda ()
                                        (if (gx#stx-pair? _e78897921_)
                                            (let ((_e79078008_
                                                   (gx#syntax-e _e78897921_)))
                                              (let ((_hd79088011_
                                                     (##car _e79078008_))
                                                    (_tl79098013_
                                                     (##cdr _e79078008_)))
                                                (if (eq? (gx#stx-e
                                                          _hd79088011_)
                                                         'rename:)
                                                    (if (gx#stx-pair?
                                                         _tl79098013_)
                                                        (let ((_e79108016_
                                                               (gx#syntax-e
                                                                _tl79098013_)))
                                                          (let ((_hd79118019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e79108016_))
                        (_tl79128021_ (##cdr _e79108016_)))
                    (let ((_id8024_ _hd79118019_))
                      (if (gx#stx-pair? _tl79128021_)
                          (let ((_e79138026_ (gx#syntax-e _tl79128021_)))
                            (let ((_hd79148029_ (##car _e79138026_))
                                  (_tl79158031_ (##cdr _e79138026_)))
                              (let ((_name8034_ _hd79148029_))
                                (if (gx#stx-null? _tl79158031_)
                                    (if '#t
                                        (let ((_phi8036_
                                               (gx#current-export-expander-phi)))
                                          (let ((_$e8038_
                                                 (gx#core-resolve-identifier__1
                                                  _id8024_
                                                  _phi8036_)))
                                            (if _$e8038_
                                                ((lambda (_bind8041_)
                                                   (_K7886_ _rest7887_
                                                            (cons (_make-export7811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind8041_
                           _phi8036_
                           (gx#current-expander-context)
                           _name8034_)
                          _r7888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e8038_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Reference to unbound identifier"
                                                 _stx7808_
                                                 _hd7885_
                                                 _id8024_))))
                                        (_E79068004_))
                                    (_E79068004_)))))
                          (_E79068004_)))))
                (_E79068004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E79068004_))))
                                            (_E79068004_)))))
                                 (let ((_E78928092_
                                        (lambda ()
                                          (if (gx#stx-pair? _e78897921_)
                                              (let ((_e78948047_
                                                     (gx#syntax-e
                                                      _e78897921_)))
                                                (let ((_hd78958050_
                                                       (##car _e78948047_))
                                                      (_tl78968052_
                                                       (##cdr _e78948047_)))
                                                  (if (eq? (gx#stx-e
                                                            _hd78958050_)
                                                           'spec:)
                                                      (if (gx#stx-pair?
                                                           _tl78968052_)
                                                          (let ((_e78978055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl78968052_)))
                    (let ((_hd78988058_ (##car _e78978055_))
                          (_tl78998060_ (##cdr _e78978055_)))
                      (let ((_phi8063_ _hd78988058_))
                        (if (gx#stx-pair? _tl78998060_)
                            (let ((_e79008065_ (gx#syntax-e _tl78998060_)))
                              (let ((_hd79018068_ (##car _e79008065_))
                                    (_tl79028070_ (##cdr _e79008065_)))
                                (let ((_id8073_ _hd79018068_))
                                  (if (gx#stx-pair? _tl79028070_)
                                      (let ((_e79038075_
                                             (gx#syntax-e _tl79028070_)))
                                        (let ((_hd79048078_
                                               (##car _e79038075_))
                                              (_tl79058080_
                                               (##cdr _e79038075_)))
                                          (let ((_name8083_ _hd79048078_))
                                            (if (gx#stx-null? _tl79058080_)
                                                (if (if (gx#stx-fixnum?
                                                         _phi8063_)
                                                        (if (gx#identifier?
                                                             _id8073_)
                                                            (gx#identifier?
                                                             _name8083_)
                                                            '#f)
                                                        '#f)
                                                    (let ((_phi8085_
                                                           (gx#stx-e
                                                            _phi8063_)))
                                                      (let ((_$e8087_
                                                             (gx#core-resolve-identifier__1
                                                              _id8073_
                                                              _phi8085_)))
                                                        (if _$e8087_
                                                            ((lambda (_bind8090_)
                                                               (_K7886_ _rest7887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (_make-export7811_
                                       _bind8090_
                                       _phi8085_
                                       (gx#current-expander-context)
                                       _name8083_)
                                      _r7888_)))
                     _$e8087_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _stx7808_
                     _hd7885_
                     _id8073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E78938043_))
                                                (_E78938043_)))))
                                      (_E78938043_)))))
                            (_E78938043_)))))
                  (_E78938043_))
              (_E78938043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E78938043_)))))
                                   (let ((_E78918103_
                                          (lambda ()
                                            (let ((_id8096_ _e78897921_))
                                              (if (gx#identifier? _id8096_)
                                                  (let ((_$e8098_
                                                         (gx#core-resolve-identifier__1
                                                          _id8096_
                                                          (gx#current-export-expander-phi))))
                                                    (if _$e8098_
                                                        ((lambda (_bind8101_)
                                                           (_K7886_ _rest7887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export7811_ _bind8101_) _r7888_)))
                 _$e8098_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx7808_
                 _hd7885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E78928092_))))))
                                     (let ((_E78908167_
                                            (lambda ()
                                              (if (eq? (gx#stx-e _e78897921_)
                                                       '#t)
                                                  (if '#t
                                                      (let ((_current-ctx8107_
                                                             (gx#current-expander-context)))
                                                        (let ((_current-phi8109_
                                                               (gx#current-export-expander-phi)))
                                                          (let ((_phi-ctx8111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-context-shift
                          _current-ctx8107_
                          _current-phi8109_)))
                    (let ((_phi-bind8113_
                           (hash->list
                            (##structure-ref
                             _phi-ctx8111_
                             '2
                             gx#expander-context::t
                             '#f))))
                      (let ()
                        ((letrec ((_lp8116_
                                   (lambda (_bind-rest8118_ _set8119_)
                                     (let ((_bind-rest81208130_
                                            _bind-rest8118_))
                                       (let ((_E81238134_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _bind-rest81208130_))))
                                         (let ((_else81228138_
                                                (lambda ()
                                                  (_K7886_ _rest7887_
                                                           (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#export-set::t
                          '#f
                          _current-phi8109_
                          _set8119_)
                         _r7888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_K81248148_
                                                  (lambda (_bind-rest8141_
                                                           _bind8142_
                                                           _key8143_)
                                                    (if (let ((_$e8145_
                                                               (##structure-direct-instance-of?
                                                                _bind8142_
                                                                'gx#import-binding::t)))
                                                          (if _$e8145_
                                                              _$e8145_
                                                              (gx#private-feature-binding?
                                                               _bind8142_)))
                                                        (_lp8116_
                                                         _bind-rest8141_
                                                         _set8119_)
                                                        (_lp8116_
                                                         _bind-rest8141_
                                                         (cons (_make-export7811_
                                                                _bind8142_
                                                                _current-phi8109_
                                                                _current-ctx8107_)
                                                               _set8119_))))))
                                             (if (##pair? _bind-rest81208130_)
                                                 (let ((_hd81258151_
                                                        (##car _bind-rest81208130_))
                                                       (_tl81268153_
                                                        (##cdr _bind-rest81208130_)))
                                                   (if (##pair? _hd81258151_)
                                                       (let ((_hd81278156_
                                                              (##car _hd81258151_))
                                                             (_tl81288158_
                                                              (##cdr _hd81258151_)))
                                                         (let ((_key8161_
                                                                _hd81278156_))
                                                           (let ((_bind8163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81288158_))
                     (let ((_bind-rest8165_ _tl81268153_))
                       (_K81248148_ _bind-rest8165_ _bind8163_ _key8161_)))))
               (_else81228138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else81228138_)))))))))
                           _lp8116_)
                         _phi-bind8113_
                         '()))))))
              (_E78918103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E78918103_)))))
                                       (let () (_E78908167_))))))))))))
                  (let ((_rbody7817_
                         (gx#core-expand-import/export
                          _stx7808_
                          gx#module-export?
                          'apply-export-expander
                          gx#current-export-expander-phi
                          _expand17812_)))
                    (if _internal-expand?7809_
                        (reverse _rbody7817_)
                        (gx#core-quote-syntax__1
                         (gx#core-cons '%#export (_export!7814_ _rbody7817_))
                         (gx#stx-source _stx7808_)))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx8217_)
          (let ((_internal-expand?8219_ '#f))
            (gx#core-expand-export%__opt-lambda7806
             _stx8217_
             _internal-expand?8219_))))
      (define gx#core-expand-export%
        (lambda _g9941_
          (let ((_g9940_ (length _g9941_)))
            (cond ((fx= _g9940_ 1) (apply gx#core-expand-export%__0 _g9941_))
                  ((fx= _g9940_ 2)
                   (apply gx#core-expand-export%__opt-lambda7806 _g9941_))
                  (else (error "No clause matching arguments" _g9941_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd7805_)
      (gx#core-expand-export%__opt-lambda7806
       (cons 'export-macro% (cons _hd7805_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx7775_)
      (let ((_e77767783_ _stx7775_))
        (let ((_E77787787_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77767783_))))
          (let ((_E77777801_
                 (lambda ()
                   (if (gx#stx-pair? _e77767783_)
                       (let ((_e77797791_ (gx#syntax-e _e77767783_)))
                         (let ((_hd77807794_ (##car _e77797791_))
                               (_tl77817796_ (##cdr _e77797791_)))
                           (let ((_body7799_ _tl77817796_))
                             (if (gx#identifier-list? _body7799_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body7799_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body7799_))
                                    (gx#stx-source _stx7775_)))
                                 (_E77787787_)))))
                       (_E77787787_)))))
            (let () (_E77777801_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda7739
      (lambda (_id7741_ _private?7742_ _phi7743_ _ctx7744_)
        (gx#core-bind-syntax!__opt-lambda4834
         _id7741_
         ((if _private?7742_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id7741_))
         _private?7742_
         _phi7743_
         _ctx7744_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id7749_)
          (let ((_private?7751_ '#f))
            (let ((_phi7753_ (gx#current-expander-phi)))
              (let ((_ctx7755_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda7739
                 _id7749_
                 _private?7751_
                 _phi7753_
                 _ctx7755_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id7757_ _private?7758_)
          (let ((_phi7760_ (gx#current-expander-phi)))
            (let ((_ctx7762_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda7739
               _id7757_
               _private?7758_
               _phi7760_
               _ctx7762_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id7764_ _private?7765_ _phi7766_)
          (let ((_ctx7768_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda7739
             _id7764_
             _private?7765_
             _phi7766_
             _ctx7768_))))
      (define gx#core-bind-feature!
        (lambda _g9943_
          (let ((_g9942_ (length _g9943_)))
            (cond ((fx= _g9942_ 1) (apply gx#core-bind-feature!__0 _g9943_))
                  ((fx= _g9942_ 2) (apply gx#core-bind-feature!__1 _g9943_))
                  ((fx= _g9942_ 3) (apply gx#core-bind-feature!__2 _g9943_))
                  ((fx= _g9942_ 4)
                   (apply gx#core-bind-feature!__opt-lambda7739 _g9943_))
                  (else (error "No clause matching arguments" _g9943_)))))))))

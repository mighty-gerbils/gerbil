(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710238843)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156907
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156907)
               __obj156907)))))
    (define gxc#optimize!
      (lambda (_ctx156600_)
        (let ((__tmp156913
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156600_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx156600_))
                 (let ((__tmp156915
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156914
                        (##structure-ref
                         _ctx156600_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156915 __tmp156914 '#t))
                 (let ((_code156603_
                        (let ((__tmp156916
                               (##structure-ref
                                _ctx156600_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156916))))
                   (##structure-set!
                    _ctx156600_
                    _code156603_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156912 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156911 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156913
           gxc#current-compile-mutators
           __tmp156912
           gxc#current-compile-local-type
           __tmp156911))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx156589_)
        (letrec ((_load-it!156591_
                  (lambda (_id156598_)
                    (if (let ((__tmp156918
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156918 _id156598_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156598_))
                          (let ((__tmp156917
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156917 _id156598_ '#t)))))))
          (let* ((_modid156593_
                  (##structure-ref _ctx156589_ '1 gx#expander-context::t '#f))
                 (_modid-str156595_ (symbol->string _modid156593_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str156595_))
                (let ()
                  (declare (not safe))
                  (_load-it!156591_ 'gerbil/builtin))
                (for-each
                 _load-it!156591_
                 '(gerbil/runtime/gambit
                   gerbil/runtime/util
                   gerbil/runtime/table
                   gerbil/runtime/control
                   gerbil/runtime/system
                   gerbil/runtime/c3
                   gerbil/runtime/mop
                   gerbil/runtime/error
                   gerbil/runtime/interface
                   gerbil/runtime/hash
                   gerbil/runtime/thread
                   gerbil/runtime/syntax
                   gerbil/runtime/eval
                   gerbil/runtime/repl
                   gerbil/runtime/loader
                   gerbil/runtime/init
                   gerbil/runtime
                   gerbil/builtin)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx156534_)
        (letrec* ((_deps156536_
                   (let* ((_imports156580_
                           (##structure-ref
                            _ctx156534_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156582_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156534_))))
                     (if _$e156582_
                         ((lambda (_g156584156586_)
                            (let ()
                              (declare (not safe))
                              (cons _g156584156586_ _imports156580_)))
                          _$e156582_)
                         _imports156580_))))
          (let _lp156538_ ((_rest156540_ _deps156536_))
            (let* ((_rest156541156549_ _rest156540_)
                   (_else156543156557_ (lambda () '#!void))
                   (_K156545156568_
                    (lambda (_rest156560_ _hd156561_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156561_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156932
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156931
                                       (##structure-ref
                                        _hd156561_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156932 __tmp156931))
                                '#!void
                                (begin
                                  (let ((_$e156563_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156561_))))
                                    (if _$e156563_
                                        ((lambda (_pre156566_)
                                           (let ((__tmp156929
                                                  (let ((__tmp156930
                                                         (##structure-ref
                                                          _hd156561_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156566_
                                                          __tmp156930))))
                                             (declare (not safe))
                                             (_lp156538_ __tmp156929)))
                                         _$e156563_)
                                        (let ((__tmp156928
                                               (##structure-ref
                                                _hd156561_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156538_ __tmp156928))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156561_))))
                            (let ()
                              (declare (not safe))
                              (_lp156538_ _rest156560_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156561_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156927
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156926
                                           (##structure-ref
                                            _hd156561_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156927 __tmp156926))
                                    '#!void
                                    (begin
                                      (let ((__tmp156925
                                             (##structure-ref
                                              _hd156561_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156538_ __tmp156925))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156561_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156538_ _rest156560_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156561_
                                     'gx#module-import::t))
                                  (let ((__tmp156923
                                         (let ((__tmp156924
                                                (##direct-structure-ref
                                                 _hd156561_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156924 _rest156560_))))
                                    (declare (not safe))
                                    (_lp156538_ __tmp156923))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156561_
                                         'gx#module-export::t))
                                      (let ((__tmp156921
                                             (let ((__tmp156922
                                                    (##direct-structure-ref
                                                     _hd156561_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156922
                                                     _rest156560_))))
                                        (declare (not safe))
                                        (_lp156538_ __tmp156921))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156561_
                                             'gx#import-set::t))
                                          (let ((__tmp156919
                                                 (let ((__tmp156920
                                                        (##direct-structure-ref
                                                         _hd156561_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156920
                                                         _rest156560_))))
                                            (declare (not safe))
                                            (_lp156538_ __tmp156919))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156561_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156541156549_))
                  (let ((_hd156546156571_
                         (let ()
                           (declare (not safe))
                           (##car _rest156541156549_)))
                        (_tl156547156573_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156541156549_))))
                    (let* ((_hd156576_ _hd156546156571_)
                           (_rest156578_ _tl156547156573_))
                      (declare (not safe))
                      (_K156545156568_ _rest156578_ _hd156576_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156514_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156514_
                    'gx#module-context::t))
                 (let ((__tmp156933
                        (##structure-ref
                         _ctx156514_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156933)))
            '#!void
            (let* ((_ht156516_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156518_
                    (##structure-ref
                     _ctx156514_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156520_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156516_ _id156518_))))
              (let ((_$e156523_ _mod156520_))
                (if _$e156523_
                    _$e156523_
                    (let* ((_mod156526_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156514_)))
                           (_val156531_
                            (let ((_$e156528_ _mod156526_))
                              (if _$e156528_ _$e156528_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156516_ _id156518_ _val156531_))
                      _val156531_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156512_)
        (if (##structure-ref _ctx156512_ '1 gx#expander-context::t '#f)
            (let ((__tmp156934
                   (##structure-ref
                    _ctx156512_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156934))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156489_)
        (letrec ((_catch-e156491_
                  (lambda (_exn156510_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156489_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn156510_)))
                        '#!void)
                    '#f))
                 (_import-e156492_
                  (lambda ()
                    (let* ((_str-id156495_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156489_))
                             '".ssxi"))
                           (_artefact-path156503_
                            (let ((_odir156496156498_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156496156498_
                                  (let ((_odir156501_ _odir156496156498_))
                                    (path-expand
                                     (string-append _str-id156495_ '".ss")
                                     _odir156501_))
                                  '#f)))
                           (_library-path156505_
                            (string->symbol
                             (string-append '":" _str-id156495_ '".ss")))
                           (_ssxi-path156507_
                            (if (and _artefact-path156503_
                                     (file-exists? _artefact-path156503_))
                                _artefact-path156503_
                                _library-path156505_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156507_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156507_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156491_ _import-e156492_)))))
    (define gxc#optimize-source
      (lambda (_stx156480_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156480_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156480_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156480_))
        (let* ((_stx156482_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156480_)))
               (_stx156484_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156482_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156484_))
          (let ((_stx156487_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156484_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156487_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp156937 (list gxc#::generate-runtime-empty::t))
            (__tmp156935
             (let ((__tmp156936
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp156936 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp156937
         '()
         __tmp156935
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args156477_
        (apply make-instance gxc#::generate-ssxi::t _$args156477_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp156938
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (make-promise __tmp156938)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156469_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self156472_
                (let ((__obj156909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj156909))
               (__tmp156939
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self156472_ _stx156469_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp156939
           gxc#current-compile-method
           _self156472_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self156429_ _stx156430_)
        (let* ((_g156432156442_
                (lambda (_g156433156439_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156433156439_))))
               (_g156431156466_
                (lambda (_g156433156445_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156433156445_))
                      (let ((_e156437156447_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156433156445_))))
                        (let ((_hd156436156450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156437156447_)))
                              (_tl156435156452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156437156447_))))
                          ((lambda (_L156455_)
                             (let ((__tmp156942
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self156429_
                                         _stx156430_))))
                                   (__tmp156940
                                    (let ((__tmp156941
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156941 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156942
                                gx#current-expander-phi
                                __tmp156940)))
                           _tl156435156452_)))
                      (let ()
                        (declare (not safe))
                        (_g156432156442_ _g156433156445_))))))
          (declare (not safe))
          (_g156431156466_ _stx156430_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156368_ _stx156369_)
        (let* ((_g156371156385_
                (lambda (_g156372156382_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156372156382_))))
               (_g156370156426_
                (lambda (_g156372156388_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156372156388_))
                      (let ((_e156377156390_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156372156388_))))
                        (let ((_hd156376156393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156377156390_)))
                              (_tl156375156395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156377156390_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156375156395_))
                              (let ((_e156380156398_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156375156395_))))
                                (let ((_hd156379156401_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156380156398_)))
                                      (_tl156378156403_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156380156398_))))
                                  ((lambda (_L156406_ _L156407_)
                                     (let* ((_ctx156420_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156407_)))
                                            (_code156422_
                                             (##structure-ref
                                              _ctx156420_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156943
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156368_
                                                   _code156422_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156943
                                          gx#current-expander-context
                                          _ctx156420_))))
                                   _tl156378156403_
                                   _hd156379156401_)))
                              (let ()
                                (declare (not safe))
                                (_g156371156385_ _g156372156388_)))))
                      (let ()
                        (declare (not safe))
                        (_g156371156385_ _g156372156388_))))))
          (declare (not safe))
          (_g156370156426_ _stx156369_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156177_ _stx156178_)
        (letrec ((_generate-e156180_
                  (lambda (_id156357_)
                    (let* ((_sym156359_
                            (if (let ((__tmp156944
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156944))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156357_))
                                '#f))
                           (_$e156361_
                            (if _sym156359_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156359_))
                                '#f)))
                      (if _$e156361_
                          ((lambda (_type156364_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156359_))
                             (let* ((_typedecl156366_
                                     (let ((__method156910
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156364_
                                               'typedecl))))
                                       (if __method156910
                                           (__method156910 _type156364_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156364_
                                                    'typedecl)))))
                                    (__tmp156945
                                     (let ((__tmp156946
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156366_ '()))))
                                       (declare (not safe))
                                       (cons _sym156359_ __tmp156946))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156945)))
                           _$e156361_)
                          '(begin))))))
          (let* ((___stx156606156607_ _stx156178_)
                 (_g156183156221_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156606156607_)))))
            (let ((___kont156608156609_
                   (lambda (_L156339_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156180_ _L156339_))))
                  (___kont156610156611_
                   (lambda (_L156274_)
                     (let ((_types156300_
                            (map _generate-e156180_
                                 (let ((__tmp156947
                                        (lambda (_g156292156295_
                                                 _g156293156297_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156292156295_
                                                  _g156293156297_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156947 '() _L156274_)))))
                       (declare (not safe))
                       (cons 'begin _types156300_)))))
              (let ((___match156661156662_
                     (lambda (_e156201156226_
                              _hd156200156229_
                              _tl156199156231_
                              _e156204156234_
                              _hd156203156237_
                              _tl156202156239_
                              ___splice156612156613_
                              _target156205156242_
                              _tl156207156244_)
                       (letrec ((_loop156208156247_
                                 (lambda (_hd156206156250_ _id156212156252_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156206156250_))
                                       (let ((_e156209156255_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156206156250_))))
                                         (let ((_lp-tl156211156260_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156209156255_)))
                                               (_lp-hd156210156258_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156209156255_))))
                                           (let ((__tmp156948
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156210156258_
                                                          _id156212156252_))))
                                             (declare (not safe))
                                             (_loop156208156247_
                                              _lp-tl156211156260_
                                              __tmp156948))))
                                       (let ((_id156213156263_
                                              (reverse _id156212156252_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156202156239_))
                                             (let ((_e156216156266_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156202156239_))))
                                               (let ((_tl156214156271_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156216156266_)))
                                                     (_hd156215156269_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156216156266_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156214156271_))
                                                     (___kont156610156611_
                                                      _id156213156263_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156183156221_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156183156221_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156208156247_ _target156205156242_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156606156607_))
                    (let ((_e156188156307_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156606156607_))))
                      (let ((_tl156186156312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156188156307_)))
                            (_hd156187156310_
                             (let ()
                               (declare (not safe))
                               (##car _e156188156307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156186156312_))
                            (let ((_e156191156315_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156186156312_))))
                              (let ((_tl156189156320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156191156315_)))
                                    (_hd156190156318_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156191156315_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156190156318_))
                                    (let ((_e156194156323_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156190156318_))))
                                      (let ((_tl156192156328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156194156323_)))
                                            (_hd156193156326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156194156323_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156192156328_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156189156320_))
                                                (let ((_e156197156331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156189156320_))))
                                                  (let ((_tl156195156336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156197156331_)))
                                                        (_hd156196156334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156197156331_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156195156336_))
                                                        (___kont156608156609_
                                                         _hd156193156326_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156190156318_))
                                                            (let ((___splice156612156613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156190156318_ '0))))
                      (let ((_tl156207156244_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156612156613_ '1)))
                            (_target156205156242_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156612156613_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156207156244_))
                            (___match156661156662_
                             _e156188156307_
                             _hd156187156310_
                             _tl156186156312_
                             _e156191156315_
                             _hd156190156318_
                             _tl156189156320_
                             ___splice156612156613_
                             _target156205156242_
                             _tl156207156244_)
                            (let () (declare (not safe)) (_g156183156221_)))))
                    (let () (declare (not safe)) (_g156183156221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156190156318_))
                                                    (let ((___splice156612156613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156190156318_
                                                              '0))))
                                                      (let ((_tl156207156244_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156612156613_ '1)))
                    (_target156205156242_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156612156613_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156207156244_))
                    (___match156661156662_
                     _e156188156307_
                     _hd156187156310_
                     _tl156186156312_
                     _e156191156315_
                     _hd156190156318_
                     _tl156189156320_
                     ___splice156612156613_
                     _target156205156242_
                     _tl156207156244_)
                    (let () (declare (not safe)) (_g156183156221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156183156221_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156190156318_))
                                                (let ((___splice156612156613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156190156318_
                                                          '0))))
                                                  (let ((_tl156207156244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156612156613_
                                                            '1)))
                                                        (_target156205156242_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156612156613_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156207156244_))
                                                        (___match156661156662_
                                                         _e156188156307_
                                                         _hd156187156310_
                                                         _tl156186156312_
                                                         _e156191156315_
                                                         _hd156190156318_
                                                         _tl156189156320_
                                                         ___splice156612156613_
                                                         _target156205156242_
                                                         _tl156207156244_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156183156221_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156183156221_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156190156318_))
                                        (let ((___splice156612156613_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156190156318_
                                                  '0))))
                                          (let ((_tl156207156244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156612156613_
                                                    '1)))
                                                (_target156205156242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156612156613_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156207156244_))
                                                (___match156661156662_
                                                 _e156188156307_
                                                 _hd156187156310_
                                                 _tl156186156312_
                                                 _e156191156315_
                                                 _hd156190156318_
                                                 _tl156189156320_
                                                 ___splice156612156613_
                                                 _target156205156242_
                                                 _tl156207156244_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156183156221_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156183156221_))))))
                            (let () (declare (not safe)) (_g156183156221_)))))
                    (let () (declare (not safe)) (_g156183156221_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self155730_ _stx155731_)
        (let* ((___stx156664156665_ _stx155731_)
               (_g155735155837_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156664156665_)))))
          (let ((___kont156666156667_
                 (lambda (_L156127_ _L156128_ _L156129_ _L156130_ _L156131_)
                   (let ((__tmp156949
                          (let ((__tmp156956
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156130_)))
                                (__tmp156950
                                 (let ((__tmp156955
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156129_)))
                                       (__tmp156951
                                        (let ((__tmp156954
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156128_)))
                                              (__tmp156952
                                               (let ((__tmp156953
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156127_))))
                                                 (declare (not safe))
                                                 (cons __tmp156953 '()))))
                                          (declare (not safe))
                                          (cons __tmp156954 __tmp156952))))
                                   (declare (not safe))
                                   (cons __tmp156955 __tmp156951))))
                            (declare (not safe))
                            (cons __tmp156956 __tmp156950))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156949))))
                (___kont156668156669_
                 (lambda (_L155953_ _L155954_ _L155955_ _L155956_)
                   (let ((__tmp156957
                          (let ((__tmp156963
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155955_)))
                                (__tmp156958
                                 (let ((__tmp156962
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155954_)))
                                       (__tmp156959
                                        (let ((__tmp156961
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155953_)))
                                              (__tmp156960
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156961 __tmp156960))))
                                   (declare (not safe))
                                   (cons __tmp156962 __tmp156959))))
                            (declare (not safe))
                            (cons __tmp156963 __tmp156958))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156957))))
                (___kont156670156671_ (lambda () '(begin))))
            (let ((___match156799156800_
                   (lambda (_e155744155999_
                            _hd155743156002_
                            _tl155742156004_
                            _e155747156007_
                            _hd155746156010_
                            _tl155745156012_
                            _e155750156015_
                            _hd155749156018_
                            _tl155748156020_
                            _e155753156023_
                            _hd155752156026_
                            _tl155751156028_
                            _e155756156031_
                            _hd155755156034_
                            _tl155754156036_
                            _e155759156039_
                            _hd155758156042_
                            _tl155757156044_
                            _e155762156047_
                            _hd155761156050_
                            _tl155760156052_
                            _e155765156055_
                            _hd155764156058_
                            _tl155763156060_
                            _e155768156063_
                            _hd155767156066_
                            _tl155766156068_
                            _e155771156071_
                            _hd155770156074_
                            _tl155769156076_
                            _e155774156079_
                            _hd155773156082_
                            _tl155772156084_
                            _e155777156087_
                            _hd155776156090_
                            _tl155775156092_
                            _e155780156095_
                            _hd155779156098_
                            _tl155778156100_
                            _e155783156103_
                            _hd155782156106_
                            _tl155781156108_
                            _e155786156111_
                            _hd155785156114_
                            _tl155784156116_
                            _e155789156119_
                            _hd155788156122_
                            _tl155787156124_)
                     (let ((_L156127_ _hd155788156122_)
                           (_L156128_ _hd155779156098_)
                           (_L156129_ _hd155770156074_)
                           (_L156130_ _hd155761156050_)
                           (_L156131_ _hd155752156026_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156131_
                              'bind-method!))
                           (___kont156666156667_
                            _L156127_
                            _L156128_
                            _L156129_
                            _L156130_
                            _L156131_)
                           (___kont156670156671_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156664156665_))
                  (let ((_e155744155999_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156664156665_))))
                    (let ((_tl155742156004_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155744155999_)))
                          (_hd155743156002_
                           (let ()
                             (declare (not safe))
                             (##car _e155744155999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155742156004_))
                          (let ((_e155747156007_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155742156004_))))
                            (let ((_tl155745156012_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155747156007_)))
                                  (_hd155746156010_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155747156007_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155746156010_))
                                  (let ((_e155750156015_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155746156010_))))
                                    (let ((_tl155748156020_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155750156015_)))
                                          (_hd155749156018_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155750156015_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155749156018_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155749156018_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155748156020_))
                                                  (let ((_e155753156023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155748156020_))))
                                                    (let ((_tl155751156028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155753156023_)))
                                                          (_hd155752156026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155753156023_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155751156028_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155745156012_))
                      (let ((_e155756156031_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155745156012_))))
                        (let ((_tl155754156036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155756156031_)))
                              (_hd155755156034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155756156031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155755156034_))
                              (let ((_e155759156039_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155755156034_))))
                                (let ((_tl155757156044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155759156039_)))
                                      (_hd155758156042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155759156039_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155758156042_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155758156042_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155757156044_))
                                              (let ((_e155762156047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155757156044_))))
                                                (let ((_tl155760156052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155762156047_)))
                                                      (_hd155761156050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155762156047_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155760156052_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155754156036_))
                                                          (let ((_e155765156055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155754156036_))))
                    (let ((_tl155763156060_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155765156055_)))
                          (_hd155764156058_
                           (let ()
                             (declare (not safe))
                             (##car _e155765156055_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155764156058_))
                          (let ((_e155768156063_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155764156058_))))
                            (let ((_tl155766156068_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155768156063_)))
                                  (_hd155767156066_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155768156063_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155767156066_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155767156066_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155766156068_))
                                          (let ((_e155771156071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155766156068_))))
                                            (let ((_tl155769156076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155771156071_)))
                                                  (_hd155770156074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155771156071_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155769156076_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155763156060_))
                                                      (let ((_e155774156079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155763156060_))))
                (let ((_tl155772156084_
                       (let () (declare (not safe)) (##cdr _e155774156079_)))
                      (_hd155773156082_
                       (let () (declare (not safe)) (##car _e155774156079_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155773156082_))
                      (let ((_e155777156087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155773156082_))))
                        (let ((_tl155775156092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155777156087_)))
                              (_hd155776156090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155777156087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155776156090_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155776156090_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155775156092_))
                                      (let ((_e155780156095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155775156092_))))
                                        (let ((_tl155778156100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155780156095_)))
                                              (_hd155779156098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155780156095_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155778156100_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155772156084_))
                                                  (let ((_e155783156103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155772156084_))))
                                                    (let ((_tl155781156108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155783156103_)))
                                                          (_hd155782156106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155783156103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155782156106_))
                                                          (let ((_e155786156111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155782156106_))))
                    (let ((_tl155784156116_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155786156111_)))
                          (_hd155785156114_
                           (let ()
                             (declare (not safe))
                             (##car _e155786156111_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155785156114_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155785156114_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155784156116_))
                                  (let ((_e155789156119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155784156116_))))
                                    (let ((_tl155787156124_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155789156119_)))
                                          (_hd155788156122_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155789156119_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155787156124_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155781156108_))
                                              (___match156799156800_
                                               _e155744155999_
                                               _hd155743156002_
                                               _tl155742156004_
                                               _e155747156007_
                                               _hd155746156010_
                                               _tl155745156012_
                                               _e155750156015_
                                               _hd155749156018_
                                               _tl155748156020_
                                               _e155753156023_
                                               _hd155752156026_
                                               _tl155751156028_
                                               _e155756156031_
                                               _hd155755156034_
                                               _tl155754156036_
                                               _e155759156039_
                                               _hd155758156042_
                                               _tl155757156044_
                                               _e155762156047_
                                               _hd155761156050_
                                               _tl155760156052_
                                               _e155765156055_
                                               _hd155764156058_
                                               _tl155763156060_
                                               _e155768156063_
                                               _hd155767156066_
                                               _tl155766156068_
                                               _e155771156071_
                                               _hd155770156074_
                                               _tl155769156076_
                                               _e155774156079_
                                               _hd155773156082_
                                               _tl155772156084_
                                               _e155777156087_
                                               _hd155776156090_
                                               _tl155775156092_
                                               _e155780156095_
                                               _hd155779156098_
                                               _tl155778156100_
                                               _e155783156103_
                                               _hd155782156106_
                                               _tl155781156108_
                                               _e155786156111_
                                               _hd155785156114_
                                               _tl155784156116_
                                               _e155789156119_
                                               _hd155788156122_
                                               _tl155787156124_)
                                              (___kont156670156671_))
                                          (___kont156670156671_))))
                                  (___kont156670156671_))
                              (___kont156670156671_))
                          (___kont156670156671_))))
                  (___kont156670156671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155772156084_))
                                                      (if (let ((__tmp156964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156964 'bind-method!))
                  (let ((_L155953_ _hd155779156098_)
                        (_L155954_ _hd155770156074_)
                        (_L155955_ _hd155761156050_)
                        (_L155956_ _hd155752156026_))
                    (___kont156668156669_
                     _L155953_
                     _L155954_
                     _L155955_
                     _L155956_))
                  (___kont156670156671_))
              (___kont156670156671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156670156671_))))
                                      (___kont156670156671_))
                                  (___kont156670156671_))
                              (___kont156670156671_))))
                      (___kont156670156671_))))
              (___kont156670156671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156670156671_))))
                                          (___kont156670156671_))
                                      (___kont156670156671_))
                                  (___kont156670156671_))))
                          (___kont156670156671_))))
                  (___kont156670156671_))
              (___kont156670156671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156670156671_))
                                          (___kont156670156671_))
                                      (___kont156670156671_))))
                              (___kont156670156671_))))
                      (___kont156670156671_))
                  (___kont156670156671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156670156671_))
                                              (___kont156670156671_))
                                          (___kont156670156671_))))
                                  (___kont156670156671_))))
                          (___kont156670156671_))))
                  (___kont156670156671_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155706_)
        (let* ((_self155707155713_ _self155706_)
               (_E155709155717_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155707155713_))))
               (_K155710155722_
                (lambda (_alias-id155720_)
                  (let ((__tmp156965
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155720_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156965)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155707155713_ 'gxc#!alias::t))
              (let* ((_e155711155725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155707155713_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155728_ _e155711155725_))
                (declare (not safe))
                (_K155710155722_ _alias-id155728_))
              (let () (declare (not safe)) (_E155709155717_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155497_)
        (let* ((_self155498155513_ _self155497_)
               (_E155500155517_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155498155513_))))
               (_K155501155531_
                (lambda (_methods155520_
                         _metaclass155521_
                         _final?155522_
                         _struct?155523_
                         _constructor155524_
                         _fields155525_
                         _slots155526_
                         _precendence-list155527_
                         _super155528_
                         _id155529_)
                  (let ((__tmp156966
                         (let ((__tmp156967
                                (let ((__tmp156968
                                       (let ((__tmp156969
                                              (let ((__tmp156970
                                                     (let ((__tmp156971
                                                            (let ((__tmp156972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156973
                                  (let ((__tmp156974
                                         (let ((__tmp156975
                                                (let ((__tmp156976
                                                       (if _methods155520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155520_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156976 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155521_
                                                 __tmp156975))))
                                    (declare (not safe))
                                    (cons _final?155522_ __tmp156974))))
                             (declare (not safe))
                             (cons _struct?155523_ __tmp156973))))
                      (declare (not safe))
                      (cons _constructor155524_ __tmp156972))))
               (declare (not safe))
               (cons _fields155525_ __tmp156971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155526_
                                                      __tmp156970))))
                                         (declare (not safe))
                                         (cons _precendence-list155527_
                                               __tmp156969))))
                                  (declare (not safe))
                                  (cons _super155528_ __tmp156968))))
                           (declare (not safe))
                           (cons _id155529_ __tmp156967))))
                    (declare (not safe))
                    (cons '@class __tmp156966)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155498155513_ 'gxc#!class::t))
              (let* ((_e155502155534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155537_ _e155502155534_)
                     (_e155503155539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155542_ _e155503155539_)
                     (_e155504155544_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155547_ _e155504155544_)
                     (_e155505155549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155552_ _e155505155549_)
                     (_e155506155554_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155557_ _e155506155554_)
                     (_e155507155559_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155562_ _e155507155559_)
                     (_e155508155564_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155567_ _e155508155564_)
                     (_e155509155569_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155572_ _e155509155569_)
                     (_e155510155574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155577_ _e155510155574_)
                     (_e155511155579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155498155513_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155582_ _e155511155579_))
                (declare (not safe))
                (_K155501155531_
                 _methods155582_
                 _metaclass155577_
                 _final?155572_
                 _struct?155567_
                 _constructor155562_
                 _fields155557_
                 _slots155552_
                 _precendence-list155547_
                 _super155542_
                 _id155537_))
              (let () (declare (not safe)) (_E155500155517_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155351_)
        (let* ((_self155352155358_ _self155351_)
               (_E155354155362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155352155358_))))
               (_K155355155367_
                (lambda (_klass-id155365_)
                  (let ((__tmp156977
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155365_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156977)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155352155358_
                 'gxc#!predicate::t))
              (let* ((_e155356155370_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155352155358_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155373_ _e155356155370_))
                (declare (not safe))
                (_K155355155367_ _klass-id155373_))
              (let () (declare (not safe)) (_E155354155362_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155205_)
        (let* ((_self155206155212_ _self155205_)
               (_E155208155216_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155206155212_))))
               (_K155209155221_
                (lambda (_klass-id155219_)
                  (let ((__tmp156978
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155219_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156978)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155206155212_
                 'gxc#!constructor::t))
              (let* ((_e155210155224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155206155212_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155227_ _e155210155224_))
                (declare (not safe))
                (_K155209155221_ _klass-id155227_))
              (let () (declare (not safe)) (_E155208155216_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155045_)
        (let* ((_self155046155054_ _self155045_)
               (_E155048155058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155046155054_))))
               (_K155049155065_
                (lambda (_checked?155061_ _slot155062_ _klass-id155063_)
                  (let ((__tmp156979
                         (let ((__tmp156980
                                (let ((__tmp156981
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155061_ '()))))
                                  (declare (not safe))
                                  (cons _slot155062_ __tmp156981))))
                           (declare (not safe))
                           (cons _klass-id155063_ __tmp156980))))
                    (declare (not safe))
                    (cons '@accessor __tmp156979)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155046155054_
                 'gxc#!accessor::t))
              (let* ((_e155050155068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155046155054_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155071_ _e155050155068_)
                     (_e155051155073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155046155054_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155076_ _e155051155073_)
                     (_e155052155078_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155046155054_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155081_ _e155052155078_))
                (declare (not safe))
                (_K155049155065_
                 _checked?155081_
                 _slot155076_
                 _klass-id155071_))
              (let () (declare (not safe)) (_E155048155058_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154885_)
        (let* ((_self154886154894_ _self154885_)
               (_E154888154898_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154886154894_))))
               (_K154889154905_
                (lambda (_checked?154901_ _slot154902_ _klass-id154903_)
                  (let ((__tmp156982
                         (let ((__tmp156983
                                (let ((__tmp156984
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154901_ '()))))
                                  (declare (not safe))
                                  (cons _slot154902_ __tmp156984))))
                           (declare (not safe))
                           (cons _klass-id154903_ __tmp156983))))
                    (declare (not safe))
                    (cons '@mutator __tmp156982)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154886154894_ 'gxc#!mutator::t))
              (let* ((_e154890154908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154886154894_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154911_ _e154890154908_)
                     (_e154891154913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154886154894_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154916_ _e154891154913_)
                     (_e154892154918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154886154894_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154921_ _e154892154918_))
                (declare (not safe))
                (_K154889154905_
                 _checked?154921_
                 _slot154916_
                 _klass-id154911_))
              (let () (declare (not safe)) (_E154888154898_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154711_)
        (let* ((_self154712154722_ _self154711_)
               (_E154714154726_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154712154722_))))
               (_K154715154737_
                (lambda (_typedecl154729_
                         _inline154730_
                         _dispatch154731_
                         _arity154732_)
                  (if _inline154730_
                      (let ((_$e154734_ _typedecl154729_))
                        (if _$e154734_
                            _$e154734_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156985
                             (let ((__tmp156986
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154731_ '()))))
                               (declare (not safe))
                               (cons _arity154732_ __tmp156986))))
                        (declare (not safe))
                        (cons '@lambda __tmp156985))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154712154722_ 'gxc#!lambda::t))
              (let* ((_e154716154740_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154712154722_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154717154743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154712154722_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154746_ _e154717154743_)
                     (_e154718154748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154712154722_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154751_ _e154718154748_)
                     (_e154719154753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154712154722_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154756_ _e154719154753_)
                     (_e154720154758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154712154722_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154761_ _e154720154758_))
                (declare (not safe))
                (_K154715154737_
                 _typedecl154761_
                 _inline154756_
                 _dispatch154751_
                 _arity154746_))
              (let () (declare (not safe)) (_E154714154726_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154522_)
        (letrec ((_clause-e154524_
                  (lambda (_clause154554_)
                    (let* ((_clause154555154563_ _clause154554_)
                           (_E154557154567_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154555154563_))))
                           (_K154558154573_
                            (lambda (_dispatch154570_ _arity154571_)
                              (let ((__tmp156987
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154570_ '()))))
                                (declare (not safe))
                                (cons _arity154571_ __tmp156987)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154555154563_
                             'gxc#!lambda::t))
                          (let* ((_e154559154576_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154555154563_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154560154579_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154555154563_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154582_ _e154560154579_)
                                 (_e154561154584_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154555154563_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154587_ _e154561154584_))
                            (declare (not safe))
                            (_K154558154573_ _dispatch154587_ _arity154582_))
                          (let () (declare (not safe)) (_E154557154567_)))))))
          (let* ((_self154525154532_ _self154522_)
                 (_E154527154536_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154525154532_))))
                 (_K154528154543_
                  (lambda (_clauses154539_)
                    (let ((_clauses154541_
                           (map _clause-e154524_ _clauses154539_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154541_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154525154532_
                   'gxc#!case-lambda::t))
                (let* ((_e154529154546_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154525154532_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154530154549_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154525154532_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154552_ _e154530154549_))
                  (declare (not safe))
                  (_K154528154543_ _clauses154552_))
                (let () (declare (not safe)) (_E154527154536_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154365_)
        (let* ((_self154366154374_ _self154365_)
               (_E154368154378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154366154374_))))
               (_K154369154384_
                (lambda (_dispatch154381_ _table154382_)
                  (let ((__tmp156988
                         (let ((__tmp156989
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154381_ '()))))
                           (declare (not safe))
                           (cons _table154382_ __tmp156989))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156988)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154366154374_
                 'gxc#!kw-lambda::t))
              (let* ((_e154370154387_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154366154374_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154371154390_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154366154374_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154393_ _e154371154390_)
                     (_e154372154395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154366154374_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154398_ _e154372154395_))
                (declare (not safe))
                (_K154369154384_ _dispatch154398_ _table154393_))
              (let () (declare (not safe)) (_E154368154378_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154208_)
        (let* ((_self154209154217_ _self154208_)
               (_E154211154221_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154209154217_))))
               (_K154212154227_
                (lambda (_main154224_ _keys154225_)
                  (let ((__tmp156990
                         (let ((__tmp156991
                                (let ()
                                  (declare (not safe))
                                  (cons _main154224_ '()))))
                           (declare (not safe))
                           (cons _keys154225_ __tmp156991))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156990)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154209154217_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154213154230_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154214154233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154236_ _e154214154233_)
                     (_e154215154238_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154241_ _e154215154238_))
                (declare (not safe))
                (_K154212154227_ _main154241_ _keys154236_))
              (let () (declare (not safe)) (_E154211154221_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))

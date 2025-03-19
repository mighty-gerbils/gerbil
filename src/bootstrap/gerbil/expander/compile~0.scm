(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1742237313)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131417%_)
        (let* ((_%e131418131425%_ _%stx131417%_)
               (_%E131420131429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131418131425%_)))
               (_%E131419131443%_
                (lambda ()
                  (if (gx#stx-pair? _%e131418131425%_)
                      (let ((_%e131421131433%_
                             (gx#syntax-e _%e131418131425%_)))
                        (let ((_%hd131422131436%_ (##car _%e131421131433%_))
                              (_%tl131423131438%_ (##cdr _%e131421131433%_)))
                          (let* ((_%form131441%_ _%hd131422131436%_)
                                 (__self131446
                                  (gx#syntax-local-e__0 _%form131441%_))
                                 (__method131447
                                  (__method-ref
                                   __self131446
                                   'compile-top-syntax)))
                            (if __method131447
                                (__method131447 __self131446 _%stx131417%_)
                                (begin
                                  (error '"Missing method"
                                         __self131446
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131420131429%_)))))
          (_%E131419131443%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130260131363%_ _%stx131365%_)
        (let* ((_%self131367%_ _%self130260131363%_)
               (_%self131369%_ _%self131367%_)
               (_%self131378131386%_ _%self131369%_)
               (_%E131380131390%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131378131386%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131381131403%_
                (lambda (_%K131393%_)
                  (let ((_%$e131395%_ (gx#stx-source _%stx131365%_)))
                    (if _%$e131395%_
                        ((lambda (_%g131397131399%_)
                           (gx#stx-wrap-source
                            (_%K131393%_ _%stx131365%_)
                            _%g131397131399%_))
                         _%$e131395%_)
                        (_%K131393%_ _%stx131365%_)))))
               (_%e131382131406%_
                (##unchecked-structure-ref _%self131378131386%_ '1 '#f '#f))
               (_%e131383131409%_
                (##unchecked-structure-ref _%self131378131386%_ '2 '#f '#f))
               (_%e131384131412%_
                (##unchecked-structure-ref _%self131378131386%_ '3 '#f '#f))
               (_%K131415%_ _%e131384131412%_))
          (_%K131381131403%_ _%K131415%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131237%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131237%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131207%_)
        (let* ((_%e131208131215%_ _%stx131207%_)
               (_%E131210131219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131208131215%_)))
               (_%E131209131233%_
                (lambda ()
                  (if (gx#stx-pair? _%e131208131215%_)
                      (let ((_%e131211131223%_
                             (gx#syntax-e _%e131208131215%_)))
                        (let ((_%hd131212131226%_ (##car _%e131211131223%_))
                              (_%tl131213131228%_ (##cdr _%e131211131223%_)))
                          (let ((_%body131231%_ _%tl131213131228%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131231%_)))))
                      (_%E131210131219%_)))))
          (_%E131209131233%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131176%_)
        (let* ((_%e131177131184%_ _%stx131176%_)
               (_%E131179131188%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131177131184%_)))
               (_%E131178131203%_
                (lambda ()
                  (if (gx#stx-pair? _%e131177131184%_)
                      (let ((_%e131180131192%_
                             (gx#syntax-e _%e131177131184%_)))
                        (let ((_%hd131181131195%_ (##car _%e131180131192%_))
                              (_%tl131182131197%_ (##cdr _%e131180131192%_)))
                          (let ((_%body131200%_ _%tl131182131197%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131200%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131179131188%_)))))
          (_%E131178131203%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131146%_)
        (let* ((_%e131147131154%_ _%stx131146%_)
               (_%E131149131158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131147131154%_)))
               (_%E131148131172%_
                (lambda ()
                  (if (gx#stx-pair? _%e131147131154%_)
                      (let ((_%e131150131162%_
                             (gx#syntax-e _%e131147131154%_)))
                        (let ((_%hd131151131165%_ (##car _%e131150131162%_))
                              (_%tl131152131167%_ (##cdr _%e131150131162%_)))
                          (let ((_%body131170%_ _%tl131152131167%_))
                            (cons '%#begin-foreign _%body131170%_))))
                      (_%E131149131158%_)))))
          (_%E131148131172%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131092%_)
        (let* ((_%e131093131106%_ _%stx131092%_)
               (_%E131095131110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131093131106%_)))
               (_%E131094131142%_
                (lambda ()
                  (if (gx#stx-pair? _%e131093131106%_)
                      (let ((_%e131096131114%_
                             (gx#syntax-e _%e131093131106%_)))
                        (let ((_%hd131097131117%_ (##car _%e131096131114%_))
                              (_%tl131098131119%_ (##cdr _%e131096131114%_)))
                          (if (gx#stx-pair? _%tl131098131119%_)
                              (let ((_%e131099131122%_
                                     (gx#syntax-e _%tl131098131119%_)))
                                (let ((_%hd131100131125%_
                                       (##car _%e131099131122%_))
                                      (_%tl131101131127%_
                                       (##cdr _%e131099131122%_)))
                                  (let ((_%ann131130%_ _%hd131100131125%_))
                                    (if (gx#stx-pair? _%tl131101131127%_)
                                        (let ((_%e131102131132%_
                                               (gx#syntax-e
                                                _%tl131101131127%_)))
                                          (let ((_%hd131103131135%_
                                                 (##car _%e131102131132%_))
                                                (_%tl131104131137%_
                                                 (##cdr _%e131102131132%_)))
                                            (let ((_%expr131140%_
                                                   _%hd131103131135%_))
                                              (if (gx#stx-null?
                                                   _%tl131104131137%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131140%_)
                                                  (_%E131095131110%_)))))
                                        (_%E131095131110%_)))))
                              (_%E131095131110%_))))
                      (_%E131095131110%_)))))
          (_%E131094131142%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131062%_)
        (let* ((_%e131063131070%_ _%stx131062%_)
               (_%E131065131074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131063131070%_)))
               (_%E131064131088%_
                (lambda ()
                  (if (gx#stx-pair? _%e131063131070%_)
                      (let ((_%e131066131078%_
                             (gx#syntax-e _%e131063131070%_)))
                        (let ((_%hd131067131081%_ (##car _%e131066131078%_))
                              (_%tl131068131083%_ (##cdr _%e131066131078%_)))
                          (let ((_%body131086%_ _%tl131068131083%_))
                            (cons '%#import _%body131086%_))))
                      (_%E131065131074%_)))))
          (_%E131064131088%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx131019%_)
        (let* ((_%e131020131030%_ _%stx131019%_)
               (_%E131022131034%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131020131030%_)))
               (_%E131021131058%_
                (lambda ()
                  (if (gx#stx-pair? _%e131020131030%_)
                      (let ((_%e131023131038%_
                             (gx#syntax-e _%e131020131030%_)))
                        (let ((_%hd131024131041%_ (##car _%e131023131038%_))
                              (_%tl131025131043%_ (##cdr _%e131023131038%_)))
                          (if (gx#stx-pair? _%tl131025131043%_)
                              (let ((_%e131026131046%_
                                     (gx#syntax-e _%tl131025131043%_)))
                                (let ((_%hd131027131049%_
                                       (##car _%e131026131046%_))
                                      (_%tl131028131051%_
                                       (##cdr _%e131026131046%_)))
                                  (let* ((_%hd131054%_ _%hd131027131049%_)
                                         (_%body131056%_ _%tl131028131051%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131054%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131056%_))))))
                              (_%E131022131034%_))))
                      (_%E131022131034%_)))))
          (_%E131021131058%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130989%_)
        (let* ((_%e130990130997%_ _%stx130989%_)
               (_%E130992131001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130990130997%_)))
               (_%E130991131015%_
                (lambda ()
                  (if (gx#stx-pair? _%e130990130997%_)
                      (let ((_%e130993131005%_
                             (gx#syntax-e _%e130990130997%_)))
                        (let ((_%hd130994131008%_ (##car _%e130993131005%_))
                              (_%tl130995131010%_ (##cdr _%e130993131005%_)))
                          (let ((_%body131013%_ _%tl130995131010%_))
                            (cons '%#export _%body131013%_))))
                      (_%E130992131001%_)))))
          (_%E130991131015%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130959%_)
        (let* ((_%e130960130967%_ _%stx130959%_)
               (_%E130962130971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130960130967%_)))
               (_%E130961130985%_
                (lambda ()
                  (if (gx#stx-pair? _%e130960130967%_)
                      (let ((_%e130963130975%_
                             (gx#syntax-e _%e130960130967%_)))
                        (let ((_%hd130964130978%_ (##car _%e130963130975%_))
                              (_%tl130965130980%_ (##cdr _%e130963130975%_)))
                          (let ((_%body130983%_ _%tl130965130980%_))
                            (cons '%#provide _%body130983%_))))
                      (_%E130962130971%_)))))
          (_%E130961130985%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130929%_)
        (let* ((_%e130930130937%_ _%stx130929%_)
               (_%E130932130941%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130930130937%_)))
               (_%E130931130955%_
                (lambda ()
                  (if (gx#stx-pair? _%e130930130937%_)
                      (let ((_%e130933130945%_
                             (gx#syntax-e _%e130930130937%_)))
                        (let ((_%hd130934130948%_ (##car _%e130933130945%_))
                              (_%tl130935130950%_ (##cdr _%e130933130945%_)))
                          (let ((_%body130953%_ _%tl130935130950%_))
                            (cons '%#extern _%body130953%_))))
                      (_%E130932130941%_)))))
          (_%E130931130955%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130875%_)
        (let* ((_%e130876130889%_ _%stx130875%_)
               (_%E130878130893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130876130889%_)))
               (_%E130877130925%_
                (lambda ()
                  (if (gx#stx-pair? _%e130876130889%_)
                      (let ((_%e130879130897%_
                             (gx#syntax-e _%e130876130889%_)))
                        (let ((_%hd130880130900%_ (##car _%e130879130897%_))
                              (_%tl130881130902%_ (##cdr _%e130879130897%_)))
                          (if (gx#stx-pair? _%tl130881130902%_)
                              (let ((_%e130882130905%_
                                     (gx#syntax-e _%tl130881130902%_)))
                                (let ((_%hd130883130908%_
                                       (##car _%e130882130905%_))
                                      (_%tl130884130910%_
                                       (##cdr _%e130882130905%_)))
                                  (let ((_%hd130913%_ _%hd130883130908%_))
                                    (if (gx#stx-pair? _%tl130884130910%_)
                                        (let ((_%e130885130915%_
                                               (gx#syntax-e
                                                _%tl130884130910%_)))
                                          (let ((_%hd130886130918%_
                                                 (##car _%e130885130915%_))
                                                (_%tl130887130920%_
                                                 (##cdr _%e130885130915%_)))
                                            (let ((_%expr130923%_
                                                   _%hd130886130918%_))
                                              (if (gx#stx-null?
                                                   _%tl130887130920%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130913%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130923%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130878130893%_)))))
                                        (_%E130878130893%_)))))
                              (_%E130878130893%_))))
                      (_%E130878130893%_)))))
          (_%E130877130925%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130820%_)
        (let* ((_%e130821130834%_ _%stx130820%_)
               (_%E130823130838%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130821130834%_)))
               (_%E130822130871%_
                (lambda ()
                  (if (gx#stx-pair? _%e130821130834%_)
                      (let ((_%e130824130842%_
                             (gx#syntax-e _%e130821130834%_)))
                        (let ((_%hd130825130845%_ (##car _%e130824130842%_))
                              (_%tl130826130847%_ (##cdr _%e130824130842%_)))
                          (if (gx#stx-pair? _%tl130826130847%_)
                              (let ((_%e130827130850%_
                                     (gx#syntax-e _%tl130826130847%_)))
                                (let ((_%hd130828130853%_
                                       (##car _%e130827130850%_))
                                      (_%tl130829130855%_
                                       (##cdr _%e130827130850%_)))
                                  (let ((_%hd130858%_ _%hd130828130853%_))
                                    (if (gx#stx-pair? _%tl130829130855%_)
                                        (let ((_%e130830130860%_
                                               (gx#syntax-e
                                                _%tl130829130855%_)))
                                          (let ((_%hd130831130863%_
                                                 (##car _%e130830130860%_))
                                                (_%tl130832130865%_
                                                 (##cdr _%e130830130860%_)))
                                            (let ((_%expr130868%_
                                                   _%hd130831130863%_))
                                              (if (gx#stx-null?
                                                   _%tl130832130865%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130858%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130868%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130823130838%_)))))
                                        (_%E130823130838%_)))))
                              (_%E130823130838%_))))
                      (_%E130823130838%_)))))
          (_%E130822130871%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130790%_)
        (let* ((_%e130791130798%_ _%stx130790%_)
               (_%E130793130802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130791130798%_)))
               (_%E130792130816%_
                (lambda ()
                  (if (gx#stx-pair? _%e130791130798%_)
                      (let ((_%e130794130806%_
                             (gx#syntax-e _%e130791130798%_)))
                        (let ((_%hd130795130809%_ (##car _%e130794130806%_))
                              (_%tl130796130811%_ (##cdr _%e130794130806%_)))
                          (let ((_%body130814%_ _%tl130796130811%_))
                            (cons '%#define-alias _%body130814%_))))
                      (_%E130793130802%_)))))
          (_%E130792130816%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130760%_)
        (let* ((_%e130761130768%_ _%stx130760%_)
               (_%E130763130772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130761130768%_)))
               (_%E130762130786%_
                (lambda ()
                  (if (gx#stx-pair? _%e130761130768%_)
                      (let ((_%e130764130776%_
                             (gx#syntax-e _%e130761130768%_)))
                        (let ((_%hd130765130779%_ (##car _%e130764130776%_))
                              (_%tl130766130781%_ (##cdr _%e130764130776%_)))
                          (let ((_%body130784%_ _%tl130766130781%_))
                            (cons '%#define-runtime _%body130784%_))))
                      (_%E130763130772%_)))))
          (_%E130762130786%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130730%_)
        (let* ((_%e130731130738%_ _%stx130730%_)
               (_%E130733130742%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130731130738%_)))
               (_%E130732130756%_
                (lambda ()
                  (if (gx#stx-pair? _%e130731130738%_)
                      (let ((_%e130734130746%_
                             (gx#syntax-e _%e130731130738%_)))
                        (let ((_%hd130735130749%_ (##car _%e130734130746%_))
                              (_%tl130736130751%_ (##cdr _%e130734130746%_)))
                          (let ((_%decls130754%_ _%tl130736130751%_))
                            (cons '%#declare _%decls130754%_))))
                      (_%E130733130742%_)))))
          (_%E130732130756%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130700%_)
        (let* ((_%e130701130708%_ _%stx130700%_)
               (_%E130703130712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130701130708%_)))
               (_%E130702130726%_
                (lambda ()
                  (if (gx#stx-pair? _%e130701130708%_)
                      (let ((_%e130704130716%_
                             (gx#syntax-e _%e130701130708%_)))
                        (let ((_%hd130705130719%_ (##car _%e130704130716%_))
                              (_%tl130706130721%_ (##cdr _%e130704130716%_)))
                          (let ((_%clause130724%_ _%tl130706130721%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130724%_)))))
                      (_%E130703130712%_)))))
          (_%E130702130726%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130657%_)
        (let* ((_%e130658130668%_ _%stx130657%_)
               (_%E130660130672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130658130668%_)))
               (_%E130659130696%_
                (lambda ()
                  (if (gx#stx-pair? _%e130658130668%_)
                      (let ((_%e130661130676%_
                             (gx#syntax-e _%e130658130668%_)))
                        (let ((_%hd130662130679%_ (##car _%e130661130676%_))
                              (_%tl130663130681%_ (##cdr _%e130661130676%_)))
                          (let ((_%hd130684%_ _%hd130662130679%_))
                            (if (gx#stx-pair? _%tl130663130681%_)
                                (let ((_%e130664130686%_
                                       (gx#syntax-e _%tl130663130681%_)))
                                  (let ((_%hd130665130689%_
                                         (##car _%e130664130686%_))
                                        (_%tl130666130691%_
                                         (##cdr _%e130664130686%_)))
                                    (let ((_%body130694%_ _%hd130665130689%_))
                                      (if (gx#stx-null? _%tl130666130691%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130684%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130694%_)
                                                      '()))
                                          (_%E130660130672%_)))))
                                (_%E130660130672%_)))))
                      (_%E130660130672%_)))))
          (_%E130659130696%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130627%_)
        (let* ((_%e130628130635%_ _%stx130627%_)
               (_%E130630130639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130628130635%_)))
               (_%E130629130653%_
                (lambda ()
                  (if (gx#stx-pair? _%e130628130635%_)
                      (let ((_%e130631130643%_
                             (gx#syntax-e _%e130628130635%_)))
                        (let ((_%hd130632130646%_ (##car _%e130631130643%_))
                              (_%tl130633130648%_ (##cdr _%e130631130643%_)))
                          (let ((_%clauses130651%_ _%tl130633130648%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130651%_)))))
                      (_%E130630130639%_)))))
          (_%E130629130653%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130562%_ _%form130563%_)
        (let* ((_%e130564130577%_ _%stx130562%_)
               (_%E130566130581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130564130577%_)))
               (_%E130565130613%_
                (lambda ()
                  (if (gx#stx-pair? _%e130564130577%_)
                      (let ((_%e130567130585%_
                             (gx#syntax-e _%e130564130577%_)))
                        (let ((_%hd130568130588%_ (##car _%e130567130585%_))
                              (_%tl130569130590%_ (##cdr _%e130567130585%_)))
                          (if (gx#stx-pair? _%tl130569130590%_)
                              (let ((_%e130570130593%_
                                     (gx#syntax-e _%tl130569130590%_)))
                                (let ((_%hd130571130596%_
                                       (##car _%e130570130593%_))
                                      (_%tl130572130598%_
                                       (##cdr _%e130570130593%_)))
                                  (let ((_%hd130601%_ _%hd130571130596%_))
                                    (if (gx#stx-pair? _%tl130572130598%_)
                                        (let ((_%e130573130603%_
                                               (gx#syntax-e
                                                _%tl130572130598%_)))
                                          (let ((_%hd130574130606%_
                                                 (##car _%e130573130603%_))
                                                (_%tl130575130608%_
                                                 (##cdr _%e130573130603%_)))
                                            (let ((_%body130611%_
                                                   _%hd130574130606%_))
                                              (if (gx#stx-null?
                                                   _%tl130575130608%_)
                                                  (cons _%form130563%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130601%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130611%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130566130581%_)))))
                                        (_%E130566130581%_)))))
                              (_%E130566130581%_))))
                      (_%E130566130581%_)))))
          (_%E130565130613%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130620%_)
        (let ((_%form130622%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130620%_ _%form130622%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131449_
        (let ((_g131448_ (##length _g131449_)))
          (cond ((##fx= _g131448_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131449_))
                ((##fx= _g131448_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131449_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130559%_)
        (gx#core-compile-top-let-values%__% _%stx130559%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130557%_)
        (gx#core-compile-top-let-values%__% _%stx130557%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130516%_)
        (let* ((_%e130517130527%_ _%stx130516%_)
               (_%E130519130531%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130517130527%_)))
               (_%E130518130553%_
                (lambda ()
                  (if (gx#stx-pair? _%e130517130527%_)
                      (let ((_%e130520130535%_
                             (gx#syntax-e _%e130517130527%_)))
                        (let ((_%hd130521130538%_ (##car _%e130520130535%_))
                              (_%tl130522130540%_ (##cdr _%e130520130535%_)))
                          (if (gx#stx-pair? _%tl130522130540%_)
                              (let ((_%e130523130543%_
                                     (gx#syntax-e _%tl130522130540%_)))
                                (let ((_%hd130524130546%_
                                       (##car _%e130523130543%_))
                                      (_%tl130525130548%_
                                       (##cdr _%e130523130543%_)))
                                  (let ((_%e130551%_ _%hd130524130546%_))
                                    (if (gx#stx-null? _%tl130525130548%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130551%_)
                                                    '()))
                                        (_%E130519130531%_)))))
                              (_%E130519130531%_))))
                      (_%E130519130531%_)))))
          (_%E130518130553%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130475%_)
        (let* ((_%e130476130486%_ _%stx130475%_)
               (_%E130478130490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130476130486%_)))
               (_%E130477130512%_
                (lambda ()
                  (if (gx#stx-pair? _%e130476130486%_)
                      (let ((_%e130479130494%_
                             (gx#syntax-e _%e130476130486%_)))
                        (let ((_%hd130480130497%_ (##car _%e130479130494%_))
                              (_%tl130481130499%_ (##cdr _%e130479130494%_)))
                          (if (gx#stx-pair? _%tl130481130499%_)
                              (let ((_%e130482130502%_
                                     (gx#syntax-e _%tl130481130499%_)))
                                (let ((_%hd130483130505%_
                                       (##car _%e130482130502%_))
                                      (_%tl130484130507%_
                                       (##cdr _%e130482130502%_)))
                                  (let ((_%e130510%_ _%hd130483130505%_))
                                    (if (gx#stx-null? _%tl130484130507%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130510%_)
                                                    '()))
                                        (_%E130478130490%_)))))
                              (_%E130478130490%_))))
                      (_%E130478130490%_)))))
          (_%E130477130512%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130432%_)
        (let* ((_%e130433130443%_ _%stx130432%_)
               (_%E130435130447%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130433130443%_)))
               (_%E130434130471%_
                (lambda ()
                  (if (gx#stx-pair? _%e130433130443%_)
                      (let ((_%e130436130451%_
                             (gx#syntax-e _%e130433130443%_)))
                        (let ((_%hd130437130454%_ (##car _%e130436130451%_))
                              (_%tl130438130456%_ (##cdr _%e130436130451%_)))
                          (if (gx#stx-pair? _%tl130438130456%_)
                              (let ((_%e130439130459%_
                                     (gx#syntax-e _%tl130438130456%_)))
                                (let ((_%hd130440130462%_
                                       (##car _%e130439130459%_))
                                      (_%tl130441130464%_
                                       (##cdr _%e130439130459%_)))
                                  (let* ((_%rator130467%_ _%hd130440130462%_)
                                         (_%args130469%_ _%tl130441130464%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130467%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130469%_))))))
                              (_%E130435130447%_))))
                      (_%E130435130447%_)))))
          (_%E130434130471%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130365%_)
        (let* ((_%e130366130382%_ _%stx130365%_)
               (_%E130368130386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130366130382%_)))
               (_%E130367130428%_
                (lambda ()
                  (if (gx#stx-pair? _%e130366130382%_)
                      (let ((_%e130369130390%_
                             (gx#syntax-e _%e130366130382%_)))
                        (let ((_%hd130370130393%_ (##car _%e130369130390%_))
                              (_%tl130371130395%_ (##cdr _%e130369130390%_)))
                          (if (gx#stx-pair? _%tl130371130395%_)
                              (let ((_%e130372130398%_
                                     (gx#syntax-e _%tl130371130395%_)))
                                (let ((_%hd130373130401%_
                                       (##car _%e130372130398%_))
                                      (_%tl130374130403%_
                                       (##cdr _%e130372130398%_)))
                                  (let ((_%test130406%_ _%hd130373130401%_))
                                    (if (gx#stx-pair? _%tl130374130403%_)
                                        (let ((_%e130375130408%_
                                               (gx#syntax-e
                                                _%tl130374130403%_)))
                                          (let ((_%hd130376130411%_
                                                 (##car _%e130375130408%_))
                                                (_%tl130377130413%_
                                                 (##cdr _%e130375130408%_)))
                                            (let ((_%K130416%_
                                                   _%hd130376130411%_))
                                              (if (gx#stx-pair?
                                                   _%tl130377130413%_)
                                                  (let ((_%e130378130418%_
                                                         (gx#syntax-e
                                                          _%tl130377130413%_)))
                                                    (let ((_%hd130379130421%_
                                                           (##car _%e130378130418%_))
                                                          (_%tl130380130423%_
                                                           (##cdr _%e130378130418%_)))
                                                      (let ((_%E130426%_
                                                             _%hd130379130421%_))
                                                        (if (gx#stx-null?
                                                             _%tl130380130423%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130406%_)
                                (cons (gx#core-compile-top-syntax _%K130416%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130426%_)
                                            '()))))
                    (_%E130368130386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130368130386%_)))))
                                        (_%E130368130386%_)))))
                              (_%E130368130386%_))))
                      (_%E130368130386%_)))))
          (_%E130367130428%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130324%_)
        (let* ((_%e130325130335%_ _%stx130324%_)
               (_%E130327130339%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130325130335%_)))
               (_%E130326130361%_
                (lambda ()
                  (if (gx#stx-pair? _%e130325130335%_)
                      (let ((_%e130328130343%_
                             (gx#syntax-e _%e130325130335%_)))
                        (let ((_%hd130329130346%_ (##car _%e130328130343%_))
                              (_%tl130330130348%_ (##cdr _%e130328130343%_)))
                          (if (gx#stx-pair? _%tl130330130348%_)
                              (let ((_%e130331130351%_
                                     (gx#syntax-e _%tl130330130348%_)))
                                (let ((_%hd130332130354%_
                                       (##car _%e130331130351%_))
                                      (_%tl130333130356%_
                                       (##cdr _%e130331130351%_)))
                                  (let ((_%id130359%_ _%hd130332130354%_))
                                    (if (gx#stx-null? _%tl130333130356%_)
                                        (if (gx#identifier? _%id130359%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130359%_)
                                                        '()))
                                            (_%E130327130339%_))
                                        (_%E130327130339%_)))))
                              (_%E130327130339%_))))
                      (_%E130327130339%_)))))
          (_%E130326130361%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130270%_)
        (let* ((_%e130271130284%_ _%stx130270%_)
               (_%E130273130288%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130271130284%_)))
               (_%E130272130320%_
                (lambda ()
                  (if (gx#stx-pair? _%e130271130284%_)
                      (let ((_%e130274130292%_
                             (gx#syntax-e _%e130271130284%_)))
                        (let ((_%hd130275130295%_ (##car _%e130274130292%_))
                              (_%tl130276130297%_ (##cdr _%e130274130292%_)))
                          (if (gx#stx-pair? _%tl130276130297%_)
                              (let ((_%e130277130300%_
                                     (gx#syntax-e _%tl130276130297%_)))
                                (let ((_%hd130278130303%_
                                       (##car _%e130277130300%_))
                                      (_%tl130279130305%_
                                       (##cdr _%e130277130300%_)))
                                  (let ((_%id130308%_ _%hd130278130303%_))
                                    (if (gx#stx-pair? _%tl130279130305%_)
                                        (let ((_%e130280130310%_
                                               (gx#syntax-e
                                                _%tl130279130305%_)))
                                          (let ((_%hd130281130313%_
                                                 (##car _%e130280130310%_))
                                                (_%tl130282130315%_
                                                 (##cdr _%e130280130310%_)))
                                            (let ((_%expr130318%_
                                                   _%hd130281130313%_))
                                              (if (gx#stx-null?
                                                   _%tl130282130315%_)
                                                  (if (gx#identifier?
                                                       _%id130308%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130308%_)
                          (cons (gx#core-compile-top-syntax _%expr130318%_)
                                '())))
              (_%E130273130288%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130273130288%_)))))
                                        (_%E130273130288%_)))))
                              (_%E130273130288%_))))
                      (_%E130273130288%_)))))
          (_%E130272130320%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130264%_)
        (let ((_%$e130266%_ (gx#resolve-identifier__0 _%id130264%_)))
          (if _%$e130266%_
              (##unchecked-structure-ref _%$e130266%_ '1 '#f '#f)
              _%id130264%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130262%_)
        (if (gx#identifier? _%hd130262%_)
            (gx#core-compile-top-runtime-ref _%hd130262%_)
            '#f)))))

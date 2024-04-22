(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713631266)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx130175%_)
        (let* ((_%e130176130183%_ _%stx130175%_)
               (_%E130178130187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130176130183%_)))
               (_%E130177130201%_
                (lambda ()
                  (if (gx#stx-pair? _%e130176130183%_)
                      (let ((_%e130179130191%_
                             (gx#syntax-e _%e130176130183%_)))
                        (let ((_%hd130180130194%_ (##car _%e130179130191%_))
                              (_%tl130181130196%_ (##cdr _%e130179130191%_)))
                          (let* ((_%form130199%_ _%hd130180130194%_)
                                 (__self130204
                                  (gx#syntax-local-e__0 _%form130199%_))
                                 (__method130205
                                  (__method-ref
                                   __self130204
                                   'compile-top-syntax)))
                            (if __method130205
                                (__method130205 __self130204 _%stx130175%_)
                                (begin
                                  (error '"Missing method"
                                         __self130204
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E130178130187%_)))))
          (_%E130177130201%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self129018130121%_ _%stx130123%_)
        (let* ((_%self130125%_ _%self129018130121%_)
               (_%self130127%_ _%self130125%_)
               (_%self130136130144%_ _%self130127%_)
               (_%E130138130148%_
                (lambda ()
                  (error '"No clause matching"
                         _%self130136130144%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K130139130161%_
                (lambda (_%K130151%_)
                  (let ((_%$e130153%_ (gx#stx-source _%stx130123%_)))
                    (if _%$e130153%_
                        ((lambda (_%g130155130157%_)
                           (gx#stx-wrap-source
                            (_%K130151%_ _%stx130123%_)
                            _%g130155130157%_))
                         _%$e130153%_)
                        (_%K130151%_ _%stx130123%_)))))
               (_%e130140130164%_
                (##unchecked-structure-ref _%self130136130144%_ '1 '#f '#f))
               (_%e130141130167%_
                (##unchecked-structure-ref _%self130136130144%_ '2 '#f '#f))
               (_%e130142130170%_
                (##unchecked-structure-ref _%self130136130144%_ '3 '#f '#f))
               (_%K130173%_ _%e130142130170%_))
          (_%K130139130161%_ _%K130173%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx129995%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx129995%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx129965%_)
        (let* ((_%e129966129973%_ _%stx129965%_)
               (_%E129968129977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129966129973%_)))
               (_%E129967129991%_
                (lambda ()
                  (if (gx#stx-pair? _%e129966129973%_)
                      (let ((_%e129969129981%_
                             (gx#syntax-e _%e129966129973%_)))
                        (let ((_%hd129970129984%_ (##car _%e129969129981%_))
                              (_%tl129971129986%_ (##cdr _%e129969129981%_)))
                          (let ((_%body129989%_ _%tl129971129986%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body129989%_)))))
                      (_%E129968129977%_)))))
          (_%E129967129991%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx129934%_)
        (let* ((_%e129935129942%_ _%stx129934%_)
               (_%E129937129946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129935129942%_)))
               (_%E129936129961%_
                (lambda ()
                  (if (gx#stx-pair? _%e129935129942%_)
                      (let ((_%e129938129950%_
                             (gx#syntax-e _%e129935129942%_)))
                        (let ((_%hd129939129953%_ (##car _%e129938129950%_))
                              (_%tl129940129955%_ (##cdr _%e129938129950%_)))
                          (let ((_%body129958%_ _%tl129940129955%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body129958%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E129937129946%_)))))
          (_%E129936129961%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx129904%_)
        (let* ((_%e129905129912%_ _%stx129904%_)
               (_%E129907129916%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129905129912%_)))
               (_%E129906129930%_
                (lambda ()
                  (if (gx#stx-pair? _%e129905129912%_)
                      (let ((_%e129908129920%_
                             (gx#syntax-e _%e129905129912%_)))
                        (let ((_%hd129909129923%_ (##car _%e129908129920%_))
                              (_%tl129910129925%_ (##cdr _%e129908129920%_)))
                          (let ((_%body129928%_ _%tl129910129925%_))
                            (cons '%#begin-foreign _%body129928%_))))
                      (_%E129907129916%_)))))
          (_%E129906129930%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx129850%_)
        (let* ((_%e129851129864%_ _%stx129850%_)
               (_%E129853129868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129851129864%_)))
               (_%E129852129900%_
                (lambda ()
                  (if (gx#stx-pair? _%e129851129864%_)
                      (let ((_%e129854129872%_
                             (gx#syntax-e _%e129851129864%_)))
                        (let ((_%hd129855129875%_ (##car _%e129854129872%_))
                              (_%tl129856129877%_ (##cdr _%e129854129872%_)))
                          (if (gx#stx-pair? _%tl129856129877%_)
                              (let ((_%e129857129880%_
                                     (gx#syntax-e _%tl129856129877%_)))
                                (let ((_%hd129858129883%_
                                       (##car _%e129857129880%_))
                                      (_%tl129859129885%_
                                       (##cdr _%e129857129880%_)))
                                  (let ((_%ann129888%_ _%hd129858129883%_))
                                    (if (gx#stx-pair? _%tl129859129885%_)
                                        (let ((_%e129860129890%_
                                               (gx#syntax-e
                                                _%tl129859129885%_)))
                                          (let ((_%hd129861129893%_
                                                 (##car _%e129860129890%_))
                                                (_%tl129862129895%_
                                                 (##cdr _%e129860129890%_)))
                                            (let ((_%expr129898%_
                                                   _%hd129861129893%_))
                                              (if (gx#stx-null?
                                                   _%tl129862129895%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr129898%_)
                                                  (_%E129853129868%_)))))
                                        (_%E129853129868%_)))))
                              (_%E129853129868%_))))
                      (_%E129853129868%_)))))
          (_%E129852129900%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx129820%_)
        (let* ((_%e129821129828%_ _%stx129820%_)
               (_%E129823129832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129821129828%_)))
               (_%E129822129846%_
                (lambda ()
                  (if (gx#stx-pair? _%e129821129828%_)
                      (let ((_%e129824129836%_
                             (gx#syntax-e _%e129821129828%_)))
                        (let ((_%hd129825129839%_ (##car _%e129824129836%_))
                              (_%tl129826129841%_ (##cdr _%e129824129836%_)))
                          (let ((_%body129844%_ _%tl129826129841%_))
                            (cons '%#import _%body129844%_))))
                      (_%E129823129832%_)))))
          (_%E129822129846%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx129777%_)
        (let* ((_%e129778129788%_ _%stx129777%_)
               (_%E129780129792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129778129788%_)))
               (_%E129779129816%_
                (lambda ()
                  (if (gx#stx-pair? _%e129778129788%_)
                      (let ((_%e129781129796%_
                             (gx#syntax-e _%e129778129788%_)))
                        (let ((_%hd129782129799%_ (##car _%e129781129796%_))
                              (_%tl129783129801%_ (##cdr _%e129781129796%_)))
                          (if (gx#stx-pair? _%tl129783129801%_)
                              (let ((_%e129784129804%_
                                     (gx#syntax-e _%tl129783129801%_)))
                                (let ((_%hd129785129807%_
                                       (##car _%e129784129804%_))
                                      (_%tl129786129809%_
                                       (##cdr _%e129784129804%_)))
                                  (let* ((_%hd129812%_ _%hd129785129807%_)
                                         (_%body129814%_ _%tl129786129809%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd129812%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body129814%_))))))
                              (_%E129780129792%_))))
                      (_%E129780129792%_)))))
          (_%E129779129816%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx129747%_)
        (let* ((_%e129748129755%_ _%stx129747%_)
               (_%E129750129759%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129748129755%_)))
               (_%E129749129773%_
                (lambda ()
                  (if (gx#stx-pair? _%e129748129755%_)
                      (let ((_%e129751129763%_
                             (gx#syntax-e _%e129748129755%_)))
                        (let ((_%hd129752129766%_ (##car _%e129751129763%_))
                              (_%tl129753129768%_ (##cdr _%e129751129763%_)))
                          (let ((_%body129771%_ _%tl129753129768%_))
                            (cons '%#export _%body129771%_))))
                      (_%E129750129759%_)))))
          (_%E129749129773%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx129717%_)
        (let* ((_%e129718129725%_ _%stx129717%_)
               (_%E129720129729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129718129725%_)))
               (_%E129719129743%_
                (lambda ()
                  (if (gx#stx-pair? _%e129718129725%_)
                      (let ((_%e129721129733%_
                             (gx#syntax-e _%e129718129725%_)))
                        (let ((_%hd129722129736%_ (##car _%e129721129733%_))
                              (_%tl129723129738%_ (##cdr _%e129721129733%_)))
                          (let ((_%body129741%_ _%tl129723129738%_))
                            (cons '%#provide _%body129741%_))))
                      (_%E129720129729%_)))))
          (_%E129719129743%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx129687%_)
        (let* ((_%e129688129695%_ _%stx129687%_)
               (_%E129690129699%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129688129695%_)))
               (_%E129689129713%_
                (lambda ()
                  (if (gx#stx-pair? _%e129688129695%_)
                      (let ((_%e129691129703%_
                             (gx#syntax-e _%e129688129695%_)))
                        (let ((_%hd129692129706%_ (##car _%e129691129703%_))
                              (_%tl129693129708%_ (##cdr _%e129691129703%_)))
                          (let ((_%body129711%_ _%tl129693129708%_))
                            (cons '%#extern _%body129711%_))))
                      (_%E129690129699%_)))))
          (_%E129689129713%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx129633%_)
        (let* ((_%e129634129647%_ _%stx129633%_)
               (_%E129636129651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129634129647%_)))
               (_%E129635129683%_
                (lambda ()
                  (if (gx#stx-pair? _%e129634129647%_)
                      (let ((_%e129637129655%_
                             (gx#syntax-e _%e129634129647%_)))
                        (let ((_%hd129638129658%_ (##car _%e129637129655%_))
                              (_%tl129639129660%_ (##cdr _%e129637129655%_)))
                          (if (gx#stx-pair? _%tl129639129660%_)
                              (let ((_%e129640129663%_
                                     (gx#syntax-e _%tl129639129660%_)))
                                (let ((_%hd129641129666%_
                                       (##car _%e129640129663%_))
                                      (_%tl129642129668%_
                                       (##cdr _%e129640129663%_)))
                                  (let ((_%hd129671%_ _%hd129641129666%_))
                                    (if (gx#stx-pair? _%tl129642129668%_)
                                        (let ((_%e129643129673%_
                                               (gx#syntax-e
                                                _%tl129642129668%_)))
                                          (let ((_%hd129644129676%_
                                                 (##car _%e129643129673%_))
                                                (_%tl129645129678%_
                                                 (##cdr _%e129643129673%_)))
                                            (let ((_%expr129681%_
                                                   _%hd129644129676%_))
                                              (if (gx#stx-null?
                                                   _%tl129645129678%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd129671%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr129681%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129636129651%_)))))
                                        (_%E129636129651%_)))))
                              (_%E129636129651%_))))
                      (_%E129636129651%_)))))
          (_%E129635129683%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129578%_)
        (let* ((_%e129579129592%_ _%stx129578%_)
               (_%E129581129596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129579129592%_)))
               (_%E129580129629%_
                (lambda ()
                  (if (gx#stx-pair? _%e129579129592%_)
                      (let ((_%e129582129600%_
                             (gx#syntax-e _%e129579129592%_)))
                        (let ((_%hd129583129603%_ (##car _%e129582129600%_))
                              (_%tl129584129605%_ (##cdr _%e129582129600%_)))
                          (if (gx#stx-pair? _%tl129584129605%_)
                              (let ((_%e129585129608%_
                                     (gx#syntax-e _%tl129584129605%_)))
                                (let ((_%hd129586129611%_
                                       (##car _%e129585129608%_))
                                      (_%tl129587129613%_
                                       (##cdr _%e129585129608%_)))
                                  (let ((_%hd129616%_ _%hd129586129611%_))
                                    (if (gx#stx-pair? _%tl129587129613%_)
                                        (let ((_%e129588129618%_
                                               (gx#syntax-e
                                                _%tl129587129613%_)))
                                          (let ((_%hd129589129621%_
                                                 (##car _%e129588129618%_))
                                                (_%tl129590129623%_
                                                 (##cdr _%e129588129618%_)))
                                            (let ((_%expr129626%_
                                                   _%hd129589129621%_))
                                              (if (gx#stx-null?
                                                   _%tl129590129623%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd129616%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr129626%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129581129596%_)))))
                                        (_%E129581129596%_)))))
                              (_%E129581129596%_))))
                      (_%E129581129596%_)))))
          (_%E129580129629%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129548%_)
        (let* ((_%e129549129556%_ _%stx129548%_)
               (_%E129551129560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129549129556%_)))
               (_%E129550129574%_
                (lambda ()
                  (if (gx#stx-pair? _%e129549129556%_)
                      (let ((_%e129552129564%_
                             (gx#syntax-e _%e129549129556%_)))
                        (let ((_%hd129553129567%_ (##car _%e129552129564%_))
                              (_%tl129554129569%_ (##cdr _%e129552129564%_)))
                          (let ((_%body129572%_ _%tl129554129569%_))
                            (cons '%#define-alias _%body129572%_))))
                      (_%E129551129560%_)))))
          (_%E129550129574%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129518%_)
        (let* ((_%e129519129526%_ _%stx129518%_)
               (_%E129521129530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129519129526%_)))
               (_%E129520129544%_
                (lambda ()
                  (if (gx#stx-pair? _%e129519129526%_)
                      (let ((_%e129522129534%_
                             (gx#syntax-e _%e129519129526%_)))
                        (let ((_%hd129523129537%_ (##car _%e129522129534%_))
                              (_%tl129524129539%_ (##cdr _%e129522129534%_)))
                          (let ((_%body129542%_ _%tl129524129539%_))
                            (cons '%#define-runtime _%body129542%_))))
                      (_%E129521129530%_)))))
          (_%E129520129544%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129488%_)
        (let* ((_%e129489129496%_ _%stx129488%_)
               (_%E129491129500%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129489129496%_)))
               (_%E129490129514%_
                (lambda ()
                  (if (gx#stx-pair? _%e129489129496%_)
                      (let ((_%e129492129504%_
                             (gx#syntax-e _%e129489129496%_)))
                        (let ((_%hd129493129507%_ (##car _%e129492129504%_))
                              (_%tl129494129509%_ (##cdr _%e129492129504%_)))
                          (let ((_%decls129512%_ _%tl129494129509%_))
                            (cons '%#declare _%decls129512%_))))
                      (_%E129491129500%_)))))
          (_%E129490129514%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129458%_)
        (let* ((_%e129459129466%_ _%stx129458%_)
               (_%E129461129470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129459129466%_)))
               (_%E129460129484%_
                (lambda ()
                  (if (gx#stx-pair? _%e129459129466%_)
                      (let ((_%e129462129474%_
                             (gx#syntax-e _%e129459129466%_)))
                        (let ((_%hd129463129477%_ (##car _%e129462129474%_))
                              (_%tl129464129479%_ (##cdr _%e129462129474%_)))
                          (let ((_%clause129482%_ _%tl129464129479%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129482%_)))))
                      (_%E129461129470%_)))))
          (_%E129460129484%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx129415%_)
        (let* ((_%e129416129426%_ _%stx129415%_)
               (_%E129418129430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129416129426%_)))
               (_%E129417129454%_
                (lambda ()
                  (if (gx#stx-pair? _%e129416129426%_)
                      (let ((_%e129419129434%_
                             (gx#syntax-e _%e129416129426%_)))
                        (let ((_%hd129420129437%_ (##car _%e129419129434%_))
                              (_%tl129421129439%_ (##cdr _%e129419129434%_)))
                          (let ((_%hd129442%_ _%hd129420129437%_))
                            (if (gx#stx-pair? _%tl129421129439%_)
                                (let ((_%e129422129444%_
                                       (gx#syntax-e _%tl129421129439%_)))
                                  (let ((_%hd129423129447%_
                                         (##car _%e129422129444%_))
                                        (_%tl129424129449%_
                                         (##cdr _%e129422129444%_)))
                                    (let ((_%body129452%_ _%hd129423129447%_))
                                      (if (gx#stx-null? _%tl129424129449%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129442%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129452%_)
                                                      '()))
                                          (_%E129418129430%_)))))
                                (_%E129418129430%_)))))
                      (_%E129418129430%_)))))
          (_%E129417129454%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx129385%_)
        (let* ((_%e129386129393%_ _%stx129385%_)
               (_%E129388129397%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129386129393%_)))
               (_%E129387129411%_
                (lambda ()
                  (if (gx#stx-pair? _%e129386129393%_)
                      (let ((_%e129389129401%_
                             (gx#syntax-e _%e129386129393%_)))
                        (let ((_%hd129390129404%_ (##car _%e129389129401%_))
                              (_%tl129391129406%_ (##cdr _%e129389129401%_)))
                          (let ((_%clauses129409%_ _%tl129391129406%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses129409%_)))))
                      (_%E129388129397%_)))))
          (_%E129387129411%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx129320%_ _%form129321%_)
        (let* ((_%e129322129335%_ _%stx129320%_)
               (_%E129324129339%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129322129335%_)))
               (_%E129323129371%_
                (lambda ()
                  (if (gx#stx-pair? _%e129322129335%_)
                      (let ((_%e129325129343%_
                             (gx#syntax-e _%e129322129335%_)))
                        (let ((_%hd129326129346%_ (##car _%e129325129343%_))
                              (_%tl129327129348%_ (##cdr _%e129325129343%_)))
                          (if (gx#stx-pair? _%tl129327129348%_)
                              (let ((_%e129328129351%_
                                     (gx#syntax-e _%tl129327129348%_)))
                                (let ((_%hd129329129354%_
                                       (##car _%e129328129351%_))
                                      (_%tl129330129356%_
                                       (##cdr _%e129328129351%_)))
                                  (let ((_%hd129359%_ _%hd129329129354%_))
                                    (if (gx#stx-pair? _%tl129330129356%_)
                                        (let ((_%e129331129361%_
                                               (gx#syntax-e
                                                _%tl129330129356%_)))
                                          (let ((_%hd129332129364%_
                                                 (##car _%e129331129361%_))
                                                (_%tl129333129366%_
                                                 (##cdr _%e129331129361%_)))
                                            (let ((_%body129369%_
                                                   _%hd129332129364%_))
                                              (if (gx#stx-null?
                                                   _%tl129333129366%_)
                                                  (cons _%form129321%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd129359%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body129369%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129324129339%_)))))
                                        (_%E129324129339%_)))))
                              (_%E129324129339%_))))
                      (_%E129324129339%_)))))
          (_%E129323129371%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx129378%_)
        (let ((_%form129380%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx129378%_ _%form129380%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g130207_
        (let ((_g130206_ (##length _g130207_)))
          (cond ((##fx= _g130206_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g130207_))
                ((##fx= _g130206_ 2)
                 (apply gx#core-compile-top-let-values%__% _g130207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g130207_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx129317%_)
        (gx#core-compile-top-let-values%__% _%stx129317%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx129315%_)
        (gx#core-compile-top-let-values%__% _%stx129315%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx129274%_)
        (let* ((_%e129275129285%_ _%stx129274%_)
               (_%E129277129289%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129275129285%_)))
               (_%E129276129311%_
                (lambda ()
                  (if (gx#stx-pair? _%e129275129285%_)
                      (let ((_%e129278129293%_
                             (gx#syntax-e _%e129275129285%_)))
                        (let ((_%hd129279129296%_ (##car _%e129278129293%_))
                              (_%tl129280129298%_ (##cdr _%e129278129293%_)))
                          (if (gx#stx-pair? _%tl129280129298%_)
                              (let ((_%e129281129301%_
                                     (gx#syntax-e _%tl129280129298%_)))
                                (let ((_%hd129282129304%_
                                       (##car _%e129281129301%_))
                                      (_%tl129283129306%_
                                       (##cdr _%e129281129301%_)))
                                  (let ((_%e129309%_ _%hd129282129304%_))
                                    (if (gx#stx-null? _%tl129283129306%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e129309%_)
                                                    '()))
                                        (_%E129277129289%_)))))
                              (_%E129277129289%_))))
                      (_%E129277129289%_)))))
          (_%E129276129311%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx129233%_)
        (let* ((_%e129234129244%_ _%stx129233%_)
               (_%E129236129248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129234129244%_)))
               (_%E129235129270%_
                (lambda ()
                  (if (gx#stx-pair? _%e129234129244%_)
                      (let ((_%e129237129252%_
                             (gx#syntax-e _%e129234129244%_)))
                        (let ((_%hd129238129255%_ (##car _%e129237129252%_))
                              (_%tl129239129257%_ (##cdr _%e129237129252%_)))
                          (if (gx#stx-pair? _%tl129239129257%_)
                              (let ((_%e129240129260%_
                                     (gx#syntax-e _%tl129239129257%_)))
                                (let ((_%hd129241129263%_
                                       (##car _%e129240129260%_))
                                      (_%tl129242129265%_
                                       (##cdr _%e129240129260%_)))
                                  (let ((_%e129268%_ _%hd129241129263%_))
                                    (if (gx#stx-null? _%tl129242129265%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e129268%_)
                                                    '()))
                                        (_%E129236129248%_)))))
                              (_%E129236129248%_))))
                      (_%E129236129248%_)))))
          (_%E129235129270%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx129190%_)
        (let* ((_%e129191129201%_ _%stx129190%_)
               (_%E129193129205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129191129201%_)))
               (_%E129192129229%_
                (lambda ()
                  (if (gx#stx-pair? _%e129191129201%_)
                      (let ((_%e129194129209%_
                             (gx#syntax-e _%e129191129201%_)))
                        (let ((_%hd129195129212%_ (##car _%e129194129209%_))
                              (_%tl129196129214%_ (##cdr _%e129194129209%_)))
                          (if (gx#stx-pair? _%tl129196129214%_)
                              (let ((_%e129197129217%_
                                     (gx#syntax-e _%tl129196129214%_)))
                                (let ((_%hd129198129220%_
                                       (##car _%e129197129217%_))
                                      (_%tl129199129222%_
                                       (##cdr _%e129197129217%_)))
                                  (let* ((_%rator129225%_ _%hd129198129220%_)
                                         (_%args129227%_ _%tl129199129222%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator129225%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args129227%_))))))
                              (_%E129193129205%_))))
                      (_%E129193129205%_)))))
          (_%E129192129229%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx129123%_)
        (let* ((_%e129124129140%_ _%stx129123%_)
               (_%E129126129144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129124129140%_)))
               (_%E129125129186%_
                (lambda ()
                  (if (gx#stx-pair? _%e129124129140%_)
                      (let ((_%e129127129148%_
                             (gx#syntax-e _%e129124129140%_)))
                        (let ((_%hd129128129151%_ (##car _%e129127129148%_))
                              (_%tl129129129153%_ (##cdr _%e129127129148%_)))
                          (if (gx#stx-pair? _%tl129129129153%_)
                              (let ((_%e129130129156%_
                                     (gx#syntax-e _%tl129129129153%_)))
                                (let ((_%hd129131129159%_
                                       (##car _%e129130129156%_))
                                      (_%tl129132129161%_
                                       (##cdr _%e129130129156%_)))
                                  (let ((_%test129164%_ _%hd129131129159%_))
                                    (if (gx#stx-pair? _%tl129132129161%_)
                                        (let ((_%e129133129166%_
                                               (gx#syntax-e
                                                _%tl129132129161%_)))
                                          (let ((_%hd129134129169%_
                                                 (##car _%e129133129166%_))
                                                (_%tl129135129171%_
                                                 (##cdr _%e129133129166%_)))
                                            (let ((_%K129174%_
                                                   _%hd129134129169%_))
                                              (if (gx#stx-pair?
                                                   _%tl129135129171%_)
                                                  (let ((_%e129136129176%_
                                                         (gx#syntax-e
                                                          _%tl129135129171%_)))
                                                    (let ((_%hd129137129179%_
                                                           (##car _%e129136129176%_))
                                                          (_%tl129138129181%_
                                                           (##cdr _%e129136129176%_)))
                                                      (let ((_%E129184%_
                                                             _%hd129137129179%_))
                                                        (if (gx#stx-null?
                                                             _%tl129138129181%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test129164%_)
                                (cons (gx#core-compile-top-syntax _%K129174%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E129184%_)
                                            '()))))
                    (_%E129126129144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129126129144%_)))))
                                        (_%E129126129144%_)))))
                              (_%E129126129144%_))))
                      (_%E129126129144%_)))))
          (_%E129125129186%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx129082%_)
        (let* ((_%e129083129093%_ _%stx129082%_)
               (_%E129085129097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129083129093%_)))
               (_%E129084129119%_
                (lambda ()
                  (if (gx#stx-pair? _%e129083129093%_)
                      (let ((_%e129086129101%_
                             (gx#syntax-e _%e129083129093%_)))
                        (let ((_%hd129087129104%_ (##car _%e129086129101%_))
                              (_%tl129088129106%_ (##cdr _%e129086129101%_)))
                          (if (gx#stx-pair? _%tl129088129106%_)
                              (let ((_%e129089129109%_
                                     (gx#syntax-e _%tl129088129106%_)))
                                (let ((_%hd129090129112%_
                                       (##car _%e129089129109%_))
                                      (_%tl129091129114%_
                                       (##cdr _%e129089129109%_)))
                                  (let ((_%id129117%_ _%hd129090129112%_))
                                    (if (gx#stx-null? _%tl129091129114%_)
                                        (if (gx#identifier? _%id129117%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id129117%_)
                                                        '()))
                                            (_%E129085129097%_))
                                        (_%E129085129097%_)))))
                              (_%E129085129097%_))))
                      (_%E129085129097%_)))))
          (_%E129084129119%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx129028%_)
        (let* ((_%e129029129042%_ _%stx129028%_)
               (_%E129031129046%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129029129042%_)))
               (_%E129030129078%_
                (lambda ()
                  (if (gx#stx-pair? _%e129029129042%_)
                      (let ((_%e129032129050%_
                             (gx#syntax-e _%e129029129042%_)))
                        (let ((_%hd129033129053%_ (##car _%e129032129050%_))
                              (_%tl129034129055%_ (##cdr _%e129032129050%_)))
                          (if (gx#stx-pair? _%tl129034129055%_)
                              (let ((_%e129035129058%_
                                     (gx#syntax-e _%tl129034129055%_)))
                                (let ((_%hd129036129061%_
                                       (##car _%e129035129058%_))
                                      (_%tl129037129063%_
                                       (##cdr _%e129035129058%_)))
                                  (let ((_%id129066%_ _%hd129036129061%_))
                                    (if (gx#stx-pair? _%tl129037129063%_)
                                        (let ((_%e129038129068%_
                                               (gx#syntax-e
                                                _%tl129037129063%_)))
                                          (let ((_%hd129039129071%_
                                                 (##car _%e129038129068%_))
                                                (_%tl129040129073%_
                                                 (##cdr _%e129038129068%_)))
                                            (let ((_%expr129076%_
                                                   _%hd129039129071%_))
                                              (if (gx#stx-null?
                                                   _%tl129040129073%_)
                                                  (if (gx#identifier?
                                                       _%id129066%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id129066%_)
                          (cons (gx#core-compile-top-syntax _%expr129076%_)
                                '())))
              (_%E129031129046%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129031129046%_)))))
                                        (_%E129031129046%_)))))
                              (_%E129031129046%_))))
                      (_%E129031129046%_)))))
          (_%E129030129078%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id129022%_)
        (let ((_%$e129024%_ (gx#resolve-identifier__0 _%id129022%_)))
          (if _%$e129024%_
              (##unchecked-structure-ref _%$e129024%_ '1 '#f '#f)
              _%id129022%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd129020%_)
        (if (gx#identifier? _%hd129020%_)
            (gx#core-compile-top-runtime-ref _%hd129020%_)
            '#f)))))

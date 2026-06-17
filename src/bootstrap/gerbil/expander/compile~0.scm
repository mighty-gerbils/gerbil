(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1781697563)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx191987%_)
        (let* ((_%$%e191988191995%_ _%stx191987%_)
               (_%$%E191990191999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191988191995%_)))
               (_%$%E191989192013%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191988191995%_)
                      (let ((_%$%e191991192003%_
                             (gx#syntax-e _%$%e191988191995%_)))
                        (let ((_%$%hd191992192006%_
                               (##car _%$%e191991192003%_))
                              (_%$%tl191993192008%_
                               (##cdr _%$%e191991192003%_)))
                          (let* ((_%form192011%_ _%$%hd191992192006%_)
                                 (__self192016
                                  (gx#syntax-local-e__0 _%form192011%_))
                                 (__method192017
                                  (__method-ref
                                   __self192016
                                   'compile-top-syntax)))
                            (if __method192017
                                (__method192017 __self192016 _%stx191987%_)
                                (begin
                                  (error '"Missing method"
                                         __self192016
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E191990191999%_)))))
          (_%$%E191989192013%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self191936%_ _%stx191937%_)
        (let* ((_%self191940%_ _%self191936%_)
               (_%$%self191949191957%_ _%self191940%_)
               (_%$%E191951191960%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self191949191957%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K191952191973%_
                (lambda (_%K191963%_)
                  (let ((_%$e191965%_ (gx#stx-source _%stx191937%_)))
                    (if _%$e191965%_
                        (gx#stx-wrap-source
                         (_%K191963%_ _%stx191937%_)
                         _%$e191965%_)
                        (_%K191963%_ _%stx191937%_)))))
               (_%$%e191953191976%_
                (##unchecked-structure-ref _%$%self191949191957%_ '1 '#f '#f))
               (_%$%e191954191979%_
                (##unchecked-structure-ref _%$%self191949191957%_ '2 '#f '#f))
               (_%$%e191955191982%_
                (##unchecked-structure-ref _%$%self191949191957%_ '3 '#f '#f))
               (_%K191985%_ _%$%e191955191982%_))
          (_%$%K191952191973%_ _%K191985%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx191810%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx191810%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx191780%_)
        (let* ((_%$%e191781191788%_ _%stx191780%_)
               (_%$%E191783191792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191781191788%_)))
               (_%$%E191782191806%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191781191788%_)
                      (let ((_%$%e191784191796%_
                             (gx#syntax-e _%$%e191781191788%_)))
                        (let ((_%$%hd191785191799%_
                               (##car _%$%e191784191796%_))
                              (_%$%tl191786191801%_
                               (##cdr _%$%e191784191796%_)))
                          (let ((_%body191804%_ _%$%tl191786191801%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body191804%_)))))
                      (_%$%E191783191792%_)))))
          (_%$%E191782191806%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx191749%_)
        (let* ((_%$%e191750191757%_ _%stx191749%_)
               (_%$%E191752191761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191750191757%_)))
               (_%$%E191751191776%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191750191757%_)
                      (let ((_%$%e191753191765%_
                             (gx#syntax-e _%$%e191750191757%_)))
                        (let ((_%$%hd191754191768%_
                               (##car _%$%e191753191765%_))
                              (_%$%tl191755191770%_
                               (##cdr _%$%e191753191765%_)))
                          (let ((_%body191773%_ _%$%tl191755191770%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body191773%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E191752191761%_)))))
          (_%$%E191751191776%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx191719%_)
        (let* ((_%$%e191720191727%_ _%stx191719%_)
               (_%$%E191722191731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191720191727%_)))
               (_%$%E191721191745%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191720191727%_)
                      (let ((_%$%e191723191735%_
                             (gx#syntax-e _%$%e191720191727%_)))
                        (let ((_%$%hd191724191738%_
                               (##car _%$%e191723191735%_))
                              (_%$%tl191725191740%_
                               (##cdr _%$%e191723191735%_)))
                          (let ((_%body191743%_ _%$%tl191725191740%_))
                            (cons '%#begin-foreign _%body191743%_))))
                      (_%$%E191722191731%_)))))
          (_%$%E191721191745%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx191665%_)
        (let* ((_%$%e191666191679%_ _%stx191665%_)
               (_%$%E191668191683%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191666191679%_)))
               (_%$%E191667191715%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191666191679%_)
                      (let ((_%$%e191669191687%_
                             (gx#syntax-e _%$%e191666191679%_)))
                        (let ((_%$%hd191670191690%_
                               (##car _%$%e191669191687%_))
                              (_%$%tl191671191692%_
                               (##cdr _%$%e191669191687%_)))
                          (if (gx#stx-pair? _%$%tl191671191692%_)
                              (let ((_%$%e191672191695%_
                                     (gx#syntax-e _%$%tl191671191692%_)))
                                (let ((_%$%hd191673191698%_
                                       (##car _%$%e191672191695%_))
                                      (_%$%tl191674191700%_
                                       (##cdr _%$%e191672191695%_)))
                                  (let ((_%ann191703%_ _%$%hd191673191698%_))
                                    (if (gx#stx-pair? _%$%tl191674191700%_)
                                        (let ((_%$%e191675191705%_
                                               (gx#syntax-e
                                                _%$%tl191674191700%_)))
                                          (let ((_%$%hd191676191708%_
                                                 (##car _%$%e191675191705%_))
                                                (_%$%tl191677191710%_
                                                 (##cdr _%$%e191675191705%_)))
                                            (let ((_%expr191713%_
                                                   _%$%hd191676191708%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191677191710%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr191713%_)
                                                  (_%$%E191668191683%_)))))
                                        (_%$%E191668191683%_)))))
                              (_%$%E191668191683%_))))
                      (_%$%E191668191683%_)))))
          (_%$%E191667191715%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx191635%_)
        (let* ((_%$%e191636191643%_ _%stx191635%_)
               (_%$%E191638191647%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191636191643%_)))
               (_%$%E191637191661%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191636191643%_)
                      (let ((_%$%e191639191651%_
                             (gx#syntax-e _%$%e191636191643%_)))
                        (let ((_%$%hd191640191654%_
                               (##car _%$%e191639191651%_))
                              (_%$%tl191641191656%_
                               (##cdr _%$%e191639191651%_)))
                          (let ((_%body191659%_ _%$%tl191641191656%_))
                            (cons '%#import _%body191659%_))))
                      (_%$%E191638191647%_)))))
          (_%$%E191637191661%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx191592%_)
        (let* ((_%$%e191593191603%_ _%stx191592%_)
               (_%$%E191595191607%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191593191603%_)))
               (_%$%E191594191631%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191593191603%_)
                      (let ((_%$%e191596191611%_
                             (gx#syntax-e _%$%e191593191603%_)))
                        (let ((_%$%hd191597191614%_
                               (##car _%$%e191596191611%_))
                              (_%$%tl191598191616%_
                               (##cdr _%$%e191596191611%_)))
                          (if (gx#stx-pair? _%$%tl191598191616%_)
                              (let ((_%$%e191599191619%_
                                     (gx#syntax-e _%$%tl191598191616%_)))
                                (let ((_%$%hd191600191622%_
                                       (##car _%$%e191599191619%_))
                                      (_%$%tl191601191624%_
                                       (##cdr _%$%e191599191619%_)))
                                  (let* ((_%hd191627%_ _%$%hd191600191622%_)
                                         (_%body191629%_ _%$%tl191601191624%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd191627%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body191629%_))))))
                              (_%$%E191595191607%_))))
                      (_%$%E191595191607%_)))))
          (_%$%E191594191631%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx191562%_)
        (let* ((_%$%e191563191570%_ _%stx191562%_)
               (_%$%E191565191574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191563191570%_)))
               (_%$%E191564191588%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191563191570%_)
                      (let ((_%$%e191566191578%_
                             (gx#syntax-e _%$%e191563191570%_)))
                        (let ((_%$%hd191567191581%_
                               (##car _%$%e191566191578%_))
                              (_%$%tl191568191583%_
                               (##cdr _%$%e191566191578%_)))
                          (let ((_%body191586%_ _%$%tl191568191583%_))
                            (cons '%#export _%body191586%_))))
                      (_%$%E191565191574%_)))))
          (_%$%E191564191588%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx191532%_)
        (let* ((_%$%e191533191540%_ _%stx191532%_)
               (_%$%E191535191544%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191533191540%_)))
               (_%$%E191534191558%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191533191540%_)
                      (let ((_%$%e191536191548%_
                             (gx#syntax-e _%$%e191533191540%_)))
                        (let ((_%$%hd191537191551%_
                               (##car _%$%e191536191548%_))
                              (_%$%tl191538191553%_
                               (##cdr _%$%e191536191548%_)))
                          (let ((_%body191556%_ _%$%tl191538191553%_))
                            (cons '%#provide _%body191556%_))))
                      (_%$%E191535191544%_)))))
          (_%$%E191534191558%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx191502%_)
        (let* ((_%$%e191503191510%_ _%stx191502%_)
               (_%$%E191505191514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191503191510%_)))
               (_%$%E191504191528%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191503191510%_)
                      (let ((_%$%e191506191518%_
                             (gx#syntax-e _%$%e191503191510%_)))
                        (let ((_%$%hd191507191521%_
                               (##car _%$%e191506191518%_))
                              (_%$%tl191508191523%_
                               (##cdr _%$%e191506191518%_)))
                          (let ((_%body191526%_ _%$%tl191508191523%_))
                            (cons '%#extern _%body191526%_))))
                      (_%$%E191505191514%_)))))
          (_%$%E191504191528%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx191448%_)
        (let* ((_%$%e191449191462%_ _%stx191448%_)
               (_%$%E191451191466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191449191462%_)))
               (_%$%E191450191498%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191449191462%_)
                      (let ((_%$%e191452191470%_
                             (gx#syntax-e _%$%e191449191462%_)))
                        (let ((_%$%hd191453191473%_
                               (##car _%$%e191452191470%_))
                              (_%$%tl191454191475%_
                               (##cdr _%$%e191452191470%_)))
                          (if (gx#stx-pair? _%$%tl191454191475%_)
                              (let ((_%$%e191455191478%_
                                     (gx#syntax-e _%$%tl191454191475%_)))
                                (let ((_%$%hd191456191481%_
                                       (##car _%$%e191455191478%_))
                                      (_%$%tl191457191483%_
                                       (##cdr _%$%e191455191478%_)))
                                  (let ((_%hd191486%_ _%$%hd191456191481%_))
                                    (if (gx#stx-pair? _%$%tl191457191483%_)
                                        (let ((_%$%e191458191488%_
                                               (gx#syntax-e
                                                _%$%tl191457191483%_)))
                                          (let ((_%$%hd191459191491%_
                                                 (##car _%$%e191458191488%_))
                                                (_%$%tl191460191493%_
                                                 (##cdr _%$%e191458191488%_)))
                                            (let ((_%expr191496%_
                                                   _%$%hd191459191491%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191460191493%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd191486%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr191496%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191451191466%_)))))
                                        (_%$%E191451191466%_)))))
                              (_%$%E191451191466%_))))
                      (_%$%E191451191466%_)))))
          (_%$%E191450191498%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx191393%_)
        (let* ((_%$%e191394191407%_ _%stx191393%_)
               (_%$%E191396191411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191394191407%_)))
               (_%$%E191395191444%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191394191407%_)
                      (let ((_%$%e191397191415%_
                             (gx#syntax-e _%$%e191394191407%_)))
                        (let ((_%$%hd191398191418%_
                               (##car _%$%e191397191415%_))
                              (_%$%tl191399191420%_
                               (##cdr _%$%e191397191415%_)))
                          (if (gx#stx-pair? _%$%tl191399191420%_)
                              (let ((_%$%e191400191423%_
                                     (gx#syntax-e _%$%tl191399191420%_)))
                                (let ((_%$%hd191401191426%_
                                       (##car _%$%e191400191423%_))
                                      (_%$%tl191402191428%_
                                       (##cdr _%$%e191400191423%_)))
                                  (let ((_%hd191431%_ _%$%hd191401191426%_))
                                    (if (gx#stx-pair? _%$%tl191402191428%_)
                                        (let ((_%$%e191403191433%_
                                               (gx#syntax-e
                                                _%$%tl191402191428%_)))
                                          (let ((_%$%hd191404191436%_
                                                 (##car _%$%e191403191433%_))
                                                (_%$%tl191405191438%_
                                                 (##cdr _%$%e191403191433%_)))
                                            (let ((_%expr191441%_
                                                   _%$%hd191404191436%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191405191438%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd191431%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr191441%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191396191411%_)))))
                                        (_%$%E191396191411%_)))))
                              (_%$%E191396191411%_))))
                      (_%$%E191396191411%_)))))
          (_%$%E191395191444%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx191363%_)
        (let* ((_%$%e191364191371%_ _%stx191363%_)
               (_%$%E191366191375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191364191371%_)))
               (_%$%E191365191389%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191364191371%_)
                      (let ((_%$%e191367191379%_
                             (gx#syntax-e _%$%e191364191371%_)))
                        (let ((_%$%hd191368191382%_
                               (##car _%$%e191367191379%_))
                              (_%$%tl191369191384%_
                               (##cdr _%$%e191367191379%_)))
                          (let ((_%body191387%_ _%$%tl191369191384%_))
                            (cons '%#define-alias _%body191387%_))))
                      (_%$%E191366191375%_)))))
          (_%$%E191365191389%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx191333%_)
        (let* ((_%$%e191334191341%_ _%stx191333%_)
               (_%$%E191336191345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191334191341%_)))
               (_%$%E191335191359%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191334191341%_)
                      (let ((_%$%e191337191349%_
                             (gx#syntax-e _%$%e191334191341%_)))
                        (let ((_%$%hd191338191352%_
                               (##car _%$%e191337191349%_))
                              (_%$%tl191339191354%_
                               (##cdr _%$%e191337191349%_)))
                          (let ((_%body191357%_ _%$%tl191339191354%_))
                            (cons '%#define-runtime _%body191357%_))))
                      (_%$%E191336191345%_)))))
          (_%$%E191335191359%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx191303%_)
        (let* ((_%$%e191304191311%_ _%stx191303%_)
               (_%$%E191306191315%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191304191311%_)))
               (_%$%E191305191329%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191304191311%_)
                      (let ((_%$%e191307191319%_
                             (gx#syntax-e _%$%e191304191311%_)))
                        (let ((_%$%hd191308191322%_
                               (##car _%$%e191307191319%_))
                              (_%$%tl191309191324%_
                               (##cdr _%$%e191307191319%_)))
                          (let ((_%decls191327%_ _%$%tl191309191324%_))
                            (cons '%#declare _%decls191327%_))))
                      (_%$%E191306191315%_)))))
          (_%$%E191305191329%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx191273%_)
        (let* ((_%$%e191274191281%_ _%stx191273%_)
               (_%$%E191276191285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191274191281%_)))
               (_%$%E191275191299%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191274191281%_)
                      (let ((_%$%e191277191289%_
                             (gx#syntax-e _%$%e191274191281%_)))
                        (let ((_%$%hd191278191292%_
                               (##car _%$%e191277191289%_))
                              (_%$%tl191279191294%_
                               (##cdr _%$%e191277191289%_)))
                          (let ((_%clause191297%_ _%$%tl191279191294%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause191297%_)))))
                      (_%$%E191276191285%_)))))
          (_%$%E191275191299%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx191230%_)
        (let* ((_%$%e191231191241%_ _%stx191230%_)
               (_%$%E191233191245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191231191241%_)))
               (_%$%E191232191269%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191231191241%_)
                      (let ((_%$%e191234191249%_
                             (gx#syntax-e _%$%e191231191241%_)))
                        (let ((_%$%hd191235191252%_
                               (##car _%$%e191234191249%_))
                              (_%$%tl191236191254%_
                               (##cdr _%$%e191234191249%_)))
                          (let ((_%hd191257%_ _%$%hd191235191252%_))
                            (if (gx#stx-pair? _%$%tl191236191254%_)
                                (let ((_%$%e191237191259%_
                                       (gx#syntax-e _%$%tl191236191254%_)))
                                  (let ((_%$%hd191238191262%_
                                         (##car _%$%e191237191259%_))
                                        (_%$%tl191239191264%_
                                         (##cdr _%$%e191237191259%_)))
                                    (let ((_%body191267%_
                                           _%$%hd191238191262%_))
                                      (if (gx#stx-null? _%$%tl191239191264%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd191257%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body191267%_)
                                                      '()))
                                          (_%$%E191233191245%_)))))
                                (_%$%E191233191245%_)))))
                      (_%$%E191233191245%_)))))
          (_%$%E191232191269%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx191200%_)
        (let* ((_%$%e191201191208%_ _%stx191200%_)
               (_%$%E191203191212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191201191208%_)))
               (_%$%E191202191226%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191201191208%_)
                      (let ((_%$%e191204191216%_
                             (gx#syntax-e _%$%e191201191208%_)))
                        (let ((_%$%hd191205191219%_
                               (##car _%$%e191204191216%_))
                              (_%$%tl191206191221%_
                               (##cdr _%$%e191204191216%_)))
                          (let ((_%clauses191224%_ _%$%tl191206191221%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses191224%_)))))
                      (_%$%E191203191212%_)))))
          (_%$%E191202191226%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx191135%_ _%form191136%_)
        (let* ((_%$%e191137191150%_ _%stx191135%_)
               (_%$%E191139191154%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191137191150%_)))
               (_%$%E191138191186%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191137191150%_)
                      (let ((_%$%e191140191158%_
                             (gx#syntax-e _%$%e191137191150%_)))
                        (let ((_%$%hd191141191161%_
                               (##car _%$%e191140191158%_))
                              (_%$%tl191142191163%_
                               (##cdr _%$%e191140191158%_)))
                          (if (gx#stx-pair? _%$%tl191142191163%_)
                              (let ((_%$%e191143191166%_
                                     (gx#syntax-e _%$%tl191142191163%_)))
                                (let ((_%$%hd191144191169%_
                                       (##car _%$%e191143191166%_))
                                      (_%$%tl191145191171%_
                                       (##cdr _%$%e191143191166%_)))
                                  (let ((_%hd191174%_ _%$%hd191144191169%_))
                                    (if (gx#stx-pair? _%$%tl191145191171%_)
                                        (let ((_%$%e191146191176%_
                                               (gx#syntax-e
                                                _%$%tl191145191171%_)))
                                          (let ((_%$%hd191147191179%_
                                                 (##car _%$%e191146191176%_))
                                                (_%$%tl191148191181%_
                                                 (##cdr _%$%e191146191176%_)))
                                            (let ((_%body191184%_
                                                   _%$%hd191147191179%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191148191181%_)
                                                  (cons _%form191136%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd191174%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body191184%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191139191154%_)))))
                                        (_%$%E191139191154%_)))))
                              (_%$%E191139191154%_))))
                      (_%$%E191139191154%_)))))
          (_%$%E191138191186%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx191193%_)
        (let ((_%form191195%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx191193%_ _%form191195%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g192018_
        (let ((_g192019_ (##length _g192018_)))
          (cond ((##fx= _g192019_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g192018_))
                ((##fx= _g192019_ 2)
                 (apply gx#core-compile-top-let-values%__% _g192018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g192018_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx191132%_)
        (gx#core-compile-top-let-values%__% _%stx191132%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx191130%_)
        (gx#core-compile-top-let-values%__% _%stx191130%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx191089%_)
        (let* ((_%$%e191090191100%_ _%stx191089%_)
               (_%$%E191092191104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191090191100%_)))
               (_%$%E191091191126%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191090191100%_)
                      (let ((_%$%e191093191108%_
                             (gx#syntax-e _%$%e191090191100%_)))
                        (let ((_%$%hd191094191111%_
                               (##car _%$%e191093191108%_))
                              (_%$%tl191095191113%_
                               (##cdr _%$%e191093191108%_)))
                          (if (gx#stx-pair? _%$%tl191095191113%_)
                              (let ((_%$%e191096191116%_
                                     (gx#syntax-e _%$%tl191095191113%_)))
                                (let ((_%$%hd191097191119%_
                                       (##car _%$%e191096191116%_))
                                      (_%$%tl191098191121%_
                                       (##cdr _%$%e191096191116%_)))
                                  (let ((_%e191124%_ _%$%hd191097191119%_))
                                    (if (gx#stx-null? _%$%tl191098191121%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e191124%_)
                                                    '()))
                                        (_%$%E191092191104%_)))))
                              (_%$%E191092191104%_))))
                      (_%$%E191092191104%_)))))
          (_%$%E191091191126%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx191048%_)
        (let* ((_%$%e191049191059%_ _%stx191048%_)
               (_%$%E191051191063%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191049191059%_)))
               (_%$%E191050191085%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191049191059%_)
                      (let ((_%$%e191052191067%_
                             (gx#syntax-e _%$%e191049191059%_)))
                        (let ((_%$%hd191053191070%_
                               (##car _%$%e191052191067%_))
                              (_%$%tl191054191072%_
                               (##cdr _%$%e191052191067%_)))
                          (if (gx#stx-pair? _%$%tl191054191072%_)
                              (let ((_%$%e191055191075%_
                                     (gx#syntax-e _%$%tl191054191072%_)))
                                (let ((_%$%hd191056191078%_
                                       (##car _%$%e191055191075%_))
                                      (_%$%tl191057191080%_
                                       (##cdr _%$%e191055191075%_)))
                                  (let ((_%e191083%_ _%$%hd191056191078%_))
                                    (if (gx#stx-null? _%$%tl191057191080%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e191083%_)
                                                    '()))
                                        (_%$%E191051191063%_)))))
                              (_%$%E191051191063%_))))
                      (_%$%E191051191063%_)))))
          (_%$%E191050191085%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx191005%_)
        (let* ((_%$%e191006191016%_ _%stx191005%_)
               (_%$%E191008191020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191006191016%_)))
               (_%$%E191007191044%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191006191016%_)
                      (let ((_%$%e191009191024%_
                             (gx#syntax-e _%$%e191006191016%_)))
                        (let ((_%$%hd191010191027%_
                               (##car _%$%e191009191024%_))
                              (_%$%tl191011191029%_
                               (##cdr _%$%e191009191024%_)))
                          (if (gx#stx-pair? _%$%tl191011191029%_)
                              (let ((_%$%e191012191032%_
                                     (gx#syntax-e _%$%tl191011191029%_)))
                                (let ((_%$%hd191013191035%_
                                       (##car _%$%e191012191032%_))
                                      (_%$%tl191014191037%_
                                       (##cdr _%$%e191012191032%_)))
                                  (let* ((_%rator191040%_ _%$%hd191013191035%_)
                                         (_%args191042%_ _%$%tl191014191037%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator191040%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args191042%_))))))
                              (_%$%E191008191020%_))))
                      (_%$%E191008191020%_)))))
          (_%$%E191007191044%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx190938%_)
        (let* ((_%$%e190939190955%_ _%stx190938%_)
               (_%$%E190941190959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190939190955%_)))
               (_%$%E190940191001%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190939190955%_)
                      (let ((_%$%e190942190963%_
                             (gx#syntax-e _%$%e190939190955%_)))
                        (let ((_%$%hd190943190966%_
                               (##car _%$%e190942190963%_))
                              (_%$%tl190944190968%_
                               (##cdr _%$%e190942190963%_)))
                          (if (gx#stx-pair? _%$%tl190944190968%_)
                              (let ((_%$%e190945190971%_
                                     (gx#syntax-e _%$%tl190944190968%_)))
                                (let ((_%$%hd190946190974%_
                                       (##car _%$%e190945190971%_))
                                      (_%$%tl190947190976%_
                                       (##cdr _%$%e190945190971%_)))
                                  (let ((_%test190979%_ _%$%hd190946190974%_))
                                    (if (gx#stx-pair? _%$%tl190947190976%_)
                                        (let ((_%$%e190948190981%_
                                               (gx#syntax-e
                                                _%$%tl190947190976%_)))
                                          (let ((_%$%hd190949190984%_
                                                 (##car _%$%e190948190981%_))
                                                (_%$%tl190950190986%_
                                                 (##cdr _%$%e190948190981%_)))
                                            (let ((_%K190989%_
                                                   _%$%hd190949190984%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl190950190986%_)
                                                  (let ((_%$%e190951190991%_
                                                         (gx#syntax-e
                                                          _%$%tl190950190986%_)))
                                                    (let ((_%$%hd190952190994%_
                                                           (##car _%$%e190951190991%_))
                                                          (_%$%tl190953190996%_
                                                           (##cdr _%$%e190951190991%_)))
                                                      (let ((_%E190999%_
                                                             _%$%hd190952190994%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl190953190996%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test190979%_)
                                (cons (gx#core-compile-top-syntax _%K190989%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E190999%_)
                                            '()))))
                    (_%$%E190941190959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190941190959%_)))))
                                        (_%$%E190941190959%_)))))
                              (_%$%E190941190959%_))))
                      (_%$%E190941190959%_)))))
          (_%$%E190940191001%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx190897%_)
        (let* ((_%$%e190898190908%_ _%stx190897%_)
               (_%$%E190900190912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190898190908%_)))
               (_%$%E190899190934%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190898190908%_)
                      (let ((_%$%e190901190916%_
                             (gx#syntax-e _%$%e190898190908%_)))
                        (let ((_%$%hd190902190919%_
                               (##car _%$%e190901190916%_))
                              (_%$%tl190903190921%_
                               (##cdr _%$%e190901190916%_)))
                          (if (gx#stx-pair? _%$%tl190903190921%_)
                              (let ((_%$%e190904190924%_
                                     (gx#syntax-e _%$%tl190903190921%_)))
                                (let ((_%$%hd190905190927%_
                                       (##car _%$%e190904190924%_))
                                      (_%$%tl190906190929%_
                                       (##cdr _%$%e190904190924%_)))
                                  (let ((_%id190932%_ _%$%hd190905190927%_))
                                    (if (gx#stx-null? _%$%tl190906190929%_)
                                        (if (gx#identifier? _%id190932%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id190932%_)
                                                        '()))
                                            (_%$%E190900190912%_))
                                        (_%$%E190900190912%_)))))
                              (_%$%E190900190912%_))))
                      (_%$%E190900190912%_)))))
          (_%$%E190899190934%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx190843%_)
        (let* ((_%$%e190844190857%_ _%stx190843%_)
               (_%$%E190846190861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190844190857%_)))
               (_%$%E190845190893%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190844190857%_)
                      (let ((_%$%e190847190865%_
                             (gx#syntax-e _%$%e190844190857%_)))
                        (let ((_%$%hd190848190868%_
                               (##car _%$%e190847190865%_))
                              (_%$%tl190849190870%_
                               (##cdr _%$%e190847190865%_)))
                          (if (gx#stx-pair? _%$%tl190849190870%_)
                              (let ((_%$%e190850190873%_
                                     (gx#syntax-e _%$%tl190849190870%_)))
                                (let ((_%$%hd190851190876%_
                                       (##car _%$%e190850190873%_))
                                      (_%$%tl190852190878%_
                                       (##cdr _%$%e190850190873%_)))
                                  (let ((_%id190881%_ _%$%hd190851190876%_))
                                    (if (gx#stx-pair? _%$%tl190852190878%_)
                                        (let ((_%$%e190853190883%_
                                               (gx#syntax-e
                                                _%$%tl190852190878%_)))
                                          (let ((_%$%hd190854190886%_
                                                 (##car _%$%e190853190883%_))
                                                (_%$%tl190855190888%_
                                                 (##cdr _%$%e190853190883%_)))
                                            (let ((_%expr190891%_
                                                   _%$%hd190854190886%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190855190888%_)
                                                  (if (gx#identifier?
                                                       _%id190881%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id190881%_)
                          (cons (gx#core-compile-top-syntax _%expr190891%_)
                                '())))
              (_%$%E190846190861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190846190861%_)))))
                                        (_%$%E190846190861%_)))))
                              (_%$%E190846190861%_))))
                      (_%$%E190846190861%_)))))
          (_%$%E190845190893%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id190837%_)
        (let ((_%$e190839%_ (gx#resolve-identifier__0 _%id190837%_)))
          (if _%$e190839%_
              (##unchecked-structure-ref _%$e190839%_ '1 '#f '#f)
              _%id190837%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd190835%_)
        (if (gx#identifier? _%hd190835%_)
            (gx#core-compile-top-runtime-ref _%hd190835%_)
            '#f)))))

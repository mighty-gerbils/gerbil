(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1756156301)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx138440%_)
        (let* ((_%e138441138448%_ _%stx138440%_)
               (_%E138443138452%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138441138448%_)))
               (_%E138442138466%_
                (lambda ()
                  (if (gx#stx-pair? _%e138441138448%_)
                      (let ((_%e138444138456%_
                             (gx#syntax-e _%e138441138448%_)))
                        (let ((_%hd138445138459%_ (##car _%e138444138456%_))
                              (_%tl138446138461%_ (##cdr _%e138444138456%_)))
                          (let* ((_%form138464%_ _%hd138445138459%_)
                                 (__self138469
                                  (gx#syntax-local-e__0 _%form138464%_))
                                 (__method138470
                                  (__method-ref
                                   __self138469
                                   'compile-top-syntax)))
                            (if __method138470
                                (__method138470 __self138469 _%stx138440%_)
                                (begin
                                  (error '"Missing method"
                                         __self138469
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E138443138452%_)))))
          (_%E138442138466%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self138388%_ _%stx138389%_)
        (let* ((_%self138392%_ _%self138388%_)
               (_%self138401138409%_ _%self138392%_)
               (_%E138403138413%_
                (lambda ()
                  (error '"No clause matching"
                         _%self138401138409%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K138404138426%_
                (lambda (_%K138416%_)
                  (let ((_%$e138418%_ (gx#stx-source _%stx138389%_)))
                    (if _%$e138418%_
                        ((lambda (_%g138420138422%_)
                           (gx#stx-wrap-source
                            (_%K138416%_ _%stx138389%_)
                            _%g138420138422%_))
                         _%$e138418%_)
                        (_%K138416%_ _%stx138389%_)))))
               (_%e138405138429%_
                (##unchecked-structure-ref _%self138401138409%_ '1 '#f '#f))
               (_%e138406138432%_
                (##unchecked-structure-ref _%self138401138409%_ '2 '#f '#f))
               (_%e138407138435%_
                (##unchecked-structure-ref _%self138401138409%_ '3 '#f '#f))
               (_%K138438%_ _%e138407138435%_))
          (_%K138404138426%_ _%K138438%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx138262%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx138262%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx138232%_)
        (let* ((_%e138233138240%_ _%stx138232%_)
               (_%E138235138244%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138233138240%_)))
               (_%E138234138258%_
                (lambda ()
                  (if (gx#stx-pair? _%e138233138240%_)
                      (let ((_%e138236138248%_
                             (gx#syntax-e _%e138233138240%_)))
                        (let ((_%hd138237138251%_ (##car _%e138236138248%_))
                              (_%tl138238138253%_ (##cdr _%e138236138248%_)))
                          (let ((_%body138256%_ _%tl138238138253%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body138256%_)))))
                      (_%E138235138244%_)))))
          (_%E138234138258%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx138201%_)
        (let* ((_%e138202138209%_ _%stx138201%_)
               (_%E138204138213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138202138209%_)))
               (_%E138203138228%_
                (lambda ()
                  (if (gx#stx-pair? _%e138202138209%_)
                      (let ((_%e138205138217%_
                             (gx#syntax-e _%e138202138209%_)))
                        (let ((_%hd138206138220%_ (##car _%e138205138217%_))
                              (_%tl138207138222%_ (##cdr _%e138205138217%_)))
                          (let ((_%body138225%_ _%tl138207138222%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body138225%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E138204138213%_)))))
          (_%E138203138228%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx138171%_)
        (let* ((_%e138172138179%_ _%stx138171%_)
               (_%E138174138183%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138172138179%_)))
               (_%E138173138197%_
                (lambda ()
                  (if (gx#stx-pair? _%e138172138179%_)
                      (let ((_%e138175138187%_
                             (gx#syntax-e _%e138172138179%_)))
                        (let ((_%hd138176138190%_ (##car _%e138175138187%_))
                              (_%tl138177138192%_ (##cdr _%e138175138187%_)))
                          (let ((_%body138195%_ _%tl138177138192%_))
                            (cons '%#begin-foreign _%body138195%_))))
                      (_%E138174138183%_)))))
          (_%E138173138197%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx138117%_)
        (let* ((_%e138118138131%_ _%stx138117%_)
               (_%E138120138135%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138118138131%_)))
               (_%E138119138167%_
                (lambda ()
                  (if (gx#stx-pair? _%e138118138131%_)
                      (let ((_%e138121138139%_
                             (gx#syntax-e _%e138118138131%_)))
                        (let ((_%hd138122138142%_ (##car _%e138121138139%_))
                              (_%tl138123138144%_ (##cdr _%e138121138139%_)))
                          (if (gx#stx-pair? _%tl138123138144%_)
                              (let ((_%e138124138147%_
                                     (gx#syntax-e _%tl138123138144%_)))
                                (let ((_%hd138125138150%_
                                       (##car _%e138124138147%_))
                                      (_%tl138126138152%_
                                       (##cdr _%e138124138147%_)))
                                  (let ((_%ann138155%_ _%hd138125138150%_))
                                    (if (gx#stx-pair? _%tl138126138152%_)
                                        (let ((_%e138127138157%_
                                               (gx#syntax-e
                                                _%tl138126138152%_)))
                                          (let ((_%hd138128138160%_
                                                 (##car _%e138127138157%_))
                                                (_%tl138129138162%_
                                                 (##cdr _%e138127138157%_)))
                                            (let ((_%expr138165%_
                                                   _%hd138128138160%_))
                                              (if (gx#stx-null?
                                                   _%tl138129138162%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr138165%_)
                                                  (_%E138120138135%_)))))
                                        (_%E138120138135%_)))))
                              (_%E138120138135%_))))
                      (_%E138120138135%_)))))
          (_%E138119138167%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx138087%_)
        (let* ((_%e138088138095%_ _%stx138087%_)
               (_%E138090138099%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138088138095%_)))
               (_%E138089138113%_
                (lambda ()
                  (if (gx#stx-pair? _%e138088138095%_)
                      (let ((_%e138091138103%_
                             (gx#syntax-e _%e138088138095%_)))
                        (let ((_%hd138092138106%_ (##car _%e138091138103%_))
                              (_%tl138093138108%_ (##cdr _%e138091138103%_)))
                          (let ((_%body138111%_ _%tl138093138108%_))
                            (cons '%#import _%body138111%_))))
                      (_%E138090138099%_)))))
          (_%E138089138113%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx138044%_)
        (let* ((_%e138045138055%_ _%stx138044%_)
               (_%E138047138059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138045138055%_)))
               (_%E138046138083%_
                (lambda ()
                  (if (gx#stx-pair? _%e138045138055%_)
                      (let ((_%e138048138063%_
                             (gx#syntax-e _%e138045138055%_)))
                        (let ((_%hd138049138066%_ (##car _%e138048138063%_))
                              (_%tl138050138068%_ (##cdr _%e138048138063%_)))
                          (if (gx#stx-pair? _%tl138050138068%_)
                              (let ((_%e138051138071%_
                                     (gx#syntax-e _%tl138050138068%_)))
                                (let ((_%hd138052138074%_
                                       (##car _%e138051138071%_))
                                      (_%tl138053138076%_
                                       (##cdr _%e138051138071%_)))
                                  (let* ((_%hd138079%_ _%hd138052138074%_)
                                         (_%body138081%_ _%tl138053138076%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd138079%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body138081%_))))))
                              (_%E138047138059%_))))
                      (_%E138047138059%_)))))
          (_%E138046138083%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx138014%_)
        (let* ((_%e138015138022%_ _%stx138014%_)
               (_%E138017138026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138015138022%_)))
               (_%E138016138040%_
                (lambda ()
                  (if (gx#stx-pair? _%e138015138022%_)
                      (let ((_%e138018138030%_
                             (gx#syntax-e _%e138015138022%_)))
                        (let ((_%hd138019138033%_ (##car _%e138018138030%_))
                              (_%tl138020138035%_ (##cdr _%e138018138030%_)))
                          (let ((_%body138038%_ _%tl138020138035%_))
                            (cons '%#export _%body138038%_))))
                      (_%E138017138026%_)))))
          (_%E138016138040%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx137984%_)
        (let* ((_%e137985137992%_ _%stx137984%_)
               (_%E137987137996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137985137992%_)))
               (_%E137986138010%_
                (lambda ()
                  (if (gx#stx-pair? _%e137985137992%_)
                      (let ((_%e137988138000%_
                             (gx#syntax-e _%e137985137992%_)))
                        (let ((_%hd137989138003%_ (##car _%e137988138000%_))
                              (_%tl137990138005%_ (##cdr _%e137988138000%_)))
                          (let ((_%body138008%_ _%tl137990138005%_))
                            (cons '%#provide _%body138008%_))))
                      (_%E137987137996%_)))))
          (_%E137986138010%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx137954%_)
        (let* ((_%e137955137962%_ _%stx137954%_)
               (_%E137957137966%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137955137962%_)))
               (_%E137956137980%_
                (lambda ()
                  (if (gx#stx-pair? _%e137955137962%_)
                      (let ((_%e137958137970%_
                             (gx#syntax-e _%e137955137962%_)))
                        (let ((_%hd137959137973%_ (##car _%e137958137970%_))
                              (_%tl137960137975%_ (##cdr _%e137958137970%_)))
                          (let ((_%body137978%_ _%tl137960137975%_))
                            (cons '%#extern _%body137978%_))))
                      (_%E137957137966%_)))))
          (_%E137956137980%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx137900%_)
        (let* ((_%e137901137914%_ _%stx137900%_)
               (_%E137903137918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137901137914%_)))
               (_%E137902137950%_
                (lambda ()
                  (if (gx#stx-pair? _%e137901137914%_)
                      (let ((_%e137904137922%_
                             (gx#syntax-e _%e137901137914%_)))
                        (let ((_%hd137905137925%_ (##car _%e137904137922%_))
                              (_%tl137906137927%_ (##cdr _%e137904137922%_)))
                          (if (gx#stx-pair? _%tl137906137927%_)
                              (let ((_%e137907137930%_
                                     (gx#syntax-e _%tl137906137927%_)))
                                (let ((_%hd137908137933%_
                                       (##car _%e137907137930%_))
                                      (_%tl137909137935%_
                                       (##cdr _%e137907137930%_)))
                                  (let ((_%hd137938%_ _%hd137908137933%_))
                                    (if (gx#stx-pair? _%tl137909137935%_)
                                        (let ((_%e137910137940%_
                                               (gx#syntax-e
                                                _%tl137909137935%_)))
                                          (let ((_%hd137911137943%_
                                                 (##car _%e137910137940%_))
                                                (_%tl137912137945%_
                                                 (##cdr _%e137910137940%_)))
                                            (let ((_%expr137948%_
                                                   _%hd137911137943%_))
                                              (if (gx#stx-null?
                                                   _%tl137912137945%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd137938%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr137948%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137903137918%_)))))
                                        (_%E137903137918%_)))))
                              (_%E137903137918%_))))
                      (_%E137903137918%_)))))
          (_%E137902137950%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx137845%_)
        (let* ((_%e137846137859%_ _%stx137845%_)
               (_%E137848137863%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137846137859%_)))
               (_%E137847137896%_
                (lambda ()
                  (if (gx#stx-pair? _%e137846137859%_)
                      (let ((_%e137849137867%_
                             (gx#syntax-e _%e137846137859%_)))
                        (let ((_%hd137850137870%_ (##car _%e137849137867%_))
                              (_%tl137851137872%_ (##cdr _%e137849137867%_)))
                          (if (gx#stx-pair? _%tl137851137872%_)
                              (let ((_%e137852137875%_
                                     (gx#syntax-e _%tl137851137872%_)))
                                (let ((_%hd137853137878%_
                                       (##car _%e137852137875%_))
                                      (_%tl137854137880%_
                                       (##cdr _%e137852137875%_)))
                                  (let ((_%hd137883%_ _%hd137853137878%_))
                                    (if (gx#stx-pair? _%tl137854137880%_)
                                        (let ((_%e137855137885%_
                                               (gx#syntax-e
                                                _%tl137854137880%_)))
                                          (let ((_%hd137856137888%_
                                                 (##car _%e137855137885%_))
                                                (_%tl137857137890%_
                                                 (##cdr _%e137855137885%_)))
                                            (let ((_%expr137893%_
                                                   _%hd137856137888%_))
                                              (if (gx#stx-null?
                                                   _%tl137857137890%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd137883%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr137893%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137848137863%_)))))
                                        (_%E137848137863%_)))))
                              (_%E137848137863%_))))
                      (_%E137848137863%_)))))
          (_%E137847137896%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx137815%_)
        (let* ((_%e137816137823%_ _%stx137815%_)
               (_%E137818137827%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137816137823%_)))
               (_%E137817137841%_
                (lambda ()
                  (if (gx#stx-pair? _%e137816137823%_)
                      (let ((_%e137819137831%_
                             (gx#syntax-e _%e137816137823%_)))
                        (let ((_%hd137820137834%_ (##car _%e137819137831%_))
                              (_%tl137821137836%_ (##cdr _%e137819137831%_)))
                          (let ((_%body137839%_ _%tl137821137836%_))
                            (cons '%#define-alias _%body137839%_))))
                      (_%E137818137827%_)))))
          (_%E137817137841%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx137785%_)
        (let* ((_%e137786137793%_ _%stx137785%_)
               (_%E137788137797%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137786137793%_)))
               (_%E137787137811%_
                (lambda ()
                  (if (gx#stx-pair? _%e137786137793%_)
                      (let ((_%e137789137801%_
                             (gx#syntax-e _%e137786137793%_)))
                        (let ((_%hd137790137804%_ (##car _%e137789137801%_))
                              (_%tl137791137806%_ (##cdr _%e137789137801%_)))
                          (let ((_%body137809%_ _%tl137791137806%_))
                            (cons '%#define-runtime _%body137809%_))))
                      (_%E137788137797%_)))))
          (_%E137787137811%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx137755%_)
        (let* ((_%e137756137763%_ _%stx137755%_)
               (_%E137758137767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137756137763%_)))
               (_%E137757137781%_
                (lambda ()
                  (if (gx#stx-pair? _%e137756137763%_)
                      (let ((_%e137759137771%_
                             (gx#syntax-e _%e137756137763%_)))
                        (let ((_%hd137760137774%_ (##car _%e137759137771%_))
                              (_%tl137761137776%_ (##cdr _%e137759137771%_)))
                          (let ((_%decls137779%_ _%tl137761137776%_))
                            (cons '%#declare _%decls137779%_))))
                      (_%E137758137767%_)))))
          (_%E137757137781%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx137725%_)
        (let* ((_%e137726137733%_ _%stx137725%_)
               (_%E137728137737%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137726137733%_)))
               (_%E137727137751%_
                (lambda ()
                  (if (gx#stx-pair? _%e137726137733%_)
                      (let ((_%e137729137741%_
                             (gx#syntax-e _%e137726137733%_)))
                        (let ((_%hd137730137744%_ (##car _%e137729137741%_))
                              (_%tl137731137746%_ (##cdr _%e137729137741%_)))
                          (let ((_%clause137749%_ _%tl137731137746%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause137749%_)))))
                      (_%E137728137737%_)))))
          (_%E137727137751%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx137682%_)
        (let* ((_%e137683137693%_ _%stx137682%_)
               (_%E137685137697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137683137693%_)))
               (_%E137684137721%_
                (lambda ()
                  (if (gx#stx-pair? _%e137683137693%_)
                      (let ((_%e137686137701%_
                             (gx#syntax-e _%e137683137693%_)))
                        (let ((_%hd137687137704%_ (##car _%e137686137701%_))
                              (_%tl137688137706%_ (##cdr _%e137686137701%_)))
                          (let ((_%hd137709%_ _%hd137687137704%_))
                            (if (gx#stx-pair? _%tl137688137706%_)
                                (let ((_%e137689137711%_
                                       (gx#syntax-e _%tl137688137706%_)))
                                  (let ((_%hd137690137714%_
                                         (##car _%e137689137711%_))
                                        (_%tl137691137716%_
                                         (##cdr _%e137689137711%_)))
                                    (let ((_%body137719%_ _%hd137690137714%_))
                                      (if (gx#stx-null? _%tl137691137716%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd137709%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body137719%_)
                                                      '()))
                                          (_%E137685137697%_)))))
                                (_%E137685137697%_)))))
                      (_%E137685137697%_)))))
          (_%E137684137721%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx137652%_)
        (let* ((_%e137653137660%_ _%stx137652%_)
               (_%E137655137664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137653137660%_)))
               (_%E137654137678%_
                (lambda ()
                  (if (gx#stx-pair? _%e137653137660%_)
                      (let ((_%e137656137668%_
                             (gx#syntax-e _%e137653137660%_)))
                        (let ((_%hd137657137671%_ (##car _%e137656137668%_))
                              (_%tl137658137673%_ (##cdr _%e137656137668%_)))
                          (let ((_%clauses137676%_ _%tl137658137673%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses137676%_)))))
                      (_%E137655137664%_)))))
          (_%E137654137678%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx137587%_ _%form137588%_)
        (let* ((_%e137589137602%_ _%stx137587%_)
               (_%E137591137606%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137589137602%_)))
               (_%E137590137638%_
                (lambda ()
                  (if (gx#stx-pair? _%e137589137602%_)
                      (let ((_%e137592137610%_
                             (gx#syntax-e _%e137589137602%_)))
                        (let ((_%hd137593137613%_ (##car _%e137592137610%_))
                              (_%tl137594137615%_ (##cdr _%e137592137610%_)))
                          (if (gx#stx-pair? _%tl137594137615%_)
                              (let ((_%e137595137618%_
                                     (gx#syntax-e _%tl137594137615%_)))
                                (let ((_%hd137596137621%_
                                       (##car _%e137595137618%_))
                                      (_%tl137597137623%_
                                       (##cdr _%e137595137618%_)))
                                  (let ((_%hd137626%_ _%hd137596137621%_))
                                    (if (gx#stx-pair? _%tl137597137623%_)
                                        (let ((_%e137598137628%_
                                               (gx#syntax-e
                                                _%tl137597137623%_)))
                                          (let ((_%hd137599137631%_
                                                 (##car _%e137598137628%_))
                                                (_%tl137600137633%_
                                                 (##cdr _%e137598137628%_)))
                                            (let ((_%body137636%_
                                                   _%hd137599137631%_))
                                              (if (gx#stx-null?
                                                   _%tl137600137633%_)
                                                  (cons _%form137588%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd137626%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body137636%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137591137606%_)))))
                                        (_%E137591137606%_)))))
                              (_%E137591137606%_))))
                      (_%E137591137606%_)))))
          (_%E137590137638%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx137645%_)
        (let ((_%form137647%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx137645%_ _%form137647%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g138471_
        (let ((_g138472_ (##length _g138471_)))
          (cond ((##fx= _g138472_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g138471_))
                ((##fx= _g138472_ 2)
                 (apply gx#core-compile-top-let-values%__% _g138471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g138471_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx137584%_)
        (gx#core-compile-top-let-values%__% _%stx137584%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx137582%_)
        (gx#core-compile-top-let-values%__% _%stx137582%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx137541%_)
        (let* ((_%e137542137552%_ _%stx137541%_)
               (_%E137544137556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137542137552%_)))
               (_%E137543137578%_
                (lambda ()
                  (if (gx#stx-pair? _%e137542137552%_)
                      (let ((_%e137545137560%_
                             (gx#syntax-e _%e137542137552%_)))
                        (let ((_%hd137546137563%_ (##car _%e137545137560%_))
                              (_%tl137547137565%_ (##cdr _%e137545137560%_)))
                          (if (gx#stx-pair? _%tl137547137565%_)
                              (let ((_%e137548137568%_
                                     (gx#syntax-e _%tl137547137565%_)))
                                (let ((_%hd137549137571%_
                                       (##car _%e137548137568%_))
                                      (_%tl137550137573%_
                                       (##cdr _%e137548137568%_)))
                                  (let ((_%e137576%_ _%hd137549137571%_))
                                    (if (gx#stx-null? _%tl137550137573%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e137576%_)
                                                    '()))
                                        (_%E137544137556%_)))))
                              (_%E137544137556%_))))
                      (_%E137544137556%_)))))
          (_%E137543137578%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx137500%_)
        (let* ((_%e137501137511%_ _%stx137500%_)
               (_%E137503137515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137501137511%_)))
               (_%E137502137537%_
                (lambda ()
                  (if (gx#stx-pair? _%e137501137511%_)
                      (let ((_%e137504137519%_
                             (gx#syntax-e _%e137501137511%_)))
                        (let ((_%hd137505137522%_ (##car _%e137504137519%_))
                              (_%tl137506137524%_ (##cdr _%e137504137519%_)))
                          (if (gx#stx-pair? _%tl137506137524%_)
                              (let ((_%e137507137527%_
                                     (gx#syntax-e _%tl137506137524%_)))
                                (let ((_%hd137508137530%_
                                       (##car _%e137507137527%_))
                                      (_%tl137509137532%_
                                       (##cdr _%e137507137527%_)))
                                  (let ((_%e137535%_ _%hd137508137530%_))
                                    (if (gx#stx-null? _%tl137509137532%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e137535%_)
                                                    '()))
                                        (_%E137503137515%_)))))
                              (_%E137503137515%_))))
                      (_%E137503137515%_)))))
          (_%E137502137537%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx137457%_)
        (let* ((_%e137458137468%_ _%stx137457%_)
               (_%E137460137472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137458137468%_)))
               (_%E137459137496%_
                (lambda ()
                  (if (gx#stx-pair? _%e137458137468%_)
                      (let ((_%e137461137476%_
                             (gx#syntax-e _%e137458137468%_)))
                        (let ((_%hd137462137479%_ (##car _%e137461137476%_))
                              (_%tl137463137481%_ (##cdr _%e137461137476%_)))
                          (if (gx#stx-pair? _%tl137463137481%_)
                              (let ((_%e137464137484%_
                                     (gx#syntax-e _%tl137463137481%_)))
                                (let ((_%hd137465137487%_
                                       (##car _%e137464137484%_))
                                      (_%tl137466137489%_
                                       (##cdr _%e137464137484%_)))
                                  (let* ((_%rator137492%_ _%hd137465137487%_)
                                         (_%args137494%_ _%tl137466137489%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator137492%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args137494%_))))))
                              (_%E137460137472%_))))
                      (_%E137460137472%_)))))
          (_%E137459137496%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx137390%_)
        (let* ((_%e137391137407%_ _%stx137390%_)
               (_%E137393137411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137391137407%_)))
               (_%E137392137453%_
                (lambda ()
                  (if (gx#stx-pair? _%e137391137407%_)
                      (let ((_%e137394137415%_
                             (gx#syntax-e _%e137391137407%_)))
                        (let ((_%hd137395137418%_ (##car _%e137394137415%_))
                              (_%tl137396137420%_ (##cdr _%e137394137415%_)))
                          (if (gx#stx-pair? _%tl137396137420%_)
                              (let ((_%e137397137423%_
                                     (gx#syntax-e _%tl137396137420%_)))
                                (let ((_%hd137398137426%_
                                       (##car _%e137397137423%_))
                                      (_%tl137399137428%_
                                       (##cdr _%e137397137423%_)))
                                  (let ((_%test137431%_ _%hd137398137426%_))
                                    (if (gx#stx-pair? _%tl137399137428%_)
                                        (let ((_%e137400137433%_
                                               (gx#syntax-e
                                                _%tl137399137428%_)))
                                          (let ((_%hd137401137436%_
                                                 (##car _%e137400137433%_))
                                                (_%tl137402137438%_
                                                 (##cdr _%e137400137433%_)))
                                            (let ((_%K137441%_
                                                   _%hd137401137436%_))
                                              (if (gx#stx-pair?
                                                   _%tl137402137438%_)
                                                  (let ((_%e137403137443%_
                                                         (gx#syntax-e
                                                          _%tl137402137438%_)))
                                                    (let ((_%hd137404137446%_
                                                           (##car _%e137403137443%_))
                                                          (_%tl137405137448%_
                                                           (##cdr _%e137403137443%_)))
                                                      (let ((_%E137451%_
                                                             _%hd137404137446%_))
                                                        (if (gx#stx-null?
                                                             _%tl137405137448%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test137431%_)
                                (cons (gx#core-compile-top-syntax _%K137441%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E137451%_)
                                            '()))))
                    (_%E137393137411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137393137411%_)))))
                                        (_%E137393137411%_)))))
                              (_%E137393137411%_))))
                      (_%E137393137411%_)))))
          (_%E137392137453%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx137349%_)
        (let* ((_%e137350137360%_ _%stx137349%_)
               (_%E137352137364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137350137360%_)))
               (_%E137351137386%_
                (lambda ()
                  (if (gx#stx-pair? _%e137350137360%_)
                      (let ((_%e137353137368%_
                             (gx#syntax-e _%e137350137360%_)))
                        (let ((_%hd137354137371%_ (##car _%e137353137368%_))
                              (_%tl137355137373%_ (##cdr _%e137353137368%_)))
                          (if (gx#stx-pair? _%tl137355137373%_)
                              (let ((_%e137356137376%_
                                     (gx#syntax-e _%tl137355137373%_)))
                                (let ((_%hd137357137379%_
                                       (##car _%e137356137376%_))
                                      (_%tl137358137381%_
                                       (##cdr _%e137356137376%_)))
                                  (let ((_%id137384%_ _%hd137357137379%_))
                                    (if (gx#stx-null? _%tl137358137381%_)
                                        (if (gx#identifier? _%id137384%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id137384%_)
                                                        '()))
                                            (_%E137352137364%_))
                                        (_%E137352137364%_)))))
                              (_%E137352137364%_))))
                      (_%E137352137364%_)))))
          (_%E137351137386%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx137295%_)
        (let* ((_%e137296137309%_ _%stx137295%_)
               (_%E137298137313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137296137309%_)))
               (_%E137297137345%_
                (lambda ()
                  (if (gx#stx-pair? _%e137296137309%_)
                      (let ((_%e137299137317%_
                             (gx#syntax-e _%e137296137309%_)))
                        (let ((_%hd137300137320%_ (##car _%e137299137317%_))
                              (_%tl137301137322%_ (##cdr _%e137299137317%_)))
                          (if (gx#stx-pair? _%tl137301137322%_)
                              (let ((_%e137302137325%_
                                     (gx#syntax-e _%tl137301137322%_)))
                                (let ((_%hd137303137328%_
                                       (##car _%e137302137325%_))
                                      (_%tl137304137330%_
                                       (##cdr _%e137302137325%_)))
                                  (let ((_%id137333%_ _%hd137303137328%_))
                                    (if (gx#stx-pair? _%tl137304137330%_)
                                        (let ((_%e137305137335%_
                                               (gx#syntax-e
                                                _%tl137304137330%_)))
                                          (let ((_%hd137306137338%_
                                                 (##car _%e137305137335%_))
                                                (_%tl137307137340%_
                                                 (##cdr _%e137305137335%_)))
                                            (let ((_%expr137343%_
                                                   _%hd137306137338%_))
                                              (if (gx#stx-null?
                                                   _%tl137307137340%_)
                                                  (if (gx#identifier?
                                                       _%id137333%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id137333%_)
                          (cons (gx#core-compile-top-syntax _%expr137343%_)
                                '())))
              (_%E137298137313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137298137313%_)))))
                                        (_%E137298137313%_)))))
                              (_%E137298137313%_))))
                      (_%E137298137313%_)))))
          (_%E137297137345%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id137289%_)
        (let ((_%$e137291%_ (gx#resolve-identifier__0 _%id137289%_)))
          (if _%$e137291%_
              (##unchecked-structure-ref _%$e137291%_ '1 '#f '#f)
              _%id137289%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd137287%_)
        (if (gx#identifier? _%hd137287%_)
            (gx#core-compile-top-runtime-ref _%hd137287%_)
            '#f)))))

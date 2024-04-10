(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712773525)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122173%_)
        (letrec ((_%expand-special122175%_
                  (lambda (_%hd122177%_ _%K122178%_ _%rest122179%_ _%r122180%_)
                    (_%K122178%_
                     _%rest122179%_
                     (cons (gx#core-expand-top _%hd122177%_) _%r122180%_)))))
          (gx#core-expand-block__0 _%stx122173%_ _%expand-special122175%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121926%_)
        (letrec ((_%expand-special121928%_
                  (lambda (_%hd122048%_ _%K122049%_ _%rest122050%_ _%r122051%_)
                    (let* ((_%K122055%_
                            (lambda (_%e122053%_)
                              (_%K122049%_
                               _%rest122050%_
                               (cons _%e122053%_ _%r122051%_))))
                           (_%e122056122085%_ _%hd122048%_)
                           (_%E122080122089%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122056122085%_)))
                           (_%E122076122101%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122056122085%_)
                                  (let ((_%e122081122093%_
                                         (gx#syntax-e _%e122056122085%_)))
                                    (let ((_%hd122082122096%_
                                           (##car _%e122081122093%_))
                                          (_%tl122083122098%_
                                           (##cdr _%e122081122093%_)))
                                      (if (and (gx#identifier?
                                                _%hd122082122096%_)
                                               (gx#core-identifier=?
                                                _%hd122082122096%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K122055%_
                                               (gx#core-expand-define-runtime%
                                                _%hd122048%_))
                                              (_%E122080122089%_))
                                          (_%E122080122089%_))))
                                  (_%E122080122089%_))))
                           (_%E122072122113%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122056122085%_)
                                  (let ((_%e122077122105%_
                                         (gx#syntax-e _%e122056122085%_)))
                                    (let ((_%hd122078122108%_
                                           (##car _%e122077122105%_))
                                          (_%tl122079122110%_
                                           (##cdr _%e122077122105%_)))
                                      (if (and (gx#identifier?
                                                _%hd122078122108%_)
                                               (gx#core-identifier=?
                                                _%hd122078122108%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K122055%_
                                               (gx#core-expand-define-alias%
                                                _%hd122048%_))
                                              (_%E122076122101%_))
                                          (_%E122076122101%_))))
                                  (_%E122076122101%_))))
                           (_%E122062122125%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122056122085%_)
                                  (let ((_%e122073122117%_
                                         (gx#syntax-e _%e122056122085%_)))
                                    (let ((_%hd122074122120%_
                                           (##car _%e122073122117%_))
                                          (_%tl122075122122%_
                                           (##cdr _%e122073122117%_)))
                                      (if (and (gx#identifier?
                                                _%hd122074122120%_)
                                               (gx#core-identifier=?
                                                _%hd122074122120%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K122055%_
                                               (gx#core-expand-define-syntax%
                                                _%hd122048%_))
                                              (_%E122072122113%_))
                                          (_%E122072122113%_))))
                                  (_%E122072122113%_))))
                           (_%E122058122157%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122056122085%_)
                                  (let ((_%e122063122129%_
                                         (gx#syntax-e _%e122056122085%_)))
                                    (let ((_%hd122064122132%_
                                           (##car _%e122063122129%_))
                                          (_%tl122065122134%_
                                           (##cdr _%e122063122129%_)))
                                      (if (and (gx#identifier?
                                                _%hd122064122132%_)
                                               (gx#core-identifier=?
                                                _%hd122064122132%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122065122134%_)
                                              (let ((_%e122066122137%_
                                                     (gx#syntax-e
                                                      _%tl122065122134%_)))
                                                (let ((_%hd122067122140%_
                                                       (##car _%e122066122137%_))
                                                      (_%tl122068122142%_
                                                       (##cdr _%e122066122137%_)))
                                                  (let ((_%hd-bind122145%_
                                                         _%hd122067122140%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122068122142%_)
                                                        (let ((_%e122069122147%_
                                                               (gx#syntax-e
                                                                _%tl122068122142%_)))
                                                          (let ((_%hd122070122150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122069122147%_))
                        (_%tl122071122152%_ (##cdr _%e122069122147%_)))
                    (let ((_%expr122155%_ _%hd122070122150%_))
                      (if (gx#stx-null? _%tl122071122152%_)
                          (if (gx#core-bind-values? _%hd-bind122145%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122145%_)
                                (_%K122055%_ _%hd122048%_))
                              (_%E122062122125%_))
                          (_%E122062122125%_)))))
                (_%E122062122125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122062122125%_))
                                          (_%E122062122125%_))))
                                  (_%E122062122125%_))))
                           (_%E122057122169%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122056122085%_)
                                  (let ((_%e122059122161%_
                                         (gx#syntax-e _%e122056122085%_)))
                                    (let ((_%hd122060122164%_
                                           (##car _%e122059122161%_))
                                          (_%tl122061122166%_
                                           (##cdr _%e122059122161%_)))
                                      (if (and (gx#identifier?
                                                _%hd122060122164%_)
                                               (gx#core-identifier=?
                                                _%hd122060122164%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K122055%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd122048%_))
                                              (_%E122058122157%_))
                                          (_%E122058122157%_))))
                                  (_%E122058122157%_)))))
                      (_%E122057122169%_))))
                 (_%eval-body121929%_
                  (lambda (_%rbody121937%_)
                    (let _%lp121939%_ ((_%rest121941%_ _%rbody121937%_)
                                       (_%body121942%_ '())
                                       (_%ebody121943%_ '()))
                      (let* ((_%rest121944121952%_ _%rest121941%_)
                             (_%else121946121960%_
                              (lambda ()
                                (values _%body121942%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121943%_)
                                          (gx#stx-source _%stx121926%_))))))
                             (_%K121948122036%_
                              (lambda (_%rest121963%_ _%hd121964%_)
                                (let* ((_%e121965121982%_ _%hd121964%_)
                                       (_%E121977121986%_
                                        (lambda ()
                                          (_%lp121939%_
                                           _%rest121963%_
                                           (cons _%hd121964%_ _%body121942%_)
                                           (cons _%hd121964%_
                                                 _%ebody121943%_))))
                                       (_%E121967121998%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121965121982%_)
                                              (let ((_%e121978121990%_
                                                     (gx#syntax-e
                                                      _%e121965121982%_)))
                                                (let ((_%hd121979121993%_
                                                       (##car _%e121978121990%_))
                                                      (_%tl121980121995%_
                                                       (##cdr _%e121978121990%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121979121993%_)
                                                           (gx#core-identifier=?
                                                            _%hd121979121993%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121939%_
                                                           _%rest121963%_
                                                           (cons _%hd121964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121942%_)
                   _%ebody121943%_)
                  (_%E121977121986%_))
              (_%E121977121986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121977121986%_))))
                                       (_%E121966122032%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121965121982%_)
                                              (let ((_%e121968122002%_
                                                     (gx#syntax-e
                                                      _%e121965121982%_)))
                                                (let ((_%hd121969122005%_
                                                       (##car _%e121968122002%_))
                                                      (_%tl121970122007%_
                                                       (##cdr _%e121968122002%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121969122005%_)
                                                           (gx#core-identifier=?
                                                            _%hd121969122005%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121970122007%_)
                                                          (let ((_%e121971122010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121970122007%_)))
                    (let ((_%hd121972122013%_ (##car _%e121971122010%_))
                          (_%tl121973122015%_ (##cdr _%e121971122010%_)))
                      (let ((_%hd-bind122018%_ _%hd121972122013%_))
                        (if (gx#stx-pair? _%tl121973122015%_)
                            (let ((_%e121974122020%_
                                   (gx#syntax-e _%tl121973122015%_)))
                              (let ((_%hd121975122023%_
                                     (##car _%e121974122020%_))
                                    (_%tl121976122025%_
                                     (##cdr _%e121974122020%_)))
                                (let ((_%expr122028%_ _%hd121975122023%_))
                                  (if (gx#stx-null? _%tl121976122025%_)
                                      (if '#t
                                          (let ((_%ehd122030%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind122018%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr122028%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121964%_))))
                                            (_%lp121939%_
                                             _%rest121963%_
                                             (cons _%ehd122030%_
                                                   _%body121942%_)
                                             (cons _%ehd122030%_
                                                   _%ebody121943%_)))
                                          (_%E121967121998%_))
                                      (_%E121967121998%_)))))
                            (_%E121967121998%_)))))
                  (_%E121967121998%_))
              (_%E121967121998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121967121998%_)))))
                                  (_%E121966122032%_)))))
                        (if (##pair? _%rest121944121952%_)
                            (let ((_%hd121949122039%_
                                   (##car _%rest121944121952%_))
                                  (_%tl121950122041%_
                                   (##cdr _%rest121944121952%_)))
                              (let* ((_%hd122044%_ _%hd121949122039%_)
                                     (_%rest122046%_ _%tl121950122041%_))
                                (_%K121948122036%_
                                 _%rest122046%_
                                 _%hd122044%_)))
                            (_%else121946121960%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121932%_
                     (gx#core-expand-block__1
                      _%stx121926%_
                      _%expand-special121928%_
                      '#f))
                    (_g122196_ (_%eval-body121929%_ _%rbody121932%_)))
               (begin
                 (let ((_g122197_
                        (if (##values? _g122196_)
                            (##vector-length _g122196_)
                            1)))
                   (if (not (##fx= _g122197_ 2))
                       (error "Context expects 2 values" _g122197_)))
                 (let ((_%expanded-body121934%_ (##vector-ref _g122196_ 0))
                       (_%value121935%_ (##vector-ref _g122196_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121934%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121935%_ '())))
                    (gx#stx-source _%stx121926%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121896%_)
        (let* ((_%e121897121904%_ _%stx121896%_)
               (_%E121899121908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121897121904%_)))
               (_%E121898121922%_
                (lambda ()
                  (if (gx#stx-pair? _%e121897121904%_)
                      (let ((_%e121900121912%_
                             (gx#syntax-e _%e121897121904%_)))
                        (let ((_%hd121901121915%_ (##car _%e121900121912%_))
                              (_%tl121902121917%_ (##cdr _%e121900121912%_)))
                          (let ((_%body121920%_ _%tl121902121917%_))
                            (if (gx#stx-list? _%body121920%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121920%_)
                                 (gx#stx-source _%stx121896%_))
                                (_%E121899121908%_)))))
                      (_%E121899121908%_)))))
          (_%E121898121922%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121894%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121894%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121840%_)
        (let* ((_%e121841121854%_ _%stx121840%_)
               (_%E121843121858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121841121854%_)))
               (_%E121842121890%_
                (lambda ()
                  (if (gx#stx-pair? _%e121841121854%_)
                      (let ((_%e121844121862%_
                             (gx#syntax-e _%e121841121854%_)))
                        (let ((_%hd121845121865%_ (##car _%e121844121862%_))
                              (_%tl121846121867%_ (##cdr _%e121844121862%_)))
                          (if (gx#stx-pair? _%tl121846121867%_)
                              (let ((_%e121847121870%_
                                     (gx#syntax-e _%tl121846121867%_)))
                                (let ((_%hd121848121873%_
                                       (##car _%e121847121870%_))
                                      (_%tl121849121875%_
                                       (##cdr _%e121847121870%_)))
                                  (let ((_%ann121878%_ _%hd121848121873%_))
                                    (if (gx#stx-pair? _%tl121849121875%_)
                                        (let ((_%e121850121880%_
                                               (gx#syntax-e
                                                _%tl121849121875%_)))
                                          (let ((_%hd121851121883%_
                                                 (##car _%e121850121880%_))
                                                (_%tl121852121885%_
                                                 (##cdr _%e121850121880%_)))
                                            (let ((_%expr121888%_
                                                   _%hd121851121883%_))
                                              (if (gx#stx-null?
                                                   _%tl121852121885%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121888%_)
                                 '())))
               (gx#stx-source _%stx121840%_))
              (_%E121843121858%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121843121858%_)))))
                                        (_%E121843121858%_)))))
                              (_%E121843121858%_))))
                      (_%E121843121858%_)))))
          (_%E121842121890%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121564%_ _%body121565%_)
        (letrec ((_%expand-special121567%_
                  (lambda (_%hd121835%_ _%K121836%_ _%rest121837%_ _%r121838%_)
                    (_%K121836%_
                     '()
                     (cons (_%expand-internal121568%_
                            _%hd121835%_
                            _%rest121837%_)
                           _%r121838%_))))
                 (_%expand-internal121568%_
                  (lambda (_%hd121831%_ _%rest121832%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121570%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121831%_ _%rest121832%_))
                          (gx#stx-source _%stx121564%_))
                         _%expand-internal-special121569%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122190
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122190)
                       __obj122190))))
                 (_%expand-internal-special121569%_
                  (lambda (_%hd121726%_ _%K121727%_ _%rest121728%_ _%r121729%_)
                    (let* ((_%e121730121755%_ _%hd121726%_)
                           (_%E121750121759%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121730121755%_)))
                           (_%E121746121771%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121730121755%_)
                                  (let ((_%e121751121763%_
                                         (gx#syntax-e _%e121730121755%_)))
                                    (let ((_%hd121752121766%_
                                           (##car _%e121751121763%_))
                                          (_%tl121753121768%_
                                           (##cdr _%e121751121763%_)))
                                      (if (and (gx#identifier?
                                                _%hd121752121766%_)
                                               (gx#core-identifier=?
                                                _%hd121752121766%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121727%_
                                               _%rest121728%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121726%_)
                                                     _%r121729%_))
                                              (_%E121750121759%_))
                                          (_%E121750121759%_))))
                                  (_%E121750121759%_))))
                           (_%E121742121783%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121730121755%_)
                                  (let ((_%e121747121775%_
                                         (gx#syntax-e _%e121730121755%_)))
                                    (let ((_%hd121748121778%_
                                           (##car _%e121747121775%_))
                                          (_%tl121749121780%_
                                           (##cdr _%e121747121775%_)))
                                      (if (and (gx#identifier?
                                                _%hd121748121778%_)
                                               (gx#core-identifier=?
                                                _%hd121748121778%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121726%_)
                                                (_%K121727%_
                                                 _%rest121728%_
                                                 _%r121729%_))
                                              (_%E121746121771%_))
                                          (_%E121746121771%_))))
                                  (_%E121746121771%_))))
                           (_%E121732121795%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121730121755%_)
                                  (let ((_%e121743121787%_
                                         (gx#syntax-e _%e121730121755%_)))
                                    (let ((_%hd121744121790%_
                                           (##car _%e121743121787%_))
                                          (_%tl121745121792%_
                                           (##cdr _%e121743121787%_)))
                                      (if (and (gx#identifier?
                                                _%hd121744121790%_)
                                               (gx#core-identifier=?
                                                _%hd121744121790%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121726%_)
                                                (_%K121727%_
                                                 _%rest121728%_
                                                 _%r121729%_))
                                              (_%E121742121783%_))
                                          (_%E121742121783%_))))
                                  (_%E121742121783%_))))
                           (_%E121731121827%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121730121755%_)
                                  (let ((_%e121733121799%_
                                         (gx#syntax-e _%e121730121755%_)))
                                    (let ((_%hd121734121802%_
                                           (##car _%e121733121799%_))
                                          (_%tl121735121804%_
                                           (##cdr _%e121733121799%_)))
                                      (if (and (gx#identifier?
                                                _%hd121734121802%_)
                                               (gx#core-identifier=?
                                                _%hd121734121802%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121735121804%_)
                                              (let ((_%e121736121807%_
                                                     (gx#syntax-e
                                                      _%tl121735121804%_)))
                                                (let ((_%hd121737121810%_
                                                       (##car _%e121736121807%_))
                                                      (_%tl121738121812%_
                                                       (##cdr _%e121736121807%_)))
                                                  (let ((_%hd-bind121815%_
                                                         _%hd121737121810%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121738121812%_)
                                                        (let ((_%e121739121817%_
                                                               (gx#syntax-e
                                                                _%tl121738121812%_)))
                                                          (let ((_%hd121740121820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121739121817%_))
                        (_%tl121741121822%_ (##cdr _%e121739121817%_)))
                    (let ((_%expr121825%_ _%hd121740121820%_))
                      (if (gx#stx-null? _%tl121741121822%_)
                          (if (gx#core-bind-values? _%hd-bind121815%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121815%_)
                                (_%K121727%_
                                 _%rest121728%_
                                 (cons _%hd121726%_ _%r121729%_)))
                              (_%E121732121795%_))
                          (_%E121732121795%_)))))
                (_%E121732121795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121732121795%_))
                                          (_%E121732121795%_))))
                                  (_%E121732121795%_)))))
                      (_%E121731121827%_))))
                 (_%wrap-internal121570%_
                  (lambda (_%rbody121572%_)
                    (let _%lp121574%_ ((_%rest121576%_ _%rbody121572%_)
                                       (_%decls121577%_ '())
                                       (_%bind121578%_ '())
                                       (_%body121579%_ '()))
                      (let* ((_%e121580121587%_ _%rest121576%_)
                             (_%E121582121636%_
                              (lambda ()
                                (let* ((_%body121631%_
                                        (let* ((_%body121590121600%_
                                                _%body121579%_)
                                               (_%else121593121608%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121579%_)
                                                   (gx#stx-source
                                                    _%stx121564%_)))))
                                          (let ((_%K121598121628%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121564%_)))
                                                (_%K121595121614%_
                                                 (lambda (_%expr121612%_)
                                                   _%expr121612%_)))
                                            (let ((_%try-match121592121624%_
                                                   (lambda ()
                                                     (if (##pair? _%body121590121600%_)
                                                         (let ((_%tl121597121619%_
                                                                (##cdr _%body121590121600%_))
                                                               (_%hd121596121617%_
                                                                (##car _%body121590121600%_)))
                                                           (if (##null? _%tl121597121619%_)
                                                               (let ((_%expr121622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121596121617%_))
                         (_%K121595121614%_ _%expr121622%_))
                       (_%else121593121608%_)))
                 (_%else121593121608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121590121600%_)
                                                  (_%K121598121628%_)
                                                  (_%try-match121592121624%_))))))
                                       (_%body121633%_
                                        (if (null? _%bind121578%_)
                                            _%body121631%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121578%_
                                                         (cons _%body121631%_
                                                               '())))
                                             (gx#stx-source _%stx121564%_)))))
                                  (if (null? _%decls121577%_)
                                      _%body121633%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121577%_
                                                   (cons _%body121633%_ '())))
                                       (gx#stx-source _%stx121564%_))))))
                             (_%E121581121722%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121580121587%_)
                                    (let ((_%e121583121640%_
                                           (gx#syntax-e _%e121580121587%_)))
                                      (let ((_%hd121584121643%_
                                             (##car _%e121583121640%_))
                                            (_%tl121585121645%_
                                             (##cdr _%e121583121640%_)))
                                        (let* ((_%hd121648%_
                                                _%hd121584121643%_)
                                               (_%rest121650%_
                                                _%tl121585121645%_))
                                          (if '#t
                                              (let* ((_%e121651121668%_
                                                      _%hd121648%_)
                                                     (_%E121663121672%_
                                                      (lambda ()
                                                        (if (null? _%bind121578%_)
                                                            (_%lp121574%_
                                                             _%rest121650%_
                                                             _%decls121577%_
                                                             _%bind121578%_
                                                             (cons _%hd121648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121579%_))
                    (_%lp121574%_
                     _%rest121650%_
                     _%decls121577%_
                     (cons (cons '#f (cons _%hd121648%_ '())) _%bind121578%_)
                     _%body121579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121653121686%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121651121668%_)
                                                            (let ((_%e121664121676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121651121668%_)))
                      (let ((_%hd121665121679%_ (##car _%e121664121676%_))
                            (_%tl121666121681%_ (##cdr _%e121664121676%_)))
                        (if (and (gx#identifier? _%hd121665121679%_)
                                 (gx#core-identifier=?
                                  _%hd121665121679%_
                                  '%#declare))
                            (let ((_%xdecls121684%_ _%tl121666121681%_))
                              (if '#t
                                  (_%lp121574%_
                                   _%rest121650%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121577%_
                                    _%xdecls121684%_)
                                   _%bind121578%_
                                   _%body121579%_)
                                  (_%E121663121672%_)))
                            (_%E121663121672%_))))
                    (_%E121663121672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121652121718%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121651121668%_)
                                                            (let ((_%e121654121690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121651121668%_)))
                      (let ((_%hd121655121693%_ (##car _%e121654121690%_))
                            (_%tl121656121695%_ (##cdr _%e121654121690%_)))
                        (if (and (gx#identifier? _%hd121655121693%_)
                                 (gx#core-identifier=?
                                  _%hd121655121693%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121656121695%_)
                                (let ((_%e121657121698%_
                                       (gx#syntax-e _%tl121656121695%_)))
                                  (let ((_%hd121658121701%_
                                         (##car _%e121657121698%_))
                                        (_%tl121659121703%_
                                         (##cdr _%e121657121698%_)))
                                    (let ((_%hd-bind121706%_
                                           _%hd121658121701%_))
                                      (if (gx#stx-pair? _%tl121659121703%_)
                                          (let ((_%e121660121708%_
                                                 (gx#syntax-e
                                                  _%tl121659121703%_)))
                                            (let ((_%hd121661121711%_
                                                   (##car _%e121660121708%_))
                                                  (_%tl121662121713%_
                                                   (##cdr _%e121660121708%_)))
                                              (let ((_%expr121716%_
                                                     _%hd121661121711%_))
                                                (if (gx#stx-null?
                                                     _%tl121662121713%_)
                                                    (if '#t
                                                        (_%lp121574%_
                                                         _%rest121650%_
                                                         _%decls121577%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121706%_)
                             (cons (gx#core-expand-expression _%expr121716%_)
                                   '()))
                       _%bind121578%_)
                 _%body121579%_)
                (_%E121653121686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121653121686%_)))))
                                          (_%E121653121686%_)))))
                                (_%E121653121686%_))
                            (_%E121653121686%_))))
                    (_%E121653121686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121652121718%_))
                                              (_%E121582121636%_)))))
                                    (_%E121582121636%_)))))
                        (_%E121581121722%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121565%_)
            (gx#stx-source _%stx121564%_))
           _%expand-special121567%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121502%_)
        (let* ((_%e121503121510%_ _%stx121502%_)
               (_%E121505121514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121503121510%_)))
               (_%E121504121560%_
                (lambda ()
                  (if (gx#stx-pair? _%e121503121510%_)
                      (let ((_%e121506121518%_
                             (gx#syntax-e _%e121503121510%_)))
                        (let ((_%hd121507121521%_ (##car _%e121506121518%_))
                              (_%tl121508121523%_ (##cdr _%e121506121518%_)))
                          (let ((_%body121526%_ _%tl121508121523%_))
                            (if (gx#stx-list? _%body121526%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121528%_)
                                     (let* ((_%e121529121536%_ _%decl121528%_)
                                            (_%E121531121540%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121529121536%_)))
                                            (_%E121530121556%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121529121536%_)
                                                   (let ((_%e121532121544%_
                                                          (gx#syntax-e
                                                           _%e121529121536%_)))
                                                     (let ((_%hd121533121547%_
                                                            (##car _%e121532121544%_))
                                                           (_%tl121534121549%_
                                                            (##cdr _%e121532121544%_)))
                                                       (let* ((_%head121552%_
                                                               _%hd121533121547%_)
                                                              (_%args121554%_
                                                               _%tl121534121549%_))
                                                         (if (gx#stx-list?
                                                              _%args121554%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121528%_)
                                                             (_%E121531121540%_)))))
                                                   (_%E121531121540%_)))))
                                       (_%E121530121556%_)))
                                   _%body121526%_))
                                 (gx#stx-source _%stx121502%_))
                                (_%E121505121514%_)))))
                      (_%E121505121514%_)))))
          (_%E121504121560%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121406%_)
        (let* ((_%e121407121414%_ _%stx121406%_)
               (_%E121409121418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121407121414%_)))
               (_%E121408121498%_
                (lambda ()
                  (if (gx#stx-pair? _%e121407121414%_)
                      (let ((_%e121410121422%_
                             (gx#syntax-e _%e121407121414%_)))
                        (let ((_%hd121411121425%_ (##car _%e121410121422%_))
                              (_%tl121412121427%_ (##cdr _%e121410121422%_)))
                          (let ((_%body121430%_ _%tl121412121427%_))
                            (if '#t
                                (let _%lp121432%_ ((_%rest121434%_
                                                    _%body121430%_)
                                                   (_%r121435%_ '()))
                                  (let* ((_%e121436121450%_ _%rest121434%_)
                                         (_%E121448121454%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121406%_)))
                                         (_%E121438121458%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121436121450%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121435%_))
                                                     (gx#stx-source
                                                      _%stx121406%_))
                                                    (_%E121448121454%_))
                                                (_%E121448121454%_))))
                                         (_%E121437121494%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121436121450%_)
                                                (let ((_%e121439121462%_
                                                       (gx#syntax-e
                                                        _%e121436121450%_)))
                                                  (let ((_%hd121440121465%_
                                                         (##car _%e121439121462%_))
                                                        (_%tl121441121467%_
                                                         (##cdr _%e121439121462%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121440121465%_)
                                                        (let ((_%e121442121470%_
                                                               (gx#syntax-e
                                                                _%hd121440121465%_)))
                                                          (let ((_%hd121443121473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121442121470%_))
                        (_%tl121444121475%_ (##cdr _%e121442121470%_)))
                    (let ((_%id121478%_ _%hd121443121473%_))
                      (if (gx#stx-pair? _%tl121444121475%_)
                          (let ((_%e121445121480%_
                                 (gx#syntax-e _%tl121444121475%_)))
                            (let ((_%hd121446121483%_
                                   (##car _%e121445121480%_))
                                  (_%tl121447121485%_
                                   (##cdr _%e121445121480%_)))
                              (let ((_%eid121488%_ _%hd121446121483%_))
                                (if (gx#stx-null? _%tl121447121485%_)
                                    (let ((_%rest121490%_ _%tl121441121467%_))
                                      (if (and (gx#identifier? _%id121478%_)
                                               (gx#identifier? _%eid121488%_))
                                          (let ((_%eid121492%_
                                                 (gx#stx-e _%eid121488%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121478%_
                                             _%eid121492%_)
                                            (_%lp121432%_
                                             _%rest121490%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121478%_)
                                                         (cons _%eid121492%_
                                                               '()))
                                                   _%r121435%_)))
                                          (_%E121438121458%_)))
                                    (_%E121438121458%_)))))
                          (_%E121438121458%_)))))
                (_%E121438121458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121438121458%_)))))
                                    (_%E121437121494%_)))
                                (_%E121409121418%_)))))
                      (_%E121409121418%_)))))
          (_%E121408121498%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121352%_)
        (let* ((_%e121353121366%_ _%stx121352%_)
               (_%E121355121370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121353121366%_)))
               (_%E121354121402%_
                (lambda ()
                  (if (gx#stx-pair? _%e121353121366%_)
                      (let ((_%e121356121374%_
                             (gx#syntax-e _%e121353121366%_)))
                        (let ((_%hd121357121377%_ (##car _%e121356121374%_))
                              (_%tl121358121379%_ (##cdr _%e121356121374%_)))
                          (if (gx#stx-pair? _%tl121358121379%_)
                              (let ((_%e121359121382%_
                                     (gx#syntax-e _%tl121358121379%_)))
                                (let ((_%hd121360121385%_
                                       (##car _%e121359121382%_))
                                      (_%tl121361121387%_
                                       (##cdr _%e121359121382%_)))
                                  (let ((_%hd121390%_ _%hd121360121385%_))
                                    (if (gx#stx-pair? _%tl121361121387%_)
                                        (let ((_%e121362121392%_
                                               (gx#syntax-e
                                                _%tl121361121387%_)))
                                          (let ((_%hd121363121395%_
                                                 (##car _%e121362121392%_))
                                                (_%tl121364121397%_
                                                 (##cdr _%e121362121392%_)))
                                            (let ((_%expr121400%_
                                                   _%hd121363121395%_))
                                              (if (gx#stx-null?
                                                   _%tl121364121397%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121390%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121390%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121390%_)
                             (cons (gx#core-expand-expression _%expr121400%_)
                                   '())))
                 (gx#stx-source _%stx121352%_)))
              (_%E121355121370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121355121370%_)))))
                                        (_%E121355121370%_)))))
                              (_%E121355121370%_))))
                      (_%E121355121370%_)))))
          (_%E121354121402%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121296%_)
        (let* ((_%e121297121310%_ _%stx121296%_)
               (_%E121299121314%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121297121310%_)))
               (_%E121298121348%_
                (lambda ()
                  (if (gx#stx-pair? _%e121297121310%_)
                      (let ((_%e121300121318%_
                             (gx#syntax-e _%e121297121310%_)))
                        (let ((_%hd121301121321%_ (##car _%e121300121318%_))
                              (_%tl121302121323%_ (##cdr _%e121300121318%_)))
                          (if (gx#stx-pair? _%tl121302121323%_)
                              (let ((_%e121303121326%_
                                     (gx#syntax-e _%tl121302121323%_)))
                                (let ((_%hd121304121329%_
                                       (##car _%e121303121326%_))
                                      (_%tl121305121331%_
                                       (##cdr _%e121303121326%_)))
                                  (let ((_%id121334%_ _%hd121304121329%_))
                                    (if (gx#stx-pair? _%tl121305121331%_)
                                        (let ((_%e121306121336%_
                                               (gx#syntax-e
                                                _%tl121305121331%_)))
                                          (let ((_%hd121307121339%_
                                                 (##car _%e121306121336%_))
                                                (_%tl121308121341%_
                                                 (##cdr _%e121306121336%_)))
                                            (let ((_%binding-id121344%_
                                                   _%hd121307121339%_))
                                              (if (gx#stx-null?
                                                   _%tl121308121341%_)
                                                  (if (and (gx#identifier?
                                                            _%id121334%_)
                                                           (gx#identifier?
                                                            _%binding-id121344%_))
                                                      (let ((_%eid121346%_
                                                             (gx#stx-e
                                                              _%binding-id121344%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121334%_
                                                         _%eid121346%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121334%_)
                             (cons _%eid121346%_ '())))))
              (_%E121299121314%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121299121314%_)))))
                                        (_%E121299121314%_)))))
                              (_%E121299121314%_))))
                      (_%E121299121314%_)))))
          (_%E121298121348%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121239%_)
        (let* ((_%e121240121253%_ _%stx121239%_)
               (_%E121242121257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121240121253%_)))
               (_%E121241121292%_
                (lambda ()
                  (if (gx#stx-pair? _%e121240121253%_)
                      (let ((_%e121243121261%_
                             (gx#syntax-e _%e121240121253%_)))
                        (let ((_%hd121244121264%_ (##car _%e121243121261%_))
                              (_%tl121245121266%_ (##cdr _%e121243121261%_)))
                          (if (gx#stx-pair? _%tl121245121266%_)
                              (let ((_%e121246121269%_
                                     (gx#syntax-e _%tl121245121266%_)))
                                (let ((_%hd121247121272%_
                                       (##car _%e121246121269%_))
                                      (_%tl121248121274%_
                                       (##cdr _%e121246121269%_)))
                                  (let ((_%id121277%_ _%hd121247121272%_))
                                    (if (gx#stx-pair? _%tl121248121274%_)
                                        (let ((_%e121249121279%_
                                               (gx#syntax-e
                                                _%tl121248121274%_)))
                                          (let ((_%hd121250121282%_
                                                 (##car _%e121249121279%_))
                                                (_%tl121251121284%_
                                                 (##cdr _%e121249121279%_)))
                                            (let ((_%expr121287%_
                                                   _%hd121250121282%_))
                                              (if (gx#stx-null?
                                                   _%tl121251121284%_)
                                                  (if (gx#identifier?
                                                       _%id121277%_)
                                                      (let ((_g122198_
                                                             (gx#core-expand-expression+1
                                                              _%expr121287%_)))
                                                        (begin
                                                          (let ((_g122199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122198_)
                             (##vector-length _g122198_)
                             1)))
                    (if (not (##fx= _g122199_ 2))
                        (error "Context expects 2 values" _g122199_)))
                  (let ((_%e-stx121289%_ (##vector-ref _g122198_ 0))
                        (_%e121290%_ (##vector-ref _g122198_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121277%_ _%e121290%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121277%_)
                                   (cons _%e-stx121289%_ '())))
                       (gx#stx-source _%stx121239%_))))))
              (_%E121242121257%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121242121257%_)))))
                                        (_%E121242121257%_)))))
                              (_%E121242121257%_))))
                      (_%E121242121257%_)))))
          (_%E121241121292%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121183%_)
        (let* ((_%e121184121197%_ _%stx121183%_)
               (_%E121186121201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121184121197%_)))
               (_%E121185121235%_
                (lambda ()
                  (if (gx#stx-pair? _%e121184121197%_)
                      (let ((_%e121187121205%_
                             (gx#syntax-e _%e121184121197%_)))
                        (let ((_%hd121188121208%_ (##car _%e121187121205%_))
                              (_%tl121189121210%_ (##cdr _%e121187121205%_)))
                          (if (gx#stx-pair? _%tl121189121210%_)
                              (let ((_%e121190121213%_
                                     (gx#syntax-e _%tl121189121210%_)))
                                (let ((_%hd121191121216%_
                                       (##car _%e121190121213%_))
                                      (_%tl121192121218%_
                                       (##cdr _%e121190121213%_)))
                                  (let ((_%id121221%_ _%hd121191121216%_))
                                    (if (gx#stx-pair? _%tl121192121218%_)
                                        (let ((_%e121193121223%_
                                               (gx#syntax-e
                                                _%tl121192121218%_)))
                                          (let ((_%hd121194121226%_
                                                 (##car _%e121193121223%_))
                                                (_%tl121195121228%_
                                                 (##cdr _%e121193121223%_)))
                                            (let ((_%alias-id121231%_
                                                   _%hd121194121226%_))
                                              (if (gx#stx-null?
                                                   _%tl121195121228%_)
                                                  (if (and (gx#identifier?
                                                            _%id121221%_)
                                                           (gx#identifier?
                                                            _%alias-id121231%_))
                                                      (let ((_%alias-id121233%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121231%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121221%_
                                                         _%alias-id121233%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121221%_)
                             (cons _%alias-id121233%_ '())))))
              (_%E121186121201%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121186121201%_)))))
                                        (_%E121186121201%_)))))
                              (_%E121186121201%_))))
                      (_%E121186121201%_)))))
          (_%E121185121235%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121126%_ _%wrap?121127%_)
        (let* ((_%e121128121138%_ _%stx121126%_)
               (_%E121130121142%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121128121138%_)))
               (_%E121129121169%_
                (lambda ()
                  (if (gx#stx-pair? _%e121128121138%_)
                      (let ((_%e121131121146%_
                             (gx#syntax-e _%e121128121138%_)))
                        (let ((_%hd121132121149%_ (##car _%e121131121146%_))
                              (_%tl121133121151%_ (##cdr _%e121131121146%_)))
                          (if (gx#stx-pair? _%tl121133121151%_)
                              (let ((_%e121134121154%_
                                     (gx#syntax-e _%tl121133121151%_)))
                                (let ((_%hd121135121157%_
                                       (##car _%e121134121154%_))
                                      (_%tl121136121159%_
                                       (##cdr _%e121134121154%_)))
                                  (let* ((_%hd121162%_ _%hd121135121157%_)
                                         (_%body121164%_ _%tl121136121159%_))
                                    (if (gx#core-bind-values? _%hd121162%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121162%_)
                                           (let ((_%body121167%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121162%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121126%_
                                                               _%body121164%_)
                                                              '()))))
                                             (if _%wrap?121127%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121167%_)
                                                  (gx#stx-source
                                                   _%stx121126%_))
                                                 _%body121167%_)))
                                         gx#current-expander-context
                                         (let ((__obj122191
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122191)
                                           __obj122191))
                                        (_%E121130121142%_)))))
                              (_%E121130121142%_))))
                      (_%E121130121142%_)))))
          (_%E121129121169%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121176%_)
        (let ((_%wrap?121178%_ '#t))
          (gx#core-expand-lambda%__% _%stx121176%_ _%wrap?121178%_))))
    (define gx#core-expand-lambda%
      (lambda _g122201_
        (let ((_g122200_ (##length _g122201_)))
          (cond ((##fx= _g122200_ 1)
                 (apply gx#core-expand-lambda%__0 _g122201_))
                ((##fx= _g122200_ 2)
                 (apply gx#core-expand-lambda%__% _g122201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122201_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx121090%_)
        (let* ((_%e121091121098%_ _%stx121090%_)
               (_%E121093121102%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121091121098%_)))
               (_%E121092121121%_
                (lambda ()
                  (if (gx#stx-pair? _%e121091121098%_)
                      (let ((_%e121094121106%_
                             (gx#syntax-e _%e121091121098%_)))
                        (let ((_%hd121095121109%_ (##car _%e121094121106%_))
                              (_%tl121096121111%_ (##cdr _%e121094121106%_)))
                          (let ((_%clauses121114%_ _%tl121096121111%_))
                            (if (gx#stx-list? _%clauses121114%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121116%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121116%_)
                                       (let ((_%$e121118%_
                                              (gx#stx-source
                                               _%clause121116%_)))
                                         (if _%$e121118%_
                                             _%$e121118%_
                                             (gx#stx-source _%stx121090%_))))
                                      '#f))
                                   _%clauses121114%_))
                                 (gx#stx-source _%stx121090%_))
                                (_%E121093121102%_)))))
                      (_%E121093121102%_)))))
          (_%E121092121121%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx121044%_)
        (let* ((_%e121045121055%_ _%stx121044%_)
               (_%E121047121059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121045121055%_)))
               (_%E121046121086%_
                (lambda ()
                  (if (gx#stx-pair? _%e121045121055%_)
                      (let ((_%e121048121063%_
                             (gx#syntax-e _%e121045121055%_)))
                        (let ((_%hd121049121066%_ (##car _%e121048121063%_))
                              (_%tl121050121068%_ (##cdr _%e121048121063%_)))
                          (if (gx#stx-pair? _%tl121050121068%_)
                              (let ((_%e121051121071%_
                                     (gx#syntax-e _%tl121050121068%_)))
                                (let ((_%hd121052121074%_
                                       (##car _%e121051121071%_))
                                      (_%tl121053121076%_
                                       (##cdr _%e121051121071%_)))
                                  (let* ((_%hd121079%_ _%hd121052121074%_)
                                         (_%body121081%_ _%tl121053121076%_))
                                    (if (gx#core-expand-let-bind? _%hd121079%_)
                                        (let ((_%expressions121083%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd121079%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd121079%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd121079%_
                                                           _%expressions121083%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx121044%_
                         _%body121081%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx121044%_)))
                                           gx#current-expander-context
                                           (let ((__obj122192
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122192)
                                             __obj122192)))
                                        (_%E121047121059%_)))))
                              (_%E121047121059%_))))
                      (_%E121047121059%_)))))
          (_%E121046121086%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120989%_ _%form120990%_)
        (let* ((_%e120991121001%_ _%stx120989%_)
               (_%E120993121005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120991121001%_)))
               (_%E120992121030%_
                (lambda ()
                  (if (gx#stx-pair? _%e120991121001%_)
                      (let ((_%e120994121009%_
                             (gx#syntax-e _%e120991121001%_)))
                        (let ((_%hd120995121012%_ (##car _%e120994121009%_))
                              (_%tl120996121014%_ (##cdr _%e120994121009%_)))
                          (if (gx#stx-pair? _%tl120996121014%_)
                              (let ((_%e120997121017%_
                                     (gx#syntax-e _%tl120996121014%_)))
                                (let ((_%hd120998121020%_
                                       (##car _%e120997121017%_))
                                      (_%tl120999121022%_
                                       (##cdr _%e120997121017%_)))
                                  (let* ((_%hd121025%_ _%hd120998121020%_)
                                         (_%body121027%_ _%tl120999121022%_))
                                    (if (gx#core-expand-let-bind? _%hd121025%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd121025%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120990%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd121025%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd121025%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120989%_
                                                               _%body121027%_)
                                                              '())))
                                            (gx#stx-source _%stx120989%_)))
                                         gx#current-expander-context
                                         (let ((__obj122193
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122193)
                                           __obj122193))
                                        (_%E120993121005%_)))))
                              (_%E120993121005%_))))
                      (_%E120993121005%_)))))
          (_%E120992121030%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx121037%_)
        (let ((_%form121039%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx121037%_ _%form121039%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122203_
        (let ((_g122202_ (##length _g122203_)))
          (cond ((##fx= _g122202_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g122203_))
                ((##fx= _g122202_ 2)
                 (apply gx#core-expand-letrec-values%__% _g122203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122203_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120986%_)
        (gx#core-expand-letrec-values%__% _%stx120986%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120943%_)
        (if (gx#stx-list? _%stx120943%_)
            (gx#stx-andmap
             (lambda (_%bind120945%_)
               (let* ((_%e120946120956%_ _%bind120945%_)
                      (_%E120948120960%_ (lambda () '#f))
                      (_%E120947120982%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120946120956%_)
                             (let ((_%e120949120964%_
                                    (gx#syntax-e _%e120946120956%_)))
                               (let ((_%hd120950120967%_
                                      (##car _%e120949120964%_))
                                     (_%tl120951120969%_
                                      (##cdr _%e120949120964%_)))
                                 (let ((_%hd120972%_ _%hd120950120967%_))
                                   (if (gx#stx-pair? _%tl120951120969%_)
                                       (let ((_%e120952120974%_
                                              (gx#syntax-e
                                               _%tl120951120969%_)))
                                         (let ((_%hd120953120977%_
                                                (##car _%e120952120974%_))
                                               (_%tl120954120979%_
                                                (##cdr _%e120952120974%_)))
                                           (if (gx#stx-null?
                                                _%tl120954120979%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120972%_)
                                                   (_%E120948120960%_))
                                               (_%E120948120960%_))))
                                       (_%E120948120960%_)))))
                             (_%E120948120960%_)))))
                 (_%E120947120982%_)))
             _%stx120943%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120902%_)
        (let* ((_%e120903120913%_ _%bind120902%_)
               (_%E120905120917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120903120913%_)))
               (_%E120904120939%_
                (lambda ()
                  (if (gx#stx-pair? _%e120903120913%_)
                      (let ((_%e120906120921%_
                             (gx#syntax-e _%e120903120913%_)))
                        (let ((_%hd120907120924%_ (##car _%e120906120921%_))
                              (_%tl120908120926%_ (##cdr _%e120906120921%_)))
                          (if (gx#stx-pair? _%tl120908120926%_)
                              (let ((_%e120909120929%_
                                     (gx#syntax-e _%tl120908120926%_)))
                                (let ((_%hd120910120932%_
                                       (##car _%e120909120929%_))
                                      (_%tl120911120934%_
                                       (##cdr _%e120909120929%_)))
                                  (let ((_%expr120937%_ _%hd120910120932%_))
                                    (if (gx#stx-null? _%tl120911120934%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120937%_)
                                            (_%E120905120917%_))
                                        (_%E120905120917%_)))))
                              (_%E120905120917%_))))
                      (_%E120905120917%_)))))
          (_%E120904120939%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120861%_)
        (let* ((_%e120862120872%_ _%bind120861%_)
               (_%E120864120876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120862120872%_)))
               (_%E120863120898%_
                (lambda ()
                  (if (gx#stx-pair? _%e120862120872%_)
                      (let ((_%e120865120880%_
                             (gx#syntax-e _%e120862120872%_)))
                        (let ((_%hd120866120883%_ (##car _%e120865120880%_))
                              (_%tl120867120885%_ (##cdr _%e120865120880%_)))
                          (let ((_%hd120888%_ _%hd120866120883%_))
                            (if (gx#stx-pair? _%tl120867120885%_)
                                (let ((_%e120868120890%_
                                       (gx#syntax-e _%tl120867120885%_)))
                                  (let ((_%hd120869120893%_
                                         (##car _%e120868120890%_))
                                        (_%tl120870120895%_
                                         (##cdr _%e120868120890%_)))
                                    (if (gx#stx-null? _%tl120870120895%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120888%_)
                                            (_%E120864120876%_))
                                        (_%E120864120876%_))))
                                (_%E120864120876%_)))))
                      (_%E120864120876%_)))))
          (_%E120863120898%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120819%_ _%expr120820%_)
        (let* ((_%e120821120831%_ _%bind120819%_)
               (_%E120823120835%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120821120831%_)))
               (_%E120822120857%_
                (lambda ()
                  (if (gx#stx-pair? _%e120821120831%_)
                      (let ((_%e120824120839%_
                             (gx#syntax-e _%e120821120831%_)))
                        (let ((_%hd120825120842%_ (##car _%e120824120839%_))
                              (_%tl120826120844%_ (##cdr _%e120824120839%_)))
                          (let ((_%hd120847%_ _%hd120825120842%_))
                            (if (gx#stx-pair? _%tl120826120844%_)
                                (let ((_%e120827120849%_
                                       (gx#syntax-e _%tl120826120844%_)))
                                  (let ((_%hd120828120852%_
                                         (##car _%e120827120849%_))
                                        (_%tl120829120854%_
                                         (##cdr _%e120827120849%_)))
                                    (if (gx#stx-null? _%tl120829120854%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120847%_)
                                                  (cons _%expr120820%_ '()))
                                            (_%E120823120835%_))
                                        (_%E120823120835%_))))
                                (_%E120823120835%_)))))
                      (_%E120823120835%_)))))
          (_%E120822120857%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120773%_)
        (let* ((_%e120774120784%_ _%stx120773%_)
               (_%E120776120788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120774120784%_)))
               (_%E120775120815%_
                (lambda ()
                  (if (gx#stx-pair? _%e120774120784%_)
                      (let ((_%e120777120792%_
                             (gx#syntax-e _%e120774120784%_)))
                        (let ((_%hd120778120795%_ (##car _%e120777120792%_))
                              (_%tl120779120797%_ (##cdr _%e120777120792%_)))
                          (if (gx#stx-pair? _%tl120779120797%_)
                              (let ((_%e120780120800%_
                                     (gx#syntax-e _%tl120779120797%_)))
                                (let ((_%hd120781120803%_
                                       (##car _%e120780120800%_))
                                      (_%tl120782120805%_
                                       (##cdr _%e120780120800%_)))
                                  (let* ((_%hd120808%_ _%hd120781120803%_)
                                         (_%body120810%_ _%tl120782120805%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120808%_)
                                        (let ((_%expanders120812%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120808%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120808%_
                                              _%expanders120812%_)
                                             (gx#core-expand-local-block
                                              _%stx120773%_
                                              _%body120810%_))
                                           gx#current-expander-context
                                           (let ((__obj122194
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122194)
                                             __obj122194)))
                                        (_%E120776120788%_)))))
                              (_%E120776120788%_))))
                      (_%E120776120788%_)))))
          (_%E120775120815%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120722%_)
        (let* ((_%e120723120733%_ _%stx120722%_)
               (_%E120725120737%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120723120733%_)))
               (_%E120724120769%_
                (lambda ()
                  (if (gx#stx-pair? _%e120723120733%_)
                      (let ((_%e120726120741%_
                             (gx#syntax-e _%e120723120733%_)))
                        (let ((_%hd120727120744%_ (##car _%e120726120741%_))
                              (_%tl120728120746%_ (##cdr _%e120726120741%_)))
                          (if (gx#stx-pair? _%tl120728120746%_)
                              (let ((_%e120729120749%_
                                     (gx#syntax-e _%tl120728120746%_)))
                                (let ((_%hd120730120752%_
                                       (##car _%e120729120749%_))
                                      (_%tl120731120754%_
                                       (##cdr _%e120729120749%_)))
                                  (let* ((_%hd120757%_ _%hd120730120752%_)
                                         (_%body120759%_ _%tl120731120754%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120757%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120757%_
                                            (make-list
                                             (gx#stx-length _%hd120757%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120761120764%_
                                                     _%g120762120766%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120761120764%_
                                               _%g120762120766%_
                                               '#t))
                                            _%hd120757%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120757%_))
                                           (gx#core-expand-local-block
                                            _%stx120722%_
                                            _%body120759%_))
                                         gx#current-expander-context
                                         (let ((__obj122195
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122195)
                                           __obj122195))
                                        (_%E120725120737%_)))))
                              (_%E120725120737%_))))
                      (_%E120725120737%_)))))
          (_%E120724120769%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120679%_)
        (if (gx#stx-list? _%stx120679%_)
            (gx#stx-andmap
             (lambda (_%bind120681%_)
               (let* ((_%e120682120692%_ _%bind120681%_)
                      (_%E120684120696%_ (lambda () '#f))
                      (_%E120683120718%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120682120692%_)
                             (let ((_%e120685120700%_
                                    (gx#syntax-e _%e120682120692%_)))
                               (let ((_%hd120686120703%_
                                      (##car _%e120685120700%_))
                                     (_%tl120687120705%_
                                      (##cdr _%e120685120700%_)))
                                 (let ((_%hd120708%_ _%hd120686120703%_))
                                   (if (gx#stx-pair? _%tl120687120705%_)
                                       (let ((_%e120688120710%_
                                              (gx#syntax-e
                                               _%tl120687120705%_)))
                                         (let ((_%hd120689120713%_
                                                (##car _%e120688120710%_))
                                               (_%tl120690120715%_
                                                (##cdr _%e120688120710%_)))
                                           (if (gx#stx-null?
                                                _%tl120690120715%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120708%_)
                                                   (_%E120684120696%_))
                                               (_%E120684120696%_))))
                                       (_%E120684120696%_)))))
                             (_%E120684120696%_)))))
                 (_%E120683120718%_)))
             _%stx120679%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120635%_)
        (let* ((_%e120636120646%_ _%bind120635%_)
               (_%E120638120650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120636120646%_)))
               (_%E120637120675%_
                (lambda ()
                  (if (gx#stx-pair? _%e120636120646%_)
                      (let ((_%e120639120654%_
                             (gx#syntax-e _%e120636120646%_)))
                        (let ((_%hd120640120657%_ (##car _%e120639120654%_))
                              (_%tl120641120659%_ (##cdr _%e120639120654%_)))
                          (if (gx#stx-pair? _%tl120641120659%_)
                              (let ((_%e120642120662%_
                                     (gx#syntax-e _%tl120641120659%_)))
                                (let ((_%hd120643120665%_
                                       (##car _%e120642120662%_))
                                      (_%tl120644120667%_
                                       (##cdr _%e120642120662%_)))
                                  (let ((_%expr120670%_ _%hd120643120665%_))
                                    (if (gx#stx-null? _%tl120644120667%_)
                                        (if '#t
                                            (let ((_g122204_
                                                   (gx#core-expand-expression+1
                                                    _%expr120670%_)))
                                              (begin
                                                (let ((_g122205_
                                                       (if (##values?
                                                            _g122204_)
                                                           (##vector-length
                                                            _g122204_)
                                                           1)))
                                                  (if (not (##fx= _g122205_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122205_)))
                                                (let ((_%_120672%_
                                                       (##vector-ref
                                                        _g122204_
                                                        0))
                                                      (_%e120673%_
                                                       (##vector-ref
                                                        _g122204_
                                                        1)))
                                                  _%e120673%_)))
                                            (_%E120638120650%_))
                                        (_%E120638120650%_)))))
                              (_%E120638120650%_))))
                      (_%E120638120650%_)))))
          (_%E120637120675%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120580%_ _%e120581%_ _%rebind?120582%_)
        (let* ((_%e120583120593%_ _%bind120580%_)
               (_%E120585120597%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120583120593%_)))
               (_%E120584120619%_
                (lambda ()
                  (if (gx#stx-pair? _%e120583120593%_)
                      (let ((_%e120586120601%_
                             (gx#syntax-e _%e120583120593%_)))
                        (let ((_%hd120587120604%_ (##car _%e120586120601%_))
                              (_%tl120588120606%_ (##cdr _%e120586120601%_)))
                          (let ((_%id120609%_ _%hd120587120604%_))
                            (if (gx#stx-pair? _%tl120588120606%_)
                                (let ((_%e120589120611%_
                                       (gx#syntax-e _%tl120588120606%_)))
                                  (let ((_%hd120590120614%_
                                         (##car _%e120589120611%_))
                                        (_%tl120591120616%_
                                         (##cdr _%e120589120611%_)))
                                    (if (gx#stx-null? _%tl120591120616%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120609%_
                                             _%e120581%_
                                             _%rebind?120582%_)
                                            (_%E120585120597%_))
                                        (_%E120585120597%_))))
                                (_%E120585120597%_)))))
                      (_%E120585120597%_)))))
          (_%E120584120619%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120626%_ _%e120627%_)
        (let ((_%rebind?120629%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120626%_
           _%e120627%_
           _%rebind?120629%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122207_
        (let ((_g122206_ (##length _g122207_)))
          (cond ((##fx= _g122206_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g122207_))
                ((##fx= _g122206_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g122207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122207_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120538%_)
        (let* ((_%e120539120549%_ _%stx120538%_)
               (_%E120541120553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120539120549%_)))
               (_%E120540120575%_
                (lambda ()
                  (if (gx#stx-pair? _%e120539120549%_)
                      (let ((_%e120542120557%_
                             (gx#syntax-e _%e120539120549%_)))
                        (let ((_%hd120543120560%_ (##car _%e120542120557%_))
                              (_%tl120544120562%_ (##cdr _%e120542120557%_)))
                          (if (gx#stx-pair? _%tl120544120562%_)
                              (let ((_%e120545120565%_
                                     (gx#syntax-e _%tl120544120562%_)))
                                (let ((_%hd120546120568%_
                                       (##car _%e120545120565%_))
                                      (_%tl120547120570%_
                                       (##cdr _%e120545120565%_)))
                                  (let ((_%expr120573%_ _%hd120546120568%_))
                                    (if (gx#stx-null? _%tl120547120570%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120573%_)
                                            (_%E120541120553%_))
                                        (_%E120541120553%_)))))
                              (_%E120541120553%_))))
                      (_%E120541120553%_)))))
          (_%E120540120575%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120497%_)
        (let* ((_%e120498120508%_ _%stx120497%_)
               (_%E120500120512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120498120508%_)))
               (_%E120499120534%_
                (lambda ()
                  (if (gx#stx-pair? _%e120498120508%_)
                      (let ((_%e120501120516%_
                             (gx#syntax-e _%e120498120508%_)))
                        (let ((_%hd120502120519%_ (##car _%e120501120516%_))
                              (_%tl120503120521%_ (##cdr _%e120501120516%_)))
                          (if (gx#stx-pair? _%tl120503120521%_)
                              (let ((_%e120504120524%_
                                     (gx#syntax-e _%tl120503120521%_)))
                                (let ((_%hd120505120527%_
                                       (##car _%e120504120524%_))
                                      (_%tl120506120529%_
                                       (##cdr _%e120504120524%_)))
                                  (let ((_%e120532%_ _%hd120505120527%_))
                                    (if (gx#stx-null? _%tl120506120529%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120532%_)
                                                         '()))
                                             (gx#stx-source _%stx120497%_))
                                            (_%E120500120512%_))
                                        (_%E120500120512%_)))))
                              (_%E120500120512%_))))
                      (_%E120500120512%_)))))
          (_%E120499120534%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120456%_)
        (let* ((_%e120457120467%_ _%stx120456%_)
               (_%E120459120471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120457120467%_)))
               (_%E120458120493%_
                (lambda ()
                  (if (gx#stx-pair? _%e120457120467%_)
                      (let ((_%e120460120475%_
                             (gx#syntax-e _%e120457120467%_)))
                        (let ((_%hd120461120478%_ (##car _%e120460120475%_))
                              (_%tl120462120480%_ (##cdr _%e120460120475%_)))
                          (if (gx#stx-pair? _%tl120462120480%_)
                              (let ((_%e120463120483%_
                                     (gx#syntax-e _%tl120462120480%_)))
                                (let ((_%hd120464120486%_
                                       (##car _%e120463120483%_))
                                      (_%tl120465120488%_
                                       (##cdr _%e120463120483%_)))
                                  (let ((_%e120491%_ _%hd120464120486%_))
                                    (if (gx#stx-null? _%tl120465120488%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120491%_)
                                                         '()))
                                             (gx#stx-source _%stx120456%_))
                                            (_%E120459120471%_))
                                        (_%E120459120471%_)))))
                              (_%E120459120471%_))))
                      (_%E120459120471%_)))))
          (_%E120458120493%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120413%_)
        (let* ((_%e120414120424%_ _%stx120413%_)
               (_%E120416120428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120414120424%_)))
               (_%E120415120452%_
                (lambda ()
                  (if (gx#stx-pair? _%e120414120424%_)
                      (let ((_%e120417120432%_
                             (gx#syntax-e _%e120414120424%_)))
                        (let ((_%hd120418120435%_ (##car _%e120417120432%_))
                              (_%tl120419120437%_ (##cdr _%e120417120432%_)))
                          (if (gx#stx-pair? _%tl120419120437%_)
                              (let ((_%e120420120440%_
                                     (gx#syntax-e _%tl120419120437%_)))
                                (let ((_%hd120421120443%_
                                       (##car _%e120420120440%_))
                                      (_%tl120422120445%_
                                       (##cdr _%e120420120440%_)))
                                  (let* ((_%rator120448%_ _%hd120421120443%_)
                                         (_%args120450%_ _%tl120422120445%_))
                                    (if (gx#stx-list? _%args120450%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120448%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120450%_))
                                         (gx#stx-source _%stx120413%_))
                                        (_%E120416120428%_)))))
                              (_%E120416120428%_))))
                      (_%E120416120428%_)))))
          (_%E120415120452%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120346%_)
        (let* ((_%e120347120363%_ _%stx120346%_)
               (_%E120349120367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120347120363%_)))
               (_%E120348120409%_
                (lambda ()
                  (if (gx#stx-pair? _%e120347120363%_)
                      (let ((_%e120350120371%_
                             (gx#syntax-e _%e120347120363%_)))
                        (let ((_%hd120351120374%_ (##car _%e120350120371%_))
                              (_%tl120352120376%_ (##cdr _%e120350120371%_)))
                          (if (gx#stx-pair? _%tl120352120376%_)
                              (let ((_%e120353120379%_
                                     (gx#syntax-e _%tl120352120376%_)))
                                (let ((_%hd120354120382%_
                                       (##car _%e120353120379%_))
                                      (_%tl120355120384%_
                                       (##cdr _%e120353120379%_)))
                                  (let ((_%test120387%_ _%hd120354120382%_))
                                    (if (gx#stx-pair? _%tl120355120384%_)
                                        (let ((_%e120356120389%_
                                               (gx#syntax-e
                                                _%tl120355120384%_)))
                                          (let ((_%hd120357120392%_
                                                 (##car _%e120356120389%_))
                                                (_%tl120358120394%_
                                                 (##cdr _%e120356120389%_)))
                                            (let ((_%K120397%_
                                                   _%hd120357120392%_))
                                              (if (gx#stx-pair?
                                                   _%tl120358120394%_)
                                                  (let ((_%e120359120399%_
                                                         (gx#syntax-e
                                                          _%tl120358120394%_)))
                                                    (let ((_%hd120360120402%_
                                                           (##car _%e120359120399%_))
                                                          (_%tl120361120404%_
                                                           (##cdr _%e120359120399%_)))
                                                      (let ((_%E120407%_
                                                             _%hd120360120402%_))
                                                        (if (gx#stx-null?
                                                             _%tl120361120404%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120387%_)
                                     (cons (gx#core-expand-expression
                                            _%K120397%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120407%_)
                                                 '()))))
                         (gx#stx-source _%stx120346%_))
                        (_%E120349120367%_))
                    (_%E120349120367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120349120367%_)))))
                                        (_%E120349120367%_)))))
                              (_%E120349120367%_))))
                      (_%E120349120367%_)))))
          (_%E120348120409%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120305%_)
        (let* ((_%e120306120316%_ _%stx120305%_)
               (_%E120308120320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120306120316%_)))
               (_%E120307120342%_
                (lambda ()
                  (if (gx#stx-pair? _%e120306120316%_)
                      (let ((_%e120309120324%_
                             (gx#syntax-e _%e120306120316%_)))
                        (let ((_%hd120310120327%_ (##car _%e120309120324%_))
                              (_%tl120311120329%_ (##cdr _%e120309120324%_)))
                          (if (gx#stx-pair? _%tl120311120329%_)
                              (let ((_%e120312120332%_
                                     (gx#syntax-e _%tl120311120329%_)))
                                (let ((_%hd120313120335%_
                                       (##car _%e120312120332%_))
                                      (_%tl120314120337%_
                                       (##cdr _%e120312120332%_)))
                                  (let ((_%id120340%_ _%hd120313120335%_))
                                    (if (gx#stx-null? _%tl120314120337%_)
                                        (if (gx#identifier? _%id120340%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120340%_
                                                          _%stx120305%_)
                                                         '()))
                                             (gx#stx-source _%stx120305%_))
                                            (_%E120308120320%_))
                                        (_%E120308120320%_)))))
                              (_%E120308120320%_))))
                      (_%E120308120320%_)))))
          (_%E120307120342%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120251%_)
        (let* ((_%e120252120265%_ _%stx120251%_)
               (_%E120254120269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120252120265%_)))
               (_%E120253120301%_
                (lambda ()
                  (if (gx#stx-pair? _%e120252120265%_)
                      (let ((_%e120255120273%_
                             (gx#syntax-e _%e120252120265%_)))
                        (let ((_%hd120256120276%_ (##car _%e120255120273%_))
                              (_%tl120257120278%_ (##cdr _%e120255120273%_)))
                          (if (gx#stx-pair? _%tl120257120278%_)
                              (let ((_%e120258120281%_
                                     (gx#syntax-e _%tl120257120278%_)))
                                (let ((_%hd120259120284%_
                                       (##car _%e120258120281%_))
                                      (_%tl120260120286%_
                                       (##cdr _%e120258120281%_)))
                                  (let ((_%id120289%_ _%hd120259120284%_))
                                    (if (gx#stx-pair? _%tl120260120286%_)
                                        (let ((_%e120261120291%_
                                               (gx#syntax-e
                                                _%tl120260120286%_)))
                                          (let ((_%hd120262120294%_
                                                 (##car _%e120261120291%_))
                                                (_%tl120263120296%_
                                                 (##cdr _%e120261120291%_)))
                                            (let ((_%expr120299%_
                                                   _%hd120262120294%_))
                                              (if (gx#stx-null?
                                                   _%tl120263120296%_)
                                                  (if (gx#identifier?
                                                       _%id120289%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120289%_
                            _%stx120251%_)
                           (cons (gx#core-expand-expression _%expr120299%_)
                                 '())))
               (gx#stx-source _%stx120251%_))
              (_%E120254120269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120254120269%_)))))
                                        (_%E120254120269%_)))))
                              (_%E120254120269%_))))
                      (_%E120254120269%_)))))
          (_%E120253120301%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx120096%_)
        (letrec ((_%generate120098%_
                  (lambda (_%body120128%_)
                    (let _%lp120130%_ ((_%rest120132%_ _%body120128%_)
                                       (_%ns120133%_
                                        (gx#core-context-namespace__0))
                                       (_%r120134%_ '()))
                      (let* ((_%e120135120150%_ _%rest120132%_)
                             (_%E120148120154%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120135120150%_)))
                             (_%E120144120158%_
                              (lambda ()
                                (if (gx#stx-null? _%e120135120150%_)
                                    (if '#t
                                        (reverse _%r120134%_)
                                        (_%E120148120154%_))
                                    (_%E120148120154%_))))
                             (_%E120137120215%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120135120150%_)
                                    (let ((_%e120145120162%_
                                           (gx#syntax-e _%e120135120150%_)))
                                      (let ((_%hd120146120165%_
                                             (##car _%e120145120162%_))
                                            (_%tl120147120167%_
                                             (##cdr _%e120145120162%_)))
                                        (let* ((_%hd120170%_
                                                _%hd120146120165%_)
                                               (_%rest120172%_
                                                _%tl120147120167%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120170%_)
                                                  (_%lp120130%_
                                                   _%rest120172%_
                                                   _%ns120133%_
                                                   (cons (cons _%hd120170%_
                                                               (cons (if _%ns120133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120170%_
                                  _%ns120133%_
                                  '"#"
                                  _%hd120170%_)
                                 _%hd120170%_)
                             '()))
                 _%r120134%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120173120183%_
                                                          _%hd120170%_)
                                                         (_%E120175120187%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120173120183%_)))
                                                         (_%E120174120211%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120173120183%_)
                        (let ((_%e120176120191%_
                               (gx#syntax-e _%e120173120183%_)))
                          (let ((_%hd120177120194%_ (##car _%e120176120191%_))
                                (_%tl120178120196%_ (##cdr _%e120176120191%_)))
                            (let ((_%id120199%_ _%hd120177120194%_))
                              (if (gx#stx-pair? _%tl120178120196%_)
                                  (let ((_%e120179120201%_
                                         (gx#syntax-e _%tl120178120196%_)))
                                    (let ((_%hd120180120204%_
                                           (##car _%e120179120201%_))
                                          (_%tl120181120206%_
                                           (##cdr _%e120179120201%_)))
                                      (let ((_%eid120209%_ _%hd120180120204%_))
                                        (if (gx#stx-null? _%tl120181120206%_)
                                            (if (and (gx#identifier?
                                                      _%id120199%_)
                                                     (gx#identifier?
                                                      _%eid120209%_))
                                                (_%lp120130%_
                                                 _%rest120172%_
                                                 _%ns120133%_
                                                 (cons (cons _%id120199%_
                                                             (cons _%eid120209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120134%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120175120187%_))
                                            (_%E120175120187%_)))))
                                  (_%E120175120187%_)))))
                        (_%E120175120187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120174120211%_)))
                                              (_%E120144120158%_)))))
                                    (_%E120144120158%_))))
                             (_%E120136120247%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120135120150%_)
                                    (let ((_%e120138120219%_
                                           (gx#syntax-e _%e120135120150%_)))
                                      (let ((_%hd120139120222%_
                                             (##car _%e120138120219%_))
                                            (_%tl120140120224%_
                                             (##cdr _%e120138120219%_)))
                                        (if (eq? (gx#stx-e _%hd120139120222%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120140120224%_)
                                                (let ((_%e120141120227%_
                                                       (gx#syntax-e
                                                        _%tl120140120224%_)))
                                                  (let ((_%hd120142120230%_
                                                         (##car _%e120141120227%_))
                                                        (_%tl120143120232%_
                                                         (##cdr _%e120141120227%_)))
                                                    (let* ((_%ns120235%_
                                                            _%hd120142120230%_)
                                                           (_%rest120237%_
                                                            _%tl120143120232%_))
                                                      (if '#t
                                                          (let ((_%ns120245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120235%_)
                             (symbol->string (gx#stx-e _%ns120235%_))
                             (if (or (gx#stx-string? _%ns120235%_)
                                     (gx#stx-false? _%ns120235%_))
                                 (gx#stx-e _%ns120235%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx120096%_
                                  _%ns120235%_)))))
                    (_%lp120130%_ _%rest120237%_ _%ns120245%_ _%r120134%_))
                  (_%E120137120215%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120137120215%_))
                                            (_%E120137120215%_))))
                                    (_%E120137120215%_)))))
                        (_%E120136120247%_))))))
          (let* ((_%e120099120106%_ _%stx120096%_)
                 (_%E120101120110%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120099120106%_)))
                 (_%E120100120124%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120099120106%_)
                        (let ((_%e120102120114%_
                               (gx#syntax-e _%e120099120106%_)))
                          (let ((_%hd120103120117%_ (##car _%e120102120114%_))
                                (_%tl120104120119%_ (##cdr _%e120102120114%_)))
                            (let ((_%body120122%_ _%tl120104120119%_))
                              (if (gx#stx-list? _%body120122%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate120098%_ _%body120122%_))
                                  (_%E120101120110%_)))))
                        (_%E120101120110%_)))))
            (_%E120100120124%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx120042%_)
        (let* ((_%e120043120056%_ _%stx120042%_)
               (_%E120045120060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120043120056%_)))
               (_%E120044120092%_
                (lambda ()
                  (if (gx#stx-pair? _%e120043120056%_)
                      (let ((_%e120046120064%_
                             (gx#syntax-e _%e120043120056%_)))
                        (let ((_%hd120047120067%_ (##car _%e120046120064%_))
                              (_%tl120048120069%_ (##cdr _%e120046120064%_)))
                          (if (gx#stx-pair? _%tl120048120069%_)
                              (let ((_%e120049120072%_
                                     (gx#syntax-e _%tl120048120069%_)))
                                (let ((_%hd120050120075%_
                                       (##car _%e120049120072%_))
                                      (_%tl120051120077%_
                                       (##cdr _%e120049120072%_)))
                                  (let ((_%hd120080%_ _%hd120050120075%_))
                                    (if (gx#stx-pair? _%tl120051120077%_)
                                        (let ((_%e120052120082%_
                                               (gx#syntax-e
                                                _%tl120051120077%_)))
                                          (let ((_%hd120053120085%_
                                                 (##car _%e120052120082%_))
                                                (_%tl120054120087%_
                                                 (##cdr _%e120052120082%_)))
                                            (let ((_%expr120090%_
                                                   _%hd120053120085%_))
                                              (if (gx#stx-null?
                                                   _%tl120054120087%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd120080%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd120080%_)
                          (cons _%expr120090%_ '())))
              (_%E120045120060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120045120060%_)))))
                                        (_%E120045120060%_)))))
                              (_%E120045120060%_))))
                      (_%E120045120060%_)))))
          (_%E120044120092%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119988%_)
        (let* ((_%e119989120002%_ _%stx119988%_)
               (_%E119991120006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119989120002%_)))
               (_%E119990120038%_
                (lambda ()
                  (if (gx#stx-pair? _%e119989120002%_)
                      (let ((_%e119992120010%_
                             (gx#syntax-e _%e119989120002%_)))
                        (let ((_%hd119993120013%_ (##car _%e119992120010%_))
                              (_%tl119994120015%_ (##cdr _%e119992120010%_)))
                          (if (gx#stx-pair? _%tl119994120015%_)
                              (let ((_%e119995120018%_
                                     (gx#syntax-e _%tl119994120015%_)))
                                (let ((_%hd119996120021%_
                                       (##car _%e119995120018%_))
                                      (_%tl119997120023%_
                                       (##cdr _%e119995120018%_)))
                                  (let ((_%hd120026%_ _%hd119996120021%_))
                                    (if (gx#stx-pair? _%tl119997120023%_)
                                        (let ((_%e119998120028%_
                                               (gx#syntax-e
                                                _%tl119997120023%_)))
                                          (let ((_%hd119999120031%_
                                                 (##car _%e119998120028%_))
                                                (_%tl120000120033%_
                                                 (##cdr _%e119998120028%_)))
                                            (let ((_%expr120036%_
                                                   _%hd119999120031%_))
                                              (if (gx#stx-null?
                                                   _%tl120000120033%_)
                                                  (if (gx#identifier?
                                                       _%hd120026%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd120026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr120036%_ '())))
              (_%E119991120006%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119991120006%_)))))
                                        (_%E119991120006%_)))))
                              (_%E119991120006%_))))
                      (_%E119991120006%_)))))
          (_%E119990120038%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119934%_)
        (let* ((_%e119935119948%_ _%stx119934%_)
               (_%E119937119952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119935119948%_)))
               (_%E119936119984%_
                (lambda ()
                  (if (gx#stx-pair? _%e119935119948%_)
                      (let ((_%e119938119956%_
                             (gx#syntax-e _%e119935119948%_)))
                        (let ((_%hd119939119959%_ (##car _%e119938119956%_))
                              (_%tl119940119961%_ (##cdr _%e119938119956%_)))
                          (if (gx#stx-pair? _%tl119940119961%_)
                              (let ((_%e119941119964%_
                                     (gx#syntax-e _%tl119940119961%_)))
                                (let ((_%hd119942119967%_
                                       (##car _%e119941119964%_))
                                      (_%tl119943119969%_
                                       (##cdr _%e119941119964%_)))
                                  (let ((_%id119972%_ _%hd119942119967%_))
                                    (if (gx#stx-pair? _%tl119943119969%_)
                                        (let ((_%e119944119974%_
                                               (gx#syntax-e
                                                _%tl119943119969%_)))
                                          (let ((_%hd119945119977%_
                                                 (##car _%e119944119974%_))
                                                (_%tl119946119979%_
                                                 (##cdr _%e119944119974%_)))
                                            (let ((_%alias-id119982%_
                                                   _%hd119945119977%_))
                                              (if (gx#stx-null?
                                                   _%tl119946119979%_)
                                                  (if (and (gx#identifier?
                                                            _%id119972%_)
                                                           (gx#identifier?
                                                            _%alias-id119982%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119982%_ '())))
              (_%E119937119952%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119937119952%_)))))
                                        (_%E119937119952%_)))))
                              (_%E119937119952%_))))
                      (_%E119937119952%_)))))
          (_%E119936119984%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119891%_)
        (let* ((_%e119892119902%_ _%stx119891%_)
               (_%E119894119906%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119892119902%_)))
               (_%E119893119930%_
                (lambda ()
                  (if (gx#stx-pair? _%e119892119902%_)
                      (let ((_%e119895119910%_
                             (gx#syntax-e _%e119892119902%_)))
                        (let ((_%hd119896119913%_ (##car _%e119895119910%_))
                              (_%tl119897119915%_ (##cdr _%e119895119910%_)))
                          (if (gx#stx-pair? _%tl119897119915%_)
                              (let ((_%e119898119918%_
                                     (gx#syntax-e _%tl119897119915%_)))
                                (let ((_%hd119899119921%_
                                       (##car _%e119898119918%_))
                                      (_%tl119900119923%_
                                       (##cdr _%e119898119918%_)))
                                  (let* ((_%hd119926%_ _%hd119899119921%_)
                                         (_%body119928%_ _%tl119900119923%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119926%_)
                                             (gx#stx-list? _%body119928%_)
                                             (not (gx#stx-null?
                                                   _%body119928%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119926%_)
                                         _%body119928%_)
                                        (_%E119894119906%_)))))
                              (_%E119894119906%_))))
                      (_%E119894119906%_)))))
          (_%E119893119930%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119827%_)
        (letrec ((_%generate119829%_
                  (lambda (_%clause119859%_)
                    (let* ((_%e119860119867%_ _%clause119859%_)
                           (_%E119862119871%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119827%_
                               _%clause119859%_)))
                           (_%E119861119887%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119860119867%_)
                                  (let ((_%e119863119875%_
                                         (gx#syntax-e _%e119860119867%_)))
                                    (let ((_%hd119864119878%_
                                           (##car _%e119863119875%_))
                                          (_%tl119865119880%_
                                           (##cdr _%e119863119875%_)))
                                      (let* ((_%hd119883%_ _%hd119864119878%_)
                                             (_%body119885%_
                                              _%tl119865119880%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119883%_)
                                                 (gx#stx-list? _%body119885%_)
                                                 (not (gx#stx-null?
                                                       _%body119885%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119883%_)
                                                   _%body119885%_)
                                             (gx#stx-source _%clause119859%_))
                                            (_%E119862119871%_)))))
                                  (_%E119862119871%_)))))
                      (_%E119861119887%_)))))
          (let* ((_%e119830119837%_ _%stx119827%_)
                 (_%E119832119841%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119830119837%_)))
                 (_%E119831119855%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119830119837%_)
                        (let ((_%e119833119845%_
                               (gx#syntax-e _%e119830119837%_)))
                          (let ((_%hd119834119848%_ (##car _%e119833119845%_))
                                (_%tl119835119850%_ (##cdr _%e119833119845%_)))
                            (let ((_%clauses119853%_ _%tl119835119850%_))
                              (if (gx#stx-list? _%clauses119853%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119829%_
                                    _%clauses119853%_))
                                  (_%E119832119841%_)))))
                        (_%E119832119841%_)))))
            (_%E119831119855%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119728%_ _%form119729%_)
        (letrec ((_%generate119731%_
                  (lambda (_%bind119774%_)
                    (let* ((_%e119775119785%_ _%bind119774%_)
                           (_%E119777119789%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119728%_
                               _%bind119774%_)))
                           (_%E119776119813%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119775119785%_)
                                  (let ((_%e119778119793%_
                                         (gx#syntax-e _%e119775119785%_)))
                                    (let ((_%hd119779119796%_
                                           (##car _%e119778119793%_))
                                          (_%tl119780119798%_
                                           (##cdr _%e119778119793%_)))
                                      (let ((_%ids119801%_ _%hd119779119796%_))
                                        (if (gx#stx-pair? _%tl119780119798%_)
                                            (let ((_%e119781119803%_
                                                   (gx#syntax-e
                                                    _%tl119780119798%_)))
                                              (let ((_%hd119782119806%_
                                                     (##car _%e119781119803%_))
                                                    (_%tl119783119808%_
                                                     (##cdr _%e119781119803%_)))
                                                (let ((_%expr119811%_
                                                       _%hd119782119806%_))
                                                  (if (gx#stx-null?
                                                       _%tl119783119808%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119801%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119801%_)
                        (cons _%expr119811%_ '()))
                  (_%E119777119789%_))
              (_%E119777119789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119777119789%_)))))
                                  (_%E119777119789%_)))))
                      (_%E119776119813%_)))))
          (let* ((_%e119732119742%_ _%stx119728%_)
                 (_%E119734119746%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119732119742%_)))
                 (_%E119733119770%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119732119742%_)
                        (let ((_%e119735119750%_
                               (gx#syntax-e _%e119732119742%_)))
                          (let ((_%hd119736119753%_ (##car _%e119735119750%_))
                                (_%tl119737119755%_ (##cdr _%e119735119750%_)))
                            (if (gx#stx-pair? _%tl119737119755%_)
                                (let ((_%e119738119758%_
                                       (gx#syntax-e _%tl119737119755%_)))
                                  (let ((_%hd119739119761%_
                                         (##car _%e119738119758%_))
                                        (_%tl119740119763%_
                                         (##cdr _%e119738119758%_)))
                                    (let* ((_%hd119766%_ _%hd119739119761%_)
                                           (_%body119768%_ _%tl119740119763%_))
                                      (if (and (gx#stx-list? _%hd119766%_)
                                               (gx#stx-list? _%body119768%_)
                                               (not (gx#stx-null?
                                                     _%body119768%_)))
                                          (gx#core-cons*
                                           _%form119729%_
                                           (gx#stx-map1
                                            _%generate119731%_
                                            _%hd119766%_)
                                           _%body119768%_)
                                          (_%E119734119746%_)))))
                                (_%E119734119746%_))))
                        (_%E119734119746%_)))))
            (_%E119733119770%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119820%_)
        (let ((_%form119822%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119820%_ _%form119822%_))))
    (define gx#macro-expand-let-values
      (lambda _g122209_
        (let ((_g122208_ (##length _g122209_)))
          (cond ((##fx= _g122208_ 1)
                 (apply gx#macro-expand-let-values__0 _g122209_))
                ((##fx= _g122208_ 2)
                 (apply gx#macro-expand-let-values__% _g122209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122209_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119725%_)
        (gx#macro-expand-let-values__% _%stx119725%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119723%_)
        (gx#macro-expand-let-values__% _%stx119723%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119614%_)
        (let* ((_%e119615119641%_ _%stx119614%_)
               (_%E119627119645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119615119641%_)))
               (_%E119617119687%_
                (lambda ()
                  (if (gx#stx-pair? _%e119615119641%_)
                      (let ((_%e119628119649%_
                             (gx#syntax-e _%e119615119641%_)))
                        (let ((_%hd119629119652%_ (##car _%e119628119649%_))
                              (_%tl119630119654%_ (##cdr _%e119628119649%_)))
                          (if (gx#stx-pair? _%tl119630119654%_)
                              (let ((_%e119631119657%_
                                     (gx#syntax-e _%tl119630119654%_)))
                                (let ((_%hd119632119660%_
                                       (##car _%e119631119657%_))
                                      (_%tl119633119662%_
                                       (##cdr _%e119631119657%_)))
                                  (let ((_%test119665%_ _%hd119632119660%_))
                                    (if (gx#stx-pair? _%tl119633119662%_)
                                        (let ((_%e119634119667%_
                                               (gx#syntax-e
                                                _%tl119633119662%_)))
                                          (let ((_%hd119635119670%_
                                                 (##car _%e119634119667%_))
                                                (_%tl119636119672%_
                                                 (##cdr _%e119634119667%_)))
                                            (let ((_%K119675%_
                                                   _%hd119635119670%_))
                                              (if (gx#stx-pair?
                                                   _%tl119636119672%_)
                                                  (let ((_%e119637119677%_
                                                         (gx#syntax-e
                                                          _%tl119636119672%_)))
                                                    (let ((_%hd119638119680%_
                                                           (##car _%e119637119677%_))
                                                          (_%tl119639119682%_
                                                           (##cdr _%e119637119677%_)))
                                                      (let ((_%E119685%_
                                                             _%hd119638119680%_))
                                                        (if (gx#stx-null?
                                                             _%tl119639119682%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119665%_
                         _%K119675%_
                         _%E119685%_)
                        (_%E119627119645%_))
                    (_%E119627119645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119627119645%_)))))
                                        (_%E119627119645%_)))))
                              (_%E119627119645%_))))
                      (_%E119627119645%_))))
               (_%E119616119719%_
                (lambda ()
                  (if (gx#stx-pair? _%e119615119641%_)
                      (let ((_%e119618119691%_
                             (gx#syntax-e _%e119615119641%_)))
                        (let ((_%hd119619119694%_ (##car _%e119618119691%_))
                              (_%tl119620119696%_ (##cdr _%e119618119691%_)))
                          (if (gx#stx-pair? _%tl119620119696%_)
                              (let ((_%e119621119699%_
                                     (gx#syntax-e _%tl119620119696%_)))
                                (let ((_%hd119622119702%_
                                       (##car _%e119621119699%_))
                                      (_%tl119623119704%_
                                       (##cdr _%e119621119699%_)))
                                  (let ((_%test119707%_ _%hd119622119702%_))
                                    (if (gx#stx-pair? _%tl119623119704%_)
                                        (let ((_%e119624119709%_
                                               (gx#syntax-e
                                                _%tl119623119704%_)))
                                          (let ((_%hd119625119712%_
                                                 (##car _%e119624119709%_))
                                                (_%tl119626119714%_
                                                 (##cdr _%e119624119709%_)))
                                            (let ((_%K119717%_
                                                   _%hd119625119712%_))
                                              (if (gx#stx-null?
                                                   _%tl119626119714%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119707%_
                                                       _%K119717%_
                                                       '#!void)
                                                      (_%E119617119687%_))
                                                  (_%E119617119687%_)))))
                                        (_%E119617119687%_)))))
                              (_%E119617119687%_))))
                      (_%E119617119687%_)))))
          (_%E119616119719%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119599%_ _%yid119600%_)
        (let ((_%xe119602%_ (gx#resolve-identifier__0 _%xid119599%_))
              (_%ye119603%_ (gx#resolve-identifier__0 _%yid119600%_)))
          (if (and _%xe119602%_ _%ye119603%_)
              (let ((_%$e119606%_ (eq? _%xe119602%_ _%ye119603%_)))
                (if _%$e119606%_
                    _%$e119606%_
                    (if (##structure-instance-of? _%xe119602%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119603%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119602%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119603%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119602%_ _%ye119603%_)
                  '#f
                  (gx#stx-eq? _%xid119599%_ _%yid119600%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119580%_ _%yid119581%_)
        (letrec ((_%context119583%_
                  (lambda (_%e119597%_)
                    (if (##structure-direct-instance-of?
                         _%e119597%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119597%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119584%_
                  (lambda (_%e119592%_)
                    (if (symbol? _%e119592%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e119592%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e119592%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e119592%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap119585%_
                  (lambda (_%e119590%_)
                    (if (symbol? _%e119590%_)
                        _%e119590%_
                        (gx#syntax-local-unwrap _%e119590%_)))))
          (let ((_%x119587%_ (_%unwrap119585%_ _%xid119580%_))
                (_%y119588%_ (_%unwrap119585%_ _%yid119581%_)))
            (if (gx#stx-eq? _%x119587%_ _%y119588%_)
                (if (eq? (_%context119583%_ _%x119587%_)
                         (_%context119583%_ _%y119588%_))
                    (equal? (_%marks119584%_ _%x119587%_)
                            (_%marks119584%_ _%y119588%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119578%_)
        (if (gx#identifier? _%stx119578%_)
            (gx#core-identifier=? _%stx119578%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119576%_)
        (if (gx#identifier? _%stx119576%_)
            (gx#core-identifier=? _%stx119576%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119519%_ _%where119520%_)
        (let _%lp119522%_ ((_%rest119524%_ (gx#syntax->list _%stx119519%_)))
          (let* ((_%rest119525119533%_ _%rest119524%_)
                 (_%else119527119541%_ (lambda () '#t))
                 (_%K119529119554%_
                  (lambda (_%rest119544%_ _%hd119545%_)
                    (if (not (gx#identifier? _%hd119545%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where119520%_
                         _%hd119545%_)
                        (if (__find (lambda (_%g119547119549%_)
                                      (gx#bound-identifier=?
                                       _%g119547119549%_
                                       _%hd119545%_))
                                    _%rest119544%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where119520%_
                             _%hd119545%_)
                            (_%lp119522%_ _%rest119544%_))))))
            (if (##pair? _%rest119525119533%_)
                (let ((_%hd119530119557%_ (##car _%rest119525119533%_))
                      (_%tl119531119559%_ (##cdr _%rest119525119533%_)))
                  (let* ((_%hd119562%_ _%hd119530119557%_)
                         (_%rest119564%_ _%tl119531119559%_))
                    (_%K119529119554%_ _%rest119564%_ _%hd119562%_)))
                (_%else119527119541%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119569%_)
        (let ((_%where119571%_ _%stx119569%_))
          (gx#check-duplicate-identifiers__% _%stx119569%_ _%where119571%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122211_
        (let ((_g122210_ (##length _g122211_)))
          (cond ((##fx= _g122210_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g122211_))
                ((##fx= _g122210_ 2)
                 (apply gx#check-duplicate-identifiers__% _g122211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122211_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119511%_)
        (gx#stx-andmap
         (lambda (_%x119513%_)
           (let ((_%$e119515%_ (gx#identifier? _%x119513%_)))
             (if _%$e119515%_ _%$e119515%_ (gx#stx-false? _%x119513%_))))
         _%stx119511%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119475%_ _%rebind?119476%_ _%phi119477%_ _%ctx119478%_)
        (gx#stx-for-each1
         (lambda (_%id119480%_)
           (if (gx#identifier? _%id119480%_)
               (gx#core-bind-runtime!__%
                _%id119480%_
                _%rebind?119476%_
                _%phi119477%_
                _%ctx119478%_)
               '#!void))
         _%stx119475%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119485%_)
        (let* ((_%rebind?119487%_ '#f)
               (_%phi119489%_ (gx#current-expander-phi))
               (_%ctx119491%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119485%_
           _%rebind?119487%_
           _%phi119489%_
           _%ctx119491%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119493%_ _%rebind?119494%_)
        (let* ((_%phi119496%_ (gx#current-expander-phi))
               (_%ctx119498%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119493%_
           _%rebind?119494%_
           _%phi119496%_
           _%ctx119498%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119500%_ _%rebind?119501%_ _%phi119502%_)
        (let ((_%ctx119504%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119500%_
           _%rebind?119501%_
           _%phi119502%_
           _%ctx119504%_))))
    (define gx#core-bind-values!
      (lambda _g122213_
        (let ((_g122212_ (##length _g122213_)))
          (cond ((##fx= _g122212_ 1) (apply gx#core-bind-values!__0 _g122213_))
                ((##fx= _g122212_ 2) (apply gx#core-bind-values!__1 _g122213_))
                ((##fx= _g122212_ 3) (apply gx#core-bind-values!__2 _g122213_))
                ((##fx= _g122212_ 4) (apply gx#core-bind-values!__% _g122213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122213_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119470%_)
        (gx#stx-map1
         (lambda (_%x119472%_)
           (if (gx#identifier? _%x119472%_)
               (gx#core-quote-syntax__0 _%x119472%_)
               '#f))
         _%stx119470%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119463%_)
        (if (gx#identifier? _%stx119463%_)
            (let* ((_%bind119465%_ (gx#resolve-identifier__0 _%stx119463%_))
                   (_%$e119467%_ (not _%bind119465%_)))
              (if _%$e119467%_
                  _%$e119467%_
                  (##structure-instance-of?
                   _%bind119465%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119452%_ _%form119453%_)
        (let ((_%bind119455%_ (gx#resolve-identifier__0 _%id119452%_)))
          (if (##structure-instance-of? _%bind119455%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id119452%_)
              (if (not _%bind119455%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id119452%_)))
                      (gx#core-quote-syntax__0 _%id119452%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form119453%_
                       _%id119452%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form119453%_
                   _%id119452%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119407%_ _%rebind?119408%_ _%phi119409%_ _%ctx119410%_)
        (let* ((_%key119412%_ (gx#core-identifier-key _%id119407%_))
               (_%eid119414%_
                (gx#make-binding-id__%
                 _%key119412%_
                 '#f
                 _%phi119409%_
                 _%ctx119410%_))
               (_%bind119420%_
                (if (##structure-instance-of?
                     _%ctx119410%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119414%_
                     _%key119412%_
                     _%phi119409%_
                     _%ctx119410%_)
                    (if (##structure-instance-of?
                         _%ctx119410%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119414%_
                         _%key119412%_
                         _%phi119409%_)
                        (if (##structure-instance-of?
                             _%ctx119410%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid119414%_
                             _%key119412%_
                             _%phi119409%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid119414%_
                             _%key119412%_
                             _%phi119409%_))))))
          (gx#bind-identifier!__%
           _%id119407%_
           _%bind119420%_
           _%rebind?119408%_
           _%phi119409%_
           _%ctx119410%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119426%_)
        (let* ((_%rebind?119428%_ '#f)
               (_%phi119430%_ (gx#current-expander-phi))
               (_%ctx119432%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119426%_
           _%rebind?119428%_
           _%phi119430%_
           _%ctx119432%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119434%_ _%rebind?119435%_)
        (let* ((_%phi119437%_ (gx#current-expander-phi))
               (_%ctx119439%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119434%_
           _%rebind?119435%_
           _%phi119437%_
           _%ctx119439%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119441%_ _%rebind?119442%_ _%phi119443%_)
        (let ((_%ctx119445%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119441%_
           _%rebind?119442%_
           _%phi119443%_
           _%ctx119445%_))))
    (define gx#core-bind-runtime!
      (lambda _g122215_
        (let ((_g122214_ (##length _g122215_)))
          (cond ((##fx= _g122214_ 1)
                 (apply gx#core-bind-runtime!__0 _g122215_))
                ((##fx= _g122214_ 2)
                 (apply gx#core-bind-runtime!__1 _g122215_))
                ((##fx= _g122214_ 3)
                 (apply gx#core-bind-runtime!__2 _g122215_))
                ((##fx= _g122214_ 4)
                 (apply gx#core-bind-runtime!__% _g122215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122215_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119359%_
               _%eid119360%_
               _%rebind?119361%_
               _%phi119362%_
               _%ctx119363%_)
        (let* ((_%key119365%_ (gx#core-identifier-key _%id119359%_))
               (_%bind119370%_
                (if (##structure-instance-of?
                     _%ctx119363%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119360%_
                     _%key119365%_
                     _%phi119362%_
                     _%ctx119363%_)
                    (if (##structure-instance-of?
                         _%ctx119363%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119360%_
                         _%key119365%_
                         _%phi119362%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid119360%_
                         _%key119365%_
                         _%phi119362%_)))))
          (gx#bind-identifier!__%
           _%id119359%_
           _%bind119370%_
           _%rebind?119361%_
           _%phi119362%_
           _%ctx119363%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119376%_ _%eid119377%_)
        (let* ((_%rebind?119379%_ '#f)
               (_%phi119381%_ (gx#current-expander-phi))
               (_%ctx119383%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119376%_
           _%eid119377%_
           _%rebind?119379%_
           _%phi119381%_
           _%ctx119383%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119385%_ _%eid119386%_ _%rebind?119387%_)
        (let* ((_%phi119389%_ (gx#current-expander-phi))
               (_%ctx119391%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119385%_
           _%eid119386%_
           _%rebind?119387%_
           _%phi119389%_
           _%ctx119391%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119393%_ _%eid119394%_ _%rebind?119395%_ _%phi119396%_)
        (let ((_%ctx119398%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119393%_
           _%eid119394%_
           _%rebind?119395%_
           _%phi119396%_
           _%ctx119398%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122217_
        (let ((_g122216_ (##length _g122217_)))
          (cond ((##fx= _g122216_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g122217_))
                ((##fx= _g122216_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g122217_))
                ((##fx= _g122216_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g122217_))
                ((##fx= _g122216_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g122217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122217_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119319%_
               _%eid119320%_
               _%rebind?119321%_
               _%phi119322%_
               _%ctx119323%_)
        (gx#bind-identifier!__%
         _%id119319%_
         (##structure
          gx#extern-binding::t
          _%eid119320%_
          (gx#core-identifier-key _%id119319%_)
          _%phi119322%_)
         _%rebind?119321%_
         _%phi119322%_
         _%ctx119323%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119328%_ _%eid119329%_)
        (let* ((_%rebind?119331%_ '#f)
               (_%phi119333%_ (gx#current-expander-phi))
               (_%ctx119335%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119328%_
           _%eid119329%_
           _%rebind?119331%_
           _%phi119333%_
           _%ctx119335%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119337%_ _%eid119338%_ _%rebind?119339%_)
        (let* ((_%phi119341%_ (gx#current-expander-phi))
               (_%ctx119343%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119337%_
           _%eid119338%_
           _%rebind?119339%_
           _%phi119341%_
           _%ctx119343%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119345%_ _%eid119346%_ _%rebind?119347%_ _%phi119348%_)
        (let ((_%ctx119350%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119345%_
           _%eid119346%_
           _%rebind?119347%_
           _%phi119348%_
           _%ctx119350%_))))
    (define gx#core-bind-extern!
      (lambda _g122219_
        (let ((_g122218_ (##length _g122219_)))
          (cond ((##fx= _g122218_ 2) (apply gx#core-bind-extern!__0 _g122219_))
                ((##fx= _g122218_ 3) (apply gx#core-bind-extern!__1 _g122219_))
                ((##fx= _g122218_ 4) (apply gx#core-bind-extern!__2 _g122219_))
                ((##fx= _g122218_ 5) (apply gx#core-bind-extern!__% _g122219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122219_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119273%_
               _%e119274%_
               _%rebind?119275%_
               _%phi119276%_
               _%ctx119277%_)
        (gx#bind-identifier!__%
         _%id119273%_
         (let ((_%key119282%_ (gx#core-identifier-key _%id119273%_))
               (_%e119283%_
                (if (or (##structure-instance-of? _%e119274%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119274%_
                         'gx#expander-context::t))
                    _%e119274%_
                    (##structure
                     gx#user-expander::t
                     _%e119274%_
                     _%ctx119277%_
                     _%phi119276%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119282%_
             '#t
             _%phi119276%_
             _%ctx119277%_)
            _%key119282%_
            _%phi119276%_
            _%e119283%_))
         _%rebind?119275%_
         _%phi119276%_
         _%ctx119277%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119288%_ _%e119289%_)
        (let* ((_%rebind?119291%_ '#f)
               (_%phi119293%_ (gx#current-expander-phi))
               (_%ctx119295%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119288%_
           _%e119289%_
           _%rebind?119291%_
           _%phi119293%_
           _%ctx119295%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119297%_ _%e119298%_ _%rebind?119299%_)
        (let* ((_%phi119301%_ (gx#current-expander-phi))
               (_%ctx119303%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119297%_
           _%e119298%_
           _%rebind?119299%_
           _%phi119301%_
           _%ctx119303%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119305%_ _%e119306%_ _%rebind?119307%_ _%phi119308%_)
        (let ((_%ctx119310%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119305%_
           _%e119306%_
           _%rebind?119307%_
           _%phi119308%_
           _%ctx119310%_))))
    (define gx#core-bind-syntax!
      (lambda _g122221_
        (let ((_g122220_ (##length _g122221_)))
          (cond ((##fx= _g122220_ 2) (apply gx#core-bind-syntax!__0 _g122221_))
                ((##fx= _g122220_ 3) (apply gx#core-bind-syntax!__1 _g122221_))
                ((##fx= _g122220_ 4) (apply gx#core-bind-syntax!__2 _g122221_))
                ((##fx= _g122220_ 5) (apply gx#core-bind-syntax!__% _g122221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122221_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119256%_ _%e119257%_ _%rebind?119258%_)
        (gx#core-bind-syntax!__%
         _%id119256%_
         _%e119257%_
         _%rebind?119258%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119263%_ _%e119264%_)
        (let ((_%rebind?119266%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119263%_
           _%e119264%_
           _%rebind?119266%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122223_
        (let ((_g122222_ (##length _g122223_)))
          (cond ((##fx= _g122222_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g122223_))
                ((##fx= _g122222_ 3)
                 (apply gx#core-bind-root-syntax!__% _g122223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122223_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119214%_
               _%alias-id119215%_
               _%rebind?119216%_
               _%phi119217%_
               _%ctx119218%_)
        (gx#bind-identifier!__%
         _%id119214%_
         (let ((_%key119220%_ (gx#core-identifier-key _%id119214%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119220%_
             '#t
             _%phi119217%_
             _%ctx119218%_)
            _%key119220%_
            _%phi119217%_
            _%alias-id119215%_))
         _%rebind?119216%_
         _%phi119217%_
         _%ctx119218%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119225%_ _%alias-id119226%_)
        (let* ((_%rebind?119228%_ '#f)
               (_%phi119230%_ (gx#current-expander-phi))
               (_%ctx119232%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119225%_
           _%alias-id119226%_
           _%rebind?119228%_
           _%phi119230%_
           _%ctx119232%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119234%_ _%alias-id119235%_ _%rebind?119236%_)
        (let* ((_%phi119238%_ (gx#current-expander-phi))
               (_%ctx119240%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119234%_
           _%alias-id119235%_
           _%rebind?119236%_
           _%phi119238%_
           _%ctx119240%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119242%_ _%alias-id119243%_ _%rebind?119244%_ _%phi119245%_)
        (let ((_%ctx119247%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119242%_
           _%alias-id119243%_
           _%rebind?119244%_
           _%phi119245%_
           _%ctx119247%_))))
    (define gx#core-bind-alias!
      (lambda _g122225_
        (let ((_g122224_ (##length _g122225_)))
          (cond ((##fx= _g122224_ 2) (apply gx#core-bind-alias!__0 _g122225_))
                ((##fx= _g122224_ 3) (apply gx#core-bind-alias!__1 _g122225_))
                ((##fx= _g122224_ 4) (apply gx#core-bind-alias!__2 _g122225_))
                ((##fx= _g122224_ 5) (apply gx#core-bind-alias!__% _g122225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122225_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119164%_ _%syntax?119165%_ _%phi119166%_ _%ctx119167%_)
        (if (uninterned-symbol? _%key119164%_)
            (##gensym 'L)
            (if (pair? _%key119164%_)
                (gensym (car _%key119164%_))
                (if (##structure-instance-of? _%ctx119167%_ 'gx#top-context::t)
                    (let ((_%ns119172%_
                           (gx#core-context-namespace__% _%ctx119167%_)))
                      (if (and (fxzero? _%phi119166%_) (not _%syntax?119165%_))
                          (if _%ns119172%_
                              (make-symbol__1 _%ns119172%_ '"#" _%key119164%_)
                              _%key119164%_)
                          (if _%syntax?119165%_
                              (make-symbol__1
                               (let ((_%$e119176%_ _%ns119172%_))
                                 (if _%$e119176%_ _%$e119176%_ '""))
                               '"[:"
                               (number->string _%phi119166%_)
                               '":]#"
                               _%key119164%_)
                              (make-symbol__1
                               (let ((_%$e119180%_ _%ns119172%_))
                                 (if _%$e119180%_ _%$e119180%_ '""))
                               '"["
                               (number->string _%phi119166%_)
                               '"]#"
                               _%key119164%_))))
                    (gensym _%key119164%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key119187%_)
        (let* ((_%syntax?119189%_ '#f)
               (_%phi119191%_ (gx#current-expander-phi))
               (_%ctx119193%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119187%_
           _%syntax?119189%_
           _%phi119191%_
           _%ctx119193%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119195%_ _%syntax?119196%_)
        (let* ((_%phi119198%_ (gx#current-expander-phi))
               (_%ctx119200%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119195%_
           _%syntax?119196%_
           _%phi119198%_
           _%ctx119200%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119202%_ _%syntax?119203%_ _%phi119204%_)
        (let ((_%ctx119206%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119202%_
           _%syntax?119203%_
           _%phi119204%_
           _%ctx119206%_))))
    (define gx#make-binding-id
      (lambda _g122227_
        (let ((_g122226_ (##length _g122227_)))
          (cond ((##fx= _g122226_ 1) (apply gx#make-binding-id__0 _g122227_))
                ((##fx= _g122226_ 2) (apply gx#make-binding-id__1 _g122227_))
                ((##fx= _g122226_ 3) (apply gx#make-binding-id__2 _g122227_))
                ((##fx= _g122226_ 4) (apply gx#make-binding-id__% _g122227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122227_))))))))

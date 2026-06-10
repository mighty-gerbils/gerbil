(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-ann::timestamp 1781119059)
  (begin
    (declare (inlining-limit 200))
    (define gxc#::optimize-annotated::t
      (make-class-type
       'gxc#::optimize-annotated::t
       '::optimize-annotated
       (list gxc#::basic-xform::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::optimize-annotated?
      (make-class-predicate gxc#::optimize-annotated::t))
    (define gxc#make-::optimize-annotated
      (lambda _%$args219099%_
        (apply make-instance gxc#::optimize-annotated::t _%$args219099%_)))
    (define gxc#::optimize-annotated-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (bind-method!
          gxc#::optimize-annotated::t
          '%#begin-annotation
          gxc#optimize-annotation%)
         (seal-class! gxc#::optimize-annotated::t))))
    (define gxc#apply-optimize-annotated
      (lambda (_%stx219091%_)
        (force gxc#::optimize-annotated-bind-methods!)
        (let ((_%self219094%_ (gxc#make-::optimize-annotated)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self219094%_ _%stx219091%_))
           gxc#current-compile-method
           _%self219094%_))))
    (define gxc#::generate-runtime-repr::t
      (make-class-type
       'gxc#::generate-runtime-repr::t
       '::generate-runtime-repr
       (list gxc#::generate-runtime::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-runtime-repr?
      (make-class-predicate gxc#::generate-runtime-repr::t))
    (define gxc#make-::generate-runtime-repr
      (lambda _%$args219088%_
        (apply make-instance gxc#::generate-runtime-repr::t _%$args219088%_)))
    (define gxc#::generate-runtime-repr-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::generate-runtime-bind-methods!)
         (bind-method!
          gxc#::generate-runtime-repr::t
          '%#quote-syntax
          gxc#identity-method)
         (seal-class! gxc#::generate-runtime-repr::t))))
    (define gxc#apply-generate-runtime-repr
      (lambda (_%stx219080%_)
        (force gxc#::generate-runtime-repr-bind-methods!)
        (let ((_%self219083%_ (gxc#make-::generate-runtime-repr)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self219083%_ _%stx219080%_))
           gxc#current-compile-method
           _%self219083%_))))
    (define gxc#::push-match-vars::t
      (make-class-type
       'gxc#::push-match-vars::t
       '::push-match-vars
       (list)
       '(vars K)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::push-match-vars?
      (make-class-predicate gxc#::push-match-vars::t))
    (define gxc#make-::push-match-vars
      (lambda _%$args219077%_
        (apply make-instance gxc#::push-match-vars::t _%$args219077%_)))
    (define gxc#::push-match-vars-vars
      (make-class-slot-accessor gxc#::push-match-vars::t 'vars))
    (define gxc#::push-match-vars-K
      (make-class-slot-accessor gxc#::push-match-vars::t 'K))
    (define gxc#::push-match-vars-vars-set!
      (make-class-slot-mutator gxc#::push-match-vars::t 'vars))
    (define gxc#::push-match-vars-K-set!
      (make-class-slot-mutator gxc#::push-match-vars::t 'K))
    (define gxc#&::push-match-vars-vars
      (make-class-slot-unchecked-accessor gxc#::push-match-vars::t 'vars))
    (define gxc#&::push-match-vars-K
      (make-class-slot-unchecked-accessor gxc#::push-match-vars::t 'K))
    (define gxc#&::push-match-vars-vars-set!
      (make-class-slot-unchecked-mutator gxc#::push-match-vars::t 'vars))
    (define gxc#&::push-match-vars-K-set!
      (make-class-slot-unchecked-mutator gxc#::push-match-vars::t 'K))
    (define gxc#::push-match-vars-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method! gxc#::push-match-vars::t '%#lambda gxc#xform-lambda%)
         (bind-method!
          gxc#::push-match-vars::t
          '%#let-values
          gxc#push-match-vars-let-values%)
         (bind-method!
          gxc#::push-match-vars::t
          '%#letrec-values
          gxc#push-match-vars-stop)
         (bind-method! gxc#::push-match-vars::t '%#if gxc#push-match-vars-if%)
         (bind-method!
          gxc#::push-match-vars::t
          '%#call
          gxc#push-match-vars-call%)
         (bind-method!
          gxc#::push-match-vars::t
          '%#begin-annotation
          gxc#push-match-vars-stop)
         (seal-class! gxc#::push-match-vars::t))))
    (define gxc#apply-push-match-vars
      (let ((_%$%kw-lambda219043219070%_
             (let ((_%$%kw-lambda-main219044219063%_
                    (lambda (_%@@keywords219049%_
                             _%$%vars219045219050%_
                             _%$%K219046219051%_
                             _%stx219052%_)
                      (let* ((_%vars219055%_
                              (if (eq? _%$%vars219045219050%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'vars:)
                                  _%$%vars219045219050%_))
                             (_%K219057%_
                              (if (eq? _%$%K219046219051%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'K:)
                                  _%$%K219046219051%_)))
                        (force gxc#::push-match-vars-bind-methods!)
                        (let ((_%self219059%_
                               (gxc#make-::push-match-vars
                                'vars:
                                _%vars219055%_
                                'K:
                                _%K219057%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self219059%_ _%stx219052%_))
                           gxc#current-compile-method
                           _%self219059%_))))))
               (lambda (_%@@keywords219066%_ . _%args219067%_)
                 (apply _%$%kw-lambda-main219044219063%_
                        _%@@keywords219066%_
                        (symbolic-table-ref
                         _%@@keywords219066%_
                         'vars:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords219066%_
                         'K:
                         absent-value)
                        _%args219067%_)))))
        (lambda _%$%args219047219073%_
          (apply keyword-dispatch
                 '#(K: vars:)
                 _%$%kw-lambda219043219070%_
                 _%$%args219047219073%_))))
    (define gxc#current-annotation-optimizer (make-parameter '()))
    (define gxc#optimize-annotation%
      (lambda (_%self218957%_ _%stx218958%_)
        (let* ((_%$%g218961218978%_
                (lambda (_%$%g218962218975%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g218962218975%_)))
               (_%$%g218960218985%_
                (lambda (_%$%g218962218981%_)
                  ((lambda ()
                     (gxc#xform-begin-annotation%
                      _%self218957%_
                      _%stx218958%_)))))
               (_%$%g218959219041%_
                (lambda (_%$%g218962218988%_)
                  (if (gx#stx-pair? _%$%g218962218988%_)
                      (let ((_%$%e218965218990%_
                             (gx#stx-e _%$%g218962218988%_)))
                        (let ((_%$%hd218966218993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e218965218990%_)))
                              (_%$%tl218967218995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e218965218990%_))))
                          (if (gx#stx-pair? _%$%tl218967218995%_)
                              (let ((_%$%e218968218998%_
                                     (gx#stx-e _%$%tl218967218995%_)))
                                (let ((_%$%hd218969219001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e218968218998%_)))
                                      (_%$%tl218970219003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e218968218998%_))))
                                  (if (gx#stx-pair? _%$%tl218970219003%_)
                                      (let ((_%$%e218971219006%_
                                             (gx#stx-e _%$%tl218970219003%_)))
                                        (let ((_%$%hd218972219009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218971219006%_)))
                                              (_%$%tl218973219011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218971219006%_))))
                                          (if (gx#stx-null?
                                               _%$%tl218973219011%_)
                                              ((lambda (_%$%g218963219014%_
                                                        _%$%g218964219015%_)
                                                 (if (gx#identifier?
                                                      _%$%g218964219015%_)
                                                     (let ((_%ann219031%_
                                                            (gx#stx-e
                                                             _%$%g218964219015%_)))
                                                       (call-with-parameters
                                                        (lambda ()
                                                          (let ((_%$e219034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ann219031%_))
                    (if (eq? '@match _%$e219034%_)
                        (if (memq '@no-optimize-match
                                  (gxc#current-annotation-optimizer))
                            (gxc#compile-e _%$%g218963219014%_)
                            (let ()
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _%$%g218963219014%_)))
                        (if (eq? '@syntax-case _%$e219034%_)
                            (if (memq '@no-optimize-syntax-case
                                      (gxc#current-annotation-optimizer))
                                (gxc#compile-e _%$%g218963219014%_)
                                (let ()
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case
                                   _%$%g218963219014%_)))
                            (gxc#compile-e _%$%g218963219014%_)))))
                gxc#current-annotation-optimizer
                (cons _%ann219031%_ (gxc#current-annotation-optimizer))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g218960218985%_
                                                      _%$%g218962218988%_)))
                                               _%$%hd218972219009%_
                                               _%$%hd218969219001%_)
                                              (_%$%g218960218985%_
                                               _%$%g218962218988%_))))
                                      (_%$%g218960218985%_
                                       _%$%g218962218988%_))))
                              (_%$%g218960218985%_ _%$%g218962218988%_))))
                      (_%$%g218960218985%_ _%$%g218962218988%_)))))
          (_%$%g218959219041%_ _%stx218958%_))))
    (define gxc#optimize-match
      (lambda (_%stx218258%_)
        (let* ((_%$%g218260218290%_
                (lambda (_%$%g218261218287%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g218261218287%_)))
               (_%$%g218259218954%_
                (lambda (_%$%g218261218293%_)
                  (if (gx#stx-pair? _%$%g218261218293%_)
                      (let ((_%$%e218265218295%_
                             (gx#stx-e _%$%g218261218293%_)))
                        (let ((_%$%hd218266218298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e218265218295%_)))
                              (_%$%tl218267218300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e218265218295%_))))
                          (if (gx#identifier? _%$%hd218266218298%_)
                              (if (gx#stx-eq?
                                   '%#let-values
                                   _%$%hd218266218298%_)
                                  (if (gx#stx-pair? _%$%tl218267218300%_)
                                      (let ((_%$%e218268218303%_
                                             (gx#stx-e _%$%tl218267218300%_)))
                                        (let ((_%$%hd218269218306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218268218303%_)))
                                              (_%$%tl218270218308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218268218303%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd218269218306%_)
                                              (let ((_%$%e218271218311%_
                                                     (gx#stx-e
                                                      _%$%hd218269218306%_)))
                                                (let ((_%$%hd218272218314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e218271218311%_)))
                                                      (_%$%tl218273218316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e218271218311%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd218272218314%_)
                                                      (let ((_%$%e218274218319%_
                                                             (gx#stx-e
                                                              _%$%hd218272218314%_)))
                                                        (let ((_%$%hd218275218322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e218274218319%_)))
                      (_%$%tl218276218324%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e218274218319%_))))
                  (if (gx#stx-pair? _%$%hd218275218322%_)
                      (let ((_%$%e218277218327%_
                             (gx#stx-e _%$%hd218275218322%_)))
                        (let ((_%$%hd218278218330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e218277218327%_)))
                              (_%$%tl218279218332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e218277218327%_))))
                          (if (gx#stx-null? _%$%tl218279218332%_)
                              (if (gx#stx-pair? _%$%tl218276218324%_)
                                  (let ((_%$%e218280218335%_
                                         (gx#stx-e _%$%tl218276218324%_)))
                                    (let ((_%$%hd218281218338%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e218280218335%_)))
                                          (_%$%tl218282218340%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e218280218335%_))))
                                      (if (gx#stx-null? _%$%tl218282218340%_)
                                          (if (gx#stx-null?
                                               _%$%tl218273218316%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl218270218308%_)
                                                  (let ((_%$%e218283218343%_
                                                         (gx#stx-e
                                                          _%$%tl218270218308%_)))
                                                    (let ((_%$%hd218284218346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e218283218343%_)))
                                                          (_%$%tl218285218348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e218283218343%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl218285218348%_)
                                                          ((lambda (_%$%g218262218351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g218263218352%_
                            _%$%g218264218353%_)
                     (let _%lp218377%_ ((_%body218379%_ _%$%g218262218351%_)
                                        (_%negation218380%_
                                         (cons _%$%g218264218353%_
                                               _%$%g218263218352%_))
                                        (_%clauses218381%_ '())
                                        (_%konts218382%_ '()))
                       (let* ((_%$%g218385218425%_
                               (lambda (_%$%g218386218422%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g218386218422%_)))
                              (_%$%g218384218726%_
                               (lambda (_%$%g218386218428%_)
                                 (if (gx#stx-pair? _%$%g218386218428%_)
                                     (let ((_%$%e218400218430%_
                                            (gx#stx-e _%$%g218386218428%_)))
                                       (let ((_%$%hd218401218433%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e218400218430%_)))
                                             (_%$%tl218402218435%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e218400218430%_))))
                                         (if (gx#identifier?
                                              _%$%hd218401218433%_)
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd218401218433%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl218402218435%_)
                                                     (let ((_%$%e218403218438%_
                                                            (gx#stx-e
                                                             _%$%tl218402218435%_)))
                                                       (let ((_%$%hd218404218441%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e218403218438%_)))
                     (_%$%tl218405218443%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e218403218438%_))))
                 (if (gx#stx-pair? _%$%hd218404218441%_)
                     (let ((_%$%e218406218446%_
                            (gx#stx-e _%$%hd218404218441%_)))
                       (let ((_%$%hd218407218449%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e218406218446%_)))
                             (_%$%tl218408218451%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e218406218446%_))))
                         (if (gx#stx-pair? _%$%hd218407218449%_)
                             (let ((_%$%e218409218454%_
                                    (gx#stx-e _%$%hd218407218449%_)))
                               (let ((_%$%hd218410218457%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e218409218454%_)))
                                     (_%$%tl218411218459%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e218409218454%_))))
                                 (if (gx#stx-pair? _%$%hd218410218457%_)
                                     (let ((_%$%e218412218462%_
                                            (gx#stx-e _%$%hd218410218457%_)))
                                       (let ((_%$%hd218413218465%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e218412218462%_)))
                                             (_%$%tl218414218467%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e218412218462%_))))
                                         (if (gx#stx-null?
                                              _%$%tl218414218467%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl218411218459%_)
                                                 (let ((_%$%e218415218470%_
                                                        (gx#stx-e
                                                         _%$%tl218411218459%_)))
                                                   (let ((_%$%hd218416218473%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e218415218470%_)))
                                                         (_%$%tl218417218475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e218415218470%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl218417218475%_)
                                                         (if (gx#stx-null?
                                                              _%$%tl218408218451%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl218405218443%_)
                         (let ((_%$%e218418218478%_
                                (gx#stx-e _%$%tl218405218443%_)))
                           (let ((_%$%hd218419218481%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e218418218478%_)))
                                 (_%$%tl218420218483%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e218418218478%_))))
                             (if (gx#stx-null? _%$%tl218420218483%_)
                                 ((lambda (_%$%g218397218486%_
                                           _%$%g218398218487%_
                                           _%$%g218399218488%_)
                                    (let* ((_%$%g218515218564%_
                                            (lambda (_%$%g218516218561%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g218516218561%_)))
                                           (_%$%g218514218607%_
                                            (lambda (_%$%g218516218567%_)
                                              (if (gx#stx-pair?
                                                   _%$%g218516218567%_)
                                                  (let ((_%$%e218551218569%_
                                                         (gx#stx-e
                                                          _%$%g218516218567%_)))
                                                    (let ((_%$%hd218552218572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e218551218569%_)))
                                                          (_%$%tl218553218574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e218551218569%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd218552218572%_)
                                                          (if (gx#stx-eq?
                                                               '%#begin-annotation
                                                               _%$%hd218552218572%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl218553218574%_)
                          (let ((_%$%e218554218577%_
                                 (gx#stx-e _%$%tl218553218574%_)))
                            (let ((_%$%hd218555218580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e218554218577%_)))
                                  (_%$%tl218556218582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e218554218577%_))))
                              (if (gx#identifier? _%$%hd218555218580%_)
                                  (if (gx#stx-eq?
                                       '@match-else
                                       _%$%hd218555218580%_)
                                      (if (gx#stx-pair? _%$%tl218556218582%_)
                                          (let ((_%$%e218557218585%_
                                                 (gx#stx-e
                                                  _%$%tl218556218582%_)))
                                            (let ((_%$%hd218558218588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e218557218585%_)))
                                                  (_%$%tl218559218590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e218557218585%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl218559218590%_)
                                                  ((lambda (_%$%g218550218593%_)
                                                     (_%lp218377%_
                                                      _%$%g218397218486%_
                                                      (cons _%$%g218399218488%_
                                                            (gxc#compile-e
                                                             _%$%g218550218593%_))
                                                      _%clauses218381%_
                                                      _%konts218382%_))
                                                   _%$%hd218558218588%_)
                                                  (_%$%g218515218564%_
                                                   _%$%g218516218567%_))))
                                          (_%$%g218515218564%_
                                           _%$%g218516218567%_))
                                      (_%$%g218515218564%_
                                       _%$%g218516218567%_))
                                  (_%$%g218515218564%_ _%$%g218516218567%_))))
                          (_%$%g218515218564%_ _%$%g218516218567%_))
                      (_%$%g218515218564%_ _%$%g218516218567%_))
                  (_%$%g218515218564%_ _%$%g218516218567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g218515218564%_
                                                   _%$%g218516218567%_))))
                                           (_%$%g218513218723%_
                                            (lambda (_%$%g218516218610%_)
                                              (if (gx#stx-pair?
                                                   _%$%g218516218610%_)
                                                  (let ((_%$%e218520218612%_
                                                         (gx#stx-e
                                                          _%$%g218516218610%_)))
                                                    (let ((_%$%hd218521218615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e218520218612%_)))
                                                          (_%$%tl218522218617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e218520218612%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd218521218615%_)
                                                          (if (gx#stx-eq?
                                                               '%#lambda
                                                               _%$%hd218521218615%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl218522218617%_)
                          (let ((_%$%e218523218620%_
                                 (gx#stx-e _%$%tl218522218617%_)))
                            (let ((_%$%hd218524218623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e218523218620%_)))
                                  (_%$%tl218525218625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e218523218620%_))))
                              (if (gx#stx-null? _%$%hd218524218623%_)
                                  (if (gx#stx-pair? _%$%tl218525218625%_)
                                      (let ((_%$%e218526218628%_
                                             (gx#stx-e _%$%tl218525218625%_)))
                                        (let ((_%$%hd218527218631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218526218628%_)))
                                              (_%$%tl218528218633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218526218628%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd218527218631%_)
                                              (let ((_%$%e218529218636%_
                                                     (gx#stx-e
                                                      _%$%hd218527218631%_)))
                                                (let ((_%$%hd218530218639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e218529218636%_)))
                                                      (_%$%tl218531218641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e218529218636%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd218530218639%_)
                                                      (if (gx#stx-eq?
                                                           '%#let-values
                                                           _%$%hd218530218639%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl218531218641%_)
                                                              (let ((_%$%e218532218644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl218531218641%_)))
                        (let ((_%$%hd218533218647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e218532218644%_)))
                              (_%$%tl218534218649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e218532218644%_))))
                          (if (gx#stx-pair? _%$%hd218533218647%_)
                              (let ((_%$%e218535218652%_
                                     (gx#stx-e _%$%hd218533218647%_)))
                                (let ((_%$%hd218536218655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e218535218652%_)))
                                      (_%$%tl218537218657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e218535218652%_))))
                                  (if (gx#stx-pair? _%$%hd218536218655%_)
                                      (let ((_%$%e218538218660%_
                                             (gx#stx-e _%$%hd218536218655%_)))
                                        (let ((_%$%hd218539218663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218538218660%_)))
                                              (_%$%tl218540218665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218538218660%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd218539218663%_)
                                              (let ((_%$%e218541218668%_
                                                     (gx#stx-e
                                                      _%$%hd218539218663%_)))
                                                (let ((_%$%hd218542218671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e218541218668%_)))
                                                      (_%$%tl218543218673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e218541218668%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl218543218673%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl218540218665%_)
                                                          (let ((_%$%e218544218676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl218540218665%_)))
                    (let ((_%$%hd218545218679%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e218544218676%_)))
                          (_%$%tl218546218681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e218544218676%_))))
                      (if (gx#stx-null? _%$%tl218546218681%_)
                          (if (gx#stx-null? _%$%tl218537218657%_)
                              (if (gx#stx-pair? _%$%tl218534218649%_)
                                  (let ((_%$%e218547218684%_
                                         (gx#stx-e _%$%tl218534218649%_)))
                                    (let ((_%$%hd218548218687%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e218547218684%_)))
                                          (_%$%tl218549218689%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e218547218684%_))))
                                      (if (gx#stx-null? _%$%tl218549218689%_)
                                          (if (gx#stx-null?
                                               _%$%tl218528218633%_)
                                              ((lambda (_%$%g218517218692%_
                                                        _%$%g218518218693%_
                                                        _%$%g218519218694%_)
                                                 (_%lp218377%_
                                                  _%$%g218397218486%_
                                                  _%negation218380%_
                                                  (cons (cons _%$%g218399218488%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#lambda)
                            (cons '() (cons _%$%g218517218692%_ '()))))
                _%clauses218381%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _%$%g218519218694%_
                                                              (gxc#compile-e
                                                               _%$%g218518218693%_))
                                                        _%konts218382%_)))
                                               _%$%hd218548218687%_
                                               _%$%hd218545218679%_
                                               _%$%hd218542218671%_)
                                              (_%$%g218514218607%_
                                               _%$%g218516218610%_))
                                          (_%$%g218514218607%_
                                           _%$%g218516218610%_))))
                                  (_%$%g218514218607%_ _%$%g218516218610%_))
                              (_%$%g218514218607%_ _%$%g218516218610%_))
                          (_%$%g218514218607%_ _%$%g218516218610%_))))
                  (_%$%g218514218607%_ _%$%g218516218610%_))
              (_%$%g218514218607%_ _%$%g218516218610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g218514218607%_
                                               _%$%g218516218610%_))))
                                      (_%$%g218514218607%_
                                       _%$%g218516218610%_))))
                              (_%$%g218514218607%_ _%$%g218516218610%_))))
                      (_%$%g218514218607%_ _%$%g218516218610%_))
                  (_%$%g218514218607%_ _%$%g218516218610%_))
              (_%$%g218514218607%_ _%$%g218516218610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g218514218607%_
                                               _%$%g218516218610%_))))
                                      (_%$%g218514218607%_
                                       _%$%g218516218610%_))
                                  (_%$%g218514218607%_ _%$%g218516218610%_))))
                          (_%$%g218514218607%_ _%$%g218516218610%_))
                      (_%$%g218514218607%_ _%$%g218516218610%_))
                  (_%$%g218514218607%_ _%$%g218516218610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g218514218607%_
                                                   _%$%g218516218610%_)))))
                                      (_%$%g218513218723%_
                                       _%$%g218398218487%_)))
                                  _%$%hd218419218481%_
                                  _%$%hd218416218473%_
                                  _%$%hd218413218465%_)
                                 (_%$%g218385218425%_ _%$%g218386218428%_))))
                         (_%$%g218385218425%_ _%$%g218386218428%_))
                     (_%$%g218385218425%_ _%$%g218386218428%_))
                 (_%$%g218385218425%_ _%$%g218386218428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g218385218425%_
                                                  _%$%g218386218428%_))
                                             (_%$%g218385218425%_
                                              _%$%g218386218428%_))))
                                     (_%$%g218385218425%_
                                      _%$%g218386218428%_))))
                             (_%$%g218385218425%_ _%$%g218386218428%_))))
                     (_%$%g218385218425%_ _%$%g218386218428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g218385218425%_
                                                      _%$%g218386218428%_))
                                                 (_%$%g218385218425%_
                                                  _%$%g218386218428%_))
                                             (_%$%g218385218425%_
                                              _%$%g218386218428%_))))
                                     (_%$%g218385218425%_
                                      _%$%g218386218428%_))))
                              (_%$%g218383218951%_
                               (lambda (_%$%g218386218729%_)
                                 (if (gx#stx-pair? _%$%g218386218729%_)
                                     (let ((_%$%e218388218731%_
                                            (gx#stx-e _%$%g218386218729%_)))
                                       (let ((_%$%hd218389218734%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e218388218731%_)))
                                             (_%$%tl218390218736%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e218388218731%_))))
                                         (if (gx#identifier?
                                              _%$%hd218389218734%_)
                                             (if (gx#stx-eq?
                                                  '%#begin-annotation
                                                  _%$%hd218389218734%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl218390218736%_)
                                                     (let ((_%$%e218391218739%_
                                                            (gx#stx-e
                                                             _%$%tl218390218736%_)))
                                                       (let ((_%$%hd218392218742%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e218391218739%_)))
                     (_%$%tl218393218744%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e218391218739%_))))
                 (if (gx#identifier? _%$%hd218392218742%_)
                     (if (gx#stx-eq? '@match-body _%$%hd218392218742%_)
                         (if (gx#stx-pair? _%$%tl218393218744%_)
                             (let ((_%$%e218394218747%_
                                    (gx#stx-e _%$%tl218393218744%_)))
                               (let ((_%$%hd218395218750%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e218394218747%_)))
                                     (_%$%tl218396218752%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e218394218747%_))))
                                 (if (gx#stx-null? _%$%tl218396218752%_)
                                     ((lambda (_%$%g218387218755%_)
                                        (let* ((_%$%g218769218799%_
                                                (lambda (_%$%g218770218796%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g218770218796%_)))
                                               (_%$%g218768218833%_
                                                (lambda (_%$%g218770218802%_)
                                                  ((lambda ()
                                                     (if (null? _%clauses218381%_)
                                                         (let* ((_%$%negation218805218812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%negation218380%_)
                        (_%$%E218807218815%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%negation218805218812%_
                                  '([E . negate]))
                           (void)))
                        (_%$%K218808218821%_
                         (lambda (_%negate218818%_ _%E218819%_)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%E218819%_ '())
                                                    (cons _%negate218818%_
                                                          '()))
                                              '())
                                        (cons _%$%g218387218755%_ '())))
                            _%stx218258%_))))
                   (if (pair? _%$%negation218805218812%_)
                       (let ((_%$%hd218809218824%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%negation218805218812%_)))
                             (_%$%tl218810218826%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%negation218805218812%_))))
                         (let* ((_%E218829%_ _%$%hd218809218824%_)
                                (_%negate218831%_ _%$%tl218810218826%_))
                           (_%$%K218808218821%_ _%negate218831%_ _%E218829%_)))
                       (_%$%E218807218815%_)))
                 (_%$%g218769218799%_ _%$%g218770218802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g218767218948%_
                                                (lambda (_%$%g218770218836%_)
                                                  (if (gx#stx-pair?
                                                       _%$%g218770218836%_)
                                                      (let ((_%$%e218774218838%_
                                                             (gx#stx-e
                                                              _%$%g218770218836%_)))
                                                        (let ((_%$%hd218775218841%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e218774218838%_)))
                      (_%$%tl218776218843%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e218774218838%_))))
                  (if (gx#identifier? _%$%hd218775218841%_)
                      (if (gx#stx-eq? '%#let-values _%$%hd218775218841%_)
                          (if (gx#stx-pair? _%$%tl218776218843%_)
                              (let ((_%$%e218777218846%_
                                     (gx#stx-e _%$%tl218776218843%_)))
                                (let ((_%$%hd218778218849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e218777218846%_)))
                                      (_%$%tl218779218851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e218777218846%_))))
                                  (if (gx#stx-pair? _%$%hd218778218849%_)
                                      (let ((_%$%e218780218854%_
                                             (gx#stx-e _%$%hd218778218849%_)))
                                        (let ((_%$%hd218781218857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218780218854%_)))
                                              (_%$%tl218782218859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218780218854%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd218781218857%_)
                                              (let ((_%$%e218783218862%_
                                                     (gx#stx-e
                                                      _%$%hd218781218857%_)))
                                                (let ((_%$%hd218784218865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e218783218862%_)))
                                                      (_%$%tl218785218867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e218783218862%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd218784218865%_)
                                                      (let ((_%$%e218786218870%_
                                                             (gx#stx-e
                                                              _%$%hd218784218865%_)))
                                                        (let ((_%$%hd218787218873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e218786218870%_)))
                      (_%$%tl218788218875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e218786218870%_))))
                  (if (gx#stx-null? _%$%tl218788218875%_)
                      (if (gx#stx-pair? _%$%tl218785218867%_)
                          (let ((_%$%e218789218878%_
                                 (gx#stx-e _%$%tl218785218867%_)))
                            (let ((_%$%hd218790218881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e218789218878%_)))
                                  (_%$%tl218791218883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e218789218878%_))))
                              (if (gx#stx-null? _%$%tl218791218883%_)
                                  (if (gx#stx-null? _%$%tl218782218859%_)
                                      (if (gx#stx-pair? _%$%tl218779218851%_)
                                          (let ((_%$%e218792218886%_
                                                 (gx#stx-e
                                                  _%$%tl218779218851%_)))
                                            (let ((_%$%hd218793218889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e218792218886%_)))
                                                  (_%$%tl218794218891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e218792218886%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl218794218891%_)
                                                  ((lambda (_%$%g218771218894%_
                                                            _%$%g218772218895%_
                                                            _%$%g218773218896%_)
                                                     (if (null? _%clauses218381%_)
                                                         (let* ((_%$%negation218920218927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%negation218380%_)
                        (_%$%E218922218930%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%negation218920218927%_
                                  '([E . negate]))
                           (void)))
                        (_%$%K218923218936%_
                         (lambda (_%negate218933%_ _%E218934%_)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%E218934%_ '())
                                                    (cons _%negate218933%_
                                                          '()))
                                              '())
                                        (cons (cons '%#let-values
                                                    (cons (cons (cons (cons _%$%g218773218896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (gxc#compile-e _%$%g218772218895%_) '()))
                        '())
                  (cons _%$%g218771218894%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            _%stx218258%_))))
                   (if (pair? _%$%negation218920218927%_)
                       (let ((_%$%hd218924218939%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%negation218920218927%_)))
                             (_%$%tl218925218941%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%negation218920218927%_))))
                         (let* ((_%E218944%_ _%$%hd218924218939%_)
                                (_%negate218946%_ _%$%tl218925218941%_))
                           (_%$%K218923218936%_ _%negate218946%_ _%E218944%_)))
                       (_%$%E218922218930%_)))
                 (gxc#optimize-match-body
                  _%stx218258%_
                  _%negation218380%_
                  (cons (cons '#f
                              (cons (gx#datum->syntax '#f '%#lambda)
                                    (cons '() (cons _%$%g218771218894%_ '()))))
                        _%clauses218381%_)
                  (cons (cons _%$%g218773218896%_
                              (gxc#compile-e _%$%g218772218895%_))
                        _%konts218382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd218793218889%_
                                                   _%$%hd218790218881%_
                                                   _%$%hd218787218873%_)
                                                  (_%$%g218768218833%_
                                                   _%$%g218770218836%_))))
                                          (_%$%g218768218833%_
                                           _%$%g218770218836%_))
                                      (_%$%g218768218833%_
                                       _%$%g218770218836%_))
                                  (_%$%g218768218833%_ _%$%g218770218836%_))))
                          (_%$%g218768218833%_ _%$%g218770218836%_))
                      (_%$%g218768218833%_ _%$%g218770218836%_))))
              (_%$%g218768218833%_ _%$%g218770218836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g218768218833%_
                                               _%$%g218770218836%_))))
                                      (_%$%g218768218833%_
                                       _%$%g218770218836%_))))
                              (_%$%g218768218833%_ _%$%g218770218836%_))
                          (_%$%g218768218833%_ _%$%g218770218836%_))
                      (_%$%g218768218833%_ _%$%g218770218836%_))))
              (_%$%g218768218833%_ _%$%g218770218836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g218767218948%_
                                           _%$%g218387218755%_)))
                                      _%$%hd218395218750%_)
                                     (_%$%g218384218726%_
                                      _%$%g218386218729%_))))
                             (_%$%g218384218726%_ _%$%g218386218729%_))
                         (_%$%g218384218726%_ _%$%g218386218729%_))
                     (_%$%g218384218726%_ _%$%g218386218729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g218384218726%_
                                                      _%$%g218386218729%_))
                                                 (_%$%g218384218726%_
                                                  _%$%g218386218729%_))
                                             (_%$%g218384218726%_
                                              _%$%g218386218729%_))))
                                     (_%$%g218384218726%_
                                      _%$%g218386218729%_)))))
                         (_%$%g218383218951%_ _%body218379%_))))
                   _%$%hd218284218346%_
                   _%$%hd218281218338%_
                   _%$%hd218278218330%_)
                  (_%$%g218260218290%_ _%$%g218261218293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g218260218290%_
                                                   _%$%g218261218293%_))
                                              (_%$%g218260218290%_
                                               _%$%g218261218293%_))
                                          (_%$%g218260218290%_
                                           _%$%g218261218293%_))))
                                  (_%$%g218260218290%_ _%$%g218261218293%_))
                              (_%$%g218260218290%_ _%$%g218261218293%_))))
                      (_%$%g218260218290%_ _%$%g218261218293%_))))
              (_%$%g218260218290%_ _%$%g218261218293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g218260218290%_
                                               _%$%g218261218293%_))))
                                      (_%$%g218260218290%_
                                       _%$%g218261218293%_))
                                  (_%$%g218260218290%_ _%$%g218261218293%_))
                              (_%$%g218260218290%_ _%$%g218261218293%_))))
                      (_%$%g218260218290%_ _%$%g218261218293%_)))))
          (_%$%g218259218954%_ _%stx218258%_))))
    (define gxc#optimize-match-body
      (lambda (_%stx217969%_
               _%negation217970%_
               _%clauses217971%_
               _%konts217972%_)
        (letrec ((_%push-variables217974%_
                  (lambda (_%clause218218%_ _%kont218219%_)
                    (let ((_%$%clause218220218230%_ _%clause218218%_)
                          (_%$%kont218221218231%_ _%kont218219%_))
                      (let* ((_%$%E218223218234%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%clause218220218230%_
                                       _%$%kont218221218231%_
                                       '([clause-name . clause-lambda]
                                         [K . _]))
                                (void)))
                             (_%$%K218224218241%_
                              (lambda (_%clause-lambda218237%_
                                       _%clause-name218238%_
                                       _%K218239%_)
                                (cons _%clause-name218238%_
                                      (gxc#apply-push-match-vars
                                       _%clause-lambda218237%_
                                       'vars:
                                       '()
                                       'K:
                                       _%K218239%_)))))
                        (if (pair? _%$%clause218220218230%_)
                            (let ((_%$%hd218227218244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%clause218220218230%_)))
                                  (_%$%tl218228218246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%clause218220218230%_))))
                              (let* ((_%clause-name218249%_
                                      _%$%hd218227218244%_)
                                     (_%clause-lambda218251%_
                                      _%$%tl218228218246%_))
                                (if (pair? _%$%kont218221218231%_)
                                    (let* ((_%$%hd218225218253%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%kont218221218231%_)))
                                           (_%K218256%_ _%$%hd218225218253%_))
                                      (_%$%K218224218241%_
                                       _%clause-lambda218251%_
                                       _%clause-name218249%_
                                       _%K218256%_))
                                    (_%$%E218223218234%_))))
                            (_%$%E218223218234%_))))))
                 (_%start-match217975%_
                  (lambda (_%kont218152%_)
                    (let* ((_%$%g218154218170%_
                            (lambda (_%$%g218155218167%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g218155218167%_)))
                           (_%$%g218153218215%_
                            (lambda (_%$%g218155218173%_)
                              (if (gx#stx-pair? _%$%g218155218173%_)
                                  (let ((_%$%e218157218175%_
                                         (gx#stx-e _%$%g218155218173%_)))
                                    (let ((_%$%hd218158218178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e218157218175%_)))
                                          (_%$%tl218159218180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e218157218175%_))))
                                      (if (gx#identifier? _%$%hd218158218178%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd218158218178%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl218159218180%_)
                                                  (let ((_%$%e218160218183%_
                                                         (gx#stx-e
                                                          _%$%tl218159218180%_)))
                                                    (let ((_%$%hd218161218186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e218160218183%_)))
                                                          (_%$%tl218162218188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e218160218183%_))))
                                                      (if (gx#stx-null?
                                                           _%$%hd218161218186%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl218162218188%_)
                                                              (let ((_%$%e218163218191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl218162218188%_)))
                        (let ((_%$%hd218164218194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e218163218191%_)))
                              (_%$%tl218165218196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e218163218191%_))))
                          (if (gx#stx-null? _%$%tl218165218196%_)
                              ((lambda (_%$%g218156218199%_)
                                 _%$%g218156218199%_)
                               _%$%hd218164218194%_)
                              (_%$%g218154218170%_ _%$%g218155218173%_))))
                      (_%$%g218154218170%_ _%$%g218155218173%_))
                  (_%$%g218154218170%_ _%$%g218155218173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g218154218170%_
                                                   _%$%g218155218173%_))
                                              (_%$%g218154218170%_
                                               _%$%g218155218173%_))
                                          (_%$%g218154218170%_
                                           _%$%g218155218173%_))))
                                  (_%$%g218154218170%_ _%$%g218155218173%_)))))
                      (_%$%g218153218215%_ _%kont218152%_))))
                 (_%match-body217976%_
                  (lambda (_%blocks218051%_)
                    (let* ((_%$%blocks218052218061%_ _%blocks218051%_)
                           (_%$%E218054218064%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%blocks218052218061%_
                                     '([[#f . start] . rest]))
                              (void)))
                           (_%$%K218055218135%_
                            (lambda (_%rest218067%_ _%start218068%_)
                              (let _%lp218070%_ ((_%rest218072%_
                                                  _%rest218067%_)
                                                 (_%body218073%_
                                                  (_%start-match217975%_
                                                   _%start218068%_)))
                                (let* ((_%$%rest218074218082%_ _%rest218072%_)
                                       (_%$%E218077218086%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%rest218074218082%_
                                                 '([block . rest])
                                                 'else)
                                          (void)))
                                       (_%$%else218076218090%_
                                        (lambda () _%body218073%_))
                                       (_%$%K218078218123%_
                                        (lambda (_%rest218093%_
                                                 _%block218094%_)
                                          (let* ((_%$%block218095218102%_
                                                  _%block218094%_)
                                                 (_%$%E218097218105%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%block218095218102%_
                                                           '([K . kont]))
                                                    (void)))
                                                 (_%$%K218098218111%_
                                                  (lambda (_%kont218108%_
                                                           _%K218109%_)
                                                    (_%lp218070%_
                                                     _%rest218093%_
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _%K218109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _%kont218108%_ '()))
                               '())
                         (cons _%body218073%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%block218095218102%_)
                                                (let ((_%$%hd218099218114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%block218095218102%_)))
                                                      (_%$%tl218100218116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%block218095218102%_))))
                                                  (let* ((_%K218119%_
                                                          _%$%hd218099218114%_)
                                                         (_%kont218121%_
                                                          _%$%tl218100218116%_))
                                                    (_%$%K218098218111%_
                                                     _%kont218121%_
                                                     _%K218119%_)))
                                                (_%$%E218097218105%_))))))
                                  (if (pair? _%$%rest218074218082%_)
                                      (let ((_%$%hd218079218126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest218074218082%_)))
                                            (_%$%tl218080218128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest218074218082%_))))
                                        (let* ((_%block218131%_
                                                _%$%hd218079218126%_)
                                               (_%rest218133%_
                                                _%$%tl218080218128%_))
                                          (_%$%K218078218123%_
                                           _%rest218133%_
                                           _%block218131%_)))
                                      (_%$%else218076218090%_)))))))
                      (if (pair? _%$%blocks218052218061%_)
                          (let ((_%$%hd218056218138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%blocks218052218061%_)))
                                (_%$%tl218057218140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%blocks218052218061%_))))
                            (if (pair? _%$%hd218056218138%_)
                                (let ((_%$%hd218058218143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd218056218138%_)))
                                      (_%$%tl218059218145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd218056218138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##eq? _%$%hd218058218143%_ '#f))
                                      (let* ((_%start218148%_
                                              _%$%tl218059218145%_)
                                             (_%rest218150%_
                                              _%$%tl218057218140%_))
                                        (_%$%K218055218135%_
                                         _%rest218150%_
                                         _%start218148%_))
                                      (_%$%E218054218064%_)))
                                (_%$%E218054218064%_)))
                          (_%$%E218054218064%_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_%clauses217979%_
                     (map _%push-variables217974%_
                          _%clauses217971%_
                          _%konts217972%_))
                    (_%blocks217981%_
                     (gxc#optimize-match-basic-blocks _%clauses217979%_))
                    (_%blocks217983%_
                     (gxc#optimize-match-fold-basic-blocks _%blocks217981%_))
                    (_%body217985%_ (_%match-body217976%_ _%blocks217983%_))
                    (_%bind218019%_
                     (map (lambda (_%$%e217986217988%_)
                            (let* ((_%$%$%e217986217990217997%_
                                    _%$%e217986217988%_)
                                   (_%$%E217992218001%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%$%$%e217986217990217997%_
                                             '([K . kont]))
                                      (void)))
                                   (_%$%K217993218007%_
                                    (lambda (_%kont218004%_ _%K218005%_)
                                      (cons (cons _%K218005%_ '())
                                            (cons _%kont218004%_ '())))))
                              (if (pair? _%$%$%e217986217990217997%_)
                                  (let ((_%$%hd217994218010%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%$%e217986217990217997%_)))
                                        (_%$%tl217995218012%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%$%e217986217990217997%_))))
                                    (let* ((_%K218015%_ _%$%hd217994218010%_)
                                           (_%kont218017%_
                                            _%$%tl217995218012%_))
                                      (_%$%K217993218007%_
                                       _%kont218017%_
                                       _%K218015%_)))
                                  (_%$%E217992218001%_))))
                          _%konts217972%_))
                    (_%negate218048%_
                     (let* ((_%$%negation218020218027%_ _%negation217970%_)
                            (_%$%E218022218030%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%negation218020218027%_
                                      '([K . kont]))
                               (void)))
                            (_%$%K218023218036%_
                             (lambda (_%kont218033%_ _%K218034%_)
                               (cons (cons _%K218034%_ '())
                                     (cons _%kont218033%_ '())))))
                       (if (pair? _%$%negation218020218027%_)
                           (let ((_%$%hd218024218039%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%negation218020218027%_)))
                                 (_%$%tl218025218041%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%negation218020218027%_))))
                             (let* ((_%K218044%_ _%$%hd218024218039%_)
                                    (_%kont218046%_ _%$%tl218025218041%_))
                               (_%$%K218023218036%_
                                _%kont218046%_
                                _%K218044%_)))
                           (_%$%E218022218030%_)))))
               (gxc#xform-wrap-source
                (cons '%#let-values
                      (cons (cons _%negate218048%_ '())
                            (cons (cons '%#let-values
                                        (cons _%bind218019%_
                                              (cons _%body217985%_ '())))
                                  '())))
                _%stx217969%_)))
           gx#current-expander-context
           (gx#make-local-context)))))
    (define gxc#optimize-match-basic-blocks
      (lambda (_%clauses217929%_)
        (let _%lp217931%_ ((_%rest217933%_ _%clauses217929%_)
                           (_%blocks217934%_ '()))
          (let* ((_%$%rest217935217943%_ _%rest217933%_)
                 (_%$%E217938217947%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest217935217943%_
                           '([clause . rest])
                           'else)
                    (void)))
                 (_%$%else217937217951%_
                  (lambda () (reverse _%blocks217934%_)))
                 (_%$%K217939217957%_
                  (lambda (_%rest217954%_ _%clause217955%_)
                    (_%lp217931%_
                     _%rest217954%_
                     (gxc#optimize-match-lift-basic-blocks
                      _%clause217955%_
                      _%blocks217934%_)))))
            (if (pair? _%$%rest217935217943%_)
                (let ((_%$%hd217940217960%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest217935217943%_)))
                      (_%$%tl217941217962%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest217935217943%_))))
                  (let* ((_%clause217965%_ _%$%hd217940217960%_)
                         (_%rest217967%_ _%$%tl217941217962%_))
                    (_%$%K217939217957%_ _%rest217967%_ _%clause217965%_)))
                (_%$%else217937217951%_))))))
    (define gxc#optimize-match-lift-basic-blocks
      (lambda (_%clause217277%_ _%blocks217278%_)
        (letrec ((_%bind->args217280%_
                  (lambda (_%bind217924%_)
                    (foldl (lambda (_%b217926%_ _%r217927%_)
                             (cons (cons '%#ref (cons (car _%b217926%_) '()))
                                   _%r217927%_))
                           '()
                           _%bind217924%_)))
                 (_%create-block217281%_
                  (lambda (_%body217872%_
                           _%let-bind217873%_
                           _%bind217874%_
                           _%assert217875%_)
                    (let* ((_%id217877%_ (make-symbol (gensym '__match)))
                           (_%id217879%_ (gx#core-quote-syntax _%id217877%_))
                           (_%_217881%_ (gx#core-bind-runtime! _%id217879%_))
                           (_%block217883%_
                            (cons _%id217879%_
                                  (cons _%body217872%_
                                        (cons _%bind217874%_
                                              (cons _%assert217875%_ '())))))
                           (_%continue217885%_
                            (cons '%#call
                                  (cons (cons '%#ref (cons _%id217879%_ '()))
                                        (_%bind->args217280%_
                                         _%bind217874%_))))
                           (_%continue217921%_
                            (if (null? _%let-bind217873%_)
                                _%continue217885%_
                                (let ((_%locals217919%_
                                       (map (lambda (_%$%e217886217888%_)
                                              (let* ((_%$%$%e217886217890217897%_
                                                      _%$%e217886217888%_)
                                                     (_%$%E217892217901%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%$%e217886217890217897%_
                                                               '([id . expr]))
                                                        (void)))
                                                     (_%$%K217893217907%_
                                                      (lambda (_%expr217904%_
                                                               _%id217905%_)
                                                        (cons (cons _%id217905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _%expr217904%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (pair? _%$%$%e217886217890217897%_)
                                                    (let ((_%$%hd217894217910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%$%e217886217890217897%_)))
                                                          (_%$%tl217895217912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%$%e217886217890217897%_))))
                                                      (let* ((_%id217915%_
                                                              _%$%hd217894217910%_)
                                                             (_%expr217917%_
                                                              _%$%tl217895217912%_))
                                                        (_%$%K217893217907%_
                                                         _%expr217917%_
                                                         _%id217915%_)))
                                                    (_%$%E217892217901%_))))
                                            _%let-bind217873%_)))
                                  (cons '%#let-values
                                        (cons _%locals217919%_
                                              (cons _%continue217885%_
                                                    '())))))))
                      (values _%continue217921%_ _%block217883%_))))
                 (_%basic-block217282%_
                  (lambda (_%body217462%_ _%bind217463%_ _%assert217464%_)
                    (let* ((_%$%g217469217553%_
                            (lambda (_%$%g217470217550%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g217470217550%_)))
                           (_%$%g217468217560%_
                            (lambda (_%$%g217470217556%_)
                              ((lambda () (values _%body217462%_ '())))))
                           (_%$%g217467217680%_
                            (lambda (_%$%g217470217563%_)
                              (if (gx#stx-pair? _%$%g217470217563%_)
                                  (let ((_%$%e217520217565%_
                                         (gx#stx-e _%$%g217470217563%_)))
                                    (let ((_%$%hd217521217568%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e217520217565%_)))
                                          (_%$%tl217522217570%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e217520217565%_))))
                                      (if (gx#identifier? _%$%hd217521217568%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd217521217568%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl217522217570%_)
                                                  (let ((_%$%e217523217573%_
                                                         (gx#stx-e
                                                          _%$%tl217522217570%_)))
                                                    (let ((_%$%hd217524217576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e217523217573%_)))
                                                          (_%$%tl217525217578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e217523217573%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%hd217524217576%_)
                                                          (let ((_g219101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%hd217524217576%_ '0)))
                    (begin
                      (let ((_g219102_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g219101_)
                                   (##values-length _g219101_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g219102_ 2)))
                            (error "Context expects 2 values" _g219102_)))
                      (let ((_%$%target217526217581%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219101_ 0)))
                            (_%$%tl217528217583%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219101_ 1))))
                        (if (gx#stx-null? _%$%tl217528217583%_)
                            (letrec ((_%$%loop217529217586%_
                                      (lambda (_%$%hd217527217589%_
                                               _%$%expr217533217591%_
                                               _%$%id217534217592%_)
                                        (if (gx#stx-pair? _%$%hd217527217589%_)
                                            (let ((_%$%e217530217594%_
                                                   (gx#stx-e
                                                    _%$%hd217527217589%_)))
                                              (let ((_%$%lp-hd217531217597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e217530217594%_)))
                                                    (_%$%lp-tl217532217599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e217530217594%_))))
                                                (if (gx#stx-pair?
                                                     _%$%lp-hd217531217597%_)
                                                    (let ((_%$%e217537217602%_
                                                           (gx#stx-e
                                                            _%$%lp-hd217531217597%_)))
                                                      (let ((_%$%hd217538217605%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e217537217602%_)))
                    (_%$%tl217539217607%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e217537217602%_))))
                (if (gx#stx-pair? _%$%hd217538217605%_)
                    (let ((_%$%e217540217610%_
                           (gx#stx-e _%$%hd217538217605%_)))
                      (let ((_%$%hd217541217613%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e217540217610%_)))
                            (_%$%tl217542217615%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e217540217610%_))))
                        (if (gx#stx-null? _%$%tl217542217615%_)
                            (if (gx#stx-pair? _%$%tl217539217607%_)
                                (let ((_%$%e217543217618%_
                                       (gx#stx-e _%$%tl217539217607%_)))
                                  (let ((_%$%hd217544217621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e217543217618%_)))
                                        (_%$%tl217545217623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e217543217618%_))))
                                    (if (gx#stx-null? _%$%tl217545217623%_)
                                        (_%$%loop217529217586%_
                                         _%$%lp-tl217532217599%_
                                         (cons _%$%hd217544217621%_
                                               _%$%expr217533217591%_)
                                         (cons _%$%hd217541217613%_
                                               _%$%id217534217592%_))
                                        (_%$%g217468217560%_
                                         _%$%g217470217563%_))))
                                (_%$%g217468217560%_ _%$%g217470217563%_))
                            (_%$%g217468217560%_ _%$%g217470217563%_))))
                    (_%$%g217468217560%_ _%$%g217470217563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g217468217560%_
                                                     _%$%g217470217563%_))))
                                            (let ((_%$%expr217535217626%_
                                                   (reverse _%$%expr217533217591%_))
                                                  (_%$%id217536217627%_
                                                   (reverse _%$%id217534217592%_)))
                                              (if (gx#stx-pair?
                                                   _%$%tl217525217578%_)
                                                  (let ((_%$%e217546217629%_
                                                         (gx#stx-e
                                                          _%$%tl217525217578%_)))
                                                    (let ((_%$%hd217547217632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e217546217629%_)))
                                                          (_%$%tl217548217634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e217546217629%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl217548217634%_)
                                                          ((lambda (_%$%g217517217637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g217518217638%_
                            _%$%g217519217639%_)
                     (let* ((_%let-bind217674%_
                             (map cons
                                  (foldr (lambda (_%$%g217659217662%_
                                                  _%$%g217660217664%_)
                                           (cons _%$%g217659217662%_
                                                 _%$%g217660217664%_))
                                         '()
                                         _%$%g217519217639%_)
                                  (foldr (lambda (_%$%g217666217669%_
                                                  _%$%g217667217671%_)
                                           (cons _%$%g217666217669%_
                                                 _%$%g217667217671%_))
                                         '()
                                         _%$%g217518217638%_)))
                            (_g219103_
                             (_%create-block217281%_
                              _%$%g217517217637%_
                              _%let-bind217674%_
                              (foldl cons _%bind217463%_ _%let-bind217674%_)
                              _%assert217464%_)))
                       (begin
                         (let ((_g219104_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g219103_)
                                      (##values-length _g219103_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g219104_ 2)))
                               (error "Context expects 2 values" _g219104_)))
                         (let ((_%continue217676%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g219103_ 0)))
                               (_%block217677%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g219103_ 1))))
                           (values _%continue217676%_
                                   (cons _%block217677%_ '()))))))
                   _%$%hd217547217632%_
                   _%$%expr217535217626%_
                   _%$%id217536217627%_)
                  (_%$%g217468217560%_ _%$%g217470217563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217468217560%_
                                                   _%$%g217470217563%_)))))))
                              (_%$%loop217529217586%_
                               _%$%target217526217581%_
                               '()
                               '()))
                            (_%$%g217468217560%_ _%$%g217470217563%_)))))
                  (_%$%g217468217560%_ _%$%g217470217563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217468217560%_
                                                   _%$%g217470217563%_))
                                              (_%$%g217468217560%_
                                               _%$%g217470217563%_))
                                          (_%$%g217468217560%_
                                           _%$%g217470217563%_))))
                                  (_%$%g217468217560%_ _%$%g217470217563%_))))
                           (_%$%g217466217771%_
                            (lambda (_%$%g217470217683%_)
                              (if (gx#stx-pair? _%$%g217470217683%_)
                                  (let ((_%$%e217486217685%_
                                         (gx#stx-e _%$%g217470217683%_)))
                                    (let ((_%$%hd217487217688%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e217486217685%_)))
                                          (_%$%tl217488217690%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e217486217685%_))))
                                      (if (gx#identifier? _%$%hd217487217688%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd217487217688%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl217488217690%_)
                                                  (let ((_%$%e217489217693%_
                                                         (gx#stx-e
                                                          _%$%tl217488217690%_)))
                                                    (let ((_%$%hd217490217696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e217489217693%_)))
                                                          (_%$%tl217491217698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e217489217693%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%hd217490217696%_)
                                                          (let ((_g219105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%hd217490217696%_ '0)))
                    (begin
                      (let ((_g219106_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g219105_)
                                   (##values-length _g219105_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g219106_ 2)))
                            (error "Context expects 2 values" _g219106_)))
                      (let ((_%$%target217492217701%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219105_ 0)))
                            (_%$%tl217494217703%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219105_ 1))))
                        (if (gx#stx-null? _%$%tl217494217703%_)
                            (letrec ((_%$%loop217495217706%_
                                      (lambda (_%$%hd217493217709%_)
                                        (if (gx#stx-pair? _%$%hd217493217709%_)
                                            (let ((_%$%e217496217712%_
                                                   (gx#stx-e
                                                    _%$%hd217493217709%_)))
                                              (let ((_%$%lp-hd217497217715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e217496217712%_)))
                                                    (_%$%lp-tl217498217717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e217496217712%_))))
                                                (if (gx#stx-pair?
                                                     _%$%lp-hd217497217715%_)
                                                    (let ((_%$%e217499217720%_
                                                           (gx#stx-e
                                                            _%$%lp-hd217497217715%_)))
                                                      (let ((_%$%hd217500217723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e217499217720%_)))
                    (_%$%tl217501217725%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e217499217720%_))))
                (if (gx#stx-pair? _%$%hd217500217723%_)
                    (let ((_%$%e217502217728%_
                           (gx#stx-e _%$%hd217500217723%_)))
                      (let ((_%$%hd217503217731%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e217502217728%_)))
                            (_%$%tl217504217733%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e217502217728%_))))
                        (if (gx#stx-null? _%$%tl217504217733%_)
                            (if (gx#stx-pair? _%$%tl217501217725%_)
                                (let ((_%$%e217505217736%_
                                       (gx#stx-e _%$%tl217501217725%_)))
                                  (let ((_%$%hd217506217739%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e217505217736%_)))
                                        (_%$%tl217507217741%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e217505217736%_))))
                                    (if (gx#stx-pair? _%$%hd217506217739%_)
                                        (let ((_%$%e217508217744%_
                                               (gx#stx-e
                                                _%$%hd217506217739%_)))
                                          (let ((_%$%hd217509217747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e217508217744%_)))
                                                (_%$%tl217510217749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e217508217744%_))))
                                            (if (gx#identifier?
                                                 _%$%hd217509217747%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd217509217747%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl217510217749%_)
                                                        (let ((_%$%e217511217752%_
                                                               (gx#stx-e
                                                                _%$%tl217510217749%_)))
                                                          (let ((_%$%hd217512217755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e217511217752%_)))
                        (_%$%tl217513217757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e217511217752%_))))
                    (if (gx#stx-null? _%$%tl217513217757%_)
                        (if (gx#stx-null? _%$%tl217507217741%_)
                            (_%$%loop217495217706%_ _%$%lp-tl217498217717%_)
                            (_%$%g217467217680%_ _%$%g217470217683%_))
                        (_%$%g217467217680%_ _%$%g217470217683%_))))
                (_%$%g217467217680%_ _%$%g217470217683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g217467217680%_
                                                     _%$%g217470217683%_))
                                                (_%$%g217467217680%_
                                                 _%$%g217470217683%_))))
                                        (_%$%g217467217680%_
                                         _%$%g217470217683%_))))
                                (_%$%g217467217680%_ _%$%g217470217683%_))
                            (_%$%g217467217680%_ _%$%g217470217683%_))))
                    (_%$%g217467217680%_ _%$%g217470217683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g217467217680%_
                                                     _%$%g217470217683%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl217491217698%_)
                                                (let ((_%$%e217514217761%_
                                                       (gx#stx-e
                                                        _%$%tl217491217698%_)))
                                                  (let ((_%$%hd217515217764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e217514217761%_)))
                                                        (_%$%tl217516217766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e217514217761%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl217516217766%_)
                                                        ((lambda ()
                                                           (values _%body217462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (_%$%g217467217680%_ _%$%g217470217683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g217467217680%_
                                                 _%$%g217470217683%_))))))
                              (_%$%loop217495217706%_
                               _%$%target217492217701%_))
                            (_%$%g217467217680%_ _%$%g217470217683%_)))))
                  (_%$%g217467217680%_ _%$%g217470217683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217467217680%_
                                                   _%$%g217470217683%_))
                                              (_%$%g217467217680%_
                                               _%$%g217470217683%_))
                                          (_%$%g217467217680%_
                                           _%$%g217470217683%_))))
                                  (_%$%g217467217680%_ _%$%g217470217683%_))))
                           (_%$%g217465217869%_
                            (lambda (_%$%g217470217774%_)
                              (if (gx#stx-pair? _%$%g217470217774%_)
                                  (let ((_%$%e217474217776%_
                                         (gx#stx-e _%$%g217470217774%_)))
                                    (let ((_%$%hd217475217779%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e217474217776%_)))
                                          (_%$%tl217476217781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e217474217776%_))))
                                      (if (gx#identifier? _%$%hd217475217779%_)
                                          (if (gx#stx-eq?
                                               '%#if
                                               _%$%hd217475217779%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl217476217781%_)
                                                  (let ((_%$%e217477217784%_
                                                         (gx#stx-e
                                                          _%$%tl217476217781%_)))
                                                    (let ((_%$%hd217478217787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e217477217784%_)))
                                                          (_%$%tl217479217789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e217477217784%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl217479217789%_)
                                                          (let ((_%$%e217480217792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl217479217789%_)))
                    (let ((_%$%hd217481217795%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e217480217792%_)))
                          (_%$%tl217482217797%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e217480217792%_))))
                      (if (gx#stx-pair? _%$%tl217482217797%_)
                          (let ((_%$%e217483217800%_
                                 (gx#stx-e _%$%tl217482217797%_)))
                            (let ((_%$%hd217484217803%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e217483217800%_)))
                                  (_%$%tl217485217805%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e217483217800%_))))
                              (if (gx#stx-null? _%$%tl217485217805%_)
                                  ((lambda (_%$%g217471217808%_
                                            _%$%g217472217809%_
                                            _%$%g217473217810%_)
                                     (let ((_g219107_
                                            (_%create-block217281%_
                                             _%$%g217472217809%_
                                             '()
                                             _%bind217463%_
                                             (cons (cons _%$%g217473217810%_
                                                         '#t)
                                                   _%assert217464%_))))
                                       (begin
                                         (let ((_g219108_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g219107_)
                                                      (##values-length
                                                       _g219107_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g219108_ 2)))
                                               (error "Context expects 2 values"
                                                      _g219108_)))
                                         (let ((_%k-continue217828%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g219107_ 0)))
                                               (_%k-block217829%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g219107_ 1))))
                                           (let* ((_%$%g217832217841%_
                                                   (lambda (_%$%g217833217838%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g217833217838%_)))
                                                  (_%$%g217831217851%_
                                                   (lambda (_%$%g217833217844%_)
                                                     ((lambda ()
                                                        (let ((_g219109_
                                                               (_%create-block217281%_
                                                                _%$%g217471217808%_
                                                                '()
                                                                _%bind217463%_
                                                                (cons (cons _%$%g217473217810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f)
                              _%assert217464%_))))
                  (begin
                    (let ((_g219110_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g219109_)
                                 (##values-length _g219109_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g219110_ 2)))
                          (error "Context expects 2 values" _g219110_)))
                    (let ((_%e-continue217848%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g219109_ 0)))
                          (_%e-block217849%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g219109_ 1))))
                      (values (cons '%#if
                                    (cons _%$%g217473217810%_
                                          (cons _%k-continue217828%_
                                                (cons _%e-continue217848%_
                                                      '()))))
                              (cons _%k-block217829%_
                                    (cons _%e-block217849%_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217830217866%_
                                                   (lambda (_%$%g217833217854%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g217833217854%_)
                                                         (let ((_%$%e217834217856%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g217833217854%_)))
                   (let ((_%$%hd217835217859%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e217834217856%_)))
                         (_%$%tl217836217861%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e217834217856%_))))
                     (if (gx#identifier? _%$%hd217835217859%_)
                         (if (gx#stx-eq? '%#call _%$%hd217835217859%_)
                             ((lambda ()
                                (values (cons '%#if
                                              (cons _%$%g217473217810%_
                                                    (cons _%k-continue217828%_
                                                          (cons _%$%g217471217808%_
                                                                '()))))
                                        (cons _%k-block217829%_ '()))))
                             (_%$%g217831217851%_ _%$%g217833217854%_))
                         (_%$%g217831217851%_ _%$%g217833217854%_))))
                 (_%$%g217831217851%_ _%$%g217833217854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g217830217866%_
                                              _%$%g217471217808%_))))))
                                   _%$%hd217484217803%_
                                   _%$%hd217481217795%_
                                   _%$%hd217478217787%_)
                                  (_%$%g217466217771%_ _%$%g217470217774%_))))
                          (_%$%g217466217771%_ _%$%g217470217774%_))))
                  (_%$%g217466217771%_ _%$%g217470217774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217466217771%_
                                                   _%$%g217470217774%_))
                                              (_%$%g217466217771%_
                                               _%$%g217470217774%_))
                                          (_%$%g217466217771%_
                                           _%$%g217470217774%_))))
                                  (_%$%g217466217771%_ _%$%g217470217774%_)))))
                      (_%$%g217465217869%_ _%body217462%_))))
                 (_%fold-blocks217283%_
                  (lambda (_%rest217381%_ _%blocks217382%_)
                    (let* ((_%$%rest217383217400%_ _%rest217381%_)
                           (_%$%E217386217404%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest217383217400%_
                                     '([[name body bind assert] . rest])
                                     '([]))
                              (void)))
                           (_%$%try-match217385217412%_
                            (lambda ()
                              (let ((_%$%K217387217409%_
                                     (lambda () _%blocks217382%_)))
                                (if (null? _%$%rest217383217400%_)
                                    (_%$%K217387217409%_)
                                    (_%$%E217386217404%_)))))
                           (_%$%K217388217424%_
                            (lambda (_%rest217415%_
                                     _%assert217416%_
                                     _%bind217417%_
                                     _%body217418%_
                                     _%name217419%_)
                              (let ((_g219111_
                                     (_%basic-block217282%_
                                      _%body217418%_
                                      _%bind217417%_
                                      _%assert217416%_)))
                                (begin
                                  (let ((_g219112_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g219111_)
                                               (##values-length _g219111_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g219112_ 2)))
                                        (error "Context expects 2 values"
                                               _g219112_)))
                                  (let ((_%body217421%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g219111_ 0)))
                                        (_%body-blocks217422%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g219111_ 1))))
                                    (_%fold-blocks217283%_
                                     (foldl cons
                                            _%rest217415%_
                                            _%body-blocks217422%_)
                                     (cons (cons _%name217419%_
                                                 (cons 'continue:
                                                       (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (reverse (map car _%bind217417%_))
                                 (cons _%body217421%_ '())))
                     (cons _%assert217416%_ (cons _%bind217417%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%blocks217382%_))))))))
                      (if (pair? _%$%rest217383217400%_)
                          (let ((_%$%hd217389217427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest217383217400%_)))
                                (_%$%tl217390217429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest217383217400%_))))
                            (if (pair? _%$%hd217389217427%_)
                                (let ((_%$%hd217391217432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd217389217427%_)))
                                      (_%$%tl217392217434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd217389217427%_))))
                                  (let ((_%name217437%_ _%$%hd217391217432%_))
                                    (if (pair? _%$%tl217392217434%_)
                                        (let ((_%$%hd217393217439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl217392217434%_)))
                                              (_%$%tl217394217441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl217392217434%_))))
                                          (let ((_%body217444%_
                                                 _%$%hd217393217439%_))
                                            (if (pair? _%$%tl217394217441%_)
                                                (let ((_%$%hd217395217446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl217394217441%_)))
                                                      (_%$%tl217396217448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl217394217441%_))))
                                                  (let ((_%bind217451%_
                                                         _%$%hd217395217446%_))
                                                    (if (pair? _%$%tl217396217448%_)
                                                        (let ((_%$%hd217397217453%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%tl217396217448%_)))
                      (_%$%tl217398217455%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%tl217396217448%_))))
                  (let ((_%assert217458%_ _%$%hd217397217453%_))
                    (if (null? _%$%tl217398217455%_)
                        (let ((_%rest217460%_ _%$%tl217390217429%_))
                          (_%$%K217388217424%_
                           _%rest217460%_
                           _%assert217458%_
                           _%bind217451%_
                           _%body217444%_
                           _%name217437%_))
                        (_%$%try-match217385217412%_))))
                (_%$%try-match217385217412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%try-match217385217412%_))))
                                        (_%$%try-match217385217412%_))))
                                (_%$%try-match217385217412%_)))
                          (_%$%try-match217385217412%_))))))
          (let* ((_%$%clause217284217291%_ _%clause217277%_)
                 (_%$%E217286217294%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%clause217284217291%_
                           '([name . body]))
                    (void)))
                 (_%$%K217287217369%_
                  (lambda (_%body217297%_ _%name217298%_)
                    (let* ((_%$%g217300217316%_
                            (lambda (_%$%g217301217313%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g217301217313%_)))
                           (_%$%g217299217366%_
                            (lambda (_%$%g217301217319%_)
                              (if (gx#stx-pair? _%$%g217301217319%_)
                                  (let ((_%$%e217303217321%_
                                         (gx#stx-e _%$%g217301217319%_)))
                                    (let ((_%$%hd217304217324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e217303217321%_)))
                                          (_%$%tl217305217326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e217303217321%_))))
                                      (if (gx#identifier? _%$%hd217304217324%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd217304217324%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl217305217326%_)
                                                  (let ((_%$%e217306217329%_
                                                         (gx#stx-e
                                                          _%$%tl217305217326%_)))
                                                    (let ((_%$%hd217307217332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e217306217329%_)))
                                                          (_%$%tl217308217334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e217306217329%_))))
                                                      (if (gx#stx-null?
                                                           _%$%hd217307217332%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl217308217334%_)
                                                              (let ((_%$%e217309217337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl217308217334%_)))
                        (let ((_%$%hd217310217340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217309217337%_)))
                              (_%$%tl217311217342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217309217337%_))))
                          (if (gx#stx-null? _%$%tl217311217342%_)
                              ((lambda (_%$%g217302217345%_)
                                 (let ((_g219113_
                                        (_%basic-block217282%_
                                         _%$%g217302217345%_
                                         '()
                                         '())))
                                   (begin
                                     (let ((_g219114_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g219113_)
                                                  (##values-length _g219113_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g219114_ 2)))
                                           (error "Context expects 2 values"
                                                  _g219114_)))
                                     (let ((_%body217363%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g219113_ 0)))
                                           (_%body-blocks217364%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g219113_ 1))))
                                       (_%fold-blocks217283%_
                                        _%body-blocks217364%_
                                        (cons (cons _%name217298%_
                                                    (cons 'restart:
                                                          (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '() (cons _%body217363%_ '())))
                        (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%blocks217278%_))))))
                               _%$%hd217310217340%_)
                              (_%$%g217300217316%_ _%$%g217301217319%_))))
                      (_%$%g217300217316%_ _%$%g217301217319%_))
                  (_%$%g217300217316%_ _%$%g217301217319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g217300217316%_
                                                   _%$%g217301217319%_))
                                              (_%$%g217300217316%_
                                               _%$%g217301217319%_))
                                          (_%$%g217300217316%_
                                           _%$%g217301217319%_))))
                                  (_%$%g217300217316%_ _%$%g217301217319%_)))))
                      (_%$%g217299217366%_ _%body217297%_)))))
            (if (pair? _%$%clause217284217291%_)
                (let ((_%$%hd217288217372%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%clause217284217291%_)))
                      (_%$%tl217289217374%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%clause217284217291%_))))
                  (let* ((_%name217377%_ _%$%hd217288217372%_)
                         (_%body217379%_ _%$%tl217289217374%_))
                    (_%$%K217287217369%_ _%body217379%_ _%name217377%_)))
                (_%$%E217286217294%_))))))
    (define gxc#optimize-match-fold-basic-blocks
      (lambda (_%blocks216886%_)
        (let _%lp216888%_ ((_%rest216890%_ _%blocks216886%_)
                           (_%blocks216891%_ '()))
          (let* ((_%$%rest216892216900%_ _%rest216890%_)
                 (_%$%E216895216904%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest216892216900%_
                           '([block . rest])
                           'else)
                    (void)))
                 (_%$%else216894216948%_
                  (lambda ()
                    (foldl (lambda (_%block216908%_ _%r216909%_)
                             (let* ((_%$%block216910216921%_ _%block216908%_)
                                    (_%$%E216912216924%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%block216910216921%_
                                              '([name _ kont . _]))
                                       (void)))
                                    (_%$%K216913216930%_
                                     (lambda (_%kont216927%_ _%name216928%_)
                                       (cons (cons _%name216928%_
                                                   _%kont216927%_)
                                             _%r216909%_))))
                               (if (pair? _%$%block216910216921%_)
                                   (let ((_%$%hd216914216933%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%block216910216921%_)))
                                         (_%$%tl216915216935%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%block216910216921%_))))
                                     (let ((_%name216938%_
                                            _%$%hd216914216933%_))
                                       (if (pair? _%$%tl216915216935%_)
                                           (let ((_%$%tl216917216940%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%tl216915216935%_))))
                                             (if (pair? _%$%tl216917216940%_)
                                                 (let* ((_%$%hd216918216943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl216917216940%_)))
                                                        (_%kont216946%_
                                                         _%$%hd216918216943%_))
                                                   (_%$%K216913216930%_
                                                    _%kont216946%_
                                                    _%name216938%_))
                                                 (_%$%E216912216924%_)))
                                           (_%$%E216912216924%_))))
                                   (_%$%E216912216924%_))))
                           '()
                           _%blocks216891%_)))
                 (_%$%K216896217265%_
                  (lambda (_%rest216951%_ _%block216952%_)
                    (let* ((_%$%block216953216978%_ _%block216952%_)
                           (_%$%E216956216982%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%block216953216978%_
                                     '([name restart: kont assert])
                                     '([name continue: kont assert bind]))
                              (void)))
                           (_%$%try-match216955217155%_
                            (lambda ()
                              (let ((_%$%K216957217119%_
                                     (lambda (_%bind216986%_
                                              _%assert216987%_
                                              _%kont216988%_
                                              _%name216989%_)
                                       (let* ((_%$%g216991217017%_
                                               (lambda (_%$%g216992217014%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g216992217014%_)))
                                              (_%$%g216990217116%_
                                               (lambda (_%$%g216992217020%_)
                                                 (if (gx#stx-pair?
                                                      _%$%g216992217020%_)
                                                     (let ((_%$%e216995217022%_
                                                            (gx#stx-e
                                                             _%$%g216992217020%_)))
                                                       (let ((_%$%hd216996217025%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e216995217022%_)))
                     (_%$%tl216997217027%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e216995217022%_))))
                 (if (gx#identifier? _%$%hd216996217025%_)
                     (if (gx#stx-eq? '%#lambda _%$%hd216996217025%_)
                         (if (gx#stx-pair? _%$%tl216997217027%_)
                             (let ((_%$%e216998217030%_
                                    (gx#stx-e _%$%tl216997217027%_)))
                               (let ((_%$%hd216999217033%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e216998217030%_)))
                                     (_%$%tl217000217035%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e216998217030%_))))
                                 (if (gx#stx-pair/null? _%$%hd216999217033%_)
                                     (let ((_g219115_
                                            (gx#syntax-split-splice
                                             _%$%hd216999217033%_
                                             '0)))
                                       (begin
                                         (let ((_g219116_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g219115_)
                                                      (##values-length
                                                       _g219115_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g219116_ 2)))
                                               (error "Context expects 2 values"
                                                      _g219116_)))
                                         (let ((_%$%target217001217038%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g219115_ 0)))
                                               (_%$%tl217003217040%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g219115_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl217003217040%_)
                                               (letrec ((_%$%loop217004217043%_
                                                         (lambda (_%$%hd217002217046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id217008217048%_)
                   (if (gx#stx-pair? _%$%hd217002217046%_)
                       (let ((_%$%e217005217050%_
                              (gx#stx-e _%$%hd217002217046%_)))
                         (let ((_%$%lp-hd217006217053%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e217005217050%_)))
                               (_%$%lp-tl217007217055%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e217005217050%_))))
                           (_%$%loop217004217043%_
                            _%$%lp-tl217007217055%_
                            (cons _%$%lp-hd217006217053%_
                                  _%$%id217008217048%_))))
                       (let ((_%$%id217009217058%_
                              (reverse _%$%id217008217048%_)))
                         (if (gx#stx-pair? _%$%tl217000217035%_)
                             (let ((_%$%e217010217060%_
                                    (gx#stx-e _%$%tl217000217035%_)))
                               (let ((_%$%hd217011217063%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e217010217060%_)))
                                     (_%$%tl217012217065%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e217010217060%_))))
                                 (if (gx#stx-null? _%$%tl217012217065%_)
                                     ((lambda (_%$%g216993217068%_
                                               _%$%g216994217069%_)
                                        (let* ((_%body217098%_
                                                (gxc#optimize-match-block
                                                 _%$%g216993217068%_
                                                 _%assert216987%_
                                                 _%bind216986%_
                                                 _%rest216951%_))
                                               (_%block217107%_
                                                (cons _%name216989%_
                                                      (cons 'continue:
                                                            (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (foldr (lambda (_%$%g217099217102%_
                                                      _%$%g217100217104%_)
                                               (cons _%$%g217099217102%_
                                                     _%$%g217100217104%_))
                                             '()
                                             _%$%g216994217069%_)
                                      (cons _%body217098%_ '())))
                          (cons _%assert216987%_ (cons _%bind216986%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%blocks217109%_
                                                (cons _%block217107%_
                                                      _%blocks216891%_))
                                               (_%rest217111%_
                                                (gxc#optimize-match-prune-blocks
                                                 _%rest216951%_
                                                 _%blocks217109%_))
                                               (_%rest217113%_
                                                (gxc#optimize-match-fuse-restart-blocks
                                                 _%rest217111%_
                                                 _%blocks217109%_)))
                                          (_%lp216888%_
                                           _%rest217113%_
                                           _%blocks217109%_)))
                                      _%$%hd217011217063%_
                                      _%$%id217009217058%_)
                                     (_%$%g216991217017%_
                                      _%$%g216992217020%_))))
                             (_%$%g216991217017%_ _%$%g216992217020%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop217004217043%_
                                                  _%$%target217001217038%_
                                                  '()))
                                               (_%$%g216991217017%_
                                                _%$%g216992217020%_)))))
                                     (_%$%g216991217017%_
                                      _%$%g216992217020%_))))
                             (_%$%g216991217017%_ _%$%g216992217020%_))
                         (_%$%g216991217017%_ _%$%g216992217020%_))
                     (_%$%g216991217017%_ _%$%g216992217020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g216991217017%_
                                                      _%$%g216992217020%_)))))
                                         (_%$%g216990217116%_
                                          _%kont216988%_)))))
                                (if (pair? _%$%block216953216978%_)
                                    (let ((_%$%hd216958217122%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%block216953216978%_)))
                                          (_%$%tl216959217124%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%block216953216978%_))))
                                      (let ((_%name217127%_
                                             _%$%hd216958217122%_))
                                        (if (pair? _%$%tl216959217124%_)
                                            (let ((_%$%hd216960217129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl216959217124%_)))
                                                  (_%$%tl216961217131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl216959217124%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd216960217129%_
                                                           'continue:))
                                                  (if (pair? _%$%tl216961217131%_)
                                                      (let ((_%$%hd216962217134%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%tl216961217131%_)))
                    (_%$%tl216963217136%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%tl216961217131%_))))
                (let ((_%kont217139%_ _%$%hd216962217134%_))
                  (if (pair? _%$%tl216963217136%_)
                      (let ((_%$%hd216964217141%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl216963217136%_)))
                            (_%$%tl216965217143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl216963217136%_))))
                        (let ((_%assert217146%_ _%$%hd216964217141%_))
                          (if (pair? _%$%tl216965217143%_)
                              (let ((_%$%hd216966217148%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%tl216965217143%_)))
                                    (_%$%tl216967217150%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%tl216965217143%_))))
                                (let ((_%bind217153%_ _%$%hd216966217148%_))
                                  (if (null? _%$%tl216967217150%_)
                                      (_%$%K216957217119%_
                                       _%bind217153%_
                                       _%assert217146%_
                                       _%kont217139%_
                                       _%name217127%_)
                                      (_%$%E216956216982%_))))
                              (_%$%E216956216982%_))))
                      (_%$%E216956216982%_))))
              (_%$%E216956216982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E216956216982%_)))
                                            (_%$%E216956216982%_))))
                                    (_%$%E216956216982%_)))))
                           (_%$%K216968217236%_
                            (lambda (_%assert217158%_
                                     _%kont217159%_
                                     _%name217160%_)
                              (let* ((_%$%g217162217178%_
                                      (lambda (_%$%g217163217175%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g217163217175%_)))
                                     (_%$%g217161217233%_
                                      (lambda (_%$%g217163217181%_)
                                        (if (gx#stx-pair? _%$%g217163217181%_)
                                            (let ((_%$%e217165217183%_
                                                   (gx#stx-e
                                                    _%$%g217163217181%_)))
                                              (let ((_%$%hd217166217186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e217165217183%_)))
                                                    (_%$%tl217167217188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e217165217183%_))))
                                                (if (gx#identifier?
                                                     _%$%hd217166217186%_)
                                                    (if (gx#stx-eq?
                                                         '%#lambda
                                                         _%$%hd217166217186%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl217167217188%_)
                                                            (let ((_%$%e217168217191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl217167217188%_)))
                      (let ((_%$%hd217169217194%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e217168217191%_)))
                            (_%$%tl217170217196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e217168217191%_))))
                        (if (gx#stx-null? _%$%hd217169217194%_)
                            (if (gx#stx-pair? _%$%tl217170217196%_)
                                (let ((_%$%e217171217199%_
                                       (gx#stx-e _%$%tl217170217196%_)))
                                  (let ((_%$%hd217172217202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e217171217199%_)))
                                        (_%$%tl217173217204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e217171217199%_))))
                                    (if (gx#stx-null? _%$%tl217173217204%_)
                                        ((lambda (_%$%g217164217207%_)
                                           (let* ((_%body217222%_
                                                   (gxc#optimize-match-block
                                                    _%$%g217164217207%_
                                                    _%assert217158%_
                                                    '()
                                                    _%rest216951%_))
                                                  (_%block217224%_
                                                   (cons _%name217160%_
                                                         (cons 'restart:
                                                               (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '() (cons _%body217222%_ '())))
                             (cons _%assert217158%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%blocks217226%_
                                                   (cons _%block217224%_
                                                         _%blocks216891%_))
                                                  (_%rest217228%_
                                                   (gxc#optimize-match-prune-blocks
                                                    _%rest216951%_
                                                    _%blocks217226%_))
                                                  (_%rest217230%_
                                                   (gxc#optimize-match-fuse-restart-blocks
                                                    _%rest217228%_
                                                    _%blocks217226%_)))
                                             (_%lp216888%_
                                              _%rest217230%_
                                              _%blocks217226%_)))
                                         _%$%hd217172217202%_)
                                        (_%$%g217162217178%_
                                         _%$%g217163217181%_))))
                                (_%$%g217162217178%_ _%$%g217163217181%_))
                            (_%$%g217162217178%_ _%$%g217163217181%_))))
                    (_%$%g217162217178%_ _%$%g217163217181%_))
                (_%$%g217162217178%_ _%$%g217163217181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g217162217178%_
                                                     _%$%g217163217181%_))))
                                            (_%$%g217162217178%_
                                             _%$%g217163217181%_)))))
                                (_%$%g217161217233%_ _%kont217159%_)))))
                      (if (pair? _%$%block216953216978%_)
                          (let ((_%$%hd216969217239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%block216953216978%_)))
                                (_%$%tl216970217241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%block216953216978%_))))
                            (let ((_%name217244%_ _%$%hd216969217239%_))
                              (if (pair? _%$%tl216970217241%_)
                                  (let ((_%$%hd216971217246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl216970217241%_)))
                                        (_%$%tl216972217248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl216970217241%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##eq? _%$%hd216971217246%_
                                                 'restart:))
                                        (if (pair? _%$%tl216972217248%_)
                                            (let ((_%$%hd216973217251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl216972217248%_)))
                                                  (_%$%tl216974217253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl216972217248%_))))
                                              (let ((_%kont217256%_
                                                     _%$%hd216973217251%_))
                                                (if (pair? _%$%tl216974217253%_)
                                                    (let ((_%$%hd216975217258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl216974217253%_)))
                                                          (_%$%tl216976217260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl216974217253%_))))
                                                      (let ((_%assert217263%_
                                                             _%$%hd216975217258%_))
                                                        (if (null? _%$%tl216976217260%_)
                                                            (_%$%K216968217236%_
                                                             _%assert217263%_
                                                             _%kont217256%_
                                                             _%name217244%_)
                                                            (_%$%try-match216955217155%_))))
                                                    (_%$%try-match216955217155%_))))
                                            (_%$%try-match216955217155%_))
                                        (_%$%try-match216955217155%_)))
                                  (_%$%try-match216955217155%_))))
                          (_%$%try-match216955217155%_))))))
            (if (pair? _%$%rest216892216900%_)
                (let ((_%$%hd216897217268%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest216892216900%_)))
                      (_%$%tl216898217270%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest216892216900%_))))
                  (let* ((_%block217273%_ _%$%hd216897217268%_)
                         (_%rest217275%_ _%$%tl216898217270%_))
                    (_%$%K216896217265%_ _%rest217275%_ _%block217273%_)))
                (_%$%else216894216948%_))))))
    (define gxc#optimize-match-block
      (lambda (_%body211544%_ _%assert211545%_ _%bind211546%_ _%blocks211547%_)
        (letrec* ((_%env-assert211782%_ '())
                  (_%env-type211783%_ '())
                  (_%env-bind211784%_ '())
                  (_%in-splice?211785%_ '#f)
                  (_%do-assert211786%_
                   (lambda (_%assert216810%_ _%K216811%_)
                     (if (pair? _%assert216810%_)
                         (let _%lp216813%_ ((_%rest216815%_ _%assert216810%_)
                                            (_%env-assert216816%_
                                             _%env-assert211782%_)
                                            (_%env-type216817%_
                                             _%env-type211783%_))
                           (let* ((_%$%rest216818216826%_ _%rest216815%_)
                                  (_%$%E216821216830%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest216818216826%_
                                            '([assert . rest])
                                            'else)
                                     (void)))
                                  (_%$%else216820216834%_
                                   (lambda ()
                                     (_%do-assert!211792%_
                                      _%env-assert216816%_
                                      _%env-type216817%_
                                      _%K216811%_)))
                                  (_%$%K216822216874%_
                                   (lambda (_%rest216837%_ _%assert216838%_)
                                     (let* ((_%$%assert216839216846%_
                                             _%assert216838%_)
                                            (_%$%E216841216849%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%assert216839216846%_
                                                      '([expr . val]))
                                               (void)))
                                            (_%$%K216842216862%_
                                             (lambda (_%val216852%_
                                                      _%expr216853%_)
                                               (let* ((_%sexpr216855%_
                                                       (gxc#apply-generate-runtime-repr
                                                        _%expr216853%_))
                                                      (_%env-assert216857%_
                                                       (cons (cons _%sexpr216855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%val216852%_)
                     _%env-assert216816%_))
              (_%env-type216859%_
               (_%fold-assert-type211788%_
                _%expr216853%_
                _%val216852%_
                _%env-type216817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp216813%_
                                                  _%rest216837%_
                                                  _%env-assert216857%_
                                                  _%env-type216859%_)))))
                                       (if (pair? _%$%assert216839216846%_)
                                           (let ((_%$%hd216843216865%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%assert216839216846%_)))
                                                 (_%$%tl216844216867%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%assert216839216846%_))))
                                             (let* ((_%expr216870%_
                                                     _%$%hd216843216865%_)
                                                    (_%val216872%_
                                                     _%$%tl216844216867%_))
                                               (_%$%K216842216862%_
                                                _%val216872%_
                                                _%expr216870%_)))
                                           (_%$%E216841216849%_))))))
                             (if (pair? _%$%rest216818216826%_)
                                 (let ((_%$%hd216823216877%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest216818216826%_)))
                                       (_%$%tl216824216879%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest216818216826%_))))
                                   (let* ((_%assert216882%_
                                           _%$%hd216823216877%_)
                                          (_%rest216884%_
                                           _%$%tl216824216879%_))
                                     (_%$%K216822216874%_
                                      _%rest216884%_
                                      _%assert216882%_)))
                                 (_%$%else216820216834%_))))
                         (_%K216811%_))))
                  (_%predicate-type211787%_
                   (lambda (_%id216755%_)
                     (let* ((_%sym216757%_
                             (gxc#identifier-symbol _%id216755%_))
                            (_%$e216759%_ _%sym216757%_))
                       (let ((_%$%default216761216792%_
                              (lambda ()
                                (let* ((_%$%g216764216771%_
                                        (gxc#optimizer-resolve-type
                                         _%sym216757%_))
                                       (_%$%E216767216775%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%g216764216771%_
                                                 '((!predicate t))
                                                 'else)
                                          (void)))
                                       (_%$%else216766216779%_ (lambda () '#f))
                                       (_%$%K216768216784%_
                                        (lambda (_%t216782%_)
                                          (gxc#optimizer-resolve-class
                                           (cons 'predicate-type
                                                 (cons _%id216755%_ '()))
                                           _%t216782%_))))
                                  (if (gxc#!predicate? _%$%g216764216771%_)
                                      (let* ((_%$%e216769216787%_
                                              (gxc#&!type-id
                                               _%$%g216764216771%_))
                                             (_%t216790%_ _%$%e216769216787%_))
                                        (_%$%K216768216784%_ _%t216790%_))
                                      (_%$%else216766216779%_)))))
                             (_%$%table216762216794%_
                              '#(#f
                                 (##box? . 3)
                                 #f
                                 (##pair? . 0)
                                 #f
                                 (gx#stx-vector? . 7)
                                 (gx#identifier? . 4)
                                 #f
                                 #f
                                 #f
                                 (vector? . 2)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-pair? . 5)
                                 #f
                                 (gx#stx-null? . 6)
                                 #f
                                 #f
                                 #f
                                 (##vector? . 2)
                                 #f
                                 (pair? . 0)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-datum? . 9)
                                 (box? . 3)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (##null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-box? . 8)
                                 #f
                                 #f
                                 #f)))
                         (if (symbol? _%$e216759%_)
                             (let* ((_%h216797%_
                                     (let ()
                                       (declare (not safe))
                                       (##symbol-hash _%$e216759%_)))
                                    (_%ix216800%_
                                     (let ()
                                       (declare (not safe))
                                       (##fxmodulo _%h216797%_ '63)))
                                    (_%q216803%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%$%table216762216794%_
                                        _%ix216800%_))))
                               (if _%q216803%_
                                   (if (eq? (let ()
                                              (declare (not safe))
                                              (##car _%q216803%_))
                                            _%$e216759%_)
                                       (let ((_%x216807%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%q216803%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fx< _%x216807%_ '5))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _%x216807%_ '2))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _%x216807%_ '0))
                                                     'pair
                                                     'null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _%x216807%_ '2))
                                                     'vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _%x216807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '3))
                 'box
                 'identifier)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _%x216807%_ '7))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _%x216807%_ '5))
                                                     'stx-pair
                                                     'stx-null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _%x216807%_ '7))
                                                     'stx-vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _%x216807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '8))
                 'stx-box
                 'stx-datum)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%default216761216792%_))
                                   (_%$%default216761216792%_)))
                             (_%$%default216761216792%_))))))
                  (_%fold-assert-type211788%_
                   (lambda (_%expr215701%_ _%val215702%_ _%env215703%_)
                     (let* ((_%$%g215711215890%_
                             (lambda (_%$%g215712215887%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g215712215887%_)))
                            (_%$%g215710215897%_
                             (lambda (_%$%g215712215893%_)
                               ((lambda () _%env215703%_))))
                            (_%$%g215709216005%_
                             (lambda (_%$%g215712215900%_)
                               (if (gx#stx-pair? _%$%g215712215900%_)
                                   (let ((_%$%e215859215902%_
                                          (gx#stx-e _%$%g215712215900%_)))
                                     (let ((_%$%hd215860215905%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215859215902%_)))
                                           (_%$%tl215861215907%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215859215902%_))))
                                       (if (gx#identifier?
                                            _%$%hd215860215905%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215860215905%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215861215907%_)
                                                   (let ((_%$%e215862215910%_
                                                          (gx#stx-e
                                                           _%$%tl215861215907%_)))
                                                     (let ((_%$%hd215863215913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215862215910%_)))
                                                           (_%$%tl215864215915%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215862215910%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215863215913%_)
                                                           (let ((_%$%e215865215918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215863215913%_)))
                     (let ((_%$%hd215866215921%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215865215918%_)))
                           (_%$%tl215867215923%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215865215918%_))))
                       (if (gx#identifier? _%$%hd215866215921%_)
                           (if (gx#stx-eq? '%#lambda _%$%hd215866215921%_)
                               (if (gx#stx-pair? _%$%tl215867215923%_)
                                   (let ((_%$%e215868215926%_
                                          (gx#stx-e _%$%tl215867215923%_)))
                                     (let ((_%$%hd215869215929%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215868215926%_)))
                                           (_%$%tl215870215931%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215868215926%_))))
                                       (if (gx#stx-pair? _%$%hd215869215929%_)
                                           (let ((_%$%e215871215934%_
                                                  (gx#stx-e
                                                   _%$%hd215869215929%_)))
                                             (let ((_%$%hd215872215937%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e215871215934%_)))
                                                   (_%$%tl215873215939%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e215871215934%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl215873215939%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl215870215931%_)
                                                       (let ((_%$%e215874215942%_
                                                              (gx#stx-e
                                                               _%$%tl215870215931%_)))
                                                         (let ((_%$%hd215875215945%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215874215942%_)))
                       (_%$%tl215876215947%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215874215942%_))))
                   (if (gx#stx-null? _%$%tl215876215947%_)
                       (if (gx#stx-pair? _%$%tl215864215915%_)
                           (let ((_%$%e215877215950%_
                                  (gx#stx-e _%$%tl215864215915%_)))
                             (let ((_%$%hd215878215953%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e215877215950%_)))
                                   (_%$%tl215879215955%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e215877215950%_))))
                               (if (gx#stx-pair? _%$%hd215878215953%_)
                                   (let ((_%$%e215880215958%_
                                          (gx#stx-e _%$%hd215878215953%_)))
                                     (let ((_%$%hd215881215961%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215880215958%_)))
                                           (_%$%tl215882215963%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215880215958%_))))
                                       (if (gx#identifier?
                                            _%$%hd215881215961%_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _%$%hd215881215961%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215882215963%_)
                                                   (let ((_%$%e215883215966%_
                                                          (gx#stx-e
                                                           _%$%tl215882215963%_)))
                                                     (let ((_%$%hd215884215969%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215883215966%_)))
                                                           (_%$%tl215885215971%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215883215966%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl215885215971%_)
                                                           (if (gx#stx-null?
                                                                _%$%tl215879215955%_)
                                                               ((lambda (_%$%g215856215974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g215857215975%_
                                 _%$%g215858215976%_)
                          (_%fold-assert-type211788%_
                           (gxc#apply-expression-subst
                            _%$%g215857215975%_
                            'id:
                            _%$%g215858215976%_
                            'new-id:
                            _%$%g215856215974%_)
                           _%val215702%_
                           _%env215703%_))
                        _%$%hd215884215969%_
                        _%$%hd215875215945%_
                        _%$%hd215872215937%_)
                       (_%$%g215710215897%_ _%$%g215712215900%_))
                   (_%$%g215710215897%_ _%$%g215712215900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215710215897%_
                                                    _%$%g215712215900%_))
                                               (_%$%g215710215897%_
                                                _%$%g215712215900%_))
                                           (_%$%g215710215897%_
                                            _%$%g215712215900%_))))
                                   (_%$%g215710215897%_ _%$%g215712215900%_))))
                           (_%$%g215710215897%_ _%$%g215712215900%_))
                       (_%$%g215710215897%_ _%$%g215712215900%_))))
               (_%$%g215710215897%_ _%$%g215712215900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215710215897%_
                                                    _%$%g215712215900%_))))
                                           (_%$%g215710215897%_
                                            _%$%g215712215900%_))))
                                   (_%$%g215710215897%_ _%$%g215712215900%_))
                               (_%$%g215710215897%_ _%$%g215712215900%_))
                           (_%$%g215710215897%_ _%$%g215712215900%_))))
                   (_%$%g215710215897%_ _%$%g215712215900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215710215897%_
                                                    _%$%g215712215900%_))
                                               (_%$%g215710215897%_
                                                _%$%g215712215900%_))
                                           (_%$%g215710215897%_
                                            _%$%g215712215900%_))))
                                   (_%$%g215710215897%_ _%$%g215712215900%_))))
                            (_%$%g215708216121%_
                             (lambda (_%$%g215712216008%_)
                               (if (gx#stx-pair? _%$%g215712216008%_)
                                   (let ((_%$%e215826216010%_
                                          (gx#stx-e _%$%g215712216008%_)))
                                     (let ((_%$%hd215827216013%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215826216010%_)))
                                           (_%$%tl215828216015%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215826216010%_))))
                                       (if (gx#identifier?
                                            _%$%hd215827216013%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215827216013%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215828216015%_)
                                                   (let ((_%$%e215829216018%_
                                                          (gx#stx-e
                                                           _%$%tl215828216015%_)))
                                                     (let ((_%$%hd215830216021%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215829216018%_)))
                                                           (_%$%tl215831216023%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215829216018%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215830216021%_)
                                                           (let ((_%$%e215832216026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215830216021%_)))
                     (let ((_%$%hd215833216029%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215832216026%_)))
                           (_%$%tl215834216031%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215832216026%_))))
                       (if (gx#identifier? _%$%hd215833216029%_)
                           (if (gx#stx-eq? '%#ref _%$%hd215833216029%_)
                               (if (gx#stx-pair? _%$%tl215834216031%_)
                                   (let ((_%$%e215835216034%_
                                          (gx#stx-e _%$%tl215834216031%_)))
                                     (let ((_%$%hd215836216037%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215835216034%_)))
                                           (_%$%tl215837216039%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215835216034%_))))
                                       (if (gx#stx-null? _%$%tl215837216039%_)
                                           (if (gx#stx-pair?
                                                _%$%tl215831216023%_)
                                               (let ((_%$%e215838216042%_
                                                      (gx#stx-e
                                                       _%$%tl215831216023%_)))
                                                 (let ((_%$%hd215839216045%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e215838216042%_)))
                                                       (_%$%tl215840216047%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e215838216042%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd215839216045%_)
                                                       (let ((_%$%e215841216050%_
                                                              (gx#stx-e
                                                               _%$%hd215839216045%_)))
                                                         (let ((_%$%hd215842216053%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215841216050%_)))
                       (_%$%tl215843216055%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215841216050%_))))
                   (if (gx#identifier? _%$%hd215842216053%_)
                       (if (gx#stx-eq? '%#quote-syntax _%$%hd215842216053%_)
                           (if (gx#stx-pair? _%$%tl215843216055%_)
                               (let ((_%$%e215844216058%_
                                      (gx#stx-e _%$%tl215843216055%_)))
                                 (let ((_%$%hd215845216061%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e215844216058%_)))
                                       (_%$%tl215846216063%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e215844216058%_))))
                                   (if (gx#stx-null? _%$%tl215846216063%_)
                                       (if (gx#stx-pair? _%$%tl215840216047%_)
                                           (let ((_%$%e215847216066%_
                                                  (gx#stx-e
                                                   _%$%tl215840216047%_)))
                                             (let ((_%$%hd215848216069%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e215847216066%_)))
                                                   (_%$%tl215849216071%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e215847216066%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd215848216069%_)
                                                   (let ((_%$%e215850216074%_
                                                          (gx#stx-e
                                                           _%$%hd215848216069%_)))
                                                     (let ((_%$%hd215851216077%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215850216074%_)))
                                                           (_%$%tl215852216079%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215850216074%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd215851216077%_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _%$%hd215851216077%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl215852216079%_)
                           (let ((_%$%e215853216082%_
                                  (gx#stx-e _%$%tl215852216079%_)))
                             (let ((_%$%hd215854216085%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e215853216082%_)))
                                   (_%$%tl215855216087%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e215853216082%_))))
                               (if (gx#stx-null? _%$%tl215855216087%_)
                                   (if (gx#stx-null? _%$%tl215849216071%_)
                                       ((lambda (_%$%g215823216090%_
                                                 _%$%g215824216091%_
                                                 _%$%g215825216092%_)
                                          (_%fold-assert-type211788%_
                                           (cons (gx#datum->syntax '#f '%#call)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '%#ref)
                                                             (cons _%$%g215825216092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '%#ref)
                           (cons _%$%g215823216090%_ '()))
                     (cons (cons (gx#datum->syntax '#f '%#quote-syntax)
                                 (cons _%$%g215824216091%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%val215702%_
                                           _%env215703%_))
                                        _%$%hd215854216085%_
                                        _%$%hd215845216061%_
                                        _%$%hd215836216037%_)
                                       (_%$%g215709216005%_
                                        _%$%g215712216008%_))
                                   (_%$%g215709216005%_ _%$%g215712216008%_))))
                           (_%$%g215709216005%_ _%$%g215712216008%_))
                       (_%$%g215709216005%_ _%$%g215712216008%_))
                   (_%$%g215709216005%_ _%$%g215712216008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215709216005%_
                                                    _%$%g215712216008%_))))
                                           (_%$%g215709216005%_
                                            _%$%g215712216008%_))
                                       (_%$%g215709216005%_
                                        _%$%g215712216008%_))))
                               (_%$%g215709216005%_ _%$%g215712216008%_))
                           (_%$%g215709216005%_ _%$%g215712216008%_))
                       (_%$%g215709216005%_ _%$%g215712216008%_))))
               (_%$%g215709216005%_ _%$%g215712216008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g215709216005%_
                                                _%$%g215712216008%_))
                                           (_%$%g215709216005%_
                                            _%$%g215712216008%_))))
                                   (_%$%g215709216005%_ _%$%g215712216008%_))
                               (_%$%g215709216005%_ _%$%g215712216008%_))
                           (_%$%g215709216005%_ _%$%g215712216008%_))))
                   (_%$%g215709216005%_ _%$%g215712216008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215709216005%_
                                                    _%$%g215712216008%_))
                                               (_%$%g215709216005%_
                                                _%$%g215712216008%_))
                                           (_%$%g215709216005%_
                                            _%$%g215712216008%_))))
                                   (_%$%g215709216005%_ _%$%g215712216008%_))))
                            (_%$%g215707216247%_
                             (lambda (_%$%g215712216124%_)
                               (if (gx#stx-pair? _%$%g215712216124%_)
                                   (let ((_%$%e215793216126%_
                                          (gx#stx-e _%$%g215712216124%_)))
                                     (let ((_%$%hd215794216129%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215793216126%_)))
                                           (_%$%tl215795216131%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215793216126%_))))
                                       (if (gx#identifier?
                                            _%$%hd215794216129%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215794216129%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215795216131%_)
                                                   (let ((_%$%e215796216134%_
                                                          (gx#stx-e
                                                           _%$%tl215795216131%_)))
                                                     (let ((_%$%hd215797216137%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215796216134%_)))
                                                           (_%$%tl215798216139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215796216134%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215797216137%_)
                                                           (let ((_%$%e215799216142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215797216137%_)))
                     (let ((_%$%hd215800216145%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215799216142%_)))
                           (_%$%tl215801216147%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215799216142%_))))
                       (if (gx#identifier? _%$%hd215800216145%_)
                           (if (gx#stx-eq? '%#ref _%$%hd215800216145%_)
                               (if (gx#stx-pair? _%$%tl215801216147%_)
                                   (let ((_%$%e215802216150%_
                                          (gx#stx-e _%$%tl215801216147%_)))
                                     (let ((_%$%hd215803216153%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215802216150%_)))
                                           (_%$%tl215804216155%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215802216150%_))))
                                       (if (gx#stx-null? _%$%tl215804216155%_)
                                           (if (gx#stx-pair?
                                                _%$%tl215798216139%_)
                                               (let ((_%$%e215805216158%_
                                                      (gx#stx-e
                                                       _%$%tl215798216139%_)))
                                                 (let ((_%$%hd215806216161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e215805216158%_)))
                                                       (_%$%tl215807216163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e215805216158%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd215806216161%_)
                                                       (let ((_%$%e215808216166%_
                                                              (gx#stx-e
                                                               _%$%hd215806216161%_)))
                                                         (let ((_%$%hd215809216169%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215808216166%_)))
                       (_%$%tl215810216171%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215808216166%_))))
                   (if (gx#identifier? _%$%hd215809216169%_)
                       (if (gx#stx-eq? '%#ref _%$%hd215809216169%_)
                           (if (gx#stx-pair? _%$%tl215810216171%_)
                               (let ((_%$%e215811216174%_
                                      (gx#stx-e _%$%tl215810216171%_)))
                                 (let ((_%$%hd215812216177%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e215811216174%_)))
                                       (_%$%tl215813216179%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e215811216174%_))))
                                   (if (gx#stx-null? _%$%tl215813216179%_)
                                       (if (gx#stx-pair? _%$%tl215807216163%_)
                                           (let ((_%$%e215814216182%_
                                                  (gx#stx-e
                                                   _%$%tl215807216163%_)))
                                             (let ((_%$%hd215815216185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e215814216182%_)))
                                                   (_%$%tl215816216187%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e215814216182%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd215815216185%_)
                                                   (let ((_%$%e215817216190%_
                                                          (gx#stx-e
                                                           _%$%hd215815216185%_)))
                                                     (let ((_%$%hd215818216193%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215817216190%_)))
                                                           (_%$%tl215819216195%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215817216190%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd215818216193%_)
                                                           (if (gx#stx-eq?
                                                                '%#quote-syntax
                                                                _%$%hd215818216193%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl215819216195%_)
                           (let ((_%$%e215820216198%_
                                  (gx#stx-e _%$%tl215819216195%_)))
                             (let ((_%$%hd215821216201%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e215820216198%_)))
                                   (_%$%tl215822216203%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e215820216198%_))))
                               (if (gx#stx-null? _%$%tl215822216203%_)
                                   (if (gx#stx-null? _%$%tl215816216187%_)
                                       ((lambda (_%$%g215790216206%_
                                                 _%$%g215791216207%_
                                                 _%$%g215792216208%_)
                                          (let ((_%$e216237%_
                                                 (gxc#identifier-symbol
                                                  _%$%g215792216208%_)))
                                            (if (or (eq? 'gx#free-identifier=?
                                                         _%$e216237%_)
                                                    (eq? 'gx#stx-eq?
                                                         _%$e216237%_))
                                                ((lambda (_%sym216243%_)
                                                   (let ((_%sym216245%_
                                                          (_%eqf-symbol211790%_
                                                           _%sym216243%_)))
                                                     (cons (cons _%$%g215791216207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%sym216245%_
                               (cons _%$%g215790216206%_
                                     (cons _%val215702%_ '()))))
                   _%env215703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$e216237%_)
                                                _%env215703%_)))
                                        _%$%hd215821216201%_
                                        _%$%hd215812216177%_
                                        _%$%hd215803216153%_)
                                       (_%$%g215708216121%_
                                        _%$%g215712216124%_))
                                   (_%$%g215708216121%_ _%$%g215712216124%_))))
                           (_%$%g215708216121%_ _%$%g215712216124%_))
                       (_%$%g215708216121%_ _%$%g215712216124%_))
                   (_%$%g215708216121%_ _%$%g215712216124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215708216121%_
                                                    _%$%g215712216124%_))))
                                           (_%$%g215708216121%_
                                            _%$%g215712216124%_))
                                       (_%$%g215708216121%_
                                        _%$%g215712216124%_))))
                               (_%$%g215708216121%_ _%$%g215712216124%_))
                           (_%$%g215708216121%_ _%$%g215712216124%_))
                       (_%$%g215708216121%_ _%$%g215712216124%_))))
               (_%$%g215708216121%_ _%$%g215712216124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g215708216121%_
                                                _%$%g215712216124%_))
                                           (_%$%g215708216121%_
                                            _%$%g215712216124%_))))
                                   (_%$%g215708216121%_ _%$%g215712216124%_))
                               (_%$%g215708216121%_ _%$%g215712216124%_))
                           (_%$%g215708216121%_ _%$%g215712216124%_))))
                   (_%$%g215708216121%_ _%$%g215712216124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215708216121%_
                                                    _%$%g215712216124%_))
                                               (_%$%g215708216121%_
                                                _%$%g215712216124%_))
                                           (_%$%g215708216121%_
                                            _%$%g215712216124%_))))
                                   (_%$%g215708216121%_ _%$%g215712216124%_))))
                            (_%$%g215706216343%_
                             (lambda (_%$%g215712216250%_)
                               (if (gx#stx-pair? _%$%g215712216250%_)
                                   (let ((_%$%e215766216252%_
                                          (gx#stx-e _%$%g215712216250%_)))
                                     (let ((_%$%hd215767216255%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215766216252%_)))
                                           (_%$%tl215768216257%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215766216252%_))))
                                       (if (gx#identifier?
                                            _%$%hd215767216255%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215767216255%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215768216257%_)
                                                   (let ((_%$%e215769216260%_
                                                          (gx#stx-e
                                                           _%$%tl215768216257%_)))
                                                     (let ((_%$%hd215770216263%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215769216260%_)))
                                                           (_%$%tl215771216265%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215769216260%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215770216263%_)
                                                           (let ((_%$%e215772216268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215770216263%_)))
                     (let ((_%$%hd215773216271%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215772216268%_)))
                           (_%$%tl215774216273%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215772216268%_))))
                       (if (gx#identifier? _%$%hd215773216271%_)
                           (if (gx#stx-eq? '%#ref _%$%hd215773216271%_)
                               (if (gx#stx-pair? _%$%tl215774216273%_)
                                   (let ((_%$%e215775216276%_
                                          (gx#stx-e _%$%tl215774216273%_)))
                                     (let ((_%$%hd215776216279%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215775216276%_)))
                                           (_%$%tl215777216281%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215775216276%_))))
                                       (if (gx#stx-null? _%$%tl215777216281%_)
                                           (if (gx#stx-pair?
                                                _%$%tl215771216265%_)
                                               (let ((_%$%e215778216284%_
                                                      (gx#stx-e
                                                       _%$%tl215771216265%_)))
                                                 (let ((_%$%hd215779216287%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e215778216284%_)))
                                                       (_%$%tl215780216289%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e215778216284%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd215779216287%_)
                                                       (let ((_%$%e215781216292%_
                                                              (gx#stx-e
                                                               _%$%hd215779216287%_)))
                                                         (let ((_%$%hd215782216295%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215781216292%_)))
                       (_%$%tl215783216297%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215781216292%_))))
                   (if (gx#identifier? _%$%hd215782216295%_)
                       (if (gx#stx-eq? '%#quote _%$%hd215782216295%_)
                           (if (gx#stx-pair? _%$%tl215783216297%_)
                               (let ((_%$%e215784216300%_
                                      (gx#stx-e _%$%tl215783216297%_)))
                                 (let ((_%$%hd215785216303%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e215784216300%_)))
                                       (_%$%tl215786216305%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e215784216300%_))))
                                   (if (gx#stx-null? _%$%tl215786216305%_)
                                       (if (gx#stx-pair? _%$%tl215780216289%_)
                                           (let ((_%$%e215787216308%_
                                                  (gx#stx-e
                                                   _%$%tl215780216289%_)))
                                             (let ((_%$%hd215788216311%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e215787216308%_)))
                                                   (_%$%tl215789216313%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e215787216308%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl215789216313%_)
                                                   ((lambda (_%$%g215763216316%_
                                                             _%$%g215764216317%_
                                                             _%$%g215765216318%_)
                                                      (_%fold-assert-type211788%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '%#call)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '%#ref)
                                 (cons _%$%g215765216318%_ '()))
                           (cons _%$%g215763216316%_
                                 (cons (cons (gx#datum->syntax '#f '%#quote)
                                             (cons _%$%g215764216317%_ '()))
                                       '()))))
               _%val215702%_
               _%env215703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%hd215788216311%_
                                                    _%$%hd215785216303%_
                                                    _%$%hd215776216279%_)
                                                   (_%$%g215707216247%_
                                                    _%$%g215712216250%_))))
                                           (_%$%g215707216247%_
                                            _%$%g215712216250%_))
                                       (_%$%g215707216247%_
                                        _%$%g215712216250%_))))
                               (_%$%g215707216247%_ _%$%g215712216250%_))
                           (_%$%g215707216247%_ _%$%g215712216250%_))
                       (_%$%g215707216247%_ _%$%g215712216250%_))))
               (_%$%g215707216247%_ _%$%g215712216250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g215707216247%_
                                                _%$%g215712216250%_))
                                           (_%$%g215707216247%_
                                            _%$%g215712216250%_))))
                                   (_%$%g215707216247%_ _%$%g215712216250%_))
                               (_%$%g215707216247%_ _%$%g215712216250%_))
                           (_%$%g215707216247%_ _%$%g215712216250%_))))
                   (_%$%g215707216247%_ _%$%g215712216250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215707216247%_
                                                    _%$%g215712216250%_))
                                               (_%$%g215707216247%_
                                                _%$%g215712216250%_))
                                           (_%$%g215707216247%_
                                            _%$%g215712216250%_))))
                                   (_%$%g215707216247%_ _%$%g215712216250%_))))
                            (_%$%g215705216662%_
                             (lambda (_%$%g215712216346%_)
                               (if (gx#stx-pair? _%$%g215712216346%_)
                                   (let ((_%$%e215739216348%_
                                          (gx#stx-e _%$%g215712216346%_)))
                                     (let ((_%$%hd215740216351%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215739216348%_)))
                                           (_%$%tl215741216353%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215739216348%_))))
                                       (if (gx#identifier?
                                            _%$%hd215740216351%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215740216351%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215741216353%_)
                                                   (let ((_%$%e215742216356%_
                                                          (gx#stx-e
                                                           _%$%tl215741216353%_)))
                                                     (let ((_%$%hd215743216359%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215742216356%_)))
                                                           (_%$%tl215744216361%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215742216356%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215743216359%_)
                                                           (let ((_%$%e215745216364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215743216359%_)))
                     (let ((_%$%hd215746216367%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215745216364%_)))
                           (_%$%tl215747216369%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215745216364%_))))
                       (if (gx#identifier? _%$%hd215746216367%_)
                           (if (gx#stx-eq? '%#ref _%$%hd215746216367%_)
                               (if (gx#stx-pair? _%$%tl215747216369%_)
                                   (let ((_%$%e215748216372%_
                                          (gx#stx-e _%$%tl215747216369%_)))
                                     (let ((_%$%hd215749216375%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215748216372%_)))
                                           (_%$%tl215750216377%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215748216372%_))))
                                       (if (gx#stx-null? _%$%tl215750216377%_)
                                           (if (gx#stx-pair?
                                                _%$%tl215744216361%_)
                                               (let ((_%$%e215751216380%_
                                                      (gx#stx-e
                                                       _%$%tl215744216361%_)))
                                                 (let ((_%$%hd215752216383%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e215751216380%_)))
                                                       (_%$%tl215753216385%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e215751216380%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl215753216385%_)
                                                       (let ((_%$%e215754216388%_
                                                              (gx#stx-e
                                                               _%$%tl215753216385%_)))
                                                         (let ((_%$%hd215755216391%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215754216388%_)))
                       (_%$%tl215756216393%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215754216388%_))))
                   (if (gx#stx-pair? _%$%hd215755216391%_)
                       (let ((_%$%e215757216396%_
                              (gx#stx-e _%$%hd215755216391%_)))
                         (let ((_%$%hd215758216399%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e215757216396%_)))
                               (_%$%tl215759216401%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e215757216396%_))))
                           (if (gx#identifier? _%$%hd215758216399%_)
                               (if (gx#stx-eq? '%#quote _%$%hd215758216399%_)
                                   (if (gx#stx-pair? _%$%tl215759216401%_)
                                       (let ((_%$%e215760216404%_
                                              (gx#stx-e _%$%tl215759216401%_)))
                                         (let ((_%$%hd215761216407%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e215760216404%_)))
                                               (_%$%tl215762216409%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e215760216404%_))))
                                           (if (gx#stx-null?
                                                _%$%tl215762216409%_)
                                               (if (gx#stx-null?
                                                    _%$%tl215756216393%_)
                                                   ((lambda (_%$%g215736216412%_
                                                             _%$%g215737216413%_
                                                             _%$%g215738216414%_)
                                                      (let ((_%$e216439%_
                                                             (gxc#identifier-symbol
                                                              _%$%g215738216414%_)))
                                                        (if (or (eq? '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e216439%_)
                        (eq? 'fx= _%$e216439%_))
                    (let* ((_%$%g216446216475%_
                            (lambda (_%$%g216447216472%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g216447216472%_)))
                           (_%$%g216445216482%_
                            (lambda (_%$%g216447216478%_)
                              ((lambda () _%env215703%_))))
                           (_%$%g216444216575%_
                            (lambda (_%$%g216447216485%_)
                              (if (gx#stx-pair? _%$%g216447216485%_)
                                  (let ((_%$%e216450216487%_
                                         (gx#stx-e _%$%g216447216485%_)))
                                    (let ((_%$%hd216451216490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e216450216487%_)))
                                          (_%$%tl216452216492%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e216450216487%_))))
                                      (if (gx#identifier? _%$%hd216451216490%_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _%$%hd216451216490%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl216452216492%_)
                                                  (let ((_%$%e216453216495%_
                                                         (gx#stx-e
                                                          _%$%tl216452216492%_)))
                                                    (let ((_%$%hd216454216498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e216453216495%_)))
                                                          (_%$%tl216455216500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e216453216495%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd216454216498%_)
                                                          (let ((_%$%e216456216503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd216454216498%_)))
                    (let ((_%$%hd216457216506%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e216456216503%_)))
                          (_%$%tl216458216508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e216456216503%_))))
                      (if (gx#identifier? _%$%hd216457216506%_)
                          (if (gx#stx-eq? '%#ref _%$%hd216457216506%_)
                              (if (gx#stx-pair? _%$%tl216458216508%_)
                                  (let ((_%$%e216459216511%_
                                         (gx#stx-e _%$%tl216458216508%_)))
                                    (let ((_%$%hd216460216514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e216459216511%_)))
                                          (_%$%tl216461216516%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e216459216511%_))))
                                      (if (gx#stx-null? _%$%tl216461216516%_)
                                          (if (gx#stx-pair?
                                               _%$%tl216455216500%_)
                                              (let ((_%$%e216462216519%_
                                                     (gx#stx-e
                                                      _%$%tl216455216500%_)))
                                                (let ((_%$%hd216463216522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e216462216519%_)))
                                                      (_%$%tl216464216524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e216462216519%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd216463216522%_)
                                                      (let ((_%$%e216465216527%_
                                                             (gx#stx-e
                                                              _%$%hd216463216522%_)))
                                                        (let ((_%$%hd216466216530%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e216465216527%_)))
                      (_%$%tl216467216532%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e216465216527%_))))
                  (if (gx#identifier? _%$%hd216466216530%_)
                      (if (gx#stx-eq? '%#ref _%$%hd216466216530%_)
                          (if (gx#stx-pair? _%$%tl216467216532%_)
                              (let ((_%$%e216468216535%_
                                     (gx#stx-e _%$%tl216467216532%_)))
                                (let ((_%$%hd216469216538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216468216535%_)))
                                      (_%$%tl216470216540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216468216535%_))))
                                  (if (gx#stx-null? _%$%tl216470216540%_)
                                      (if (gx#stx-null? _%$%tl216464216524%_)
                                          ((lambda (_%$%g216448216543%_
                                                    _%$%g216449216544%_)
                                             (let ((_%$e216569%_
                                                    (_%countf-symbol211789%_
                                                     _%$%g216449216544%_)))
                                               (if _%$e216569%_
                                                   ((lambda (_%sym216572%_)
                                                      (cons (cons _%$%g216448216543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%sym216572%_
                                (cons (gx#stx-e _%$%g215736216412%_)
                                      (cons _%val215702%_ '()))))
                    _%env215703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e216569%_)
                                                   _%env215703%_)))
                                           _%$%hd216469216538%_
                                           _%$%hd216460216514%_)
                                          (_%$%g216445216482%_
                                           _%$%g216447216485%_))
                                      (_%$%g216445216482%_
                                       _%$%g216447216485%_))))
                              (_%$%g216445216482%_ _%$%g216447216485%_))
                          (_%$%g216445216482%_ _%$%g216447216485%_))
                      (_%$%g216445216482%_ _%$%g216447216485%_))))
              (_%$%g216445216482%_ _%$%g216447216485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g216445216482%_
                                               _%$%g216447216485%_))
                                          (_%$%g216445216482%_
                                           _%$%g216447216485%_))))
                                  (_%$%g216445216482%_ _%$%g216447216485%_))
                              (_%$%g216445216482%_ _%$%g216447216485%_))
                          (_%$%g216445216482%_ _%$%g216447216485%_))))
                  (_%$%g216445216482%_ _%$%g216447216485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g216445216482%_
                                                   _%$%g216447216485%_))
                                              (_%$%g216445216482%_
                                               _%$%g216447216485%_))
                                          (_%$%g216445216482%_
                                           _%$%g216447216485%_))))
                                  (_%$%g216445216482%_ _%$%g216447216485%_)))))
                      (_%$%g216444216575%_ _%$%g215737216413%_))
                    (if (or (eq? '##eq? _%$e216439%_)
                            (eq? 'eq? _%$e216439%_)
                            (eq? '##eqv? _%$e216439%_)
                            (eq? 'eqv? _%$e216439%_)
                            (eq? '##equal? _%$e216439%_)
                            (eq? 'equal? _%$e216439%_)
                            (eq? 'gx#free-identifier=? _%$e216439%_)
                            (eq? 'gx#stx-eq? _%$e216439%_))
                        ((lambda (_%sym216599%_)
                           (let* ((_%sym216601%_
                                   (_%eqf-symbol211790%_ _%sym216599%_))
                                  (_%$%g216604216617%_
                                   (lambda (_%$%g216605216614%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g216605216614%_)))
                                  (_%$%g216603216624%_
                                   (lambda (_%$%g216605216620%_)
                                     ((lambda () _%env215703%_))))
                                  (_%$%g216602216659%_
                                   (lambda (_%$%g216605216627%_)
                                     (if (gx#stx-pair? _%$%g216605216627%_)
                                         (let ((_%$%e216607216629%_
                                                (gx#stx-e
                                                 _%$%g216605216627%_)))
                                           (let ((_%$%hd216608216632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e216607216629%_)))
                                                 (_%$%tl216609216634%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e216607216629%_))))
                                             (if (gx#identifier?
                                                  _%$%hd216608216632%_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _%$%hd216608216632%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl216609216634%_)
                                                         (let ((_%$%e216610216637%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl216609216634%_)))
                   (let ((_%$%hd216611216640%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e216610216637%_)))
                         (_%$%tl216612216642%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e216610216637%_))))
                     (if (gx#stx-null? _%$%tl216612216642%_)
                         ((lambda (_%$%g216606216645%_)
                            (cons (cons _%$%g216606216645%_
                                        (cons _%sym216601%_
                                              (cons (gx#stx-e
                                                     _%$%g215736216412%_)
                                                    (cons _%val215702%_ '()))))
                                  _%env215703%_))
                          _%$%hd216611216640%_)
                         (_%$%g216603216624%_ _%$%g216605216627%_))))
                 (_%$%g216603216624%_ _%$%g216605216627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g216603216624%_
                                                      _%$%g216605216627%_))
                                                 (_%$%g216603216624%_
                                                  _%$%g216605216627%_))))
                                         (_%$%g216603216624%_
                                          _%$%g216605216627%_)))))
                             (_%$%g216602216659%_ _%$%g215737216413%_)))
                         _%$e216439%_)
                        _%env215703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%hd215761216407%_
                                                    _%$%hd215752216383%_
                                                    _%$%hd215749216375%_)
                                                   (_%$%g215706216343%_
                                                    _%$%g215712216346%_))
                                               (_%$%g215706216343%_
                                                _%$%g215712216346%_))))
                                       (_%$%g215706216343%_
                                        _%$%g215712216346%_))
                                   (_%$%g215706216343%_ _%$%g215712216346%_))
                               (_%$%g215706216343%_ _%$%g215712216346%_))))
                       (_%$%g215706216343%_ _%$%g215712216346%_))))
               (_%$%g215706216343%_ _%$%g215712216346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g215706216343%_
                                                _%$%g215712216346%_))
                                           (_%$%g215706216343%_
                                            _%$%g215712216346%_))))
                                   (_%$%g215706216343%_ _%$%g215712216346%_))
                               (_%$%g215706216343%_ _%$%g215712216346%_))
                           (_%$%g215706216343%_ _%$%g215712216346%_))))
                   (_%$%g215706216343%_ _%$%g215712216346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215706216343%_
                                                    _%$%g215712216346%_))
                                               (_%$%g215706216343%_
                                                _%$%g215712216346%_))
                                           (_%$%g215706216343%_
                                            _%$%g215712216346%_))))
                                   (_%$%g215706216343%_ _%$%g215712216346%_))))
                            (_%$%g215704216752%_
                             (lambda (_%$%g215712216665%_)
                               (if (gx#stx-pair? _%$%g215712216665%_)
                                   (let ((_%$%e215715216667%_
                                          (gx#stx-e _%$%g215712216665%_)))
                                     (let ((_%$%hd215716216670%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215715216667%_)))
                                           (_%$%tl215717216672%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215715216667%_))))
                                       (if (gx#identifier?
                                            _%$%hd215716216670%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd215716216670%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl215717216672%_)
                                                   (let ((_%$%e215718216675%_
                                                          (gx#stx-e
                                                           _%$%tl215717216672%_)))
                                                     (let ((_%$%hd215719216678%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e215718216675%_)))
                                                           (_%$%tl215720216680%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e215718216675%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd215719216678%_)
                                                           (let ((_%$%e215721216683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd215719216678%_)))
                     (let ((_%$%hd215722216686%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e215721216683%_)))
                           (_%$%tl215723216688%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e215721216683%_))))
                       (if (gx#identifier? _%$%hd215722216686%_)
                           (if (gx#stx-eq? '%#ref _%$%hd215722216686%_)
                               (if (gx#stx-pair? _%$%tl215723216688%_)
                                   (let ((_%$%e215724216691%_
                                          (gx#stx-e _%$%tl215723216688%_)))
                                     (let ((_%$%hd215725216694%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e215724216691%_)))
                                           (_%$%tl215726216696%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e215724216691%_))))
                                       (if (gx#stx-null? _%$%tl215726216696%_)
                                           (if (gx#stx-pair?
                                                _%$%tl215720216680%_)
                                               (let ((_%$%e215727216699%_
                                                      (gx#stx-e
                                                       _%$%tl215720216680%_)))
                                                 (let ((_%$%hd215728216702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e215727216699%_)))
                                                       (_%$%tl215729216704%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e215727216699%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd215728216702%_)
                                                       (let ((_%$%e215730216707%_
                                                              (gx#stx-e
                                                               _%$%hd215728216702%_)))
                                                         (let ((_%$%hd215731216710%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e215730216707%_)))
                       (_%$%tl215732216712%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e215730216707%_))))
                   (if (gx#identifier? _%$%hd215731216710%_)
                       (if (gx#stx-eq? '%#ref _%$%hd215731216710%_)
                           (if (gx#stx-pair? _%$%tl215732216712%_)
                               (let ((_%$%e215733216715%_
                                      (gx#stx-e _%$%tl215732216712%_)))
                                 (let ((_%$%hd215734216718%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e215733216715%_)))
                                       (_%$%tl215735216720%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e215733216715%_))))
                                   (if (gx#stx-null? _%$%tl215735216720%_)
                                       (if (gx#stx-null? _%$%tl215729216704%_)
                                           ((lambda (_%$%g215713216723%_
                                                     _%$%g215714216724%_)
                                              (let ((_%$e216746%_
                                                     (_%predicate-type211787%_
                                                      _%$%g215714216724%_)))
                                                (if _%$e216746%_
                                                    ((lambda (_%t216749%_)
                                                       (cons (cons _%$%g215713216723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%t216749%_ (cons _%val215702%_ '())))
                     _%env215703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$e216746%_)
                                                    _%env215703%_)))
                                            _%$%hd215734216718%_
                                            _%$%hd215725216694%_)
                                           (_%$%g215705216662%_
                                            _%$%g215712216665%_))
                                       (_%$%g215705216662%_
                                        _%$%g215712216665%_))))
                               (_%$%g215705216662%_ _%$%g215712216665%_))
                           (_%$%g215705216662%_ _%$%g215712216665%_))
                       (_%$%g215705216662%_ _%$%g215712216665%_))))
               (_%$%g215705216662%_ _%$%g215712216665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g215705216662%_
                                                _%$%g215712216665%_))
                                           (_%$%g215705216662%_
                                            _%$%g215712216665%_))))
                                   (_%$%g215705216662%_ _%$%g215712216665%_))
                               (_%$%g215705216662%_ _%$%g215712216665%_))
                           (_%$%g215705216662%_ _%$%g215712216665%_))))
                   (_%$%g215705216662%_ _%$%g215712216665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g215705216662%_
                                                    _%$%g215712216665%_))
                                               (_%$%g215705216662%_
                                                _%$%g215712216665%_))
                                           (_%$%g215705216662%_
                                            _%$%g215712216665%_))))
                                   (_%$%g215705216662%_
                                    _%$%g215712216665%_)))))
                       (_%$%g215704216752%_ _%expr215701%_))))
                  (_%countf-symbol211789%_
                   (lambda (_%id215693%_)
                     (let ((_%$e215695%_ (gxc#identifier-symbol _%id215693%_)))
                       (if (or (eq? '##vector-length _%$e215695%_)
                               (eq? 'vector-length _%$e215695%_))
                           'vector-length
                           (if (eq? 'values-count _%$e215695%_)
                               'values-count
                               '#f)))))
                  (_%eqf-symbol211790%_
                   (lambda (_%sym215679%_)
                     (let ((_%$e215681%_ _%sym215679%_))
                       (if (or (eq? '##eq? _%$e215681%_)
                               (eq? 'eq? _%$e215681%_))
                           'eq?
                           (if (or (eq? '##eqv? _%$e215681%_)
                                   (eq? 'eqv? _%$e215681%_))
                               'eqv?
                               (if (or (eq? '##equal? _%$e215681%_)
                                       (eq? 'equal? _%$e215681%_))
                                   'equal?
                                   (if (eq? 'gx#free-identifier=? _%$e215681%_)
                                       'free-identifier=?
                                       (if (eq? 'gx#stx-eq? _%$e215681%_)
                                           'stx-eq?
                                           '#f))))))))
                  (_%eqf-symbol?211791%_
                   (lambda (_%sym215662%_)
                     (let ((_%$e215664%_ _%sym215662%_))
                       (if (or (eq? 'eq? _%$e215664%_)
                               (eq? 'eqv? _%$e215664%_)
                               (eq? 'equal? _%$e215664%_)
                               (eq? 'free-identifier=? _%$e215664%_)
                               (eq? 'stx-eq? _%$e215664%_))
                           '#t
                           '#f))))
                  (_%do-assert!211792%_
                   (lambda (_%assert215653%_ _%type215654%_ _%K215655%_)
                     (let ((_%unwind-assert215657%_ _%env-assert211782%_)
                           (_%unwind-type215658%_ _%env-type211783%_))
                       (set! _%env-assert211782%_ _%assert215653%_)
                       (set! _%env-type211783%_ _%type215654%_)
                       (let ((_%val215660%_ (_%K215655%_)))
                         (set! _%env-assert211782%_ _%unwind-assert215657%_)
                         (set! _%env-type211783%_ _%unwind-type215658%_)
                         _%val215660%_))))
                  (_%do-bind211793%_
                   (lambda (_%bind215650%_ _%K215651%_)
                     (if (pair? _%bind215650%_)
                         (_%do-bind!211795%_
                          (_%fold-bind-env211794%_
                           _%bind215650%_
                           _%env-bind211784%_)
                          _%K215651%_)
                         (_%K215651%_))))
                  (_%fold-bind-env211794%_
                   (lambda (_%bind215580%_ _%env215581%_)
                     (let _%lp215583%_ ((_%rest215585%_ _%bind215580%_)
                                        (_%env215586%_ _%env215581%_))
                       (let* ((_%$%rest215587215595%_ _%rest215585%_)
                              (_%$%E215590215599%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest215587215595%_
                                        '([bind . rest])
                                        'else)
                                 (void)))
                              (_%$%else215589215603%_
                               (lambda () _%env215586%_))
                              (_%$%K215591215638%_
                               (lambda (_%rest215606%_ _%bind215607%_)
                                 (let* ((_%$%bind215608215615%_ _%bind215607%_)
                                        (_%$%E215610215618%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%bind215608215615%_
                                                  '([id . expr]))
                                           (void)))
                                        (_%$%K215611215626%_
                                         (lambda (_%expr215621%_ _%id215622%_)
                                           (let ((_%sexpr215624%_
                                                  (gxc#apply-generate-runtime-repr
                                                   _%expr215621%_)))
                                             (_%lp215583%_
                                              _%rest215606%_
                                              (cons (cons _%sexpr215624%_
                                                          _%id215622%_)
                                                    _%env215586%_))))))
                                   (if (pair? _%$%bind215608215615%_)
                                       (let ((_%$%hd215612215629%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%bind215608215615%_)))
                                             (_%$%tl215613215631%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%bind215608215615%_))))
                                         (let* ((_%id215634%_
                                                 _%$%hd215612215629%_)
                                                (_%expr215636%_
                                                 _%$%tl215613215631%_))
                                           (_%$%K215611215626%_
                                            _%expr215636%_
                                            _%id215634%_)))
                                       (_%$%E215610215618%_))))))
                         (if (pair? _%$%rest215587215595%_)
                             (let ((_%$%hd215592215641%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest215587215595%_)))
                                   (_%$%tl215593215643%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest215587215595%_))))
                               (let* ((_%bind215646%_ _%$%hd215592215641%_)
                                      (_%rest215648%_ _%$%tl215593215643%_))
                                 (_%$%K215591215638%_
                                  _%rest215648%_
                                  _%bind215646%_)))
                             (_%$%else215589215603%_))))))
                  (_%do-bind!211795%_
                   (lambda (_%env215573%_ _%K215574%_)
                     (let ((_%unwind215576%_ _%env-bind211784%_))
                       (set! _%env-bind211784%_ _%env215573%_)
                       (let ((_%val215578%_ (_%K215574%_)))
                         (set! _%env-bind211784%_ _%unwind215576%_)
                         _%val215578%_))))
                  (_%do-splice!211796%_
                   (lambda (_%K215567%_)
                     (let ((_%unwind215569%_ _%in-splice?211785%_))
                       (set! _%in-splice?211785%_ '#t)
                       (let ((_%val215571%_ (_%K215567%_)))
                         (set! _%in-splice?211785%_ _%unwind215569%_)
                         _%val215571%_))))
                  (_%optimize-e211797%_
                   (lambda (_%expr214777%_)
                     (let* ((_%$%g214784214957%_
                             (lambda (_%$%g214785214954%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g214785214954%_)))
                            (_%$%g214783214964%_
                             (lambda (_%$%g214785214960%_)
                               ((lambda () _%expr214777%_))))
                            (_%$%g214782215155%_
                             (lambda (_%$%g214785214967%_)
                               (if (gx#stx-pair? _%$%g214785214967%_)
                                   (let ((_%$%e214905214969%_
                                          (gx#stx-e _%$%g214785214967%_)))
                                     (let ((_%$%hd214906214972%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214905214969%_)))
                                           (_%$%tl214907214974%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214905214969%_))))
                                       (if (gx#identifier?
                                            _%$%hd214906214972%_)
                                           (if (gx#stx-eq?
                                                '%#letrec-values
                                                _%$%hd214906214972%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214907214974%_)
                                                   (let ((_%$%e214908214977%_
                                                          (gx#stx-e
                                                           _%$%tl214907214974%_)))
                                                     (let ((_%$%hd214909214980%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214908214977%_)))
                                                           (_%$%tl214910214982%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214908214977%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd214909214980%_)
                                                           (let ((_%$%e214911214985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd214909214980%_)))
                     (let ((_%$%hd214912214988%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e214911214985%_)))
                           (_%$%tl214913214990%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e214911214985%_))))
                       (if (gx#stx-pair? _%$%hd214912214988%_)
                           (let ((_%$%e214914214993%_
                                  (gx#stx-e _%$%hd214912214988%_)))
                             (let ((_%$%hd214915214996%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e214914214993%_)))
                                   (_%$%tl214916214998%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e214914214993%_))))
                               (if (gx#stx-pair? _%$%hd214915214996%_)
                                   (let ((_%$%e214917215001%_
                                          (gx#stx-e _%$%hd214915214996%_)))
                                     (let ((_%$%hd214918215004%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214917215001%_)))
                                           (_%$%tl214919215006%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214917215001%_))))
                                       (if (gx#stx-null? _%$%tl214919215006%_)
                                           (if (gx#stx-pair?
                                                _%$%tl214916214998%_)
                                               (let ((_%$%e214920215009%_
                                                      (gx#stx-e
                                                       _%$%tl214916214998%_)))
                                                 (let ((_%$%hd214921215012%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e214920215009%_)))
                                                       (_%$%tl214922215014%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e214920215009%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd214921215012%_)
                                                       (let ((_%$%e214923215017%_
                                                              (gx#stx-e
                                                               _%$%hd214921215012%_)))
                                                         (let ((_%$%hd214924215020%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e214923215017%_)))
                       (_%$%tl214925215022%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e214923215017%_))))
                   (if (gx#identifier? _%$%hd214924215020%_)
                       (if (gx#stx-eq? '%#lambda _%$%hd214924215020%_)
                           (if (gx#stx-pair? _%$%tl214925215022%_)
                               (let ((_%$%e214926215025%_
                                      (gx#stx-e _%$%tl214925215022%_)))
                                 (let ((_%$%hd214927215028%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e214926215025%_)))
                                       (_%$%tl214928215030%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e214926215025%_))))
                                   (if (gx#stx-pair/null? _%$%hd214927215028%_)
                                       (let ((_g219117_
                                              (gx#syntax-split-splice
                                               _%$%hd214927215028%_
                                               '0)))
                                         (begin
                                           (let ((_g219118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g219117_)
                                                        (##values-length
                                                         _g219117_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g219118_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g219118_)))
                                           (let ((_%$%target214929215033%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g219117_
                                                     0)))
                                                 (_%$%tl214931215035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g219117_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl214931215035%_)
                                                 (letrec ((_%$%loop214932215038%_
                                                           (lambda (_%$%hd214930215041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%id214936215043%_)
                     (if (gx#stx-pair? _%$%hd214930215041%_)
                         (let ((_%$%e214933215045%_
                                (gx#stx-e _%$%hd214930215041%_)))
                           (let ((_%$%lp-hd214934215048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e214933215045%_)))
                                 (_%$%lp-tl214935215050%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e214933215045%_))))
                             (_%$%loop214932215038%_
                              _%$%lp-tl214935215050%_
                              (cons _%$%lp-hd214934215048%_
                                    _%$%id214936215043%_))))
                         (let ((_%$%id214937215053%_
                                (reverse _%$%id214936215043%_)))
                           (if (gx#stx-pair? _%$%tl214928215030%_)
                               (let ((_%$%e214938215055%_
                                      (gx#stx-e _%$%tl214928215030%_)))
                                 (let ((_%$%hd214939215058%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e214938215055%_)))
                                       (_%$%tl214940215060%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e214938215055%_))))
                                   (if (gx#stx-null? _%$%tl214940215060%_)
                                       (if (gx#stx-null? _%$%tl214922215014%_)
                                           (if (gx#stx-pair/null?
                                                _%$%tl214913214990%_)
                                               (let ((_g219119_
                                                      (gx#syntax-split-splice
                                                       _%$%tl214913214990%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g219120_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219119_)
                        (##values-length _g219119_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g219120_ 2)))
                 (error "Context expects 2 values" _g219120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target214941215063%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g219119_
                                                             0)))
                                                         (_%$%tl214943215065%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g219119_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl214943215065%_)
                                                         (letrec ((_%$%loop214944215068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd214942215071%_
                                    _%$%bind214948215073%_)
                             (if (gx#stx-pair? _%$%hd214942215071%_)
                                 (let ((_%$%e214945215075%_
                                        (gx#stx-e _%$%hd214942215071%_)))
                                   (let ((_%$%lp-hd214946215078%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e214945215075%_)))
                                         (_%$%lp-tl214947215080%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e214945215075%_))))
                                     (_%$%loop214944215068%_
                                      _%$%lp-tl214947215080%_
                                      (cons _%$%lp-hd214946215078%_
                                            _%$%bind214948215073%_))))
                                 (let ((_%$%bind214949215083%_
                                        (reverse _%$%bind214948215073%_)))
                                   (if (gx#stx-pair? _%$%tl214910214982%_)
                                       (let ((_%$%e214950215085%_
                                              (gx#stx-e _%$%tl214910214982%_)))
                                         (let ((_%$%hd214951215088%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e214950215085%_)))
                                               (_%$%tl214952215090%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e214950215085%_))))
                                           (if (gx#stx-null?
                                                _%$%tl214952215090%_)
                                               ((lambda (_%$%g214900215093%_
                                                         _%$%g214901215094%_
                                                         _%$%g214902215095%_
                                                         _%$%g214903215096%_
                                                         _%$%g214904215097%_)
                                                  (_%do-splice!211796%_
                                                   (lambda ()
                                                     (let ((_%expr215139%_
                                                            (_%optimize-e211797%_
                                                             _%$%g214902215095%_)))
                                                       (cons '%#letrec-values
                                                             (cons (cons (cons (cons _%$%g214904215097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (cons '%#lambda
                                                   (cons (foldr (lambda (_%$%g215140215143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g215141215145%_)
                          (cons _%$%g215140215143%_ _%$%g215141215145%_))
                        '()
                        _%$%g214903215096%_)
                 (cons _%expr215139%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (foldr (lambda (_%$%g215147215150%_
                                                 _%$%g215148215152%_)
                                          (cons _%$%g215147215150%_
                                                _%$%g215148215152%_))
                                        '()
                                        _%$%g214901215094%_))
                           (cons _%$%g214900215093%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%hd214951215088%_
                                                _%$%bind214949215083%_
                                                _%$%hd214939215058%_
                                                _%$%id214937215053%_
                                                _%$%hd214918215004%_)
                                               (_%$%g214783214964%_
                                                _%$%g214785214967%_))))
                                       (_%$%g214783214964%_
                                        _%$%g214785214967%_)))))))
                   (_%$%loop214944215068%_ _%$%target214941215063%_ '()))
                 (_%$%g214783214964%_ _%$%g214785214967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g214783214964%_
                                                _%$%g214785214967%_))
                                           (_%$%g214783214964%_
                                            _%$%g214785214967%_))
                                       (_%$%g214783214964%_
                                        _%$%g214785214967%_))))
                               (_%$%g214783214964%_ _%$%g214785214967%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop214932215038%_
                                                    _%$%target214929215033%_
                                                    '()))
                                                 (_%$%g214783214964%_
                                                  _%$%g214785214967%_)))))
                                       (_%$%g214783214964%_
                                        _%$%g214785214967%_))))
                               (_%$%g214783214964%_ _%$%g214785214967%_))
                           (_%$%g214783214964%_ _%$%g214785214967%_))
                       (_%$%g214783214964%_ _%$%g214785214967%_))))
               (_%$%g214783214964%_ _%$%g214785214967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g214783214964%_
                                                _%$%g214785214967%_))
                                           (_%$%g214783214964%_
                                            _%$%g214785214967%_))))
                                   (_%$%g214783214964%_ _%$%g214785214967%_))))
                           (_%$%g214783214964%_ _%$%g214785214967%_))))
                   (_%$%g214783214964%_ _%$%g214785214967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214783214964%_
                                                    _%$%g214785214967%_))
                                               (_%$%g214783214964%_
                                                _%$%g214785214967%_))
                                           (_%$%g214783214964%_
                                            _%$%g214785214967%_))))
                                   (_%$%g214783214964%_ _%$%g214785214967%_))))
                            (_%$%g214781215267%_
                             (lambda (_%$%g214785215158%_)
                               (if (gx#stx-pair? _%$%g214785215158%_)
                                   (let ((_%$%e214871215160%_
                                          (gx#stx-e _%$%g214785215158%_)))
                                     (let ((_%$%hd214872215163%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214871215160%_)))
                                           (_%$%tl214873215165%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214871215160%_))))
                                       (if (gx#identifier?
                                            _%$%hd214872215163%_)
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _%$%hd214872215163%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214873215165%_)
                                                   (let ((_%$%e214874215168%_
                                                          (gx#stx-e
                                                           _%$%tl214873215165%_)))
                                                     (let ((_%$%hd214875215171%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214874215168%_)))
                                                           (_%$%tl214876215173%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214874215168%_))))
                                                       (if (gx#stx-pair/null?
                                                            _%$%hd214875215171%_)
                                                           (let ((_g219121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%hd214875215171%_ '0)))
                     (begin
                       (let ((_g219122_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g219121_)
                                    (##values-length _g219121_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g219122_ 2)))
                             (error "Context expects 2 values" _g219122_)))
                       (let ((_%$%target214877215176%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219121_ 0)))
                             (_%$%tl214879215178%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219121_ 1))))
                         (if (gx#stx-null? _%$%tl214879215178%_)
                             (letrec ((_%$%loop214880215181%_
                                       (lambda (_%$%hd214878215184%_
                                                _%$%expr214884215186%_
                                                _%$%id214885215187%_)
                                         (if (gx#stx-pair?
                                              _%$%hd214878215184%_)
                                             (let ((_%$%e214881215189%_
                                                    (gx#stx-e
                                                     _%$%hd214878215184%_)))
                                               (let ((_%$%lp-hd214882215192%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e214881215189%_)))
                                                     (_%$%lp-tl214883215194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e214881215189%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%lp-hd214882215192%_)
                                                     (let ((_%$%e214888215197%_
                                                            (gx#stx-e
                                                             _%$%lp-hd214882215192%_)))
                                                       (let ((_%$%hd214889215200%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e214888215197%_)))
                     (_%$%tl214890215202%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e214888215197%_))))
                 (if (gx#stx-pair? _%$%hd214889215200%_)
                     (let ((_%$%e214891215205%_
                            (gx#stx-e _%$%hd214889215200%_)))
                       (let ((_%$%hd214892215208%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e214891215205%_)))
                             (_%$%tl214893215210%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e214891215205%_))))
                         (if (gx#stx-null? _%$%tl214893215210%_)
                             (if (gx#stx-pair? _%$%tl214890215202%_)
                                 (let ((_%$%e214894215213%_
                                        (gx#stx-e _%$%tl214890215202%_)))
                                   (let ((_%$%hd214895215216%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e214894215213%_)))
                                         (_%$%tl214896215218%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e214894215213%_))))
                                     (if (gx#stx-null? _%$%tl214896215218%_)
                                         (_%$%loop214880215181%_
                                          _%$%lp-tl214883215194%_
                                          (cons _%$%hd214895215216%_
                                                _%$%expr214884215186%_)
                                          (cons _%$%hd214892215208%_
                                                _%$%id214885215187%_))
                                         (_%$%g214782215155%_
                                          _%$%g214785215158%_))))
                                 (_%$%g214782215155%_ _%$%g214785215158%_))
                             (_%$%g214782215155%_ _%$%g214785215158%_))))
                     (_%$%g214782215155%_ _%$%g214785215158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g214782215155%_
                                                      _%$%g214785215158%_))))
                                             (let ((_%$%expr214886215221%_
                                                    (reverse _%$%expr214884215186%_))
                                                   (_%$%id214887215222%_
                                                    (reverse _%$%id214885215187%_)))
                                               (if (gx#stx-pair?
                                                    _%$%tl214876215173%_)
                                                   (let ((_%$%e214897215224%_
                                                          (gx#stx-e
                                                           _%$%tl214876215173%_)))
                                                     (let ((_%$%hd214898215227%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214897215224%_)))
                                                           (_%$%tl214899215229%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214897215224%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl214899215229%_)
                                                           ((lambda (_%$%g214868215232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g214869215233%_
                             _%$%g214870215234%_)
                      (_%bind-e211804%_
                       (map cons
                            (foldr (lambda (_%$%g215252215255%_
                                            _%$%g215253215257%_)
                                     (cons _%$%g215252215255%_
                                           _%$%g215253215257%_))
                                   '()
                                   _%$%g214870215234%_)
                            (foldr (lambda (_%$%g215259215262%_
                                            _%$%g215260215264%_)
                                     (cons _%$%g215259215262%_
                                           _%$%g215260215264%_))
                                   '()
                                   _%$%g214869215233%_))
                       _%$%g214868215232%_))
                    _%$%hd214898215227%_
                    _%$%expr214886215221%_
                    _%$%id214887215222%_)
                   (_%$%g214782215155%_ _%$%g214785215158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214782215155%_
                                                    _%$%g214785215158%_)))))))
                               (_%$%loop214880215181%_
                                _%$%target214877215176%_
                                '()
                                '()))
                             (_%$%g214782215155%_ _%$%g214785215158%_)))))
                   (_%$%g214782215155%_ _%$%g214785215158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214782215155%_
                                                    _%$%g214785215158%_))
                                               (_%$%g214782215155%_
                                                _%$%g214785215158%_))
                                           (_%$%g214782215155%_
                                            _%$%g214785215158%_))))
                                   (_%$%g214782215155%_ _%$%g214785215158%_))))
                            (_%$%g214780215393%_
                             (lambda (_%$%g214785215270%_)
                               (if (gx#stx-pair? _%$%g214785215270%_)
                                   (let ((_%$%e214833215272%_
                                          (gx#stx-e _%$%g214785215270%_)))
                                     (let ((_%$%hd214834215275%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214833215272%_)))
                                           (_%$%tl214835215277%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214833215272%_))))
                                       (if (gx#identifier?
                                            _%$%hd214834215275%_)
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _%$%hd214834215275%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214835215277%_)
                                                   (let ((_%$%e214836215280%_
                                                          (gx#stx-e
                                                           _%$%tl214835215277%_)))
                                                     (let ((_%$%hd214837215283%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214836215280%_)))
                                                           (_%$%tl214838215285%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214836215280%_))))
                                                       (if (gx#stx-pair/null?
                                                            _%$%hd214837215283%_)
                                                           (let ((_g219123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%hd214837215283%_ '0)))
                     (begin
                       (let ((_g219124_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g219123_)
                                    (##values-length _g219123_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g219124_ 2)))
                             (error "Context expects 2 values" _g219124_)))
                       (let ((_%$%target214839215288%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219123_ 0)))
                             (_%$%tl214841215290%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219123_ 1))))
                         (if (gx#stx-null? _%$%tl214841215290%_)
                             (letrec ((_%$%loop214842215293%_
                                       (lambda (_%$%hd214840215296%_
                                                _%$%xid214846215298%_
                                                _%$%id214847215299%_)
                                         (if (gx#stx-pair?
                                              _%$%hd214840215296%_)
                                             (let ((_%$%e214843215301%_
                                                    (gx#stx-e
                                                     _%$%hd214840215296%_)))
                                               (let ((_%$%lp-hd214844215304%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e214843215301%_)))
                                                     (_%$%lp-tl214845215306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e214843215301%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%lp-hd214844215304%_)
                                                     (let ((_%$%e214850215309%_
                                                            (gx#stx-e
                                                             _%$%lp-hd214844215304%_)))
                                                       (let ((_%$%hd214851215312%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e214850215309%_)))
                     (_%$%tl214852215314%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e214850215309%_))))
                 (if (gx#stx-pair? _%$%hd214851215312%_)
                     (let ((_%$%e214853215317%_
                            (gx#stx-e _%$%hd214851215312%_)))
                       (let ((_%$%hd214854215320%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e214853215317%_)))
                             (_%$%tl214855215322%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e214853215317%_))))
                         (if (gx#stx-null? _%$%tl214855215322%_)
                             (if (gx#stx-pair? _%$%tl214852215314%_)
                                 (let ((_%$%e214856215325%_
                                        (gx#stx-e _%$%tl214852215314%_)))
                                   (let ((_%$%hd214857215328%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e214856215325%_)))
                                         (_%$%tl214858215330%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e214856215325%_))))
                                     (if (gx#stx-pair? _%$%hd214857215328%_)
                                         (let ((_%$%e214859215333%_
                                                (gx#stx-e
                                                 _%$%hd214857215328%_)))
                                           (let ((_%$%hd214860215336%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e214859215333%_)))
                                                 (_%$%tl214861215338%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e214859215333%_))))
                                             (if (gx#identifier?
                                                  _%$%hd214860215336%_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _%$%hd214860215336%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl214861215338%_)
                                                         (let ((_%$%e214862215341%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl214861215338%_)))
                   (let ((_%$%hd214863215344%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e214862215341%_)))
                         (_%$%tl214864215346%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e214862215341%_))))
                     (if (gx#stx-null? _%$%tl214864215346%_)
                         (if (gx#stx-null? _%$%tl214858215330%_)
                             (_%$%loop214842215293%_
                              _%$%lp-tl214845215306%_
                              (cons _%$%hd214863215344%_ _%$%xid214846215298%_)
                              (cons _%$%hd214854215320%_ _%$%id214847215299%_))
                             (_%$%g214781215267%_ _%$%g214785215270%_))
                         (_%$%g214781215267%_ _%$%g214785215270%_))))
                 (_%$%g214781215267%_ _%$%g214785215270%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g214781215267%_
                                                      _%$%g214785215270%_))
                                                 (_%$%g214781215267%_
                                                  _%$%g214785215270%_))))
                                         (_%$%g214781215267%_
                                          _%$%g214785215270%_))))
                                 (_%$%g214781215267%_ _%$%g214785215270%_))
                             (_%$%g214781215267%_ _%$%g214785215270%_))))
                     (_%$%g214781215267%_ _%$%g214785215270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g214781215267%_
                                                      _%$%g214785215270%_))))
                                             (let ((_%$%xid214848215349%_
                                                    (reverse _%$%xid214846215298%_))
                                                   (_%$%id214849215350%_
                                                    (reverse _%$%id214847215299%_)))
                                               (if (gx#stx-pair?
                                                    _%$%tl214838215285%_)
                                                   (let ((_%$%e214865215352%_
                                                          (gx#stx-e
                                                           _%$%tl214838215285%_)))
                                                     (let ((_%$%hd214866215355%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214865215352%_)))
                                                           (_%$%tl214867215357%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214865215352%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl214867215357%_)
                                                           ((lambda (_%$%g214830215360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g214831215361%_
                             _%$%g214832215362%_)
                      (let ((_%body215381%_
                             (_%optimize-e211797%_ _%$%g214830215360%_)))
                        (cons '%#let-values
                              (cons (begin
                                      (gx#syntax-check-splice-targets
                                       _%$%g214831215361%_
                                       _%$%g214832215362%_)
                                      (foldr (lambda (_%$%g215382215386%_
                                                      _%$%g215383215388%_
                                                      _%$%g215384215390%_)
                                               (cons (cons (cons _%$%g215383215388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cons (gx#datum->syntax '#f '%#ref)
                               (cons _%$%g215382215386%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%g215384215390%_))
                                             '()
                                             _%$%g214831215361%_
                                             _%$%g214832215362%_))
                                    (cons _%body215381%_ '())))))
                    _%$%hd214866215355%_
                    _%$%xid214848215349%_
                    _%$%id214849215350%_)
                   (_%$%g214781215267%_ _%$%g214785215270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214781215267%_
                                                    _%$%g214785215270%_)))))))
                               (_%$%loop214842215293%_
                                _%$%target214839215288%_
                                '()
                                '()))
                             (_%$%g214781215267%_ _%$%g214785215270%_)))))
                   (_%$%g214781215267%_ _%$%g214785215270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214781215267%_
                                                    _%$%g214785215270%_))
                                               (_%$%g214781215267%_
                                                _%$%g214785215270%_))
                                           (_%$%g214781215267%_
                                            _%$%g214785215270%_))))
                                   (_%$%g214781215267%_ _%$%g214785215270%_))))
                            (_%$%g214779215502%_
                             (lambda (_%$%g214785215396%_)
                               (if (gx#stx-pair? _%$%g214785215396%_)
                                   (let ((_%$%e214803215398%_
                                          (gx#stx-e _%$%g214785215396%_)))
                                     (let ((_%$%hd214804215401%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214803215398%_)))
                                           (_%$%tl214805215403%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214803215398%_))))
                                       (if (gx#identifier?
                                            _%$%hd214804215401%_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _%$%hd214804215401%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214805215403%_)
                                                   (let ((_%$%e214806215406%_
                                                          (gx#stx-e
                                                           _%$%tl214805215403%_)))
                                                     (let ((_%$%hd214807215409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214806215406%_)))
                                                           (_%$%tl214808215411%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214806215406%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd214807215409%_)
                                                           (let ((_%$%e214809215414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd214807215409%_)))
                     (let ((_%$%hd214810215417%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e214809215414%_)))
                           (_%$%tl214811215419%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e214809215414%_))))
                       (if (gx#identifier? _%$%hd214810215417%_)
                           (if (gx#stx-eq? '%#ref _%$%hd214810215417%_)
                               (if (gx#stx-pair? _%$%tl214811215419%_)
                                   (let ((_%$%e214812215422%_
                                          (gx#stx-e _%$%tl214811215419%_)))
                                     (let ((_%$%hd214813215425%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214812215422%_)))
                                           (_%$%tl214814215427%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214812215422%_))))
                                       (if (gx#stx-null? _%$%tl214814215427%_)
                                           (if (gx#stx-pair/null?
                                                _%$%tl214808215411%_)
                                               (let ((_g219125_
                                                      (gx#syntax-split-splice
                                                       _%$%tl214808215411%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g219126_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219125_)
                        (##values-length _g219125_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g219126_ 2)))
                 (error "Context expects 2 values" _g219126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target214815215430%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g219125_
                                                             0)))
                                                         (_%$%tl214817215432%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g219125_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl214817215432%_)
                                                         (letrec ((_%$%loop214818215435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd214816215438%_ _%$%id214822215440%_)
                             (if (gx#stx-pair? _%$%hd214816215438%_)
                                 (let ((_%$%e214819215442%_
                                        (gx#stx-e _%$%hd214816215438%_)))
                                   (let ((_%$%lp-hd214820215445%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e214819215442%_)))
                                         (_%$%lp-tl214821215447%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e214819215442%_))))
                                     (if (gx#stx-pair? _%$%lp-hd214820215445%_)
                                         (let ((_%$%e214824215450%_
                                                (gx#stx-e
                                                 _%$%lp-hd214820215445%_)))
                                           (let ((_%$%hd214825215453%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e214824215450%_)))
                                                 (_%$%tl214826215455%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e214824215450%_))))
                                             (if (gx#identifier?
                                                  _%$%hd214825215453%_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _%$%hd214825215453%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl214826215455%_)
                                                         (let ((_%$%e214827215458%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl214826215455%_)))
                   (let ((_%$%hd214828215461%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e214827215458%_)))
                         (_%$%tl214829215463%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e214827215458%_))))
                     (if (gx#stx-null? _%$%tl214829215463%_)
                         (_%$%loop214818215435%_
                          _%$%lp-tl214821215447%_
                          (cons _%$%hd214828215461%_ _%$%id214822215440%_))
                         (_%$%g214780215393%_ _%$%g214785215396%_))))
                 (_%$%g214780215393%_ _%$%g214785215396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g214780215393%_
                                                      _%$%g214785215396%_))
                                                 (_%$%g214780215393%_
                                                  _%$%g214785215396%_))))
                                         (_%$%g214780215393%_
                                          _%$%g214785215396%_))))
                                 (let ((_%$%id214823215466%_
                                        (reverse _%$%id214822215440%_)))
                                   ((lambda (_%$%g214801215468%_
                                             _%$%g214802215469%_)
                                      (let ((_%$e215489%_
                                             (_%lookup-block211805%_
                                              _%$%g214802215469%_)))
                                        (if _%$e215489%_
                                            ((lambda (_%block215492%_)
                                               (if (_%nonlinear-block?211807%_
                                                    _%block215492%_)
                                                   _%expr214777%_
                                                   (_%optimize-e211797%_
                                                    (_%inline-block211806%_
                                                     _%block215492%_
                                                     (foldr (lambda (_%$%g215493215496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g215494215498%_)
                      (cons _%$%g215493215496%_ _%$%g215494215498%_))
                    '()
                    _%$%g214801215468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e215489%_)
                                            _%expr214777%_)))
                                    _%$%id214823215466%_
                                    _%$%hd214813215425%_))))))
                   (_%$%loop214818215435%_ _%$%target214815215430%_ '()))
                 (_%$%g214780215393%_ _%$%g214785215396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g214780215393%_
                                                _%$%g214785215396%_))
                                           (_%$%g214780215393%_
                                            _%$%g214785215396%_))))
                                   (_%$%g214780215393%_ _%$%g214785215396%_))
                               (_%$%g214780215393%_ _%$%g214785215396%_))
                           (_%$%g214780215393%_ _%$%g214785215396%_))))
                   (_%$%g214780215393%_ _%$%g214785215396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214780215393%_
                                                    _%$%g214785215396%_))
                                               (_%$%g214780215393%_
                                                _%$%g214785215396%_))
                                           (_%$%g214780215393%_
                                            _%$%g214785215396%_))))
                                   (_%$%g214780215393%_ _%$%g214785215396%_))))
                            (_%$%g214778215564%_
                             (lambda (_%$%g214785215505%_)
                               (if (gx#stx-pair? _%$%g214785215505%_)
                                   (let ((_%$%e214789215507%_
                                          (gx#stx-e _%$%g214785215505%_)))
                                     (let ((_%$%hd214790215510%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214789215507%_)))
                                           (_%$%tl214791215512%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214789215507%_))))
                                       (if (gx#identifier?
                                            _%$%hd214790215510%_)
                                           (if (gx#stx-eq?
                                                '%#if
                                                _%$%hd214790215510%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214791215512%_)
                                                   (let ((_%$%e214792215515%_
                                                          (gx#stx-e
                                                           _%$%tl214791215512%_)))
                                                     (let ((_%$%hd214793215518%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214792215515%_)))
                                                           (_%$%tl214794215520%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214792215515%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl214794215520%_)
                                                           (let ((_%$%e214795215523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl214794215520%_)))
                     (let ((_%$%hd214796215526%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e214795215523%_)))
                           (_%$%tl214797215528%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e214795215523%_))))
                       (if (gx#stx-pair? _%$%tl214797215528%_)
                           (let ((_%$%e214798215531%_
                                  (gx#stx-e _%$%tl214797215528%_)))
                             (let ((_%$%hd214799215534%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e214798215531%_)))
                                   (_%$%tl214800215536%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e214798215531%_))))
                               (if (gx#stx-null? _%$%tl214800215536%_)
                                   ((lambda (_%$%g214786215539%_
                                             _%$%g214787215540%_
                                             _%$%g214788215541%_)
                                      (let ((_%$e215558%_
                                             (_%assert-e211800%_
                                              _%$%g214788215541%_)))
                                        (if (eq? '#t _%$e215558%_)
                                            (_%optimize-e211797%_
                                             _%$%g214787215540%_)
                                            (if (eq? '#f _%$e215558%_)
                                                (_%optimize-e211797%_
                                                 _%$%g214786215539%_)
                                                (let ((_%K215561%_
                                                       (_%optimize-t211798%_
                                                        _%$%g214787215540%_
                                                        _%$%g214788215541%_))
                                                      (_%E215562%_
                                                       (_%optimize-f211799%_
                                                        _%$%g214786215539%_
                                                        _%$%g214788215541%_)))
                                                  (if (equal? (gxc#apply-generate-runtime-repr
                                                               _%K215561%_)
                                                              (gxc#apply-generate-runtime-repr
                                                               _%E215562%_))
                                                      _%K215561%_
                                                      (cons '%#if
                                                            (cons _%$%g214788215541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%K215561%_ (cons _%E215562%_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%hd214799215534%_
                                    _%$%hd214796215526%_
                                    _%$%hd214793215518%_)
                                   (_%$%g214779215502%_ _%$%g214785215505%_))))
                           (_%$%g214779215502%_ _%$%g214785215505%_))))
                   (_%$%g214779215502%_ _%$%g214785215505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214779215502%_
                                                    _%$%g214785215505%_))
                                               (_%$%g214779215502%_
                                                _%$%g214785215505%_))
                                           (_%$%g214779215502%_
                                            _%$%g214785215505%_))))
                                   (_%$%g214779215502%_
                                    _%$%g214785215505%_)))))
                       (_%$%g214778215564%_ _%expr214777%_))))
                  (_%optimize-t211798%_
                   (let ((_%$%opt-lambda214758214765%_
                          (lambda (_%expr214760%_
                                   _%test214761%_
                                   _%continue214762%_)
                            (_%do-assert211786%_
                             (cons (cons _%test214761%_ '#t) '())
                             (lambda ()
                               (_%continue214762%_ _%expr214760%_))))))
                     (lambda _g219127_
                       (let ((_g219128_
                              (let ()
                                (declare (not safe))
                                (##length _g219127_))))
                         (cond ((let ()
                                  (declare (not safe))
                                  (##fx= _g219128_ 2))
                                (apply (lambda (_%expr214768%_ _%test214769%_)
                                         (let ((_%continue214771%_
                                                _%optimize-e211797%_))
                                           (_%$%opt-lambda214758214765%_
                                            _%expr214768%_
                                            _%test214769%_
                                            _%continue214771%_)))
                                       _g219127_))
                               ((let ()
                                  (declare (not safe))
                                  (##fx= _g219128_ 3))
                                (apply _%$%opt-lambda214758214765%_ _g219127_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g219127_)))))))
                  (_%optimize-f211799%_
                   (let ((_%$%opt-lambda213856214749%_
                          (lambda (_%expr213858%_ _%test213859%_)
                            (_%do-assert211786%_
                             (if _%test213859%_
                                 (cons (cons _%test213859%_ '#f) '())
                                 '())
                             (lambda ()
                               (let* ((_%$%g213867214040%_
                                       (lambda (_%$%g213868214037%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g213868214037%_)))
                                      (_%$%g213866214047%_
                                       (lambda (_%$%g213868214043%_)
                                         ((lambda () _%expr213858%_))))
                                      (_%$%g213865214239%_
                                       (lambda (_%$%g213868214050%_)
                                         (if (gx#stx-pair? _%$%g213868214050%_)
                                             (let ((_%$%e213988214052%_
                                                    (gx#stx-e
                                                     _%$%g213868214050%_)))
                                               (let ((_%$%hd213989214055%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213988214052%_)))
                                                     (_%$%tl213990214057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213988214052%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd213989214055%_)
                                                     (if (gx#stx-eq?
                                                          '%#letrec-values
                                                          _%$%hd213989214055%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl213990214057%_)
                                                             (let ((_%$%e213991214060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl213990214057%_)))
                       (let ((_%$%hd213992214063%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213991214060%_)))
                             (_%$%tl213993214065%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213991214060%_))))
                         (if (gx#stx-pair? _%$%hd213992214063%_)
                             (let ((_%$%e213994214068%_
                                    (gx#stx-e _%$%hd213992214063%_)))
                               (let ((_%$%hd213995214071%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e213994214068%_)))
                                     (_%$%tl213996214073%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e213994214068%_))))
                                 (if (gx#stx-pair? _%$%hd213995214071%_)
                                     (let ((_%$%e213997214076%_
                                            (gx#stx-e _%$%hd213995214071%_)))
                                       (let ((_%$%hd213998214079%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e213997214076%_)))
                                             (_%$%tl213999214081%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e213997214076%_))))
                                         (if (gx#stx-pair?
                                              _%$%hd213998214079%_)
                                             (let ((_%$%e214000214084%_
                                                    (gx#stx-e
                                                     _%$%hd213998214079%_)))
                                               (let ((_%$%hd214001214087%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e214000214084%_)))
                                                     (_%$%tl214002214089%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e214000214084%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl214002214089%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl213999214081%_)
                                                         (let ((_%$%e214003214092%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl213999214081%_)))
                   (let ((_%$%hd214004214095%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e214003214092%_)))
                         (_%$%tl214005214097%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e214003214092%_))))
                     (if (gx#stx-pair? _%$%hd214004214095%_)
                         (let ((_%$%e214006214100%_
                                (gx#stx-e _%$%hd214004214095%_)))
                           (let ((_%$%hd214007214103%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e214006214100%_)))
                                 (_%$%tl214008214105%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e214006214100%_))))
                             (if (gx#identifier? _%$%hd214007214103%_)
                                 (if (gx#stx-eq?
                                      '%#lambda
                                      _%$%hd214007214103%_)
                                     (if (gx#stx-pair? _%$%tl214008214105%_)
                                         (let ((_%$%e214009214108%_
                                                (gx#stx-e
                                                 _%$%tl214008214105%_)))
                                           (let ((_%$%hd214010214111%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e214009214108%_)))
                                                 (_%$%tl214011214113%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e214009214108%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%hd214010214111%_)
                                                 (let ((_g219129_
                                                        (gx#syntax-split-splice
                                                         _%$%hd214010214111%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g219130_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g219129_)
                          (##values-length _g219129_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g219130_ 2)))
                   (error "Context expects 2 values" _g219130_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target214012214116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g219129_
                                                               0)))
                                                           (_%$%tl214014214118%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g219129_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%$%tl214014214118%_)
                                                           (letrec ((_%$%loop214015214121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd214013214124%_
                                      _%$%id214019214126%_)
                               (if (gx#stx-pair? _%$%hd214013214124%_)
                                   (let ((_%$%e214016214128%_
                                          (gx#stx-e _%$%hd214013214124%_)))
                                     (let ((_%$%lp-hd214017214131%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214016214128%_)))
                                           (_%$%lp-tl214018214133%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214016214128%_))))
                                       (_%$%loop214015214121%_
                                        _%$%lp-tl214018214133%_
                                        (cons _%$%lp-hd214017214131%_
                                              _%$%id214019214126%_))))
                                   (let ((_%$%id214020214136%_
                                          (reverse _%$%id214019214126%_)))
                                     (if (gx#stx-pair? _%$%tl214011214113%_)
                                         (let ((_%$%e214021214138%_
                                                (gx#stx-e
                                                 _%$%tl214011214113%_)))
                                           (let ((_%$%hd214022214141%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e214021214138%_)))
                                                 (_%$%tl214023214143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e214021214138%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl214023214143%_)
                                                 (if (gx#stx-null?
                                                      _%$%tl214005214097%_)
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl213996214073%_)
                                                         (let ((_g219131_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl213996214073%_
                         '0)))
                   (begin
                     (let ((_g219132_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g219131_)
                                  (##values-length _g219131_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g219132_ 2)))
                           (error "Context expects 2 values" _g219132_)))
                     (let ((_%$%target214024214146%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g219131_ 0)))
                           (_%$%tl214026214148%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g219131_ 1))))
                       (if (gx#stx-null? _%$%tl214026214148%_)
                           (letrec ((_%$%loop214027214151%_
                                     (lambda (_%$%hd214025214154%_
                                              _%$%bind214031214156%_)
                                       (if (gx#stx-pair? _%$%hd214025214154%_)
                                           (let ((_%$%e214028214158%_
                                                  (gx#stx-e
                                                   _%$%hd214025214154%_)))
                                             (let ((_%$%lp-hd214029214161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e214028214158%_)))
                                                   (_%$%lp-tl214030214163%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e214028214158%_))))
                                               (_%$%loop214027214151%_
                                                _%$%lp-tl214030214163%_
                                                (cons _%$%lp-hd214029214161%_
                                                      _%$%bind214031214156%_))))
                                           (let ((_%$%bind214032214166%_
                                                  (reverse _%$%bind214031214156%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl213993214065%_)
                                                 (let ((_%$%e214033214168%_
                                                        (gx#stx-e
                                                         _%$%tl213993214065%_)))
                                                   (let ((_%$%hd214034214171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e214033214168%_)))
                                                         (_%$%tl214035214173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e214033214168%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl214035214173%_)
                                                         ((lambda (_%$%g213983214176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g213984214177%_
                           _%$%g213985214178%_
                           _%$%g213986214179%_
                           _%$%g213987214180%_)
                    (_%do-splice!211796%_
                     (lambda ()
                       (let ((_%expr214223%_
                              (_%optimize-f211799%_ _%$%g213985214178%_)))
                         (cons '%#letrec-values
                               (cons (cons (cons (cons _%$%g213987214180%_ '())
                                                 (cons (cons '%#lambda
                                                             (cons (foldr (lambda (_%$%g214224214227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%$%g214225214229%_)
                                    (cons _%$%g214224214227%_
                                          _%$%g214225214229%_))
                                  '()
                                  _%$%g213986214179%_)
                           (cons _%expr214223%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%$%g214231214234%_
                                                           _%$%g214232214236%_)
                                                    (cons _%$%g214231214234%_
                                                          _%$%g214232214236%_))
                                                  '()
                                                  _%$%g213984214177%_))
                                     (cons _%$%g213983214176%_ '())))))))
                  _%$%hd214034214171%_
                  _%$%bind214032214166%_
                  _%$%hd214022214141%_
                  _%$%id214020214136%_
                  _%$%hd214001214087%_)
                 (_%$%g213866214047%_ _%$%g213868214050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g213866214047%_
                                                  _%$%g213868214050%_)))))))
                             (_%$%loop214027214151%_
                              _%$%target214024214146%_
                              '()))
                           (_%$%g213866214047%_ _%$%g213868214050%_)))))
                 (_%$%g213866214047%_ _%$%g213868214050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213866214047%_
                                                      _%$%g213868214050%_))
                                                 (_%$%g213866214047%_
                                                  _%$%g213868214050%_))))
                                         (_%$%g213866214047%_
                                          _%$%g213868214050%_)))))))
                     (_%$%loop214015214121%_ _%$%target214012214116%_ '()))
                   (_%$%g213866214047%_ _%$%g213868214050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g213866214047%_
                                                  _%$%g213868214050%_))))
                                         (_%$%g213866214047%_
                                          _%$%g213868214050%_))
                                     (_%$%g213866214047%_ _%$%g213868214050%_))
                                 (_%$%g213866214047%_ _%$%g213868214050%_))))
                         (_%$%g213866214047%_ _%$%g213868214050%_))))
                 (_%$%g213866214047%_ _%$%g213868214050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213866214047%_
                                                      _%$%g213868214050%_))))
                                             (_%$%g213866214047%_
                                              _%$%g213868214050%_))))
                                     (_%$%g213866214047%_
                                      _%$%g213868214050%_))))
                             (_%$%g213866214047%_ _%$%g213868214050%_))))
                     (_%$%g213866214047%_ _%$%g213868214050%_))
                 (_%$%g213866214047%_ _%$%g213868214050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213866214047%_
                                                      _%$%g213868214050%_))))
                                             (_%$%g213866214047%_
                                              _%$%g213868214050%_))))
                                      (_%$%g213864214351%_
                                       (lambda (_%$%g213868214242%_)
                                         (if (gx#stx-pair? _%$%g213868214242%_)
                                             (let ((_%$%e213954214244%_
                                                    (gx#stx-e
                                                     _%$%g213868214242%_)))
                                               (let ((_%$%hd213955214247%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213954214244%_)))
                                                     (_%$%tl213956214249%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213954214244%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd213955214247%_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _%$%hd213955214247%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl213956214249%_)
                                                             (let ((_%$%e213957214252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl213956214249%_)))
                       (let ((_%$%hd213958214255%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213957214252%_)))
                             (_%$%tl213959214257%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213957214252%_))))
                         (if (gx#stx-pair/null? _%$%hd213958214255%_)
                             (let ((_g219133_
                                    (gx#syntax-split-splice
                                     _%$%hd213958214255%_
                                     '0)))
                               (begin
                                 (let ((_g219134_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g219133_)
                                              (##values-length _g219133_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g219134_ 2)))
                                       (error "Context expects 2 values"
                                              _g219134_)))
                                 (let ((_%$%target213960214260%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g219133_ 0)))
                                       (_%$%tl213962214262%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g219133_ 1))))
                                   (if (gx#stx-null? _%$%tl213962214262%_)
                                       (letrec ((_%$%loop213963214265%_
                                                 (lambda (_%$%hd213961214268%_
                                                          _%$%expr213967214270%_
                                                          _%$%id213968214271%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd213961214268%_)
                                                       (let ((_%$%e213964214273%_
                                                              (gx#stx-e
                                                               _%$%hd213961214268%_)))
                                                         (let ((_%$%lp-hd213965214276%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e213964214273%_)))
                       (_%$%lp-tl213966214278%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e213964214273%_))))
                   (if (gx#stx-pair? _%$%lp-hd213965214276%_)
                       (let ((_%$%e213971214281%_
                              (gx#stx-e _%$%lp-hd213965214276%_)))
                         (let ((_%$%hd213972214284%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e213971214281%_)))
                               (_%$%tl213973214286%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e213971214281%_))))
                           (if (gx#stx-pair? _%$%hd213972214284%_)
                               (let ((_%$%e213974214289%_
                                      (gx#stx-e _%$%hd213972214284%_)))
                                 (let ((_%$%hd213975214292%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e213974214289%_)))
                                       (_%$%tl213976214294%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e213974214289%_))))
                                   (if (gx#stx-null? _%$%tl213976214294%_)
                                       (if (gx#stx-pair? _%$%tl213973214286%_)
                                           (let ((_%$%e213977214297%_
                                                  (gx#stx-e
                                                   _%$%tl213973214286%_)))
                                             (let ((_%$%hd213978214300%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e213977214297%_)))
                                                   (_%$%tl213979214302%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e213977214297%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl213979214302%_)
                                                   (_%$%loop213963214265%_
                                                    _%$%lp-tl213966214278%_
                                                    (cons _%$%hd213978214300%_
                                                          _%$%expr213967214270%_)
                                                    (cons _%$%hd213975214292%_
                                                          _%$%id213968214271%_))
                                                   (_%$%g213865214239%_
                                                    _%$%g213868214242%_))))
                                           (_%$%g213865214239%_
                                            _%$%g213868214242%_))
                                       (_%$%g213865214239%_
                                        _%$%g213868214242%_))))
                               (_%$%g213865214239%_ _%$%g213868214242%_))))
                       (_%$%g213865214239%_ _%$%g213868214242%_))))
               (let ((_%$%expr213969214305%_ (reverse _%$%expr213967214270%_))
                     (_%$%id213970214306%_ (reverse _%$%id213968214271%_)))
                 (if (gx#stx-pair? _%$%tl213959214257%_)
                     (let ((_%$%e213980214308%_
                            (gx#stx-e _%$%tl213959214257%_)))
                       (let ((_%$%hd213981214311%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213980214308%_)))
                             (_%$%tl213982214313%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213980214308%_))))
                         (if (gx#stx-null? _%$%tl213982214313%_)
                             ((lambda (_%$%g213951214316%_
                                       _%$%g213952214317%_
                                       _%$%g213953214318%_)
                                (_%bind-e211804%_
                                 (map cons
                                      (foldr (lambda (_%$%g214336214339%_
                                                      _%$%g214337214341%_)
                                               (cons _%$%g214336214339%_
                                                     _%$%g214337214341%_))
                                             '()
                                             _%$%g213953214318%_)
                                      (foldr (lambda (_%$%g214343214346%_
                                                      _%$%g214344214348%_)
                                               (cons _%$%g214343214346%_
                                                     _%$%g214344214348%_))
                                             '()
                                             _%$%g213952214317%_))
                                 _%$%g213951214316%_
                                 _%optimize-f211799%_))
                              _%$%hd213981214311%_
                              _%$%expr213969214305%_
                              _%$%id213970214306%_)
                             (_%$%g213865214239%_ _%$%g213868214242%_))))
                     (_%$%g213865214239%_ _%$%g213868214242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop213963214265%_
                                          _%$%target213960214260%_
                                          '()
                                          '()))
                                       (_%$%g213865214239%_
                                        _%$%g213868214242%_)))))
                             (_%$%g213865214239%_ _%$%g213868214242%_))))
                     (_%$%g213865214239%_ _%$%g213868214242%_))
                 (_%$%g213865214239%_ _%$%g213868214242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213865214239%_
                                                      _%$%g213868214242%_))))
                                             (_%$%g213865214239%_
                                              _%$%g213868214242%_))))
                                      (_%$%g213863214477%_
                                       (lambda (_%$%g213868214354%_)
                                         (if (gx#stx-pair? _%$%g213868214354%_)
                                             (let ((_%$%e213916214356%_
                                                    (gx#stx-e
                                                     _%$%g213868214354%_)))
                                               (let ((_%$%hd213917214359%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213916214356%_)))
                                                     (_%$%tl213918214361%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213916214356%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd213917214359%_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _%$%hd213917214359%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl213918214361%_)
                                                             (let ((_%$%e213919214364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl213918214361%_)))
                       (let ((_%$%hd213920214367%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213919214364%_)))
                             (_%$%tl213921214369%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213919214364%_))))
                         (if (gx#stx-pair/null? _%$%hd213920214367%_)
                             (let ((_g219135_
                                    (gx#syntax-split-splice
                                     _%$%hd213920214367%_
                                     '0)))
                               (begin
                                 (let ((_g219136_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g219135_)
                                              (##values-length _g219135_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g219136_ 2)))
                                       (error "Context expects 2 values"
                                              _g219136_)))
                                 (let ((_%$%target213922214372%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g219135_ 0)))
                                       (_%$%tl213924214374%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g219135_ 1))))
                                   (if (gx#stx-null? _%$%tl213924214374%_)
                                       (letrec ((_%$%loop213925214377%_
                                                 (lambda (_%$%hd213923214380%_
                                                          _%$%xid213929214382%_
                                                          _%$%id213930214383%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd213923214380%_)
                                                       (let ((_%$%e213926214385%_
                                                              (gx#stx-e
                                                               _%$%hd213923214380%_)))
                                                         (let ((_%$%lp-hd213927214388%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e213926214385%_)))
                       (_%$%lp-tl213928214390%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e213926214385%_))))
                   (if (gx#stx-pair? _%$%lp-hd213927214388%_)
                       (let ((_%$%e213933214393%_
                              (gx#stx-e _%$%lp-hd213927214388%_)))
                         (let ((_%$%hd213934214396%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e213933214393%_)))
                               (_%$%tl213935214398%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e213933214393%_))))
                           (if (gx#stx-pair? _%$%hd213934214396%_)
                               (let ((_%$%e213936214401%_
                                      (gx#stx-e _%$%hd213934214396%_)))
                                 (let ((_%$%hd213937214404%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e213936214401%_)))
                                       (_%$%tl213938214406%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e213936214401%_))))
                                   (if (gx#stx-null? _%$%tl213938214406%_)
                                       (if (gx#stx-pair? _%$%tl213935214398%_)
                                           (let ((_%$%e213939214409%_
                                                  (gx#stx-e
                                                   _%$%tl213935214398%_)))
                                             (let ((_%$%hd213940214412%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e213939214409%_)))
                                                   (_%$%tl213941214414%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e213939214409%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd213940214412%_)
                                                   (let ((_%$%e213942214417%_
                                                          (gx#stx-e
                                                           _%$%hd213940214412%_)))
                                                     (let ((_%$%hd213943214420%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e213942214417%_)))
                                                           (_%$%tl213944214422%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e213942214417%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd213943214420%_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _%$%hd213943214420%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl213944214422%_)
                           (let ((_%$%e213945214425%_
                                  (gx#stx-e _%$%tl213944214422%_)))
                             (let ((_%$%hd213946214428%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e213945214425%_)))
                                   (_%$%tl213947214430%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e213945214425%_))))
                               (if (gx#stx-null? _%$%tl213947214430%_)
                                   (if (gx#stx-null? _%$%tl213941214414%_)
                                       (_%$%loop213925214377%_
                                        _%$%lp-tl213928214390%_
                                        (cons _%$%hd213946214428%_
                                              _%$%xid213929214382%_)
                                        (cons _%$%hd213937214404%_
                                              _%$%id213930214383%_))
                                       (_%$%g213864214351%_
                                        _%$%g213868214354%_))
                                   (_%$%g213864214351%_ _%$%g213868214354%_))))
                           (_%$%g213864214351%_ _%$%g213868214354%_))
                       (_%$%g213864214351%_ _%$%g213868214354%_))
                   (_%$%g213864214351%_ _%$%g213868214354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g213864214351%_
                                                    _%$%g213868214354%_))))
                                           (_%$%g213864214351%_
                                            _%$%g213868214354%_))
                                       (_%$%g213864214351%_
                                        _%$%g213868214354%_))))
                               (_%$%g213864214351%_ _%$%g213868214354%_))))
                       (_%$%g213864214351%_ _%$%g213868214354%_))))
               (let ((_%$%xid213931214433%_ (reverse _%$%xid213929214382%_))
                     (_%$%id213932214434%_ (reverse _%$%id213930214383%_)))
                 (if (gx#stx-pair? _%$%tl213921214369%_)
                     (let ((_%$%e213948214436%_
                            (gx#stx-e _%$%tl213921214369%_)))
                       (let ((_%$%hd213949214439%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213948214436%_)))
                             (_%$%tl213950214441%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213948214436%_))))
                         (if (gx#stx-null? _%$%tl213950214441%_)
                             ((lambda (_%$%g213913214444%_
                                       _%$%g213914214445%_
                                       _%$%g213915214446%_)
                                (let ((_%body214465%_
                                       (_%optimize-f211799%_
                                        _%$%g213913214444%_)))
                                  (cons '%#let-values
                                        (cons (begin
                                                (gx#syntax-check-splice-targets
                                                 _%$%g213914214445%_
                                                 _%$%g213915214446%_)
                                                (foldr (lambda (_%$%g214466214470%_
                                                                _%$%g214467214472%_
                                                                _%$%g214468214474%_)
                                                         (cons (cons (cons _%$%g214467214472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f '%#ref)
                                         (cons _%$%g214466214470%_ '()))
                                   '()))
                       _%$%g214468214474%_))
               '()
               _%$%g213914214445%_
               _%$%g213915214446%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%body214465%_ '())))))
                              _%$%hd213949214439%_
                              _%$%xid213931214433%_
                              _%$%id213932214434%_)
                             (_%$%g213864214351%_ _%$%g213868214354%_))))
                     (_%$%g213864214351%_ _%$%g213868214354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop213925214377%_
                                          _%$%target213922214372%_
                                          '()
                                          '()))
                                       (_%$%g213864214351%_
                                        _%$%g213868214354%_)))))
                             (_%$%g213864214351%_ _%$%g213868214354%_))))
                     (_%$%g213864214351%_ _%$%g213868214354%_))
                 (_%$%g213864214351%_ _%$%g213868214354%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213864214351%_
                                                      _%$%g213868214354%_))))
                                             (_%$%g213864214351%_
                                              _%$%g213868214354%_))))
                                      (_%$%g213862214539%_
                                       (lambda (_%$%g213868214480%_)
                                         (if (gx#stx-pair? _%$%g213868214480%_)
                                             (let ((_%$%e213901214482%_
                                                    (gx#stx-e
                                                     _%$%g213868214480%_)))
                                               (let ((_%$%hd213902214485%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213901214482%_)))
                                                     (_%$%tl213903214487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213901214482%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd213902214485%_)
                                                     (if (gx#stx-eq?
                                                          '%#if
                                                          _%$%hd213902214485%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl213903214487%_)
                                                             (let ((_%$%e213904214490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl213903214487%_)))
                       (let ((_%$%hd213905214493%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213904214490%_)))
                             (_%$%tl213906214495%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213904214490%_))))
                         (if (gx#stx-pair? _%$%tl213906214495%_)
                             (let ((_%$%e213907214498%_
                                    (gx#stx-e _%$%tl213906214495%_)))
                               (let ((_%$%hd213908214501%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e213907214498%_)))
                                     (_%$%tl213909214503%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e213907214498%_))))
                                 (if (gx#stx-pair? _%$%tl213909214503%_)
                                     (let ((_%$%e213910214506%_
                                            (gx#stx-e _%$%tl213909214503%_)))
                                       (let ((_%$%hd213911214509%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e213910214506%_)))
                                             (_%$%tl213912214511%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e213910214506%_))))
                                         (if (gx#stx-null?
                                              _%$%tl213912214511%_)
                                             ((lambda (_%$%g213898214514%_
                                                       _%$%g213899214515%_
                                                       _%$%g213900214516%_)
                                                (let ((_%$e214533%_
                                                       (_%assert-e211800%_
                                                        _%$%g213900214516%_)))
                                                  (if (eq? '#t _%$e214533%_)
                                                      (if _%in-splice?211785%_
                                                          (_%optimize-f211799%_
                                                           _%$%g213899214515%_)
                                                          (_%optimize-e211797%_
                                                           _%$%g213899214515%_))
                                                      (if (eq? '#f
                                                               _%$e214533%_)
                                                          (_%optimize-f211799%_
                                                           _%$%g213898214514%_)
                                                          (let ((_%K214536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%optimize-t211798%_
                          _%$%g213899214515%_
                          _%$%g213900214516%_
                          _%optimize-f211799%_))
                        (_%E214537%_
                         (_%optimize-f211799%_
                          _%$%g213898214514%_
                          _%$%g213900214516%_)))
                    (if (equal? (gxc#apply-generate-runtime-repr _%K214536%_)
                                (gxc#apply-generate-runtime-repr _%E214537%_))
                        _%K214536%_
                        (cons '%#if
                              (cons _%$%g213900214516%_
                                    (cons _%K214536%_
                                          (cons _%E214537%_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%hd213911214509%_
                                              _%$%hd213908214501%_
                                              _%$%hd213905214493%_)
                                             (_%$%g213863214477%_
                                              _%$%g213868214480%_))))
                                     (_%$%g213863214477%_
                                      _%$%g213868214480%_))))
                             (_%$%g213863214477%_ _%$%g213868214480%_))))
                     (_%$%g213863214477%_ _%$%g213868214480%_))
                 (_%$%g213863214477%_ _%$%g213868214480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213863214477%_
                                                      _%$%g213868214480%_))))
                                             (_%$%g213863214477%_
                                              _%$%g213868214480%_))))
                                      (_%$%g213861214746%_
                                       (lambda (_%$%g213868214542%_)
                                         (if (gx#stx-pair? _%$%g213868214542%_)
                                             (let ((_%$%e213871214544%_
                                                    (gx#stx-e
                                                     _%$%g213868214542%_)))
                                               (let ((_%$%hd213872214547%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213871214544%_)))
                                                     (_%$%tl213873214549%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213871214544%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd213872214547%_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _%$%hd213872214547%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl213873214549%_)
                                                             (let ((_%$%e213874214552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl213873214549%_)))
                       (let ((_%$%hd213875214555%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213874214552%_)))
                             (_%$%tl213876214557%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213874214552%_))))
                         (if (gx#stx-pair? _%$%hd213875214555%_)
                             (let ((_%$%e213877214560%_
                                    (gx#stx-e _%$%hd213875214555%_)))
                               (let ((_%$%hd213878214563%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e213877214560%_)))
                                     (_%$%tl213879214565%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e213877214560%_))))
                                 (if (gx#identifier? _%$%hd213878214563%_)
                                     (if (gx#stx-eq?
                                          '%#ref
                                          _%$%hd213878214563%_)
                                         (if (gx#stx-pair?
                                              _%$%tl213879214565%_)
                                             (let ((_%$%e213880214568%_
                                                    (gx#stx-e
                                                     _%$%tl213879214565%_)))
                                               (let ((_%$%hd213881214571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e213880214568%_)))
                                                     (_%$%tl213882214573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e213880214568%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl213882214573%_)
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl213876214557%_)
                                                         (let ((_g219137_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl213876214557%_
                         '0)))
                   (begin
                     (let ((_g219138_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g219137_)
                                  (##values-length _g219137_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g219138_ 2)))
                           (error "Context expects 2 values" _g219138_)))
                     (let ((_%$%target213883214576%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g219137_ 0)))
                           (_%$%tl213885214578%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g219137_ 1))))
                       (if (gx#stx-null? _%$%tl213885214578%_)
                           (letrec ((_%$%loop213886214581%_
                                     (lambda (_%$%hd213884214584%_
                                              _%$%id213890214586%_)
                                       (if (gx#stx-pair? _%$%hd213884214584%_)
                                           (let ((_%$%e213887214588%_
                                                  (gx#stx-e
                                                   _%$%hd213884214584%_)))
                                             (let ((_%$%lp-hd213888214591%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e213887214588%_)))
                                                   (_%$%lp-tl213889214593%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e213887214588%_))))
                                               (if (gx#stx-pair?
                                                    _%$%lp-hd213888214591%_)
                                                   (let ((_%$%e213892214596%_
                                                          (gx#stx-e
                                                           _%$%lp-hd213888214591%_)))
                                                     (let ((_%$%hd213893214599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e213892214596%_)))
                                                           (_%$%tl213894214601%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e213892214596%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd213893214599%_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _%$%hd213893214599%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl213894214601%_)
                           (let ((_%$%e213895214604%_
                                  (gx#stx-e _%$%tl213894214601%_)))
                             (let ((_%$%hd213896214607%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e213895214604%_)))
                                   (_%$%tl213897214609%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e213895214604%_))))
                               (if (gx#stx-null? _%$%tl213897214609%_)
                                   (_%$%loop213886214581%_
                                    _%$%lp-tl213889214593%_
                                    (cons _%$%hd213896214607%_
                                          _%$%id213890214586%_))
                                   (_%$%g213862214539%_ _%$%g213868214542%_))))
                           (_%$%g213862214539%_ _%$%g213868214542%_))
                       (_%$%g213862214539%_ _%$%g213868214542%_))
                   (_%$%g213862214539%_ _%$%g213868214542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g213862214539%_
                                                    _%$%g213868214542%_))))
                                           (let ((_%$%id213891214612%_
                                                  (reverse _%$%id213890214586%_)))
                                             ((lambda (_%$%g213869214614%_
                                                       _%$%g213870214615%_)
                                                (let ((_%$e214635%_
                                                       (_%lookup-block211805%_
                                                        _%$%g213870214615%_)))
                                                  (if _%$e214635%_
                                                      ((lambda (_%block214638%_)
                                                         (if (_%nonlinear-block?211807%_
                                                              _%block214638%_)
                                                             _%expr213858%_
                                                             (let* ((_%inline214647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_%inline-block211806%_
                              _%block214638%_
                              (foldr (lambda (_%$%g214639214642%_
                                              _%$%g214640214644%_)
                                       (cons _%$%g214639214642%_
                                             _%$%g214640214644%_))
                                     '()
                                     _%$%g213869214614%_)))
                            (_%$%g214650214671%_
                             (lambda (_%$%g214651214668%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g214651214668%_)))
                            (_%$%g214649214678%_
                             (lambda (_%$%g214651214674%_)
                               ((lambda ()
                                  (_%optimize-f211799%_ _%inline214647%_)))))
                            (_%$%g214648214742%_
                             (lambda (_%$%g214651214681%_)
                               (if (gx#stx-pair? _%$%g214651214681%_)
                                   (let ((_%$%e214655214683%_
                                          (gx#stx-e _%$%g214651214681%_)))
                                     (let ((_%$%hd214656214686%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e214655214683%_)))
                                           (_%$%tl214657214688%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e214655214683%_))))
                                       (if (gx#identifier?
                                            _%$%hd214656214686%_)
                                           (if (gx#stx-eq?
                                                '%#if
                                                _%$%hd214656214686%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl214657214688%_)
                                                   (let ((_%$%e214658214691%_
                                                          (gx#stx-e
                                                           _%$%tl214657214688%_)))
                                                     (let ((_%$%hd214659214694%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e214658214691%_)))
                                                           (_%$%tl214660214696%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e214658214691%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl214660214696%_)
                                                           (let ((_%$%e214661214699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl214660214696%_)))
                     (let ((_%$%hd214662214702%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e214661214699%_)))
                           (_%$%tl214663214704%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e214661214699%_))))
                       (if (gx#stx-pair? _%$%tl214663214704%_)
                           (let ((_%$%e214664214707%_
                                  (gx#stx-e _%$%tl214663214704%_)))
                             (let ((_%$%hd214665214710%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e214664214707%_)))
                                   (_%$%tl214666214712%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e214664214707%_))))
                               (if (gx#stx-null? _%$%tl214666214712%_)
                                   ((lambda (_%$%g214652214715%_
                                             _%$%g214653214716%_
                                             _%$%g214654214717%_)
                                      (let ((_%$e214739%_
                                             (_%assert-e211800%_
                                              _%$%g214654214717%_)))
                                        (if (eq? '#t _%$e214739%_)
                                            (if _%in-splice?211785%_
                                                (_%optimize-f211799%_
                                                 _%$%g214653214716%_)
                                                (_%optimize-e211797%_
                                                 _%$%g214653214716%_))
                                            (if (eq? '#f _%$e214739%_)
                                                (_%optimize-f211799%_
                                                 _%$%g214652214715%_)
                                                _%expr213858%_))))
                                    _%$%hd214665214710%_
                                    _%$%hd214662214702%_
                                    _%$%hd214659214694%_)
                                   (_%$%g214649214678%_ _%$%g214651214681%_))))
                           (_%$%g214649214678%_ _%$%g214651214681%_))))
                   (_%$%g214649214678%_ _%$%g214651214681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g214649214678%_
                                                    _%$%g214651214681%_))
                                               (_%$%g214649214678%_
                                                _%$%g214651214681%_))
                                           (_%$%g214649214678%_
                                            _%$%g214651214681%_))))
                                   (_%$%g214649214678%_
                                    _%$%g214651214681%_)))))
                       (_%$%g214648214742%_ _%inline214647%_))))
               _%$e214635%_)
              _%expr213858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%id213891214612%_
                                              _%$%hd213881214571%_))))))
                             (_%$%loop213886214581%_
                              _%$%target213883214576%_
                              '()))
                           (_%$%g213862214539%_ _%$%g213868214542%_)))))
                 (_%$%g213862214539%_ _%$%g213868214542%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213862214539%_
                                                      _%$%g213868214542%_))))
                                             (_%$%g213862214539%_
                                              _%$%g213868214542%_))
                                         (_%$%g213862214539%_
                                          _%$%g213868214542%_))
                                     (_%$%g213862214539%_
                                      _%$%g213868214542%_))))
                             (_%$%g213862214539%_ _%$%g213868214542%_))))
                     (_%$%g213862214539%_ _%$%g213868214542%_))
                 (_%$%g213862214539%_ _%$%g213868214542%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g213862214539%_
                                                      _%$%g213868214542%_))))
                                             (_%$%g213862214539%_
                                              _%$%g213868214542%_)))))
                                 (_%$%g213861214746%_ _%expr213858%_)))))))
                     (lambda _g219139_
                       (let ((_g219140_
                              (let ()
                                (declare (not safe))
                                (##length _g219139_))))
                         (cond ((let ()
                                  (declare (not safe))
                                  (##fx= _g219140_ 1))
                                (apply (lambda (_%expr214752%_)
                                         (let ((_%test214754%_ '#f))
                                           (_%$%opt-lambda213856214749%_
                                            _%expr214752%_
                                            _%test214754%_)))
                                       _g219139_))
                               ((let ()
                                  (declare (not safe))
                                  (##fx= _g219140_ 2))
                                (apply _%$%opt-lambda213856214749%_ _g219139_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g219139_)))))))
                  (_%assert-e211800%_
                   (lambda (_%expr212795%_)
                     (let* ((_%sexpr212797%_
                             (gxc#apply-generate-runtime-repr _%expr212795%_))
                            (_%$e212799%_
                             (assoc _%sexpr212797%_ _%env-assert211782%_)))
                       (if _%$e212799%_
                           (cdr _%$e212799%_)
                           (let _%assert212803%_ ((_%expr212805%_
                                                   _%expr212795%_))
                             (let* ((_%$%g212813212992%_
                                     (lambda (_%$%g212814212989%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g212814212989%_)))
                                    (_%$%g212812212999%_
                                     (lambda (_%$%g212814212995%_)
                                       ((lambda () '#!void))))
                                    (_%$%g212811213112%_
                                     (lambda (_%$%g212814213002%_)
                                       (if (gx#stx-pair? _%$%g212814213002%_)
                                           (let ((_%$%e212961213004%_
                                                  (gx#stx-e
                                                   _%$%g212814213002%_)))
                                             (let ((_%$%hd212962213007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212961213004%_)))
                                                   (_%$%tl212963213009%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212961213004%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212962213007%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212962213007%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212963213009%_)
                                                           (let ((_%$%e212964213012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212963213009%_)))
                     (let ((_%$%hd212965213015%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212964213012%_)))
                           (_%$%tl212966213017%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212964213012%_))))
                       (if (gx#stx-pair? _%$%hd212965213015%_)
                           (let ((_%$%e212967213020%_
                                  (gx#stx-e _%$%hd212965213015%_)))
                             (let ((_%$%hd212968213023%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212967213020%_)))
                                   (_%$%tl212969213025%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212967213020%_))))
                               (if (gx#identifier? _%$%hd212968213023%_)
                                   (if (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd212968213023%_)
                                       (if (gx#stx-pair? _%$%tl212969213025%_)
                                           (let ((_%$%e212970213028%_
                                                  (gx#stx-e
                                                   _%$%tl212969213025%_)))
                                             (let ((_%$%hd212971213031%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212970213028%_)))
                                                   (_%$%tl212972213033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212970213028%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd212971213031%_)
                                                   (let ((_%$%e212973213036%_
                                                          (gx#stx-e
                                                           _%$%hd212971213031%_)))
                                                     (let ((_%$%hd212974213039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212973213036%_)))
                                                           (_%$%tl212975213041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212973213036%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl212975213041%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl212972213033%_)
                                                               (let ((_%$%e212976213044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl212972213033%_)))
                         (let ((_%$%hd212977213047%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212976213044%_)))
                               (_%$%tl212978213049%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212976213044%_))))
                           (if (gx#stx-null? _%$%tl212978213049%_)
                               (if (gx#stx-pair? _%$%tl212966213017%_)
                                   (let ((_%$%e212979213052%_
                                          (gx#stx-e _%$%tl212966213017%_)))
                                     (let ((_%$%hd212980213055%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e212979213052%_)))
                                           (_%$%tl212981213057%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e212979213052%_))))
                                       (if (gx#stx-pair? _%$%hd212980213055%_)
                                           (let ((_%$%e212982213060%_
                                                  (gx#stx-e
                                                   _%$%hd212980213055%_)))
                                             (let ((_%$%hd212983213063%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212982213060%_)))
                                                   (_%$%tl212984213065%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212982213060%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212983213063%_)
                                                   (if (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd212983213063%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212984213065%_)
                                                           (let ((_%$%e212985213068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212984213065%_)))
                     (let ((_%$%hd212986213071%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212985213068%_)))
                           (_%$%tl212987213073%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212985213068%_))))
                       (if (gx#stx-null? _%$%tl212987213073%_)
                           (if (gx#stx-null? _%$%tl212981213057%_)
                               ((lambda (_%$%g212958213076%_
                                         _%$%g212959213077%_
                                         _%$%g212960213078%_)
                                  (_%assert212803%_
                                   (gxc#apply-expression-subst
                                    _%$%g212959213077%_
                                    'id:
                                    _%$%g212960213078%_
                                    'new-id:
                                    _%$%g212958213076%_)))
                                _%$%hd212986213071%_
                                _%$%hd212977213047%_
                                _%$%hd212974213039%_)
                               (_%$%g212812212999%_ _%$%g212814213002%_))
                           (_%$%g212812212999%_ _%$%g212814213002%_))))
                   (_%$%g212812212999%_ _%$%g212814213002%_))
               (_%$%g212812212999%_ _%$%g212814213002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212812212999%_
                                                    _%$%g212814213002%_))))
                                           (_%$%g212812212999%_
                                            _%$%g212814213002%_))))
                                   (_%$%g212812212999%_ _%$%g212814213002%_))
                               (_%$%g212812212999%_ _%$%g212814213002%_))))
                       (_%$%g212812212999%_ _%$%g212814213002%_))
                   (_%$%g212812212999%_ _%$%g212814213002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212812212999%_
                                                    _%$%g212814213002%_))))
                                           (_%$%g212812212999%_
                                            _%$%g212814213002%_))
                                       (_%$%g212812212999%_
                                        _%$%g212814213002%_))
                                   (_%$%g212812212999%_ _%$%g212814213002%_))))
                           (_%$%g212812212999%_ _%$%g212814213002%_))))
                   (_%$%g212812212999%_ _%$%g212814213002%_))
               (_%$%g212812212999%_ _%$%g212814213002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212812212999%_
                                                    _%$%g212814213002%_))))
                                           (_%$%g212812212999%_
                                            _%$%g212814213002%_))))
                                    (_%$%g212810213228%_
                                     (lambda (_%$%g212814213115%_)
                                       (if (gx#stx-pair? _%$%g212814213115%_)
                                           (let ((_%$%e212928213117%_
                                                  (gx#stx-e
                                                   _%$%g212814213115%_)))
                                             (let ((_%$%hd212929213120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212928213117%_)))
                                                   (_%$%tl212930213122%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212928213117%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212929213120%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212929213120%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212930213122%_)
                                                           (let ((_%$%e212931213125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212930213122%_)))
                     (let ((_%$%hd212932213128%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212931213125%_)))
                           (_%$%tl212933213130%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212931213125%_))))
                       (if (gx#stx-pair? _%$%hd212932213128%_)
                           (let ((_%$%e212934213133%_
                                  (gx#stx-e _%$%hd212932213128%_)))
                             (let ((_%$%hd212935213136%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212934213133%_)))
                                   (_%$%tl212936213138%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212934213133%_))))
                               (if (gx#identifier? _%$%hd212935213136%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd212935213136%_)
                                       (if (gx#stx-pair? _%$%tl212936213138%_)
                                           (let ((_%$%e212937213141%_
                                                  (gx#stx-e
                                                   _%$%tl212936213138%_)))
                                             (let ((_%$%hd212938213144%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212937213141%_)))
                                                   (_%$%tl212939213146%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212937213141%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl212939213146%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl212933213130%_)
                                                       (let ((_%$%e212940213149%_
                                                              (gx#stx-e
                                                               _%$%tl212933213130%_)))
                                                         (let ((_%$%hd212941213152%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e212940213149%_)))
                       (_%$%tl212942213154%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e212940213149%_))))
                   (if (gx#stx-pair? _%$%hd212941213152%_)
                       (let ((_%$%e212943213157%_
                              (gx#stx-e _%$%hd212941213152%_)))
                         (let ((_%$%hd212944213160%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212943213157%_)))
                               (_%$%tl212945213162%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212943213157%_))))
                           (if (gx#identifier? _%$%hd212944213160%_)
                               (if (gx#stx-eq?
                                    '%#quote-syntax
                                    _%$%hd212944213160%_)
                                   (if (gx#stx-pair? _%$%tl212945213162%_)
                                       (let ((_%$%e212946213165%_
                                              (gx#stx-e _%$%tl212945213162%_)))
                                         (let ((_%$%hd212947213168%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e212946213165%_)))
                                               (_%$%tl212948213170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e212946213165%_))))
                                           (if (gx#stx-null?
                                                _%$%tl212948213170%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl212942213154%_)
                                                   (let ((_%$%e212949213173%_
                                                          (gx#stx-e
                                                           _%$%tl212942213154%_)))
                                                     (let ((_%$%hd212950213176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212949213173%_)))
                                                           (_%$%tl212951213178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212949213173%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd212950213176%_)
                                                           (let ((_%$%e212952213181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd212950213176%_)))
                     (let ((_%$%hd212953213184%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212952213181%_)))
                           (_%$%tl212954213186%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212952213181%_))))
                       (if (gx#identifier? _%$%hd212953213184%_)
                           (if (gx#stx-eq? '%#ref _%$%hd212953213184%_)
                               (if (gx#stx-pair? _%$%tl212954213186%_)
                                   (let ((_%$%e212955213189%_
                                          (gx#stx-e _%$%tl212954213186%_)))
                                     (let ((_%$%hd212956213192%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e212955213189%_)))
                                           (_%$%tl212957213194%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e212955213189%_))))
                                       (if (gx#stx-null? _%$%tl212957213194%_)
                                           (if (gx#stx-null?
                                                _%$%tl212951213178%_)
                                               ((lambda (_%$%g212925213197%_
                                                         _%$%g212926213198%_
                                                         _%$%g212927213199%_)
                                                  (_%assert212803%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#call)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _%$%g212927213199%_ '()))
                       (cons (cons (gx#datum->syntax '#f '%#ref)
                                   (cons _%$%g212925213197%_ '()))
                             (cons (cons (gx#datum->syntax '#f '%#quote-syntax)
                                         (cons _%$%g212926213198%_ '()))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%hd212956213192%_
                                                _%$%hd212947213168%_
                                                _%$%hd212938213144%_)
                                               (_%$%g212811213112%_
                                                _%$%g212814213115%_))
                                           (_%$%g212811213112%_
                                            _%$%g212814213115%_))))
                                   (_%$%g212811213112%_ _%$%g212814213115%_))
                               (_%$%g212811213112%_ _%$%g212814213115%_))
                           (_%$%g212811213112%_ _%$%g212814213115%_))))
                   (_%$%g212811213112%_ _%$%g212814213115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212811213112%_
                                                    _%$%g212814213115%_))
                                               (_%$%g212811213112%_
                                                _%$%g212814213115%_))))
                                       (_%$%g212811213112%_
                                        _%$%g212814213115%_))
                                   (_%$%g212811213112%_ _%$%g212814213115%_))
                               (_%$%g212811213112%_ _%$%g212814213115%_))))
                       (_%$%g212811213112%_ _%$%g212814213115%_))))
               (_%$%g212811213112%_ _%$%g212814213115%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212811213112%_
                                                    _%$%g212814213115%_))))
                                           (_%$%g212811213112%_
                                            _%$%g212814213115%_))
                                       (_%$%g212811213112%_
                                        _%$%g212814213115%_))
                                   (_%$%g212811213112%_ _%$%g212814213115%_))))
                           (_%$%g212811213112%_ _%$%g212814213115%_))))
                   (_%$%g212811213112%_ _%$%g212814213115%_))
               (_%$%g212811213112%_ _%$%g212814213115%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212811213112%_
                                                    _%$%g212814213115%_))))
                                           (_%$%g212811213112%_
                                            _%$%g212814213115%_))))
                                    (_%$%g212809213352%_
                                     (lambda (_%$%g212814213231%_)
                                       (if (gx#stx-pair? _%$%g212814213231%_)
                                           (let ((_%$%e212895213233%_
                                                  (gx#stx-e
                                                   _%$%g212814213231%_)))
                                             (let ((_%$%hd212896213236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212895213233%_)))
                                                   (_%$%tl212897213238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212895213233%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212896213236%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212896213236%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212897213238%_)
                                                           (let ((_%$%e212898213241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212897213238%_)))
                     (let ((_%$%hd212899213244%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212898213241%_)))
                           (_%$%tl212900213246%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212898213241%_))))
                       (if (gx#stx-pair? _%$%hd212899213244%_)
                           (let ((_%$%e212901213249%_
                                  (gx#stx-e _%$%hd212899213244%_)))
                             (let ((_%$%hd212902213252%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212901213249%_)))
                                   (_%$%tl212903213254%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212901213249%_))))
                               (if (gx#identifier? _%$%hd212902213252%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd212902213252%_)
                                       (if (gx#stx-pair? _%$%tl212903213254%_)
                                           (let ((_%$%e212904213257%_
                                                  (gx#stx-e
                                                   _%$%tl212903213254%_)))
                                             (let ((_%$%hd212905213260%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212904213257%_)))
                                                   (_%$%tl212906213262%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212904213257%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl212906213262%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl212900213246%_)
                                                       (let ((_%$%e212907213265%_
                                                              (gx#stx-e
                                                               _%$%tl212900213246%_)))
                                                         (let ((_%$%hd212908213268%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e212907213265%_)))
                       (_%$%tl212909213270%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e212907213265%_))))
                   (if (gx#stx-pair? _%$%hd212908213268%_)
                       (let ((_%$%e212910213273%_
                              (gx#stx-e _%$%hd212908213268%_)))
                         (let ((_%$%hd212911213276%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212910213273%_)))
                               (_%$%tl212912213278%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212910213273%_))))
                           (if (gx#identifier? _%$%hd212911213276%_)
                               (if (gx#stx-eq? '%#ref _%$%hd212911213276%_)
                                   (if (gx#stx-pair? _%$%tl212912213278%_)
                                       (let ((_%$%e212913213281%_
                                              (gx#stx-e _%$%tl212912213278%_)))
                                         (let ((_%$%hd212914213284%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e212913213281%_)))
                                               (_%$%tl212915213286%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e212913213281%_))))
                                           (if (gx#stx-null?
                                                _%$%tl212915213286%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl212909213270%_)
                                                   (let ((_%$%e212916213289%_
                                                          (gx#stx-e
                                                           _%$%tl212909213270%_)))
                                                     (let ((_%$%hd212917213292%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212916213289%_)))
                                                           (_%$%tl212918213294%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212916213289%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd212917213292%_)
                                                           (let ((_%$%e212919213297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd212917213292%_)))
                     (let ((_%$%hd212920213300%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212919213297%_)))
                           (_%$%tl212921213302%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212919213297%_))))
                       (if (gx#identifier? _%$%hd212920213300%_)
                           (if (gx#stx-eq?
                                '%#quote-syntax
                                _%$%hd212920213300%_)
                               (if (gx#stx-pair? _%$%tl212921213302%_)
                                   (let ((_%$%e212922213305%_
                                          (gx#stx-e _%$%tl212921213302%_)))
                                     (let ((_%$%hd212923213308%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e212922213305%_)))
                                           (_%$%tl212924213310%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e212922213305%_))))
                                       (if (gx#stx-null? _%$%tl212924213310%_)
                                           (if (gx#stx-null?
                                                _%$%tl212918213294%_)
                                               ((lambda (_%$%g212892213313%_
                                                         _%$%g212893213314%_
                                                         _%$%g212894213315%_)
                                                  (let ((_%$e213344%_
                                                         (gxc#identifier-symbol
                                                          _%$%g212894213315%_)))
                                                    (if (or (eq? 'gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e213344%_)
                    (eq? 'gx#stx-eq? _%$e213344%_))
                ((lambda (_%sym213350%_)
                   (_%assert-eqf211803%_
                    _%$%g212893213314%_
                    (_%eqf-symbol211790%_ _%sym213350%_)
                    _%$%g212892213313%_))
                 _%$e213344%_)
                '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%hd212923213308%_
                                                _%$%hd212914213284%_
                                                _%$%hd212905213260%_)
                                               (_%$%g212810213228%_
                                                _%$%g212814213231%_))
                                           (_%$%g212810213228%_
                                            _%$%g212814213231%_))))
                                   (_%$%g212810213228%_ _%$%g212814213231%_))
                               (_%$%g212810213228%_ _%$%g212814213231%_))
                           (_%$%g212810213228%_ _%$%g212814213231%_))))
                   (_%$%g212810213228%_ _%$%g212814213231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212810213228%_
                                                    _%$%g212814213231%_))
                                               (_%$%g212810213228%_
                                                _%$%g212814213231%_))))
                                       (_%$%g212810213228%_
                                        _%$%g212814213231%_))
                                   (_%$%g212810213228%_ _%$%g212814213231%_))
                               (_%$%g212810213228%_ _%$%g212814213231%_))))
                       (_%$%g212810213228%_ _%$%g212814213231%_))))
               (_%$%g212810213228%_ _%$%g212814213231%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212810213228%_
                                                    _%$%g212814213231%_))))
                                           (_%$%g212810213228%_
                                            _%$%g212814213231%_))
                                       (_%$%g212810213228%_
                                        _%$%g212814213231%_))
                                   (_%$%g212810213228%_ _%$%g212814213231%_))))
                           (_%$%g212810213228%_ _%$%g212814213231%_))))
                   (_%$%g212810213228%_ _%$%g212814213231%_))
               (_%$%g212810213228%_ _%$%g212814213231%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212810213228%_
                                                    _%$%g212814213231%_))))
                                           (_%$%g212810213228%_
                                            _%$%g212814213231%_))))
                                    (_%$%g212808213448%_
                                     (lambda (_%$%g212814213355%_)
                                       (if (gx#stx-pair? _%$%g212814213355%_)
                                           (let ((_%$%e212868213357%_
                                                  (gx#stx-e
                                                   _%$%g212814213355%_)))
                                             (let ((_%$%hd212869213360%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212868213357%_)))
                                                   (_%$%tl212870213362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212868213357%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212869213360%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212869213360%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212870213362%_)
                                                           (let ((_%$%e212871213365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212870213362%_)))
                     (let ((_%$%hd212872213368%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212871213365%_)))
                           (_%$%tl212873213370%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212871213365%_))))
                       (if (gx#stx-pair? _%$%hd212872213368%_)
                           (let ((_%$%e212874213373%_
                                  (gx#stx-e _%$%hd212872213368%_)))
                             (let ((_%$%hd212875213376%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212874213373%_)))
                                   (_%$%tl212876213378%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212874213373%_))))
                               (if (gx#identifier? _%$%hd212875213376%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd212875213376%_)
                                       (if (gx#stx-pair? _%$%tl212876213378%_)
                                           (let ((_%$%e212877213381%_
                                                  (gx#stx-e
                                                   _%$%tl212876213378%_)))
                                             (let ((_%$%hd212878213384%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212877213381%_)))
                                                   (_%$%tl212879213386%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212877213381%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl212879213386%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl212873213370%_)
                                                       (let ((_%$%e212880213389%_
                                                              (gx#stx-e
                                                               _%$%tl212873213370%_)))
                                                         (let ((_%$%hd212881213392%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e212880213389%_)))
                       (_%$%tl212882213394%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e212880213389%_))))
                   (if (gx#stx-pair? _%$%hd212881213392%_)
                       (let ((_%$%e212883213397%_
                              (gx#stx-e _%$%hd212881213392%_)))
                         (let ((_%$%hd212884213400%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212883213397%_)))
                               (_%$%tl212885213402%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212883213397%_))))
                           (if (gx#identifier? _%$%hd212884213400%_)
                               (if (gx#stx-eq? '%#quote _%$%hd212884213400%_)
                                   (if (gx#stx-pair? _%$%tl212885213402%_)
                                       (let ((_%$%e212886213405%_
                                              (gx#stx-e _%$%tl212885213402%_)))
                                         (let ((_%$%hd212887213408%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e212886213405%_)))
                                               (_%$%tl212888213410%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e212886213405%_))))
                                           (if (gx#stx-null?
                                                _%$%tl212888213410%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl212882213394%_)
                                                   (let ((_%$%e212889213413%_
                                                          (gx#stx-e
                                                           _%$%tl212882213394%_)))
                                                     (let ((_%$%hd212890213416%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212889213413%_)))
                                                           (_%$%tl212891213418%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212889213413%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl212891213418%_)
                                                           ((lambda (_%$%g212865213421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g212866213422%_
                             _%$%g212867213423%_)
                      (_%assert212803%_
                       (cons (gx#datum->syntax '#f '%#call)
                             (cons (cons (gx#datum->syntax '#f '%#ref)
                                         (cons _%$%g212867213423%_ '()))
                                   (cons _%$%g212865213421%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '%#quote)
                                                     (cons _%$%g212866213422%_
                                                           '()))
                                               '()))))))
                    _%$%hd212890213416%_
                    _%$%hd212887213408%_
                    _%$%hd212878213384%_)
                   (_%$%g212809213352%_ _%$%g212814213355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212809213352%_
                                                    _%$%g212814213355%_))
                                               (_%$%g212809213352%_
                                                _%$%g212814213355%_))))
                                       (_%$%g212809213352%_
                                        _%$%g212814213355%_))
                                   (_%$%g212809213352%_ _%$%g212814213355%_))
                               (_%$%g212809213352%_ _%$%g212814213355%_))))
                       (_%$%g212809213352%_ _%$%g212814213355%_))))
               (_%$%g212809213352%_ _%$%g212814213355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212809213352%_
                                                    _%$%g212814213355%_))))
                                           (_%$%g212809213352%_
                                            _%$%g212814213355%_))
                                       (_%$%g212809213352%_
                                        _%$%g212814213355%_))
                                   (_%$%g212809213352%_ _%$%g212814213355%_))))
                           (_%$%g212809213352%_ _%$%g212814213355%_))))
                   (_%$%g212809213352%_ _%$%g212814213355%_))
               (_%$%g212809213352%_ _%$%g212814213355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212809213352%_
                                                    _%$%g212814213355%_))))
                                           (_%$%g212809213352%_
                                            _%$%g212814213355%_))))
                                    (_%$%g212807213764%_
                                     (lambda (_%$%g212814213451%_)
                                       (if (gx#stx-pair? _%$%g212814213451%_)
                                           (let ((_%$%e212841213453%_
                                                  (gx#stx-e
                                                   _%$%g212814213451%_)))
                                             (let ((_%$%hd212842213456%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212841213453%_)))
                                                   (_%$%tl212843213458%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212841213453%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212842213456%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212842213456%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212843213458%_)
                                                           (let ((_%$%e212844213461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212843213458%_)))
                     (let ((_%$%hd212845213464%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212844213461%_)))
                           (_%$%tl212846213466%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212844213461%_))))
                       (if (gx#stx-pair? _%$%hd212845213464%_)
                           (let ((_%$%e212847213469%_
                                  (gx#stx-e _%$%hd212845213464%_)))
                             (let ((_%$%hd212848213472%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212847213469%_)))
                                   (_%$%tl212849213474%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212847213469%_))))
                               (if (gx#identifier? _%$%hd212848213472%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd212848213472%_)
                                       (if (gx#stx-pair? _%$%tl212849213474%_)
                                           (let ((_%$%e212850213477%_
                                                  (gx#stx-e
                                                   _%$%tl212849213474%_)))
                                             (let ((_%$%hd212851213480%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212850213477%_)))
                                                   (_%$%tl212852213482%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212850213477%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl212852213482%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl212846213466%_)
                                                       (let ((_%$%e212853213485%_
                                                              (gx#stx-e
                                                               _%$%tl212846213466%_)))
                                                         (let ((_%$%hd212854213488%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e212853213485%_)))
                       (_%$%tl212855213490%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e212853213485%_))))
                   (if (gx#stx-pair? _%$%tl212855213490%_)
                       (let ((_%$%e212856213493%_
                              (gx#stx-e _%$%tl212855213490%_)))
                         (let ((_%$%hd212857213496%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212856213493%_)))
                               (_%$%tl212858213498%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212856213493%_))))
                           (if (gx#stx-pair? _%$%hd212857213496%_)
                               (let ((_%$%e212859213501%_
                                      (gx#stx-e _%$%hd212857213496%_)))
                                 (let ((_%$%hd212860213504%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e212859213501%_)))
                                       (_%$%tl212861213506%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e212859213501%_))))
                                   (if (gx#identifier? _%$%hd212860213504%_)
                                       (if (gx#stx-eq?
                                            '%#quote
                                            _%$%hd212860213504%_)
                                           (if (gx#stx-pair?
                                                _%$%tl212861213506%_)
                                               (let ((_%$%e212862213509%_
                                                      (gx#stx-e
                                                       _%$%tl212861213506%_)))
                                                 (let ((_%$%hd212863213512%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e212862213509%_)))
                                                       (_%$%tl212864213514%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e212862213509%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl212864213514%_)
                                                       (if (gx#stx-null?
                                                            _%$%tl212858213498%_)
                                                           ((lambda (_%$%g212838213517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g212839213518%_
                             _%$%g212840213519%_)
                      (let ((_%$e213544%_
                             (gxc#identifier-symbol _%$%g212840213519%_)))
                        (if (or (eq? '##fx= _%$e213544%_)
                                (eq? 'fx= _%$e213544%_))
                            (let* ((_%$%g213551213580%_
                                    (lambda (_%$%g213552213577%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g213552213577%_)))
                                   (_%$%g213550213587%_
                                    (lambda (_%$%g213552213583%_)
                                      ((lambda () '#!void))))
                                   (_%$%g213549213680%_
                                    (lambda (_%$%g213552213590%_)
                                      (if (gx#stx-pair? _%$%g213552213590%_)
                                          (let ((_%$%e213555213592%_
                                                 (gx#stx-e
                                                  _%$%g213552213590%_)))
                                            (let ((_%$%hd213556213595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e213555213592%_)))
                                                  (_%$%tl213557213597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e213555213592%_))))
                                              (if (gx#identifier?
                                                   _%$%hd213556213595%_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _%$%hd213556213595%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl213557213597%_)
                                                          (let ((_%$%e213558213600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl213557213597%_)))
                    (let ((_%$%hd213559213603%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213558213600%_)))
                          (_%$%tl213560213605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213558213600%_))))
                      (if (gx#stx-pair? _%$%hd213559213603%_)
                          (let ((_%$%e213561213608%_
                                 (gx#stx-e _%$%hd213559213603%_)))
                            (let ((_%$%hd213562213611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213561213608%_)))
                                  (_%$%tl213563213613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213561213608%_))))
                              (if (gx#identifier? _%$%hd213562213611%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd213562213611%_)
                                      (if (gx#stx-pair? _%$%tl213563213613%_)
                                          (let ((_%$%e213564213616%_
                                                 (gx#stx-e
                                                  _%$%tl213563213613%_)))
                                            (let ((_%$%hd213565213619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e213564213616%_)))
                                                  (_%$%tl213566213621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e213564213616%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl213566213621%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl213560213605%_)
                                                      (let ((_%$%e213567213624%_
                                                             (gx#stx-e
                                                              _%$%tl213560213605%_)))
                                                        (let ((_%$%hd213568213627%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e213567213624%_)))
                      (_%$%tl213569213629%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e213567213624%_))))
                  (if (gx#stx-pair? _%$%hd213568213627%_)
                      (let ((_%$%e213570213632%_
                             (gx#stx-e _%$%hd213568213627%_)))
                        (let ((_%$%hd213571213635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213570213632%_)))
                              (_%$%tl213572213637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213570213632%_))))
                          (if (gx#identifier? _%$%hd213571213635%_)
                              (if (gx#stx-eq? '%#ref _%$%hd213571213635%_)
                                  (if (gx#stx-pair? _%$%tl213572213637%_)
                                      (let ((_%$%e213573213640%_
                                             (gx#stx-e _%$%tl213572213637%_)))
                                        (let ((_%$%hd213574213643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213573213640%_)))
                                              (_%$%tl213575213645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213573213640%_))))
                                          (if (gx#stx-null?
                                               _%$%tl213575213645%_)
                                              (if (gx#stx-null?
                                                   _%$%tl213569213629%_)
                                                  ((lambda (_%$%g213553213648%_
                                                            _%$%g213554213649%_)
                                                     (let ((_%$e213674%_
                                                            (_%countf-symbol211789%_
                                                             _%$%g213554213649%_)))
                                                       (if _%$e213674%_
                                                           ((lambda (_%sym213677%_)
                                                              (_%assert-count211802%_
                                                               _%$%g213553213648%_
                                                               _%sym213677%_
                                                               (gx#stx-e
                                                                _%$%g212838213517%_)))
                                                            _%$e213674%_)
                                                           '#!void)))
                                                   _%$%hd213574213643%_
                                                   _%$%hd213565213619%_)
                                                  (_%$%g213550213587%_
                                                   _%$%g213552213590%_))
                                              (_%$%g213550213587%_
                                               _%$%g213552213590%_))))
                                      (_%$%g213550213587%_
                                       _%$%g213552213590%_))
                                  (_%$%g213550213587%_ _%$%g213552213590%_))
                              (_%$%g213550213587%_ _%$%g213552213590%_))))
                      (_%$%g213550213587%_ _%$%g213552213590%_))))
              (_%$%g213550213587%_ _%$%g213552213590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g213550213587%_
                                                   _%$%g213552213590%_))))
                                          (_%$%g213550213587%_
                                           _%$%g213552213590%_))
                                      (_%$%g213550213587%_
                                       _%$%g213552213590%_))
                                  (_%$%g213550213587%_ _%$%g213552213590%_))))
                          (_%$%g213550213587%_ _%$%g213552213590%_))))
                  (_%$%g213550213587%_ _%$%g213552213590%_))
              (_%$%g213550213587%_ _%$%g213552213590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g213550213587%_
                                                   _%$%g213552213590%_))))
                                          (_%$%g213550213587%_
                                           _%$%g213552213590%_)))))
                              (_%$%g213549213680%_ _%$%g212839213518%_))
                            (if (or (eq? '##eq? _%$e213544%_)
                                    (eq? 'eq? _%$e213544%_)
                                    (eq? '##eqv? _%$e213544%_)
                                    (eq? 'eqv? _%$e213544%_)
                                    (eq? '##equal? _%$e213544%_)
                                    (eq? 'equal? _%$e213544%_)
                                    (eq? 'gx#free-identifier=? _%$e213544%_)
                                    (eq? 'gx#stx-eq? _%$e213544%_))
                                ((lambda (_%sym213704%_)
                                   (let* ((_%$%g213707213720%_
                                           (lambda (_%$%g213708213717%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g213708213717%_)))
                                          (_%$%g213706213727%_
                                           (lambda (_%$%g213708213723%_)
                                             ((lambda () '#!void))))
                                          (_%$%g213705213761%_
                                           (lambda (_%$%g213708213730%_)
                                             (if (gx#stx-pair?
                                                  _%$%g213708213730%_)
                                                 (let ((_%$%e213710213732%_
                                                        (gx#stx-e
                                                         _%$%g213708213730%_)))
                                                   (let ((_%$%hd213711213735%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e213710213732%_)))
                                                         (_%$%tl213712213737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e213710213732%_))))
                                                     (if (gx#identifier?
                                                          _%$%hd213711213735%_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _%$%hd213711213735%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl213712213737%_)
                         (let ((_%$%e213713213740%_
                                (gx#stx-e _%$%tl213712213737%_)))
                           (let ((_%$%hd213714213743%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e213713213740%_)))
                                 (_%$%tl213715213745%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e213713213740%_))))
                             (if (gx#stx-null? _%$%tl213715213745%_)
                                 ((lambda (_%$%g213709213748%_)
                                    (_%assert-eqf211803%_
                                     _%$%g213709213748%_
                                     (_%eqf-symbol211790%_ _%sym213704%_)
                                     (gx#stx-e _%$%g212838213517%_)))
                                  _%$%hd213714213743%_)
                                 (_%$%g213706213727%_ _%$%g213708213730%_))))
                         (_%$%g213706213727%_ _%$%g213708213730%_))
                     (_%$%g213706213727%_ _%$%g213708213730%_))
                 (_%$%g213706213727%_ _%$%g213708213730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g213706213727%_
                                                  _%$%g213708213730%_)))))
                                     (_%$%g213705213761%_
                                      _%$%g212839213518%_)))
                                 _%$e213544%_)
                                '#!void))))
                    _%$%hd212863213512%_
                    _%$%hd212854213488%_
                    _%$%hd212851213480%_)
                   (_%$%g212808213448%_ _%$%g212814213451%_))
               (_%$%g212808213448%_ _%$%g212814213451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g212808213448%_
                                                _%$%g212814213451%_))
                                           (_%$%g212808213448%_
                                            _%$%g212814213451%_))
                                       (_%$%g212808213448%_
                                        _%$%g212814213451%_))))
                               (_%$%g212808213448%_ _%$%g212814213451%_))))
                       (_%$%g212808213448%_ _%$%g212814213451%_))))
               (_%$%g212808213448%_ _%$%g212814213451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212808213448%_
                                                    _%$%g212814213451%_))))
                                           (_%$%g212808213448%_
                                            _%$%g212814213451%_))
                                       (_%$%g212808213448%_
                                        _%$%g212814213451%_))
                                   (_%$%g212808213448%_ _%$%g212814213451%_))))
                           (_%$%g212808213448%_ _%$%g212814213451%_))))
                   (_%$%g212808213448%_ _%$%g212814213451%_))
               (_%$%g212808213448%_ _%$%g212814213451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212808213448%_
                                                    _%$%g212814213451%_))))
                                           (_%$%g212808213448%_
                                            _%$%g212814213451%_))))
                                    (_%$%g212806213854%_
                                     (lambda (_%$%g212814213767%_)
                                       (if (gx#stx-pair? _%$%g212814213767%_)
                                           (let ((_%$%e212817213769%_
                                                  (gx#stx-e
                                                   _%$%g212814213767%_)))
                                             (let ((_%$%hd212818213772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212817213769%_)))
                                                   (_%$%tl212819213774%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212817213769%_))))
                                               (if (gx#identifier?
                                                    _%$%hd212818213772%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd212818213772%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl212819213774%_)
                                                           (let ((_%$%e212820213777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl212819213774%_)))
                     (let ((_%$%hd212821213780%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e212820213777%_)))
                           (_%$%tl212822213782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e212820213777%_))))
                       (if (gx#stx-pair? _%$%hd212821213780%_)
                           (let ((_%$%e212823213785%_
                                  (gx#stx-e _%$%hd212821213780%_)))
                             (let ((_%$%hd212824213788%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e212823213785%_)))
                                   (_%$%tl212825213790%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e212823213785%_))))
                               (if (gx#identifier? _%$%hd212824213788%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd212824213788%_)
                                       (if (gx#stx-pair? _%$%tl212825213790%_)
                                           (let ((_%$%e212826213793%_
                                                  (gx#stx-e
                                                   _%$%tl212825213790%_)))
                                             (let ((_%$%hd212827213796%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e212826213793%_)))
                                                   (_%$%tl212828213798%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e212826213793%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl212828213798%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl212822213782%_)
                                                       (let ((_%$%e212829213801%_
                                                              (gx#stx-e
                                                               _%$%tl212822213782%_)))
                                                         (let ((_%$%hd212830213804%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e212829213801%_)))
                       (_%$%tl212831213806%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e212829213801%_))))
                   (if (gx#stx-pair? _%$%hd212830213804%_)
                       (let ((_%$%e212832213809%_
                              (gx#stx-e _%$%hd212830213804%_)))
                         (let ((_%$%hd212833213812%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e212832213809%_)))
                               (_%$%tl212834213814%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e212832213809%_))))
                           (if (gx#identifier? _%$%hd212833213812%_)
                               (if (gx#stx-eq? '%#ref _%$%hd212833213812%_)
                                   (if (gx#stx-pair? _%$%tl212834213814%_)
                                       (let ((_%$%e212835213817%_
                                              (gx#stx-e _%$%tl212834213814%_)))
                                         (let ((_%$%hd212836213820%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e212835213817%_)))
                                               (_%$%tl212837213822%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e212835213817%_))))
                                           (if (gx#stx-null?
                                                _%$%tl212837213822%_)
                                               (if (gx#stx-null?
                                                    _%$%tl212831213806%_)
                                                   ((lambda (_%$%g212815213825%_
                                                             _%$%g212816213826%_)
                                                      (let ((_%$e213848%_
                                                             (_%predicate-type211787%_
                                                              _%$%g212816213826%_)))
                                                        (if _%$e213848%_
                                                            ((lambda (_%t213851%_)
                                                               (_%assert-type211801%_
                                                                _%$%g212815213825%_
                                                                _%t213851%_))
                                                             _%$e213848%_)
                                                            '#!void)))
                                                    _%$%hd212836213820%_
                                                    _%$%hd212827213796%_)
                                                   (_%$%g212807213764%_
                                                    _%$%g212814213767%_))
                                               (_%$%g212807213764%_
                                                _%$%g212814213767%_))))
                                       (_%$%g212807213764%_
                                        _%$%g212814213767%_))
                                   (_%$%g212807213764%_ _%$%g212814213767%_))
                               (_%$%g212807213764%_ _%$%g212814213767%_))))
                       (_%$%g212807213764%_ _%$%g212814213767%_))))
               (_%$%g212807213764%_ _%$%g212814213767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212807213764%_
                                                    _%$%g212814213767%_))))
                                           (_%$%g212807213764%_
                                            _%$%g212814213767%_))
                                       (_%$%g212807213764%_
                                        _%$%g212814213767%_))
                                   (_%$%g212807213764%_ _%$%g212814213767%_))))
                           (_%$%g212807213764%_ _%$%g212814213767%_))))
                   (_%$%g212807213764%_ _%$%g212814213767%_))
               (_%$%g212807213764%_ _%$%g212814213767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212807213764%_
                                                    _%$%g212814213767%_))))
                                           (_%$%g212807213764%_
                                            _%$%g212814213767%_)))))
                               (_%$%g212806213854%_ _%expr212805%_)))))))
                  (_%assert-type211801%_
                   (lambda (_%id212702%_ _%t212703%_)
                     (let _%lp212705%_ ((_%rest212707%_ _%env-type211783%_))
                       (let* ((_%$%rest212708212716%_ _%rest212707%_)
                              (_%$%E212711212720%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest212708212716%_
                                        '([type-info . rest])
                                        'else)
                                 (void)))
                              (_%$%else212710212724%_ (lambda () '#!void))
                              (_%$%K212712212783%_
                               (lambda (_%rest212727%_ _%type-info212728%_)
                                 (let* ((_%$%type-info212729212741%_
                                         _%type-info212728%_)
                                        (_%$%E212732212745%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%type-info212729212741%_
                                                  '([xid xt val])
                                                  'else)
                                           (void)))
                                        (_%$%else212731212749%_
                                         (lambda ()
                                           (_%lp212705%_ _%rest212727%_)))
                                        (_%$%K212733212759%_
                                         (lambda (_%val212752%_
                                                  _%xt212753%_
                                                  _%xid212754%_)
                                           (if (gx#free-identifier=?
                                                _%id212702%_
                                                _%xid212754%_)
                                               (if (eq? _%t212703%_
                                                        _%xt212753%_)
                                                   _%val212752%_
                                                   (if _%val212752%_
                                                       (if (gxc#!class?
                                                            _%t212703%_)
                                                           (if (gxc#!class?
                                                                _%xt212753%_)
                                                               (gxc#!class-subclass?
                                                                _%t212703%_
                                                                _%xt212753%_)
                                                               '#f)
                                                           '#f)
                                                       (if (and (gxc#!class?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%t212703%_)
                        (gxc#!class? _%xt212753%_)
                        (gxc#!class-subclass? _%t212703%_ _%xt212753%_))
                   '#f
                   (_%lp212705%_ _%rest212727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp212705%_
                                                _%rest212727%_)))))
                                   (if (pair? _%$%type-info212729212741%_)
                                       (let ((_%$%hd212734212762%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%type-info212729212741%_)))
                                             (_%$%tl212735212764%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%type-info212729212741%_))))
                                         (let ((_%xid212767%_
                                                _%$%hd212734212762%_))
                                           (if (pair? _%$%tl212735212764%_)
                                               (let ((_%$%hd212736212769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tl212735212764%_)))
                                                     (_%$%tl212737212771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tl212735212764%_))))
                                                 (let ((_%xt212774%_
                                                        _%$%hd212736212769%_))
                                                   (if (pair? _%$%tl212737212771%_)
                                                       (let ((_%$%hd212738212776%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl212737212771%_)))
                     (_%$%tl212739212778%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%tl212737212771%_))))
                 (let ((_%val212781%_ _%$%hd212738212776%_))
                   (if (null? _%$%tl212739212778%_)
                       (_%$%K212733212759%_
                        _%val212781%_
                        _%xt212774%_
                        _%xid212767%_)
                       (_%$%else212731212749%_))))
               (_%$%else212731212749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%else212731212749%_))))
                                       (_%$%else212731212749%_))))))
                         (if (pair? _%$%rest212708212716%_)
                             (let ((_%$%hd212713212786%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest212708212716%_)))
                                   (_%$%tl212714212788%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest212708212716%_))))
                               (let* ((_%type-info212791%_
                                       _%$%hd212713212786%_)
                                      (_%rest212793%_ _%$%tl212714212788%_))
                                 (_%$%K212712212783%_
                                  _%rest212793%_
                                  _%type-info212791%_)))
                             (_%$%else212710212724%_))))))
                  (_%assert-count211802%_
                   (lambda (_%id212598%_ _%sym212599%_ _%count212600%_)
                     (let _%lp212602%_ ((_%rest212604%_ _%env-type211783%_))
                       (let* ((_%$%rest212605212613%_ _%rest212604%_)
                              (_%$%E212608212617%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest212605212613%_
                                        '([type-info . rest])
                                        'else)
                                 (void)))
                              (_%$%else212607212621%_ (lambda () '#!void))
                              (_%$%K212609212690%_
                               (lambda (_%rest212624%_ _%type-info212625%_)
                                 (let* ((_%$%type-info212626212640%_
                                         _%type-info212625%_)
                                        (_%$%E212629212644%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%type-info212626212640%_
                                                  '([xid xsym xcount val])
                                                  'else)
                                           (void)))
                                        (_%$%else212628212648%_
                                         (lambda ()
                                           (_%lp212602%_ _%rest212624%_)))
                                        (_%$%K212630212659%_
                                         (lambda (_%val212651%_
                                                  _%xcount212652%_
                                                  _%xsym212653%_
                                                  _%xid212654%_)
                                           (if (and (eq? _%sym212599%_
                                                         _%xsym212653%_)
                                                    (gx#free-identifier=?
                                                     _%id212598%_
                                                     _%xid212654%_))
                                               (if _%val212651%_
                                                   (fx= _%count212600%_
                                                        _%xcount212652%_)
                                                   (if (fx= _%count212600%_
                                                            _%xcount212652%_)
                                                       '#f
                                                       (_%lp212602%_
                                                        _%rest212624%_)))
                                               (_%lp212602%_
                                                _%rest212624%_)))))
                                   (if (pair? _%$%type-info212626212640%_)
                                       (let ((_%$%hd212631212662%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%type-info212626212640%_)))
                                             (_%$%tl212632212664%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%type-info212626212640%_))))
                                         (let ((_%xid212667%_
                                                _%$%hd212631212662%_))
                                           (if (pair? _%$%tl212632212664%_)
                                               (let ((_%$%hd212633212669%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tl212632212664%_)))
                                                     (_%$%tl212634212671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tl212632212664%_))))
                                                 (let ((_%xsym212674%_
                                                        _%$%hd212633212669%_))
                                                   (if (pair? _%$%tl212634212671%_)
                                                       (let ((_%$%hd212635212676%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl212634212671%_)))
                     (_%$%tl212636212678%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%tl212634212671%_))))
                 (let ((_%xcount212681%_ _%$%hd212635212676%_))
                   (if (pair? _%$%tl212636212678%_)
                       (let ((_%$%hd212637212683%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl212636212678%_)))
                             (_%$%tl212638212685%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl212636212678%_))))
                         (let ((_%val212688%_ _%$%hd212637212683%_))
                           (if (null? _%$%tl212638212685%_)
                               (_%$%K212630212659%_
                                _%val212688%_
                                _%xcount212681%_
                                _%xsym212674%_
                                _%xid212667%_)
                               (_%$%else212628212648%_))))
                       (_%$%else212628212648%_))))
               (_%$%else212628212648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%else212628212648%_))))
                                       (_%$%else212628212648%_))))))
                         (if (pair? _%$%rest212605212613%_)
                             (let ((_%$%hd212610212693%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest212605212613%_)))
                                   (_%$%tl212611212695%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest212605212613%_))))
                               (let* ((_%type-info212698%_
                                       _%$%hd212610212693%_)
                                      (_%rest212700%_ _%$%tl212611212695%_))
                                 (_%$%K212609212690%_
                                  _%rest212700%_
                                  _%type-info212698%_)))
                             (_%$%else212607212621%_))))))
                  (_%assert-eqf211803%_
                   (lambda (_%id212485%_ _%sym212486%_ _%datum212487%_)
                     (letrec ((_%eqf212489%_
                               (lambda (_%sym212593%_)
                                 (let ((_%$e212595%_ _%sym212593%_))
                                   (if (eq? 'eq? _%$e212595%_)
                                       eq?
                                       (if (eq? 'eqv? _%$e212595%_)
                                           eqv?
                                           (if (eq? 'equal? _%$e212595%_)
                                               equal?
                                               (if (eq? 'free-identifier=?
                                                        _%$e212595%_)
                                                   gx#free-identifier=?
                                                   (if (eq? 'stx-eq?
                                                            _%$e212595%_)
                                                       gx#stx-eq?
                                                       (gxc#raise-compile-error
                                                        '"Unexpected eqf symbol"
                                                        _%body211544%_
                                                        _%sym212593%_))))))))))
                       (let _%lp212491%_ ((_%rest212493%_ _%env-type211783%_))
                         (let* ((_%$%rest212494212502%_ _%rest212493%_)
                                (_%$%E212497212506%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%$%rest212494212502%_
                                          '([type-info . rest])
                                          'else)
                                   (void)))
                                (_%$%else212496212510%_ (lambda () '#!void))
                                (_%$%K212498212581%_
                                 (lambda (_%rest212513%_ _%type-info212514%_)
                                   (let* ((_%$%type-info212515212529%_
                                           _%type-info212514%_)
                                          (_%$%E212518212533%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%type-info212515212529%_
                                                    '([xid xsym xdatum val])
                                                    'else)
                                             (void)))
                                          (_%$%else212517212537%_
                                           (lambda ()
                                             (_%lp212491%_ _%rest212513%_)))
                                          (_%$%K212519212550%_
                                           (lambda (_%val212540%_
                                                    _%xdatum212541%_
                                                    _%xsym212542%_
                                                    _%xid212543%_)
                                             (if (and (eq? _%sym212486%_
                                                           _%xsym212542%_)
                                                      (gx#free-identifier=?
                                                       _%id212485%_
                                                       _%xid212543%_))
                                                 (let ((_%=?212545%_
                                                        (_%eqf212489%_
                                                         _%sym212486%_)))
                                                   (if _%val212540%_
                                                       (_%=?212545%_
                                                        _%datum212487%_
                                                        _%xdatum212541%_)
                                                       (if (_%=?212545%_
                                                            _%datum212487%_
                                                            _%xdatum212541%_)
                                                           '#f
                                                           (_%lp212491%_
                                                            _%rest212513%_))))
                                                 (_%lp212491%_
                                                  _%rest212513%_)))))
                                     (if (pair? _%$%type-info212515212529%_)
                                         (let ((_%$%hd212520212553%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%type-info212515212529%_)))
                                               (_%$%tl212521212555%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%type-info212515212529%_))))
                                           (let ((_%xid212558%_
                                                  _%$%hd212520212553%_))
                                             (if (pair? _%$%tl212521212555%_)
                                                 (let ((_%$%hd212522212560%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%tl212521212555%_)))
                                                       (_%$%tl212523212562%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%tl212521212555%_))))
                                                   (let ((_%xsym212565%_
                                                          _%$%hd212522212560%_))
                                                     (if (pair? _%$%tl212523212562%_)
                                                         (let ((_%$%hd212524212567%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%tl212523212562%_)))
                       (_%$%tl212525212569%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%tl212523212562%_))))
                   (let ((_%xdatum212572%_ _%$%hd212524212567%_))
                     (if (pair? _%$%tl212525212569%_)
                         (let ((_%$%hd212526212574%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%tl212525212569%_)))
                               (_%$%tl212527212576%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%tl212525212569%_))))
                           (let ((_%val212579%_ _%$%hd212526212574%_))
                             (if (null? _%$%tl212527212576%_)
                                 (_%$%K212519212550%_
                                  _%val212579%_
                                  _%xdatum212572%_
                                  _%xsym212565%_
                                  _%xid212558%_)
                                 (_%$%else212517212537%_))))
                         (_%$%else212517212537%_))))
                 (_%$%else212517212537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%else212517212537%_))))
                                         (_%$%else212517212537%_))))))
                           (if (pair? _%$%rest212494212502%_)
                               (let ((_%$%hd212499212584%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest212494212502%_)))
                                     (_%$%tl212500212586%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest212494212502%_))))
                                 (let* ((_%type-info212589%_
                                         _%$%hd212499212584%_)
                                        (_%rest212591%_ _%$%tl212500212586%_))
                                   (_%$%K212498212581%_
                                    _%rest212591%_
                                    _%type-info212589%_)))
                               (_%$%else212496212510%_)))))))
                  (_%bind-e211804%_
                   (let ((_%$%opt-lambda212386212473%_
                          (lambda (_%bind212388%_
                                   _%body212389%_
                                   _%continue212390%_)
                            (let _%lp212392%_ ((_%rest212394%_ _%bind212388%_)
                                               (_%subst212395%_ '())
                                               (_%locals212396%_ '())
                                               (_%env212397%_
                                                _%env-bind211784%_))
                              (let* ((_%$%rest212398212406%_ _%rest212394%_)
                                     (_%$%E212401212410%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%rest212398212406%_
                                               '([bind . rest])
                                               'else)
                                        (void)))
                                     (_%$%else212400212420%_
                                      (lambda ()
                                        (let* ((_%body212414%_
                                                (if (null? _%subst212395%_)
                                                    _%body212389%_
                                                    (gxc#apply-expression-subst*
                                                     _%body212389%_
                                                     'subst:
                                                     _%subst212395%_)))
                                               (_%body212417%_
                                                (_%do-bind!211795%_
                                                 _%env212397%_
                                                 (lambda ()
                                                   (_%continue212390%_
                                                    _%body212414%_)))))
                                          (if (null? _%locals212396%_)
                                              _%body212417%_
                                              (cons '%#let-values
                                                    (cons _%locals212396%_
                                                          (cons _%body212417%_
                                                                '())))))))
                                     (_%$%K212402212461%_
                                      (lambda (_%rest212423%_ _%bind212424%_)
                                        (let* ((_%$%bind212425212432%_
                                                _%bind212424%_)
                                               (_%$%E212427212435%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%bind212425212432%_
                                                         '([id . expr]))
                                                  (void)))
                                               (_%$%K212428212449%_
                                                (lambda (_%expr212438%_
                                                         _%id212439%_)
                                                  (let* ((_%sexpr212441%_
                                                          (gxc#apply-generate-runtime-repr
                                                           _%expr212438%_))
                                                         (_%$e212443%_
                                                          (aget _%sexpr212441%_
                                                                _%env-bind211784%_)))
                                                    (if _%$e212443%_
                                                        ((lambda (_%xid212446%_)
                                                           (_%lp212392%_
                                                            _%rest212423%_
                                                            (cons (cons _%id212439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%xid212446%_)
                          _%subst212395%_)
                    _%locals212396%_
                    _%env212397%_))
                 _%$e212443%_)
                (_%lp212392%_
                 _%rest212423%_
                 _%subst212395%_
                 (cons (cons (cons _%id212439%_ '()) (cons _%expr212438%_ '()))
                       _%locals212396%_)
                 (cons (cons _%sexpr212441%_ _%id212439%_) _%env212397%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%$%bind212425212432%_)
                                              (let ((_%$%hd212429212452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%bind212425212432%_)))
                                                    (_%$%tl212430212454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%bind212425212432%_))))
                                                (let* ((_%id212457%_
                                                        _%$%hd212429212452%_)
                                                       (_%expr212459%_
                                                        _%$%tl212430212454%_))
                                                  (_%$%K212428212449%_
                                                   _%expr212459%_
                                                   _%id212457%_)))
                                              (_%$%E212427212435%_))))))
                                (if (pair? _%$%rest212398212406%_)
                                    (let ((_%$%hd212403212464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest212398212406%_)))
                                          (_%$%tl212404212466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest212398212406%_))))
                                      (let* ((_%bind212469%_
                                              _%$%hd212403212464%_)
                                             (_%rest212471%_
                                              _%$%tl212404212466%_))
                                        (_%$%K212402212461%_
                                         _%rest212471%_
                                         _%bind212469%_)))
                                    (_%$%else212400212420%_)))))))
                     (lambda _g219141_
                       (let ((_g219142_
                              (let ()
                                (declare (not safe))
                                (##length _g219141_))))
                         (cond ((let ()
                                  (declare (not safe))
                                  (##fx= _g219142_ 2))
                                (apply (lambda (_%bind212476%_ _%body212477%_)
                                         (let ((_%continue212479%_
                                                _%optimize-e211797%_))
                                           (_%$%opt-lambda212386212473%_
                                            _%bind212476%_
                                            _%body212477%_
                                            _%continue212479%_)))
                                       _g219141_))
                               ((let ()
                                  (declare (not safe))
                                  (##fx= _g219142_ 3))
                                (apply _%$%opt-lambda212386212473%_ _g219141_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g219141_)))))))
                  (_%lookup-block211805%_
                   (lambda (_%id212383%_)
                     (find (lambda (_%block212385%_)
                             (gx#free-identifier=?
                              (car _%block212385%_)
                              _%id212383%_))
                           _%blocks211547%_)))
                  (_%inline-block211806%_
                   (lambda (_%block212261%_ _%args212262%_)
                     (let* ((_%kont212264%_ (caddr _%block212261%_))
                            (_%$%g212266212292%_
                             (lambda (_%$%g212267212289%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g212267212289%_)))
                            (_%$%g212265212380%_
                             (lambda (_%$%g212267212295%_)
                               (if (gx#stx-pair? _%$%g212267212295%_)
                                   (let ((_%$%e212270212297%_
                                          (gx#stx-e _%$%g212267212295%_)))
                                     (let ((_%$%hd212271212300%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e212270212297%_)))
                                           (_%$%tl212272212302%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e212270212297%_))))
                                       (if (gx#identifier?
                                            _%$%hd212271212300%_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _%$%hd212271212300%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl212272212302%_)
                                                   (let ((_%$%e212273212305%_
                                                          (gx#stx-e
                                                           _%$%tl212272212302%_)))
                                                     (let ((_%$%hd212274212308%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212273212305%_)))
                                                           (_%$%tl212275212310%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212273212305%_))))
                                                       (if (gx#stx-pair/null?
                                                            _%$%hd212274212308%_)
                                                           (let ((_g219143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%hd212274212308%_ '0)))
                     (begin
                       (let ((_g219144_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g219143_)
                                    (##values-length _g219143_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g219144_ 2)))
                             (error "Context expects 2 values" _g219144_)))
                       (let ((_%$%target212276212313%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219143_ 0)))
                             (_%$%tl212278212315%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g219143_ 1))))
                         (if (gx#stx-null? _%$%tl212278212315%_)
                             (letrec ((_%$%loop212279212318%_
                                       (lambda (_%$%hd212277212321%_
                                                _%$%id212283212323%_)
                                         (if (gx#stx-pair?
                                              _%$%hd212277212321%_)
                                             (let ((_%$%e212280212325%_
                                                    (gx#stx-e
                                                     _%$%hd212277212321%_)))
                                               (let ((_%$%lp-hd212281212328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e212280212325%_)))
                                                     (_%$%lp-tl212282212330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e212280212325%_))))
                                                 (_%$%loop212279212318%_
                                                  _%$%lp-tl212282212330%_
                                                  (cons _%$%lp-hd212281212328%_
                                                        _%$%id212283212323%_))))
                                             (let ((_%$%id212284212333%_
                                                    (reverse _%$%id212283212323%_)))
                                               (if (gx#stx-pair?
                                                    _%$%tl212275212310%_)
                                                   (let ((_%$%e212285212335%_
                                                          (gx#stx-e
                                                           _%$%tl212275212310%_)))
                                                     (let ((_%$%hd212286212338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e212285212335%_)))
                                                           (_%$%tl212287212340%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e212285212335%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl212287212340%_)
                                                           ((lambda (_%$%g212268212343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g212269212344%_)
                      (if (null? (foldr (lambda (_%$%g212363212366%_
                                                 _%$%g212364212368%_)
                                          (cons _%$%g212363212366%_
                                                _%$%g212364212368%_))
                                        '()
                                        _%$%g212269212344%_))
                          _%$%g212268212343%_
                          (let ((_%subst212378%_
                                 (map cons
                                      (foldr (lambda (_%$%g212370212373%_
                                                      _%$%g212371212375%_)
                                               (cons _%$%g212370212373%_
                                                     _%$%g212371212375%_))
                                             '()
                                             _%$%g212269212344%_)
                                      _%args212262%_)))
                            (gxc#apply-expression-subst*
                             _%$%g212268212343%_
                             'subst:
                             _%subst212378%_))))
                    _%$%hd212286212338%_
                    _%$%id212284212333%_)
                   (_%$%g212266212292%_ _%$%g212267212295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212266212292%_
                                                    _%$%g212267212295%_)))))))
                               (_%$%loop212279212318%_
                                _%$%target212276212313%_
                                '()))
                             (_%$%g212266212292%_ _%$%g212267212295%_)))))
                   (_%$%g212266212292%_ _%$%g212267212295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g212266212292%_
                                                    _%$%g212267212295%_))
                                               (_%$%g212266212292%_
                                                _%$%g212267212295%_))
                                           (_%$%g212266212292%_
                                            _%$%g212267212295%_))))
                                   (_%$%g212266212292%_
                                    _%$%g212267212295%_)))))
                       (_%$%g212265212380%_ _%kont212264%_))))
                  (_%nonlinear-block?211807%_
                   (lambda (_%block211812%_)
                     (letrec ((_%nonlinear-expr?211814%_
                               (lambda (_%expr211920%_)
                                 (let* ((_%$%g211926211992%_
                                         (lambda (_%$%g211927211989%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g211927211989%_)))
                                        (_%$%g211925211999%_
                                         (lambda (_%$%g211927211995%_)
                                           ((lambda () '#f))))
                                        (_%$%g211924212060%_
                                         (lambda (_%$%g211927212002%_)
                                           (if (gx#stx-pair?
                                                _%$%g211927212002%_)
                                               (let ((_%$%e211976212004%_
                                                      (gx#stx-e
                                                       _%$%g211927212002%_)))
                                                 (let ((_%$%hd211977212007%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e211976212004%_)))
                                                       (_%$%tl211978212009%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e211976212004%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd211977212007%_)
                                                       (if (gx#stx-eq?
                                                            '%#if
                                                            _%$%hd211977212007%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl211978212009%_)
                                                               (let ((_%$%e211979212012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl211978212009%_)))
                         (let ((_%$%hd211980212015%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e211979212012%_)))
                               (_%$%tl211981212017%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e211979212012%_))))
                           (if (gx#stx-pair? _%$%tl211981212017%_)
                               (let ((_%$%e211982212020%_
                                      (gx#stx-e _%$%tl211981212017%_)))
                                 (let ((_%$%hd211983212023%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e211982212020%_)))
                                       (_%$%tl211984212025%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e211982212020%_))))
                                   (if (gx#stx-pair? _%$%tl211984212025%_)
                                       (let ((_%$%e211985212028%_
                                              (gx#stx-e _%$%tl211984212025%_)))
                                         (let ((_%$%hd211986212031%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e211985212028%_)))
                                               (_%$%tl211987212033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e211985212028%_))))
                                           (if (gx#stx-null?
                                                _%$%tl211987212033%_)
                                               ((lambda (_%$%g211973212036%_
                                                         _%$%g211974212037%_
                                                         _%$%g211975212038%_)
                                                  (let ((_%$e212057%_
                                                         (_%nonlinear-expr?211814%_
                                                          _%$%g211974212037%_)))
                                                    (if _%$e212057%_
                                                        _%$e212057%_
                                                        (_%nonlinear-expr?211814%_
                                                         _%$%g211973212036%_))))
                                                _%$%hd211986212031%_
                                                _%$%hd211983212023%_
                                                _%$%hd211980212015%_)
                                               (_%$%g211925211999%_
                                                _%$%g211927212002%_))))
                                       (_%$%g211925211999%_
                                        _%$%g211927212002%_))))
                               (_%$%g211925211999%_ _%$%g211927212002%_))))
                       (_%$%g211925211999%_ _%$%g211927212002%_))
                   (_%$%g211925211999%_ _%$%g211927212002%_))
               (_%$%g211925211999%_ _%$%g211927212002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g211925211999%_
                                                _%$%g211927212002%_))))
                                        (_%$%g211923212102%_
                                         (lambda (_%$%g211927212063%_)
                                           (if (gx#stx-pair?
                                                _%$%g211927212063%_)
                                               (let ((_%$%e211964212065%_
                                                      (gx#stx-e
                                                       _%$%g211927212063%_)))
                                                 (let ((_%$%hd211965212068%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e211964212065%_)))
                                                       (_%$%tl211966212070%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e211964212065%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd211965212068%_)
                                                       (if (gx#stx-eq?
                                                            '%#let-values
                                                            _%$%hd211965212068%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl211966212070%_)
                                                               (let ((_%$%e211967212073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl211966212070%_)))
                         (let ((_%$%hd211968212076%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e211967212073%_)))
                               (_%$%tl211969212078%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e211967212073%_))))
                           (if (gx#stx-pair? _%$%tl211969212078%_)
                               (let ((_%$%e211970212081%_
                                      (gx#stx-e _%$%tl211969212078%_)))
                                 (let ((_%$%hd211971212084%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e211970212081%_)))
                                       (_%$%tl211972212086%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e211970212081%_))))
                                   (if (gx#stx-null? _%$%tl211972212086%_)
                                       ((lambda (_%$%g211963212089%_)
                                          (_%nonlinear-expr?211814%_
                                           _%$%g211963212089%_))
                                        _%$%hd211971212084%_)
                                       (_%$%g211924212060%_
                                        _%$%g211927212063%_))))
                               (_%$%g211924212060%_ _%$%g211927212063%_))))
                       (_%$%g211924212060%_ _%$%g211927212063%_))
                   (_%$%g211924212060%_ _%$%g211927212063%_))
               (_%$%g211924212060%_ _%$%g211927212063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g211924212060%_
                                                _%$%g211927212063%_))))
                                        (_%$%g211922212243%_
                                         (lambda (_%$%g211927212105%_)
                                           (if (gx#stx-pair?
                                                _%$%g211927212105%_)
                                               (let ((_%$%e211932212107%_
                                                      (gx#stx-e
                                                       _%$%g211927212105%_)))
                                                 (let ((_%$%hd211933212110%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e211932212107%_)))
                                                       (_%$%tl211934212112%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e211932212107%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd211933212110%_)
                                                       (if (gx#stx-eq?
                                                            '%#let-values
                                                            _%$%hd211933212110%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl211934212112%_)
                                                               (let ((_%$%e211935212115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl211934212112%_)))
                         (let ((_%$%hd211936212118%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e211935212115%_)))
                               (_%$%tl211937212120%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e211935212115%_))))
                           (if (gx#stx-pair/null? _%$%hd211936212118%_)
                               (let ((_g219145_
                                      (gx#syntax-split-splice
                                       _%$%hd211936212118%_
                                       '0)))
                                 (begin
                                   (let ((_g219146_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g219145_)
                                                (##values-length _g219145_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g219146_ 2)))
                                         (error "Context expects 2 values"
                                                _g219146_)))
                                   (let ((_%$%target211938212123%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g219145_ 0)))
                                         (_%$%tl211940212125%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g219145_ 1))))
                                     (if (gx#stx-null? _%$%tl211940212125%_)
                                         (letrec ((_%$%loop211941212128%_
                                                   (lambda (_%$%hd211939212131%_)
                                                     (if (gx#stx-pair?
                                                          _%$%hd211939212131%_)
                                                         (let ((_%$%e211942212134%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd211939212131%_)))
                   (let ((_%$%lp-hd211943212137%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e211942212134%_)))
                         (_%$%lp-tl211944212139%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e211942212134%_))))
                     (if (gx#stx-pair? _%$%lp-hd211943212137%_)
                         (let ((_%$%e211945212142%_
                                (gx#stx-e _%$%lp-hd211943212137%_)))
                           (let ((_%$%hd211946212145%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e211945212142%_)))
                                 (_%$%tl211947212147%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e211945212142%_))))
                             (if (gx#stx-pair? _%$%hd211946212145%_)
                                 (let ((_%$%e211948212150%_
                                        (gx#stx-e _%$%hd211946212145%_)))
                                   (let ((_%$%hd211949212153%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e211948212150%_)))
                                         (_%$%tl211950212155%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e211948212150%_))))
                                     (if (gx#stx-null? _%$%tl211950212155%_)
                                         (if (gx#stx-pair?
                                              _%$%tl211947212147%_)
                                             (let ((_%$%e211951212158%_
                                                    (gx#stx-e
                                                     _%$%tl211947212147%_)))
                                               (let ((_%$%hd211952212161%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e211951212158%_)))
                                                     (_%$%tl211953212163%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e211951212158%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%hd211952212161%_)
                                                     (let ((_%$%e211954212166%_
                                                            (gx#stx-e
                                                             _%$%hd211952212161%_)))
                                                       (let ((_%$%hd211955212169%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e211954212166%_)))
                     (_%$%tl211956212171%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e211954212166%_))))
                 (if (gx#identifier? _%$%hd211955212169%_)
                     (if (gx#stx-eq? '%#ref _%$%hd211955212169%_)
                         (if (gx#stx-pair? _%$%tl211956212171%_)
                             (let ((_%$%e211957212174%_
                                    (gx#stx-e _%$%tl211956212171%_)))
                               (let ((_%$%hd211958212177%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e211957212174%_)))
                                     (_%$%tl211959212179%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e211957212174%_))))
                                 (if (gx#stx-null? _%$%tl211959212179%_)
                                     (if (gx#stx-null? _%$%tl211953212163%_)
                                         (_%$%loop211941212128%_
                                          _%$%lp-tl211944212139%_)
                                         (_%$%g211923212102%_
                                          _%$%g211927212105%_))
                                     (_%$%g211923212102%_
                                      _%$%g211927212105%_))))
                             (_%$%g211923212102%_ _%$%g211927212105%_))
                         (_%$%g211923212102%_ _%$%g211927212105%_))
                     (_%$%g211923212102%_ _%$%g211927212105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g211923212102%_
                                                      _%$%g211927212105%_))))
                                             (_%$%g211923212102%_
                                              _%$%g211927212105%_))
                                         (_%$%g211923212102%_
                                          _%$%g211927212105%_))))
                                 (_%$%g211923212102%_ _%$%g211927212105%_))))
                         (_%$%g211923212102%_ _%$%g211927212105%_))))
                 (if (gx#stx-pair? _%$%tl211937212120%_)
                     (let ((_%$%e211960212183%_
                            (gx#stx-e _%$%tl211937212120%_)))
                       (let ((_%$%hd211961212186%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211960212183%_)))
                             (_%$%tl211962212188%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211960212183%_))))
                         (if (gx#stx-null? _%$%tl211962212188%_)
                             ((lambda (_%$%g211931212191%_)
                                (let* ((_%$%g212209212218%_
                                        (lambda (_%$%g212210212215%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g212210212215%_)))
                                       (_%$%g212208212225%_
                                        (lambda (_%$%g212210212221%_)
                                          ((lambda () '#t))))
                                       (_%$%g212207212240%_
                                        (lambda (_%$%g212210212228%_)
                                          (if (gx#stx-pair?
                                               _%$%g212210212228%_)
                                              (let ((_%$%e212211212230%_
                                                     (gx#stx-e
                                                      _%$%g212210212228%_)))
                                                (let ((_%$%hd212212212233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212211212230%_)))
                                                      (_%$%tl212213212235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212211212230%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd212212212233%_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _%$%hd212212212233%_)
                                                          ((lambda () '#f))
                                                          (_%$%g212208212225%_
                                                           _%$%g212210212228%_))
                                                      (_%$%g212208212225%_
                                                       _%$%g212210212228%_))))
                                              (_%$%g212208212225%_
                                               _%$%g212210212228%_)))))
                                  (_%$%g212207212240%_ _%$%g211931212191%_)))
                              _%$%hd211961212186%_)
                             (_%$%g211923212102%_ _%$%g211927212105%_))))
                     (_%$%g211923212102%_ _%$%g211927212105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%loop211941212128%_
                                            _%$%target211938212123%_))
                                         (_%$%g211923212102%_
                                          _%$%g211927212105%_)))))
                               (_%$%g211923212102%_ _%$%g211927212105%_))))
                       (_%$%g211923212102%_ _%$%g211927212105%_))
                   (_%$%g211923212102%_ _%$%g211927212105%_))
               (_%$%g211923212102%_ _%$%g211927212105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g211923212102%_
                                                _%$%g211927212105%_))))
                                        (_%$%g211921212258%_
                                         (lambda (_%$%g211927212246%_)
                                           (if (gx#stx-pair?
                                                _%$%g211927212246%_)
                                               (let ((_%$%e211928212248%_
                                                      (gx#stx-e
                                                       _%$%g211927212246%_)))
                                                 (let ((_%$%hd211929212251%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e211928212248%_)))
                                                       (_%$%tl211930212253%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e211928212248%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd211929212251%_)
                                                       (if (gx#stx-eq?
                                                            '%#letrec-values
                                                            _%$%hd211929212251%_)
                                                           ((lambda () '#t))
                                                           (_%$%g211922212243%_
                                                            _%$%g211927212246%_))
                                                       (_%$%g211922212243%_
                                                        _%$%g211927212246%_))))
                                               (_%$%g211922212243%_
                                                _%$%g211927212246%_)))))
                                   (_%$%g211921212258%_ _%expr211920%_)))))
                       (let* ((_%kont211816%_ (caddr _%block211812%_))
                              (_%$%g211818211844%_
                               (lambda (_%$%g211819211841%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g211819211841%_)))
                              (_%$%g211817211917%_
                               (lambda (_%$%g211819211847%_)
                                 (if (gx#stx-pair? _%$%g211819211847%_)
                                     (let ((_%$%e211822211849%_
                                            (gx#stx-e _%$%g211819211847%_)))
                                       (let ((_%$%hd211823211852%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e211822211849%_)))
                                             (_%$%tl211824211854%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e211822211849%_))))
                                         (if (gx#identifier?
                                              _%$%hd211823211852%_)
                                             (if (gx#stx-eq?
                                                  '%#lambda
                                                  _%$%hd211823211852%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl211824211854%_)
                                                     (let ((_%$%e211825211857%_
                                                            (gx#stx-e
                                                             _%$%tl211824211854%_)))
                                                       (let ((_%$%hd211826211860%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e211825211857%_)))
                     (_%$%tl211827211862%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e211825211857%_))))
                 (if (gx#stx-pair/null? _%$%hd211826211860%_)
                     (let ((_g219147_
                            (gx#syntax-split-splice _%$%hd211826211860%_ '0)))
                       (begin
                         (let ((_g219148_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g219147_)
                                      (##values-length _g219147_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g219148_ 2)))
                               (error "Context expects 2 values" _g219148_)))
                         (let ((_%$%target211828211865%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g219147_ 0)))
                               (_%$%tl211830211867%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g219147_ 1))))
                           (if (gx#stx-null? _%$%tl211830211867%_)
                               (letrec ((_%$%loop211831211870%_
                                         (lambda (_%$%hd211829211873%_
                                                  _%$%id211835211875%_)
                                           (if (gx#stx-pair?
                                                _%$%hd211829211873%_)
                                               (let ((_%$%e211832211877%_
                                                      (gx#stx-e
                                                       _%$%hd211829211873%_)))
                                                 (let ((_%$%lp-hd211833211880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e211832211877%_)))
                                                       (_%$%lp-tl211834211882%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e211832211877%_))))
                                                   (_%$%loop211831211870%_
                                                    _%$%lp-tl211834211882%_
                                                    (cons _%$%lp-hd211833211880%_
                                                          _%$%id211835211875%_))))
                                               (let ((_%$%id211836211885%_
                                                      (reverse _%$%id211835211875%_)))
                                                 (if (gx#stx-pair?
                                                      _%$%tl211827211862%_)
                                                     (let ((_%$%e211837211887%_
                                                            (gx#stx-e
                                                             _%$%tl211827211862%_)))
                                                       (let ((_%$%hd211838211890%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e211837211887%_)))
                     (_%$%tl211839211892%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e211837211887%_))))
                 (if (gx#stx-null? _%$%tl211839211892%_)
                     ((lambda (_%$%g211820211895%_ _%$%g211821211896%_)
                        (_%nonlinear-expr?211814%_ _%$%g211820211895%_))
                      _%$%hd211838211890%_
                      _%$%id211836211885%_)
                     (_%$%g211818211844%_ _%$%g211819211847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g211818211844%_
                                                      _%$%g211819211847%_)))))))
                                 (_%$%loop211831211870%_
                                  _%$%target211828211865%_
                                  '()))
                               (_%$%g211818211844%_ _%$%g211819211847%_)))))
                     (_%$%g211818211844%_ _%$%g211819211847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g211818211844%_
                                                      _%$%g211819211847%_))
                                                 (_%$%g211818211844%_
                                                  _%$%g211819211847%_))
                                             (_%$%g211818211844%_
                                              _%$%g211819211847%_))))
                                     (_%$%g211818211844%_
                                      _%$%g211819211847%_)))))
                         (_%$%g211817211917%_ _%kont211816%_))))))
          (_%do-assert211786%_
           _%assert211545%_
           (lambda ()
             (_%do-bind211793%_
              _%bind211546%_
              (lambda ()
                (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                    (_%do-splice!211796%_
                     (lambda () (_%optimize-e211797%_ _%body211544%_)))
                    (_%optimize-e211797%_ _%body211544%_)))))))))
    (define gxc#optimize-match-prune-blocks
      (lambda (_%blocks211456%_ _%konts211457%_)
        (letrec* ((_%rtab211459%_ (make-hash-table-eq)))
          (for-each
           (lambda (_%block211461%_)
             (gxc#apply-collect-runtime-refs
              (caddr _%block211461%_)
              'table:
              _%rtab211459%_))
           _%konts211457%_)
          (let _%lp211463%_ ((_%rest211465%_ _%blocks211456%_)
                             (_%r211466%_ '()))
            (let* ((_%$%rest211467211475%_ _%rest211465%_)
                   (_%$%E211470211479%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest211467211475%_
                             '([block . rest])
                             'else)
                      (void)))
                   (_%$%else211469211483%_ (lambda () (reverse _%r211466%_)))
                   (_%$%K211471211532%_
                    (lambda (_%rest211486%_ _%block211487%_)
                      (let* ((_%$%block211488211499%_ _%block211487%_)
                             (_%$%E211490211503%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%block211488211499%_
                                       '([name type kont . _]))
                                (void)))
                             (_%$%K211491211510%_
                              (lambda (_%kont211506%_
                                       _%type211507%_
                                       _%name211508%_)
                                (if (hash-get
                                     _%rtab211459%_
                                     (gxc#identifier-symbol _%name211508%_))
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _%kont211506%_
                                       'table:
                                       _%rtab211459%_)
                                      (_%lp211463%_
                                       _%rest211486%_
                                       (cons _%block211487%_ _%r211466%_)))
                                    (_%lp211463%_
                                     _%rest211486%_
                                     _%r211466%_)))))
                        (if (pair? _%$%block211488211499%_)
                            (let ((_%$%hd211492211513%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%block211488211499%_)))
                                  (_%$%tl211493211515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%block211488211499%_))))
                              (let ((_%name211518%_ _%$%hd211492211513%_))
                                (if (pair? _%$%tl211493211515%_)
                                    (let ((_%$%hd211494211520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211493211515%_)))
                                          (_%$%tl211495211522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211493211515%_))))
                                      (let ((_%type211525%_
                                             _%$%hd211494211520%_))
                                        (if (pair? _%$%tl211495211522%_)
                                            (let* ((_%$%hd211496211527%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%tl211495211522%_)))
                                                   (_%kont211530%_
                                                    _%$%hd211496211527%_))
                                              (_%$%K211491211510%_
                                               _%kont211530%_
                                               _%type211525%_
                                               _%name211518%_))
                                            (_%$%E211490211503%_))))
                                    (_%$%E211490211503%_))))
                            (_%$%E211490211503%_))))))
              (if (pair? _%$%rest211467211475%_)
                  (let ((_%$%hd211472211535%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest211467211475%_)))
                        (_%$%tl211473211537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest211467211475%_))))
                    (let* ((_%block211540%_ _%$%hd211472211535%_)
                           (_%rest211542%_ _%$%tl211473211537%_))
                      (_%$%K211471211532%_ _%rest211542%_ _%block211540%_)))
                  (_%$%else211469211483%_)))))))
    (define gxc#optimize-match-fuse-restart-blocks
      (lambda (_%blocks211380%_ _%konts211381%_)
        (let* ((_%$%blocks211382211398%_ _%blocks211380%_)
               (_%$%E211385211402%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%blocks211382211398%_
                         '([[name restart: kont _] . rest])
                         'else)
                  (void)))
               (_%$%else211384211406%_ (lambda () _%blocks211380%_))
               (_%$%K211386211424%_
                (lambda (_%rest211409%_ _%kont211410%_ _%name211411%_)
                  (letrec* ((_%rtab211413%_ (make-hash-table-eq)))
                    (for-each
                     (lambda (_%block211415%_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _%block211415%_)
                        'table:
                        _%rtab211413%_))
                     _%konts211381%_)
                    (if (fx= (hash-ref
                              _%rtab211413%_
                              (gxc#identifier-symbol _%name211411%_))
                             '1)
                        (let* ((_%rblock211419%_
                                (find (lambda (_%block211417%_)
                                        (gxc#apply-find-var-refs
                                         (caddr _%block211417%_)
                                         'ids:
                                         (cons _%name211411%_ '())))
                                      _%konts211381%_))
                               (_%assert211421%_
                                (gxc#optimize-match-assert-restart
                                 _%rblock211419%_
                                 _%name211411%_)))
                          (cons (cons _%name211411%_
                                      (cons 'restart:
                                            (cons _%kont211410%_
                                                  (cons _%assert211421%_
                                                        '()))))
                                _%rest211409%_))
                        _%blocks211380%_)))))
          (if (pair? _%$%blocks211382211398%_)
              (let ((_%$%hd211387211427%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%blocks211382211398%_)))
                    (_%$%tl211388211429%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%blocks211382211398%_))))
                (if (pair? _%$%hd211387211427%_)
                    (let ((_%$%hd211389211432%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd211387211427%_)))
                          (_%$%tl211390211434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd211387211427%_))))
                      (let ((_%name211437%_ _%$%hd211389211432%_))
                        (if (pair? _%$%tl211390211434%_)
                            (let ((_%$%hd211391211439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl211390211434%_)))
                                  (_%$%tl211392211441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl211390211434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211391211439%_ 'restart:))
                                  (if (pair? _%$%tl211392211441%_)
                                      (let ((_%$%hd211393211444%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl211392211441%_)))
                                            (_%$%tl211394211446%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl211392211441%_))))
                                        (let ((_%kont211449%_
                                               _%$%hd211393211444%_))
                                          (if (pair? _%$%tl211394211446%_)
                                              (let ((_%$%tl211396211451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%tl211394211446%_))))
                                                (if (null? _%$%tl211396211451%_)
                                                    (let ((_%rest211454%_
                                                           _%$%tl211388211429%_))
                                                      (_%$%K211386211424%_
                                                       _%rest211454%_
                                                       _%kont211449%_
                                                       _%name211437%_))
                                                    (_%$%else211384211406%_)))
                                              (_%$%else211384211406%_))))
                                      (_%$%else211384211406%_))
                                  (_%$%else211384211406%_)))
                            (_%$%else211384211406%_))))
                    (_%$%else211384211406%_)))
              (_%$%else211384211406%_)))))
    (define gxc#optimize-match-assert-restart
      (lambda (_%block210782%_ _%name210783%_)
        (letrec ((_%assert-restart210785%_
                  (lambda (_%expr210939%_ _%assert210940%_)
                    (let* ((_%$%g210946211043%_
                            (lambda (_%$%g210947211040%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g210947211040%_)))
                           (_%$%g210945211050%_
                            (lambda (_%$%g210947211046%_) ((lambda () '#f))))
                           (_%$%g210944211224%_
                            (lambda (_%$%g210947211053%_)
                              (if (gx#stx-pair? _%$%g210947211053%_)
                                  (let ((_%$%e210991211055%_
                                         (gx#stx-e _%$%g210947211053%_)))
                                    (let ((_%$%hd210992211058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210991211055%_)))
                                          (_%$%tl210993211060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210991211055%_))))
                                      (if (gx#identifier? _%$%hd210992211058%_)
                                          (if (gx#stx-eq?
                                               '%#letrec-values
                                               _%$%hd210992211058%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210993211060%_)
                                                  (let ((_%$%e210994211063%_
                                                         (gx#stx-e
                                                          _%$%tl210993211060%_)))
                                                    (let ((_%$%hd210995211066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210994211063%_)))
                                                          (_%$%tl210996211068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210994211063%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd210995211066%_)
                                                          (let ((_%$%e210997211071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd210995211066%_)))
                    (let ((_%$%hd210998211074%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210997211071%_)))
                          (_%$%tl210999211076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210997211071%_))))
                      (if (gx#stx-pair? _%$%hd210998211074%_)
                          (let ((_%$%e211000211079%_
                                 (gx#stx-e _%$%hd210998211074%_)))
                            (let ((_%$%hd211001211082%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211000211079%_)))
                                  (_%$%tl211002211084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211000211079%_))))
                              (if (gx#stx-pair? _%$%hd211001211082%_)
                                  (let ((_%$%e211003211087%_
                                         (gx#stx-e _%$%hd211001211082%_)))
                                    (let ((_%$%hd211004211090%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211003211087%_)))
                                          (_%$%tl211005211092%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211003211087%_))))
                                      (if (gx#stx-null? _%$%tl211005211092%_)
                                          (if (gx#stx-pair?
                                               _%$%tl211002211084%_)
                                              (let ((_%$%e211006211095%_
                                                     (gx#stx-e
                                                      _%$%tl211002211084%_)))
                                                (let ((_%$%hd211007211098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211006211095%_)))
                                                      (_%$%tl211008211100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211006211095%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd211007211098%_)
                                                      (let ((_%$%e211009211103%_
                                                             (gx#stx-e
                                                              _%$%hd211007211098%_)))
                                                        (let ((_%$%hd211010211106%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e211009211103%_)))
                      (_%$%tl211011211108%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e211009211103%_))))
                  (if (gx#identifier? _%$%hd211010211106%_)
                      (if (gx#stx-eq? '%#lambda _%$%hd211010211106%_)
                          (if (gx#stx-pair? _%$%tl211011211108%_)
                              (let ((_%$%e211012211111%_
                                     (gx#stx-e _%$%tl211011211108%_)))
                                (let ((_%$%hd211013211114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211012211111%_)))
                                      (_%$%tl211014211116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211012211111%_))))
                                  (if (gx#stx-pair/null? _%$%hd211013211114%_)
                                      (let ((_g219149_
                                             (gx#syntax-split-splice
                                              _%$%hd211013211114%_
                                              '0)))
                                        (begin
                                          (let ((_g219150_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g219149_)
                                                       (##values-length
                                                        _g219149_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g219150_ 2)))
                                                (error "Context expects 2 values"
                                                       _g219150_)))
                                          (let ((_%$%target211015211119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g219149_ 0)))
                                                (_%$%tl211017211121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g219149_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl211017211121%_)
                                                (letrec ((_%$%loop211018211124%_
                                                          (lambda (_%$%hd211016211127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%id211022211129%_)
                    (if (gx#stx-pair? _%$%hd211016211127%_)
                        (let ((_%$%e211019211131%_
                               (gx#stx-e _%$%hd211016211127%_)))
                          (let ((_%$%lp-hd211020211134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211019211131%_)))
                                (_%$%lp-tl211021211136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211019211131%_))))
                            (_%$%loop211018211124%_
                             _%$%lp-tl211021211136%_
                             (cons _%$%lp-hd211020211134%_
                                   _%$%id211022211129%_))))
                        (let ((_%$%id211023211139%_
                               (reverse _%$%id211022211129%_)))
                          (if (gx#stx-pair? _%$%tl211014211116%_)
                              (let ((_%$%e211024211141%_
                                     (gx#stx-e _%$%tl211014211116%_)))
                                (let ((_%$%hd211025211144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211024211141%_)))
                                      (_%$%tl211026211146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211024211141%_))))
                                  (if (gx#stx-null? _%$%tl211026211146%_)
                                      (if (gx#stx-null? _%$%tl211008211100%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl210999211076%_)
                                              (let ((_g219151_
                                                     (gx#syntax-split-splice
                                                      _%$%tl210999211076%_
                                                      '0)))
                                                (begin
                                                  (let ((_g219152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g219151_)
                                                               (##values-length
                                                                _g219151_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g219152_ 2)))
                (error "Context expects 2 values" _g219152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target211027211149%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219151_
                                                            0)))
                                                        (_%$%tl211029211151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219151_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl211029211151%_)
                                                        (letrec ((_%$%loop211030211154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd211028211157%_ _%$%bind211034211159%_)
                            (if (gx#stx-pair? _%$%hd211028211157%_)
                                (let ((_%$%e211031211161%_
                                       (gx#stx-e _%$%hd211028211157%_)))
                                  (let ((_%$%lp-hd211032211164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211031211161%_)))
                                        (_%$%lp-tl211033211166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211031211161%_))))
                                    (_%$%loop211030211154%_
                                     _%$%lp-tl211033211166%_
                                     (cons _%$%lp-hd211032211164%_
                                           _%$%bind211034211159%_))))
                                (let ((_%$%bind211035211169%_
                                       (reverse _%$%bind211034211159%_)))
                                  (if (gx#stx-pair? _%$%tl210996211068%_)
                                      (let ((_%$%e211036211171%_
                                             (gx#stx-e _%$%tl210996211068%_)))
                                        (let ((_%$%hd211037211174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211036211171%_)))
                                              (_%$%tl211038211176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211036211171%_))))
                                          (if (gx#stx-null?
                                               _%$%tl211038211176%_)
                                              ((lambda (_%$%g210986211179%_
                                                        _%$%g210987211180%_
                                                        _%$%g210988211181%_
                                                        _%$%g210989211182%_
                                                        _%$%g210990211183%_)
                                                 (_%assert-restart210785%_
                                                  _%$%g210988211181%_
                                                  _%assert210940%_))
                                               _%$%hd211037211174%_
                                               _%$%bind211035211169%_
                                               _%$%hd211025211144%_
                                               _%$%id211023211139%_
                                               _%$%hd211004211090%_)
                                              (_%$%g210945211050%_
                                               _%$%g210947211053%_))))
                                      (_%$%g210945211050%_
                                       _%$%g210947211053%_)))))))
                  (_%$%loop211030211154%_ _%$%target211027211149%_ '()))
                (_%$%g210945211050%_ _%$%g210947211053%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210945211050%_
                                               _%$%g210947211053%_))
                                          (_%$%g210945211050%_
                                           _%$%g210947211053%_))
                                      (_%$%g210945211050%_
                                       _%$%g210947211053%_))))
                              (_%$%g210945211050%_ _%$%g210947211053%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop211018211124%_
                                                   _%$%target211015211119%_
                                                   '()))
                                                (_%$%g210945211050%_
                                                 _%$%g210947211053%_)))))
                                      (_%$%g210945211050%_
                                       _%$%g210947211053%_))))
                              (_%$%g210945211050%_ _%$%g210947211053%_))
                          (_%$%g210945211050%_ _%$%g210947211053%_))
                      (_%$%g210945211050%_ _%$%g210947211053%_))))
              (_%$%g210945211050%_ _%$%g210947211053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210945211050%_
                                               _%$%g210947211053%_))
                                          (_%$%g210945211050%_
                                           _%$%g210947211053%_))))
                                  (_%$%g210945211050%_ _%$%g210947211053%_))))
                          (_%$%g210945211050%_ _%$%g210947211053%_))))
                  (_%$%g210945211050%_ _%$%g210947211053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210945211050%_
                                                   _%$%g210947211053%_))
                                              (_%$%g210945211050%_
                                               _%$%g210947211053%_))
                                          (_%$%g210945211050%_
                                           _%$%g210947211053%_))))
                                  (_%$%g210945211050%_ _%$%g210947211053%_))))
                           (_%$%g210943211266%_
                            (lambda (_%$%g210947211227%_)
                              (if (gx#stx-pair? _%$%g210947211227%_)
                                  (let ((_%$%e210977211229%_
                                         (gx#stx-e _%$%g210947211227%_)))
                                    (let ((_%$%hd210978211232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210977211229%_)))
                                          (_%$%tl210979211234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210977211229%_))))
                                      (if (gx#identifier? _%$%hd210978211232%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd210978211232%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210979211234%_)
                                                  (let ((_%$%e210980211237%_
                                                         (gx#stx-e
                                                          _%$%tl210979211234%_)))
                                                    (let ((_%$%hd210981211240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210980211237%_)))
                                                          (_%$%tl210982211242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210980211237%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl210982211242%_)
                                                          (let ((_%$%e210983211245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl210982211242%_)))
                    (let ((_%$%hd210984211248%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210983211245%_)))
                          (_%$%tl210985211250%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210983211245%_))))
                      (if (gx#stx-null? _%$%tl210985211250%_)
                          ((lambda (_%$%g210976211253%_)
                             (_%assert-restart210785%_
                              _%$%g210976211253%_
                              _%assert210940%_))
                           _%$%hd210984211248%_)
                          (_%$%g210944211224%_ _%$%g210947211227%_))))
                  (_%$%g210944211224%_ _%$%g210947211227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210944211224%_
                                                   _%$%g210947211227%_))
                                              (_%$%g210944211224%_
                                               _%$%g210947211227%_))
                                          (_%$%g210944211224%_
                                           _%$%g210947211227%_))))
                                  (_%$%g210944211224%_ _%$%g210947211227%_))))
                           (_%$%g210942211318%_
                            (lambda (_%$%g210947211269%_)
                              (if (gx#stx-pair? _%$%g210947211269%_)
                                  (let ((_%$%e210964211271%_
                                         (gx#stx-e _%$%g210947211269%_)))
                                    (let ((_%$%hd210965211274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210964211271%_)))
                                          (_%$%tl210966211276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210964211271%_))))
                                      (if (gx#identifier? _%$%hd210965211274%_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _%$%hd210965211274%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210966211276%_)
                                                  (let ((_%$%e210967211279%_
                                                         (gx#stx-e
                                                          _%$%tl210966211276%_)))
                                                    (let ((_%$%hd210968211282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210967211279%_)))
                                                          (_%$%tl210969211284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210967211279%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd210968211282%_)
                                                          (let ((_%$%e210970211287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd210968211282%_)))
                    (let ((_%$%hd210971211290%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210970211287%_)))
                          (_%$%tl210972211292%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210970211287%_))))
                      (if (gx#identifier? _%$%hd210971211290%_)
                          (if (gx#stx-eq? '%#ref _%$%hd210971211290%_)
                              (if (gx#stx-pair? _%$%tl210972211292%_)
                                  (let ((_%$%e210973211295%_
                                         (gx#stx-e _%$%tl210972211292%_)))
                                    (let ((_%$%hd210974211298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210973211295%_)))
                                          (_%$%tl210975211300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210973211295%_))))
                                      (if (gx#stx-null? _%$%tl210975211300%_)
                                          ((lambda (_%$%g210963211303%_)
                                             (if (gx#free-identifier=?
                                                  _%$%g210963211303%_
                                                  _%name210783%_)
                                                 _%assert210940%_
                                                 '#f))
                                           _%$%hd210974211298%_)
                                          (_%$%g210943211266%_
                                           _%$%g210947211269%_))))
                                  (_%$%g210943211266%_ _%$%g210947211269%_))
                              (_%$%g210943211266%_ _%$%g210947211269%_))
                          (_%$%g210943211266%_ _%$%g210947211269%_))))
                  (_%$%g210943211266%_ _%$%g210947211269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210943211266%_
                                                   _%$%g210947211269%_))
                                              (_%$%g210943211266%_
                                               _%$%g210947211269%_))
                                          (_%$%g210943211266%_
                                           _%$%g210947211269%_))))
                                  (_%$%g210943211266%_ _%$%g210947211269%_))))
                           (_%$%g210941211377%_
                            (lambda (_%$%g210947211321%_)
                              (if (gx#stx-pair? _%$%g210947211321%_)
                                  (let ((_%$%e210951211323%_
                                         (gx#stx-e _%$%g210947211321%_)))
                                    (let ((_%$%hd210952211326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210951211323%_)))
                                          (_%$%tl210953211328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210951211323%_))))
                                      (if (gx#identifier? _%$%hd210952211326%_)
                                          (if (gx#stx-eq?
                                               '%#if
                                               _%$%hd210952211326%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210953211328%_)
                                                  (let ((_%$%e210954211331%_
                                                         (gx#stx-e
                                                          _%$%tl210953211328%_)))
                                                    (let ((_%$%hd210955211334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210954211331%_)))
                                                          (_%$%tl210956211336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210954211331%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl210956211336%_)
                                                          (let ((_%$%e210957211339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl210956211336%_)))
                    (let ((_%$%hd210958211342%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210957211339%_)))
                          (_%$%tl210959211344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210957211339%_))))
                      (if (gx#stx-pair? _%$%tl210959211344%_)
                          (let ((_%$%e210960211347%_
                                 (gx#stx-e _%$%tl210959211344%_)))
                            (let ((_%$%hd210961211350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210960211347%_)))
                                  (_%$%tl210962211352%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210960211347%_))))
                              (if (gx#stx-null? _%$%tl210962211352%_)
                                  ((lambda (_%$%g210948211355%_
                                            _%$%g210949211356%_
                                            _%$%g210950211357%_)
                                     (let ((_%$e211374%_
                                            (_%assert-restart210785%_
                                             _%$%g210949211356%_
                                             (cons (cons _%$%g210950211357%_
                                                         '#t)
                                                   _%assert210940%_))))
                                       (if _%$e211374%_
                                           _%$e211374%_
                                           (_%assert-restart210785%_
                                            _%$%g210948211355%_
                                            (cons (cons _%$%g210950211357%_
                                                        '#f)
                                                  _%assert210940%_)))))
                                   _%$%hd210961211350%_
                                   _%$%hd210958211342%_
                                   _%$%hd210955211334%_)
                                  (_%$%g210942211318%_ _%$%g210947211321%_))))
                          (_%$%g210942211318%_ _%$%g210947211321%_))))
                  (_%$%g210942211318%_ _%$%g210947211321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210942211318%_
                                                   _%$%g210947211321%_))
                                              (_%$%g210942211318%_
                                               _%$%g210947211321%_))
                                          (_%$%g210942211318%_
                                           _%$%g210947211321%_))))
                                  (_%$%g210942211318%_ _%$%g210947211321%_)))))
                      (_%$%g210941211377%_ _%expr210939%_)))))
          (let* ((_%$%block210786210799%_ _%block210782%_)
                 (_%$%E210788210803%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%block210786210799%_
                           '([_ _ kont assert . maybe-bind]))
                    (void)))
                 (_%$%K210789210914%_
                  (lambda (_%maybe-bind210806%_
                           _%assert210807%_
                           _%kont210808%_)
                    (let* ((_%$%g210810210836%_
                            (lambda (_%$%g210811210833%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g210811210833%_)))
                           (_%$%g210809210911%_
                            (lambda (_%$%g210811210839%_)
                              (if (gx#stx-pair? _%$%g210811210839%_)
                                  (let ((_%$%e210814210841%_
                                         (gx#stx-e _%$%g210811210839%_)))
                                    (let ((_%$%hd210815210844%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210814210841%_)))
                                          (_%$%tl210816210846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210814210841%_))))
                                      (if (gx#identifier? _%$%hd210815210844%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd210815210844%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210816210846%_)
                                                  (let ((_%$%e210817210849%_
                                                         (gx#stx-e
                                                          _%$%tl210816210846%_)))
                                                    (let ((_%$%hd210818210852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210817210849%_)))
                                                          (_%$%tl210819210854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210817210849%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%hd210818210852%_)
                                                          (let ((_g219153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%hd210818210852%_ '0)))
                    (begin
                      (let ((_g219154_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g219153_)
                                   (##values-length _g219153_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g219154_ 2)))
                            (error "Context expects 2 values" _g219154_)))
                      (let ((_%$%target210820210857%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219153_ 0)))
                            (_%$%tl210822210859%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219153_ 1))))
                        (if (gx#stx-null? _%$%tl210822210859%_)
                            (letrec ((_%$%loop210823210862%_
                                      (lambda (_%$%hd210821210865%_
                                               _%$%id210827210867%_)
                                        (if (gx#stx-pair? _%$%hd210821210865%_)
                                            (let ((_%$%e210824210869%_
                                                   (gx#stx-e
                                                    _%$%hd210821210865%_)))
                                              (let ((_%$%lp-hd210825210872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210824210869%_)))
                                                    (_%$%lp-tl210826210874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210824210869%_))))
                                                (_%$%loop210823210862%_
                                                 _%$%lp-tl210826210874%_
                                                 (cons _%$%lp-hd210825210872%_
                                                       _%$%id210827210867%_))))
                                            (let ((_%$%id210828210877%_
                                                   (reverse _%$%id210827210867%_)))
                                              (if (gx#stx-pair?
                                                   _%$%tl210819210854%_)
                                                  (let ((_%$%e210829210879%_
                                                         (gx#stx-e
                                                          _%$%tl210819210854%_)))
                                                    (let ((_%$%hd210830210882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210829210879%_)))
                                                          (_%$%tl210831210884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210829210879%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl210831210884%_)
                                                          ((lambda (_%$%g210812210887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g210813210888%_)
                     (_%assert-restart210785%_
                      _%$%g210812210887%_
                      _%assert210807%_))
                   _%$%hd210830210882%_
                   _%$%id210828210877%_)
                  (_%$%g210810210836%_ _%$%g210811210839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210810210836%_
                                                   _%$%g210811210839%_)))))))
                              (_%$%loop210823210862%_
                               _%$%target210820210857%_
                               '()))
                            (_%$%g210810210836%_ _%$%g210811210839%_)))))
                  (_%$%g210810210836%_ _%$%g210811210839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210810210836%_
                                                   _%$%g210811210839%_))
                                              (_%$%g210810210836%_
                                               _%$%g210811210839%_))
                                          (_%$%g210810210836%_
                                           _%$%g210811210839%_))))
                                  (_%$%g210810210836%_ _%$%g210811210839%_)))))
                      (_%$%g210809210911%_ _%kont210808%_)))))
            (if (pair? _%$%block210786210799%_)
                (let ((_%$%tl210791210917%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%block210786210799%_))))
                  (if (pair? _%$%tl210791210917%_)
                      (let ((_%$%tl210793210920%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl210791210917%_))))
                        (if (pair? _%$%tl210793210920%_)
                            (let ((_%$%hd210794210923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl210793210920%_)))
                                  (_%$%tl210795210925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl210793210920%_))))
                              (let ((_%kont210928%_ _%$%hd210794210923%_))
                                (if (pair? _%$%tl210795210925%_)
                                    (let ((_%$%hd210796210930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl210795210925%_)))
                                          (_%$%tl210797210932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl210795210925%_))))
                                      (let* ((_%assert210935%_
                                              _%$%hd210796210930%_)
                                             (_%maybe-bind210937%_
                                              _%$%tl210797210932%_))
                                        (_%$%K210789210914%_
                                         _%maybe-bind210937%_
                                         _%assert210935%_
                                         _%kont210928%_)))
                                    (_%$%E210788210803%_))))
                            (_%$%E210788210803%_)))
                      (_%$%E210788210803%_)))
                (_%$%E210788210803%_))))))
    (define gxc#optimize-syntax-case
      (lambda (_%stx210414%_)
        (let* ((_%$%g210416210446%_
                (lambda (_%$%g210417210443%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g210417210443%_)))
               (_%$%g210415210779%_
                (lambda (_%$%g210417210449%_)
                  (if (gx#stx-pair? _%$%g210417210449%_)
                      (let ((_%$%e210421210451%_
                             (gx#stx-e _%$%g210417210449%_)))
                        (let ((_%$%hd210422210454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210421210451%_)))
                              (_%$%tl210423210456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210421210451%_))))
                          (if (gx#identifier? _%$%hd210422210454%_)
                              (if (gx#stx-eq?
                                   '%#let-values
                                   _%$%hd210422210454%_)
                                  (if (gx#stx-pair? _%$%tl210423210456%_)
                                      (let ((_%$%e210424210459%_
                                             (gx#stx-e _%$%tl210423210456%_)))
                                        (let ((_%$%hd210425210462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210424210459%_)))
                                              (_%$%tl210426210464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210424210459%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd210425210462%_)
                                              (let ((_%$%e210427210467%_
                                                     (gx#stx-e
                                                      _%$%hd210425210462%_)))
                                                (let ((_%$%hd210428210470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210427210467%_)))
                                                      (_%$%tl210429210472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210427210467%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd210428210470%_)
                                                      (let ((_%$%e210430210475%_
                                                             (gx#stx-e
                                                              _%$%hd210428210470%_)))
                                                        (let ((_%$%hd210431210478%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e210430210475%_)))
                      (_%$%tl210432210480%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210430210475%_))))
                  (if (gx#stx-pair? _%$%hd210431210478%_)
                      (let ((_%$%e210433210483%_
                             (gx#stx-e _%$%hd210431210478%_)))
                        (let ((_%$%hd210434210486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210433210483%_)))
                              (_%$%tl210435210488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210433210483%_))))
                          (if (gx#stx-null? _%$%tl210435210488%_)
                              (if (gx#stx-pair? _%$%tl210432210480%_)
                                  (let ((_%$%e210436210491%_
                                         (gx#stx-e _%$%tl210432210480%_)))
                                    (let ((_%$%hd210437210494%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210436210491%_)))
                                          (_%$%tl210438210496%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210436210491%_))))
                                      (if (gx#stx-null? _%$%tl210438210496%_)
                                          (if (gx#stx-null?
                                               _%$%tl210429210472%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl210426210464%_)
                                                  (let ((_%$%e210439210499%_
                                                         (gx#stx-e
                                                          _%$%tl210426210464%_)))
                                                    (let ((_%$%hd210440210502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210439210499%_)))
                                                          (_%$%tl210441210504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210439210499%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl210441210504%_)
                                                          ((lambda (_%$%g210418210507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g210419210508%_
                            _%$%g210420210509%_)
                     (let _%lp210533%_ ((_%body210535%_ _%$%g210418210507%_)
                                        (_%clauses210536%_ '()))
                       (let* ((_%$%g210539210586%_
                               (lambda (_%$%g210540210583%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g210540210583%_)))
                              (_%$%g210538210690%_
                               (lambda (_%$%g210540210589%_)
                                 (if (gx#stx-pair? _%$%g210540210589%_)
                                     (let ((_%$%e210567210591%_
                                            (gx#stx-e _%$%g210540210589%_)))
                                       (let ((_%$%hd210568210594%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e210567210591%_)))
                                             (_%$%tl210569210596%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e210567210591%_))))
                                         (if (gx#identifier?
                                              _%$%hd210568210594%_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _%$%hd210568210594%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl210569210596%_)
                                                     (let ((_%$%e210570210599%_
                                                            (gx#stx-e
                                                             _%$%tl210569210596%_)))
                                                       (let ((_%$%hd210571210602%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e210570210599%_)))
                     (_%$%tl210572210604%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e210570210599%_))))
                 (if (gx#stx-pair? _%$%hd210571210602%_)
                     (let ((_%$%e210573210607%_
                            (gx#stx-e _%$%hd210571210602%_)))
                       (let ((_%$%hd210574210610%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210573210607%_)))
                             (_%$%tl210575210612%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210573210607%_))))
                         (if (gx#identifier? _%$%hd210574210610%_)
                             (if (gx#stx-eq? '%#ref _%$%hd210574210610%_)
                                 (if (gx#stx-pair? _%$%tl210575210612%_)
                                     (let ((_%$%e210576210615%_
                                            (gx#stx-e _%$%tl210575210612%_)))
                                       (let ((_%$%hd210577210618%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e210576210615%_)))
                                             (_%$%tl210578210620%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e210576210615%_))))
                                         (if (gx#stx-null?
                                              _%$%tl210578210620%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl210572210604%_)
                                                 (let ((_%$%e210579210623%_
                                                        (gx#stx-e
                                                         _%$%tl210572210604%_)))
                                                   (let ((_%$%hd210580210626%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210579210623%_)))
                                                         (_%$%tl210581210628%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210579210623%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl210581210628%_)
                                                         ((lambda (_%$%g210565210631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g210566210632%_)
                    (let ((_%$e210653%_ (length _%clauses210536%_)))
                      (if (eq? '0 _%$e210653%_)
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$%g210420210509%_
                                                         '())
                                                   (cons _%$%g210419210508%_
                                                         '()))
                                             '())
                                       (cons (gxc#compile-e _%body210535%_)
                                             '())))
                           _%stx210414%_)
                          (if (eq? '1 _%$e210653%_)
                              (let* ((_%$%clauses210655210664%_
                                      _%clauses210536%_)
                                     (_%$%E210657210667%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%clauses210655210664%_
                                               '([[clause . clause-lambda]]))
                                        (void)))
                                     (_%$%K210658210673%_
                                      (lambda (_%clause-lambda210670%_
                                               _%clause210671%_)
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons (cons (cons (cons _%$%g210420210509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%$%g210419210508%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%clause210671%_ '())
                                           (cons _%clause-lambda210670%_ '()))
                                     '())
                               (cons (gxc#compile-e _%body210535%_) '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%stx210414%_))))
                                (if (pair? _%$%clauses210655210664%_)
                                    (let ((_%$%hd210659210676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%clauses210655210664%_)))
                                          (_%$%tl210660210678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%clauses210655210664%_))))
                                      (if (pair? _%$%hd210659210676%_)
                                          (let ((_%$%hd210661210681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd210659210676%_)))
                                                (_%$%tl210662210683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd210659210676%_))))
                                            (let* ((_%clause210686%_
                                                    _%$%hd210661210681%_)
                                                   (_%clause-lambda210688%_
                                                    _%$%tl210662210683%_))
                                              (if (null? _%$%tl210660210678%_)
                                                  (_%$%K210658210673%_
                                                   _%clause-lambda210688%_
                                                   _%clause210686%_)
                                                  (_%$%E210657210667%_))))
                                          (_%$%E210657210667%_)))
                                    (_%$%E210657210667%_)))
                              (gxc#optimize-syntax-case-body
                               _%stx210414%_
                               (gxc#compile-e _%$%g210565210631%_)
                               (cons _%$%g210420210509%_ _%$%g210419210508%_)
                               _%clauses210536%_)))))
                  _%$%hd210580210626%_
                  _%$%hd210577210618%_)
                 (_%$%g210539210586%_ _%$%g210540210589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g210539210586%_
                                                  _%$%g210540210589%_))
                                             (_%$%g210539210586%_
                                              _%$%g210540210589%_))))
                                     (_%$%g210539210586%_ _%$%g210540210589%_))
                                 (_%$%g210539210586%_ _%$%g210540210589%_))
                             (_%$%g210539210586%_ _%$%g210540210589%_))))
                     (_%$%g210539210586%_ _%$%g210540210589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g210539210586%_
                                                      _%$%g210540210589%_))
                                                 (_%$%g210539210586%_
                                                  _%$%g210540210589%_))
                                             (_%$%g210539210586%_
                                              _%$%g210540210589%_))))
                                     (_%$%g210539210586%_
                                      _%$%g210540210589%_))))
                              (_%$%g210537210776%_
                               (lambda (_%$%g210540210693%_)
                                 (if (gx#stx-pair? _%$%g210540210693%_)
                                     (let ((_%$%e210544210695%_
                                            (gx#stx-e _%$%g210540210693%_)))
                                       (let ((_%$%hd210545210698%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e210544210695%_)))
                                             (_%$%tl210546210700%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e210544210695%_))))
                                         (if (gx#identifier?
                                              _%$%hd210545210698%_)
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd210545210698%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl210546210700%_)
                                                     (let ((_%$%e210547210703%_
                                                            (gx#stx-e
                                                             _%$%tl210546210700%_)))
                                                       (let ((_%$%hd210548210706%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e210547210703%_)))
                     (_%$%tl210549210708%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e210547210703%_))))
                 (if (gx#stx-pair? _%$%hd210548210706%_)
                     (let ((_%$%e210550210711%_
                            (gx#stx-e _%$%hd210548210706%_)))
                       (let ((_%$%hd210551210714%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210550210711%_)))
                             (_%$%tl210552210716%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210550210711%_))))
                         (if (gx#stx-pair? _%$%hd210551210714%_)
                             (let ((_%$%e210553210719%_
                                    (gx#stx-e _%$%hd210551210714%_)))
                               (let ((_%$%hd210554210722%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e210553210719%_)))
                                     (_%$%tl210555210724%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e210553210719%_))))
                                 (if (gx#stx-pair? _%$%hd210554210722%_)
                                     (let ((_%$%e210556210727%_
                                            (gx#stx-e _%$%hd210554210722%_)))
                                       (let ((_%$%hd210557210730%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e210556210727%_)))
                                             (_%$%tl210558210732%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e210556210727%_))))
                                         (if (gx#stx-null?
                                              _%$%tl210558210732%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl210555210724%_)
                                                 (let ((_%$%e210559210735%_
                                                        (gx#stx-e
                                                         _%$%tl210555210724%_)))
                                                   (let ((_%$%hd210560210738%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210559210735%_)))
                                                         (_%$%tl210561210740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210559210735%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl210561210740%_)
                                                         (if (gx#stx-null?
                                                              _%$%tl210552210716%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl210549210708%_)
                         (let ((_%$%e210562210743%_
                                (gx#stx-e _%$%tl210549210708%_)))
                           (let ((_%$%hd210563210746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e210562210743%_)))
                                 (_%$%tl210564210748%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e210562210743%_))))
                             (if (gx#stx-null? _%$%tl210564210748%_)
                                 ((lambda (_%$%g210541210751%_
                                           _%$%g210542210752%_
                                           _%$%g210543210753%_)
                                    (_%lp210533%_
                                     _%$%g210541210751%_
                                     (cons (cons _%$%g210543210753%_
                                                 (gxc#compile-e
                                                  _%$%g210542210752%_))
                                           _%clauses210536%_)))
                                  _%$%hd210563210746%_
                                  _%$%hd210560210738%_
                                  _%$%hd210557210730%_)
                                 (_%$%g210538210690%_ _%$%g210540210693%_))))
                         (_%$%g210538210690%_ _%$%g210540210693%_))
                     (_%$%g210538210690%_ _%$%g210540210693%_))
                 (_%$%g210538210690%_ _%$%g210540210693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g210538210690%_
                                                  _%$%g210540210693%_))
                                             (_%$%g210538210690%_
                                              _%$%g210540210693%_))))
                                     (_%$%g210538210690%_
                                      _%$%g210540210693%_))))
                             (_%$%g210538210690%_ _%$%g210540210693%_))))
                     (_%$%g210538210690%_ _%$%g210540210693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g210538210690%_
                                                      _%$%g210540210693%_))
                                                 (_%$%g210538210690%_
                                                  _%$%g210540210693%_))
                                             (_%$%g210538210690%_
                                              _%$%g210540210693%_))))
                                     (_%$%g210538210690%_
                                      _%$%g210540210693%_)))))
                         (_%$%g210537210776%_ _%body210535%_))))
                   _%$%hd210440210502%_
                   _%$%hd210437210494%_
                   _%$%hd210434210486%_)
                  (_%$%g210416210446%_ _%$%g210417210449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g210416210446%_
                                                   _%$%g210417210449%_))
                                              (_%$%g210416210446%_
                                               _%$%g210417210449%_))
                                          (_%$%g210416210446%_
                                           _%$%g210417210449%_))))
                                  (_%$%g210416210446%_ _%$%g210417210449%_))
                              (_%$%g210416210446%_ _%$%g210417210449%_))))
                      (_%$%g210416210446%_ _%$%g210417210449%_))))
              (_%$%g210416210446%_ _%$%g210417210449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210416210446%_
                                               _%$%g210417210449%_))))
                                      (_%$%g210416210446%_
                                       _%$%g210417210449%_))
                                  (_%$%g210416210446%_ _%$%g210417210449%_))
                              (_%$%g210416210446%_ _%$%g210417210449%_))))
                      (_%$%g210416210446%_ _%$%g210417210449%_)))))
          (_%$%g210415210779%_ _%stx210414%_))))
    (define gxc#optimize-syntax-case-body
      (lambda (_%stx210342%_
               _%expr210343%_
               _%negation210344%_
               _%clauses210345%_)
        (letrec ((_%normalize210347%_
                  (lambda (_%clauses210375%_)
                    (let* ((_%$%clauses210376210385%_ _%clauses210375%_)
                           (_%$%E210378210388%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%clauses210376210385%_
                                     '([[id . kont] . rest]))
                              (void)))
                           (_%$%K210379210395%_
                            (lambda (_%rest210391%_
                                     _%kont210392%_
                                     _%id210393%_)
                              (cons (cons '#f _%kont210392%_)
                                    _%rest210391%_))))
                      (if (pair? _%$%clauses210376210385%_)
                          (let ((_%$%hd210380210398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%clauses210376210385%_)))
                                (_%$%tl210381210400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%clauses210376210385%_))))
                            (if (pair? _%$%hd210380210398%_)
                                (let ((_%$%hd210382210403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd210380210398%_)))
                                      (_%$%tl210383210405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd210380210398%_))))
                                  (let* ((_%id210408%_ _%$%hd210382210403%_)
                                         (_%kont210410%_ _%$%tl210383210405%_)
                                         (_%rest210412%_ _%$%tl210381210400%_))
                                    (_%$%K210379210395%_
                                     _%rest210412%_
                                     _%kont210410%_
                                     _%id210408%_)))
                                (_%$%E210378210388%_)))
                          (_%$%E210378210388%_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_%id210350%_ (make-symbol (gensym '__stx)))
                    (_%id210352%_ (gx#core-quote-syntax _%id210350%_))
                    (_%_210354%_ (gx#core-bind-runtime! _%id210352%_))
                    (_g219155_
                     (gxc#optimize-syntax-case-clauses
                      _%clauses210345%_
                      (car _%negation210344%_))))
               (begin
                 (let ((_g219156_
                        (let ()
                          (declare (not safe))
                          (if (##values? _g219155_)
                              (##values-length _g219155_)
                              1))))
                   (if (not (let () (declare (not safe)) (##fx= _g219156_ 2)))
                       (error "Context expects 2 values" _g219156_)))
                 (let ((_%clauses210356%_
                        (let ()
                          (declare (not safe))
                          (##values-ref _g219155_ 0)))
                       (_%konts210357%_
                        (let ()
                          (declare (not safe))
                          (##values-ref _g219155_ 1))))
                   (let* ((_%clauses210366%_
                           (map (lambda (_%$%g210358210361%_
                                         _%$%g210359210363%_)
                                  (gxc#optimize-syntax-case-closure
                                   _%$%g210358210361%_
                                   _%$%g210359210363%_
                                   _%id210352%_))
                                _%clauses210356%_
                                (foldr cons
                                       (cons (car _%negation210344%_) '())
                                       (map car (cdr _%clauses210356%_)))))
                          (_%clauses210368%_
                           (_%normalize210347%_ _%clauses210366%_))
                          (_%negation210370%_
                           (gxc#optimize-syntax-case-closure
                            _%negation210344%_
                            '#f
                            _%id210352%_))
                          (_%body210372%_
                           (gxc#optimize-match-body
                            _%stx210342%_
                            _%negation210370%_
                            _%clauses210368%_
                            _%konts210357%_)))
                     (gxc#xform-wrap-source
                      (cons '%#let-values
                            (cons (cons (cons (cons _%id210352%_ '())
                                              (cons _%expr210343%_ '()))
                                        '())
                                  (cons _%body210372%_ '())))
                      _%stx210342%_))))))
           gx#current-expander-context
           (gx#make-local-context)))))
    (define gxc#optimize-syntax-case-clauses
      (lambda (_%clauses209105%_ _%negation-id209106%_)
        (letrec ((_%xform-e209108%_
                  (lambda (_%expr209490%_
                           _%kont-id209491%_
                           _%kont-box209492%_
                           _%negation-id209493%_)
                    (let* ((_%$%g209499209632%_
                            (lambda (_%$%g209500209629%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g209500209629%_)))
                           (_%$%g209498209998%_
                            (lambda (_%$%g209500209635%_)
                              (if (gx#stx-pair? _%$%g209500209635%_)
                                  (let ((_%$%e209595209637%_
                                         (gx#stx-e _%$%g209500209635%_)))
                                    (let ((_%$%hd209596209640%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209595209637%_)))
                                          (_%$%tl209597209642%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209595209637%_))))
                                      (if (gx#identifier? _%$%hd209596209640%_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _%$%hd209596209640%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209597209642%_)
                                                  (let ((_%$%e209598209645%_
                                                         (gx#stx-e
                                                          _%$%tl209597209642%_)))
                                                    (let ((_%$%hd209599209648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209598209645%_)))
                                                          (_%$%tl209600209650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209598209645%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd209599209648%_)
                                                          (let ((_%$%e209601209653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd209599209648%_)))
                    (let ((_%$%hd209602209656%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209601209653%_)))
                          (_%$%tl209603209658%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209601209653%_))))
                      (if (gx#identifier? _%$%hd209602209656%_)
                          (if (gx#stx-eq? '%#lambda _%$%hd209602209656%_)
                              (if (gx#stx-pair? _%$%tl209603209658%_)
                                  (let ((_%$%e209604209661%_
                                         (gx#stx-e _%$%tl209603209658%_)))
                                    (let ((_%$%hd209605209664%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209604209661%_)))
                                          (_%$%tl209606209666%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209604209661%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd209605209664%_)
                                          (let ((_g219157_
                                                 (gx#syntax-split-splice
                                                  _%$%hd209605209664%_
                                                  '0)))
                                            (begin
                                              (let ((_g219158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g219157_)
                                                           (##values-length
                                                            _g219157_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g219158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g219158_)))
                                              (let ((_%$%target209607209669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g219157_
                                                        0)))
                                                    (_%$%tl209609209671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g219157_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl209609209671%_)
                                                    (letrec ((_%$%loop209610209674%_
                                                              (lambda (_%$%hd209608209677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%id209614209679%_)
                        (if (gx#stx-pair? _%$%hd209608209677%_)
                            (let ((_%$%e209611209681%_
                                   (gx#stx-e _%$%hd209608209677%_)))
                              (let ((_%$%lp-hd209612209684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e209611209681%_)))
                                    (_%$%lp-tl209613209686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e209611209681%_))))
                                (_%$%loop209610209674%_
                                 _%$%lp-tl209613209686%_
                                 (cons _%$%lp-hd209612209684%_
                                       _%$%id209614209679%_))))
                            (let ((_%$%id209615209689%_
                                   (reverse _%$%id209614209679%_)))
                              (if (gx#stx-pair? _%$%tl209606209666%_)
                                  (let ((_%$%e209616209691%_
                                         (gx#stx-e _%$%tl209606209666%_)))
                                    (let ((_%$%hd209617209694%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209616209691%_)))
                                          (_%$%tl209618209696%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209616209691%_))))
                                      (if (gx#stx-null? _%$%tl209618209696%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl209600209650%_)
                                              (let ((_g219159_
                                                     (gx#syntax-split-splice
                                                      _%$%tl209600209650%_
                                                      '0)))
                                                (begin
                                                  (let ((_g219160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g219159_)
                                                               (##values-length
                                                                _g219159_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g219160_ 2)))
                (error "Context expects 2 values" _g219160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target209619209699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219159_
                                                            0)))
                                                        (_%$%tl209621209701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219159_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl209621209701%_)
                                                        (letrec ((_%$%loop209622209704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd209620209707%_ _%$%arg209626209709%_)
                            (if (gx#stx-pair? _%$%hd209620209707%_)
                                (let ((_%$%e209623209711%_
                                       (gx#stx-e _%$%hd209620209707%_)))
                                  (let ((_%$%lp-hd209624209714%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209623209711%_)))
                                        (_%$%lp-tl209625209716%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209623209711%_))))
                                    (_%$%loop209622209704%_
                                     _%$%lp-tl209625209716%_
                                     (cons _%$%lp-hd209624209714%_
                                           _%$%arg209626209709%_))))
                                (let ((_%$%arg209627209719%_
                                       (reverse _%$%arg209626209709%_)))
                                  ((lambda (_%$%g209592209721%_
                                            _%$%g209593209722%_
                                            _%$%g209594209723%_)
                                     (let* ((_%$%g209752209795%_
                                             (lambda (_%$%g209753209792%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g209753209792%_)))
                                            (_%$%g209751209818%_
                                             (lambda (_%$%g209753209798%_)
                                               ((lambda ()
                                                  (let ((_%kont209809%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '%#lambda)
                                                               (cons (foldr (lambda (_%$%g209801209804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g209802209806%_)
                                      (cons _%$%g209801209804%_
                                            _%$%g209802209806%_))
                                    '()
                                    _%$%g209594209723%_)
                             (cons _%$%g209593209722%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (set-box!
                                                     _%kont-box209492%_
                                                     _%kont209809%_)
                                                    (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%kont-id209491%_ '()))
                        (foldr (lambda (_%$%g209810209813%_
                                        _%$%g209811209815%_)
                                 (cons _%$%g209810209813%_
                                       _%$%g209811209815%_))
                               '()
                               _%$%g209592209721%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g209750209995%_
                                             (lambda (_%$%g209753209821%_)
                                               (if (gx#stx-pair?
                                                    _%$%g209753209821%_)
                                                   (let ((_%$%e209758209823%_
                                                          (gx#stx-e
                                                           _%$%g209753209821%_)))
                                                     (let ((_%$%hd209759209826%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209758209823%_)))
                                                           (_%$%tl209760209828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209758209823%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd209759209826%_)
                                                           (if (gx#stx-eq?
                                                                '%#if
                                                                _%$%hd209759209826%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl209760209828%_)
                           (let ((_%$%e209761209831%_
                                  (gx#stx-e _%$%tl209760209828%_)))
                             (let ((_%$%hd209762209834%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e209761209831%_)))
                                   (_%$%tl209763209836%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e209761209831%_))))
                               (if (gx#stx-pair? _%$%tl209763209836%_)
                                   (let ((_%$%e209764209839%_
                                          (gx#stx-e _%$%tl209763209836%_)))
                                     (let ((_%$%hd209765209842%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e209764209839%_)))
                                           (_%$%tl209766209844%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e209764209839%_))))
                                       (if (gx#stx-pair? _%$%tl209766209844%_)
                                           (let ((_%$%e209767209847%_
                                                  (gx#stx-e
                                                   _%$%tl209766209844%_)))
                                             (let ((_%$%hd209768209850%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e209767209847%_)))
                                                   (_%$%tl209769209852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e209767209847%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd209768209850%_)
                                                   (let ((_%$%e209770209855%_
                                                          (gx#stx-e
                                                           _%$%hd209768209850%_)))
                                                     (let ((_%$%hd209771209858%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209770209855%_)))
                                                           (_%$%tl209772209860%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209770209855%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd209771209858%_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _%$%hd209771209858%_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl209772209860%_)
                           (let ((_%$%e209773209863%_
                                  (gx#stx-e _%$%tl209772209860%_)))
                             (let ((_%$%hd209774209866%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e209773209863%_)))
                                   (_%$%tl209775209868%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e209773209863%_))))
                               (if (gx#stx-pair? _%$%hd209774209866%_)
                                   (let ((_%$%e209776209871%_
                                          (gx#stx-e _%$%hd209774209866%_)))
                                     (let ((_%$%hd209777209874%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e209776209871%_)))
                                           (_%$%tl209778209876%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e209776209871%_))))
                                       (if (gx#identifier?
                                            _%$%hd209777209874%_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _%$%hd209777209874%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl209778209876%_)
                                                   (let ((_%$%e209779209879%_
                                                          (gx#stx-e
                                                           _%$%tl209778209876%_)))
                                                     (let ((_%$%hd209780209882%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209779209879%_)))
                                                           (_%$%tl209781209884%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209779209879%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl209781209884%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl209775209868%_)
                                                               (let ((_%$%e209782209887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl209775209868%_)))
                         (let ((_%$%hd209783209890%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e209782209887%_)))
                               (_%$%tl209784209892%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e209782209887%_))))
                           (if (gx#stx-pair? _%$%hd209783209890%_)
                               (let ((_%$%e209785209895%_
                                      (gx#stx-e _%$%hd209783209890%_)))
                                 (let ((_%$%hd209786209898%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e209785209895%_)))
                                       (_%$%tl209787209900%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e209785209895%_))))
                                   (if (gx#identifier? _%$%hd209786209898%_)
                                       (if (gx#stx-eq?
                                            '%#ref
                                            _%$%hd209786209898%_)
                                           (if (gx#stx-pair?
                                                _%$%tl209787209900%_)
                                               (let ((_%$%e209788209903%_
                                                      (gx#stx-e
                                                       _%$%tl209787209900%_)))
                                                 (let ((_%$%hd209789209906%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e209788209903%_)))
                                                       (_%$%tl209790209908%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e209788209903%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl209790209908%_)
                                                       (if (gx#stx-null?
                                                            _%$%tl209784209892%_)
                                                           (if (gx#stx-null?
                                                                _%$%tl209769209852%_)
                                                               ((lambda (_%$%g209754209911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g209755209912%_
                                 _%$%g209756209913%_
                                 _%$%g209757209914%_)
                          (if (gx#free-identifier=?
                               _%$%g209755209912%_
                               _%negation-id209493%_)
                              (let ((_%kont209955%_
                                     (cons (gx#datum->syntax '#f '%#lambda)
                                           (cons (foldr (lambda (_%$%g209947209950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g209948209952%_)
                  (cons _%$%g209947209950%_ _%$%g209948209952%_))
                '()
                _%$%g209594209723%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%$%g209756209913%_
                                                       '())))))
                                (set-box! _%kont-box209492%_ _%kont209955%_)
                                (let* ((_%kont-args209966%_
                                        (map (lambda (_%id209957%_)
                                               (cons '%#ref
                                                     (cons _%id209957%_ '())))
                                             (foldr (lambda (_%$%g209958209961%_
                                                             _%$%g209959209963%_)
                                                      (cons _%$%g209958209961%_
                                                            _%$%g209959209963%_))
                                                    '()
                                                    _%$%g209594209723%_)))
                                       (_%body209968%_
                                        (cons '%#if
                                              (cons _%$%g209757209914%_
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%kont-id209491%_ '()))
                              _%kont-args209966%_))
                  (cons (cons (gx#datum->syntax '#f '%#call)
                              (cons (cons (gx#datum->syntax '#f '%#ref)
                                          (cons _%$%g209755209912%_ '()))
                                    (cons (cons (gx#datum->syntax '#f '%#ref)
                                                (cons _%$%g209754209911%_ '()))
                                          '())))
                        '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (null? (foldr (lambda (_%$%g209970209973%_
                                                             _%$%g209971209975%_)
                                                      (cons _%$%g209970209973%_
                                                            _%$%g209971209975%_))
                                                    '()
                                                    _%$%g209594209723%_))
                                      _%body209968%_
                                      (cons '%#let-values
                                            (cons (map (lambda (_%id209978%_
                                                                _%arg209979%_)
                                                         (cons (cons _%id209978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%arg209979%_ '())))
               (foldr (lambda (_%$%g209980209983%_ _%$%g209981209985%_)
                        (cons _%$%g209980209983%_ _%$%g209981209985%_))
                      '()
                      _%$%g209594209723%_)
               (foldr (lambda (_%$%g209987209990%_ _%$%g209988209992%_)
                        (cons _%$%g209987209990%_ _%$%g209988209992%_))
                      '()
                      _%$%g209592209721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%body209968%_
                                                        '()))))))
                              (_%$%g209751209818%_ _%$%g209753209821%_)))
                        _%$%hd209789209906%_
                        _%$%hd209780209882%_
                        _%$%hd209765209842%_
                        _%$%hd209762209834%_)
                       (_%$%g209751209818%_ _%$%g209753209821%_))
                   (_%$%g209751209818%_ _%$%g209753209821%_))
               (_%$%g209751209818%_ _%$%g209753209821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g209751209818%_
                                                _%$%g209753209821%_))
                                           (_%$%g209751209818%_
                                            _%$%g209753209821%_))
                                       (_%$%g209751209818%_
                                        _%$%g209753209821%_))))
                               (_%$%g209751209818%_ _%$%g209753209821%_))))
                       (_%$%g209751209818%_ _%$%g209753209821%_))
                   (_%$%g209751209818%_ _%$%g209753209821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g209751209818%_
                                                    _%$%g209753209821%_))
                                               (_%$%g209751209818%_
                                                _%$%g209753209821%_))
                                           (_%$%g209751209818%_
                                            _%$%g209753209821%_))))
                                   (_%$%g209751209818%_ _%$%g209753209821%_))))
                           (_%$%g209751209818%_ _%$%g209753209821%_))
                       (_%$%g209751209818%_ _%$%g209753209821%_))
                   (_%$%g209751209818%_ _%$%g209753209821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g209751209818%_
                                                    _%$%g209753209821%_))))
                                           (_%$%g209751209818%_
                                            _%$%g209753209821%_))))
                                   (_%$%g209751209818%_ _%$%g209753209821%_))))
                           (_%$%g209751209818%_ _%$%g209753209821%_))
                       (_%$%g209751209818%_ _%$%g209753209821%_))
                   (_%$%g209751209818%_ _%$%g209753209821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g209751209818%_
                                                    _%$%g209753209821%_)))))
                                       (_%$%g209750209995%_
                                        _%$%g209593209722%_)))
                                   _%$%arg209627209719%_
                                   _%$%hd209617209694%_
                                   _%$%id209615209689%_))))))
                  (_%$%loop209622209704%_ _%$%target209619209699%_ '()))
                (_%$%g209499209632%_ _%$%g209500209635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209499209632%_
                                               _%$%g209500209635%_))
                                          (_%$%g209499209632%_
                                           _%$%g209500209635%_))))
                                  (_%$%g209499209632%_
                                   _%$%g209500209635%_)))))))
              (_%$%loop209610209674%_ _%$%target209607209669%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g209499209632%_
                                                     _%$%g209500209635%_)))))
                                          (_%$%g209499209632%_
                                           _%$%g209500209635%_))))
                                  (_%$%g209499209632%_ _%$%g209500209635%_))
                              (_%$%g209499209632%_ _%$%g209500209635%_))
                          (_%$%g209499209632%_ _%$%g209500209635%_))))
                  (_%$%g209499209632%_ _%$%g209500209635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209499209632%_
                                                   _%$%g209500209635%_))
                                              (_%$%g209499209632%_
                                               _%$%g209500209635%_))
                                          (_%$%g209499209632%_
                                           _%$%g209500209635%_))))
                                  (_%$%g209499209632%_ _%$%g209500209635%_))))
                           (_%$%g209497210086%_
                            (lambda (_%$%g209500210001%_)
                              (if (gx#stx-pair? _%$%g209500210001%_)
                                  (let ((_%$%e209571210003%_
                                         (gx#stx-e _%$%g209500210001%_)))
                                    (let ((_%$%hd209572210006%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209571210003%_)))
                                          (_%$%tl209573210008%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209571210003%_))))
                                      (if (gx#identifier? _%$%hd209572210006%_)
                                          (if (gx#stx-eq?
                                               '%#letrec-values
                                               _%$%hd209572210006%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209573210008%_)
                                                  (let ((_%$%e209574210011%_
                                                         (gx#stx-e
                                                          _%$%tl209573210008%_)))
                                                    (let ((_%$%hd209575210014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209574210011%_)))
                                                          (_%$%tl209576210016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209574210011%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd209575210014%_)
                                                          (let ((_%$%e209577210019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd209575210014%_)))
                    (let ((_%$%hd209578210022%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209577210019%_)))
                          (_%$%tl209579210024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209577210019%_))))
                      (if (gx#stx-pair? _%$%hd209578210022%_)
                          (let ((_%$%e209580210027%_
                                 (gx#stx-e _%$%hd209578210022%_)))
                            (let ((_%$%hd209581210030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209580210027%_)))
                                  (_%$%tl209582210032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209580210027%_))))
                              (if (gx#stx-pair? _%$%hd209581210030%_)
                                  (let ((_%$%e209583210035%_
                                         (gx#stx-e _%$%hd209581210030%_)))
                                    (let ((_%$%hd209584210038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209583210035%_)))
                                          (_%$%tl209585210040%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209583210035%_))))
                                      (if (gx#stx-null? _%$%tl209585210040%_)
                                          (if (gx#stx-pair?
                                               _%$%tl209582210032%_)
                                              (let ((_%$%e209586210043%_
                                                     (gx#stx-e
                                                      _%$%tl209582210032%_)))
                                                (let ((_%$%hd209587210046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209586210043%_)))
                                                      (_%$%tl209588210048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209586210043%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl209588210048%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl209579210024%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl209576210016%_)
                                                              (let ((_%$%e209589210051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl209576210016%_)))
                        (let ((_%$%hd209590210054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209589210051%_)))
                              (_%$%tl209591210056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209589210051%_))))
                          (if (gx#stx-null? _%$%tl209591210056%_)
                              ((lambda (_%$%g209568210059%_
                                        _%$%g209569210060%_
                                        _%$%g209570210061%_)
                                 (let ((_%lambda-expr210084%_
                                        (_%xform-loop-e209109%_
                                         _%$%g209569210060%_
                                         _%kont-id209491%_
                                         _%kont-box209492%_
                                         _%negation-id209493%_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _%$%g209570210061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%lambda-expr210084%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _%$%g209568210059%_
                                                     '())))))
                               _%$%hd209590210054%_
                               _%$%hd209587210046%_
                               _%$%hd209584210038%_)
                              (_%$%g209498209998%_ _%$%g209500210001%_))))
                      (_%$%g209498209998%_ _%$%g209500210001%_))
                  (_%$%g209498209998%_ _%$%g209500210001%_))
              (_%$%g209498209998%_ _%$%g209500210001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209498209998%_
                                               _%$%g209500210001%_))
                                          (_%$%g209498209998%_
                                           _%$%g209500210001%_))))
                                  (_%$%g209498209998%_ _%$%g209500210001%_))))
                          (_%$%g209498209998%_ _%$%g209500210001%_))))
                  (_%$%g209498209998%_ _%$%g209500210001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209498209998%_
                                                   _%$%g209500210001%_))
                                              (_%$%g209498209998%_
                                               _%$%g209500210001%_))
                                          (_%$%g209498209998%_
                                           _%$%g209500210001%_))))
                                  (_%$%g209498209998%_ _%$%g209500210001%_))))
                           (_%$%g209496210132%_
                            (lambda (_%$%g209500210089%_)
                              (if (gx#stx-pair? _%$%g209500210089%_)
                                  (let ((_%$%e209559210091%_
                                         (gx#stx-e _%$%g209500210089%_)))
                                    (let ((_%$%hd209560210094%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209559210091%_)))
                                          (_%$%tl209561210096%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209559210091%_))))
                                      (if (gx#identifier? _%$%hd209560210094%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd209560210094%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209561210096%_)
                                                  (let ((_%$%e209562210099%_
                                                         (gx#stx-e
                                                          _%$%tl209561210096%_)))
                                                    (let ((_%$%hd209563210102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209562210099%_)))
                                                          (_%$%tl209564210104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209562210099%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl209564210104%_)
                                                          (let ((_%$%e209565210107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl209564210104%_)))
                    (let ((_%$%hd209566210110%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209565210107%_)))
                          (_%$%tl209567210112%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209565210107%_))))
                      (if (gx#stx-null? _%$%tl209567210112%_)
                          ((lambda (_%$%g209557210115%_ _%$%g209558210116%_)
                             (let ((_%body210130%_
                                    (_%xform-e209108%_
                                     _%$%g209557210115%_
                                     _%kont-id209491%_
                                     _%kont-box209492%_
                                     _%negation-id209493%_)))
                               (cons '%#let-values
                                     (cons _%$%g209558210116%_
                                           (cons _%body210130%_ '())))))
                           _%$%hd209566210110%_
                           _%$%hd209563210102%_)
                          (_%$%g209497210086%_ _%$%g209500210089%_))))
                  (_%$%g209497210086%_ _%$%g209500210089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209497210086%_
                                                   _%$%g209500210089%_))
                                              (_%$%g209497210086%_
                                               _%$%g209500210089%_))
                                          (_%$%g209497210086%_
                                           _%$%g209500210089%_))))
                                  (_%$%g209497210086%_ _%$%g209500210089%_))))
                           (_%$%g209495210281%_
                            (lambda (_%$%g209500210135%_)
                              (if (gx#stx-pair? _%$%g209500210135%_)
                                  (let ((_%$%e209521210137%_
                                         (gx#stx-e _%$%g209500210135%_)))
                                    (let ((_%$%hd209522210140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209521210137%_)))
                                          (_%$%tl209523210142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209521210137%_))))
                                      (if (gx#identifier? _%$%hd209522210140%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd209522210140%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209523210142%_)
                                                  (let ((_%$%e209524210145%_
                                                         (gx#stx-e
                                                          _%$%tl209523210142%_)))
                                                    (let ((_%$%hd209525210148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209524210145%_)))
                                                          (_%$%tl209526210150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209524210145%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd209525210148%_)
                                                          (let ((_%$%e209527210153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd209525210148%_)))
                    (let ((_%$%hd209528210156%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209527210153%_)))
                          (_%$%tl209529210158%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209527210153%_))))
                      (if (gx#stx-pair? _%$%hd209528210156%_)
                          (let ((_%$%e209530210161%_
                                 (gx#stx-e _%$%hd209528210156%_)))
                            (let ((_%$%hd209531210164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209530210161%_)))
                                  (_%$%tl209532210166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209530210161%_))))
                              (if (gx#stx-pair? _%$%hd209531210164%_)
                                  (let ((_%$%e209533210169%_
                                         (gx#stx-e _%$%hd209531210164%_)))
                                    (let ((_%$%hd209534210172%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209533210169%_)))
                                          (_%$%tl209535210174%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209533210169%_))))
                                      (if (gx#stx-pair? _%$%tl209535210174%_)
                                          (let ((_%$%e209536210177%_
                                                 (gx#stx-e
                                                  _%$%tl209535210174%_)))
                                            (let ((_%$%hd209537210180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e209536210177%_)))
                                                  (_%$%tl209538210182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e209536210177%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl209538210182%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl209532210166%_)
                                                      (let ((_%$%e209539210185%_
                                                             (gx#stx-e
                                                              _%$%tl209532210166%_)))
                                                        (let ((_%$%hd209540210188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e209539210185%_)))
                      (_%$%tl209541210190%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209539210185%_))))
                  (if (gx#stx-pair? _%$%hd209540210188%_)
                      (let ((_%$%e209542210193%_
                             (gx#stx-e _%$%hd209540210188%_)))
                        (let ((_%$%hd209543210196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209542210193%_)))
                              (_%$%tl209544210198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209542210193%_))))
                          (if (gx#identifier? _%$%hd209543210196%_)
                              (if (gx#stx-eq? '%#call _%$%hd209543210196%_)
                                  (if (gx#stx-pair? _%$%tl209544210198%_)
                                      (let ((_%$%e209545210201%_
                                             (gx#stx-e _%$%tl209544210198%_)))
                                        (let ((_%$%hd209546210204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209545210201%_)))
                                              (_%$%tl209547210206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209545210201%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd209546210204%_)
                                              (let ((_%$%e209548210209%_
                                                     (gx#stx-e
                                                      _%$%hd209546210204%_)))
                                                (let ((_%$%hd209549210212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209548210209%_)))
                                                      (_%$%tl209550210214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209548210209%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd209549210212%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd209549210212%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl209550210214%_)
                                                              (let ((_%$%e209551210217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl209550210214%_)))
                        (let ((_%$%hd209552210220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209551210217%_)))
                              (_%$%tl209553210222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209551210217%_))))
                          (if (gx#stx-null? _%$%tl209553210222%_)
                              (if (gx#stx-null? _%$%tl209541210190%_)
                                  (if (gx#stx-null? _%$%tl209529210158%_)
                                      (if (gx#stx-pair? _%$%tl209526210150%_)
                                          (let ((_%$%e209554210225%_
                                                 (gx#stx-e
                                                  _%$%tl209526210150%_)))
                                            (let ((_%$%hd209555210228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e209554210225%_)))
                                                  (_%$%tl209556210230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e209554210225%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl209556210230%_)
                                                  ((lambda (_%$%g209516210233%_
                                                            _%$%g209517210234%_
                                                            _%$%g209518210235%_
                                                            _%$%g209519210236%_
                                                            _%$%g209520210237%_)
                                                     (if (gxc#runtime-identifier=?
                                                          _%$%g209518210235%_
                                                          'gx#syntax-split-splice)
                                                         (let* ((_%id210272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (make-symbol (gensym '__splice)))
                        (_%id210274%_ (gx#core-quote-syntax _%id210272%_))
                        (_%_210276%_ (gx#core-bind-runtime! _%id210274%_))
                        (_%body210278%_
                         (_%xform-e209108%_
                          _%$%g209516210233%_
                          _%kont-id209491%_
                          _%kont-box209492%_
                          _%negation-id209493%_)))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%id210274%_ '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '%#call)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#ref)
                           (cons (gx#datum->syntax
                                  '#f
                                  'gx#syntax-split-splice->vector)
                                 '()))
                     _%$%g209517210234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%$%g209520210237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cons '%#call
                                 (cons '(%#ref ##vector-ref)
                                       (cons (cons '%#ref
                                                   (cons _%id210274%_ '()))
                                             (cons '(%#quote 0) '()))))
                           '()))
               (cons (cons (cons _%$%g209519210236%_ '())
                           (cons (cons '%#call
                                       (cons '(%#ref ##vector-ref)
                                             (cons (cons '%#ref
                                                         (cons _%id210274%_
                                                               '()))
                                                   (cons '(%#quote 1) '()))))
                                 '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%body210278%_ '())))
                                     '()))))
                 (_%$%g209496210132%_ _%$%g209500210135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd209555210228%_
                                                   _%$%tl209547210206%_
                                                   _%$%hd209552210220%_
                                                   _%$%hd209537210180%_
                                                   _%$%hd209534210172%_)
                                                  (_%$%g209496210132%_
                                                   _%$%g209500210135%_))))
                                          (_%$%g209496210132%_
                                           _%$%g209500210135%_))
                                      (_%$%g209496210132%_
                                       _%$%g209500210135%_))
                                  (_%$%g209496210132%_ _%$%g209500210135%_))
                              (_%$%g209496210132%_ _%$%g209500210135%_))))
                      (_%$%g209496210132%_ _%$%g209500210135%_))
                  (_%$%g209496210132%_ _%$%g209500210135%_))
              (_%$%g209496210132%_ _%$%g209500210135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209496210132%_
                                               _%$%g209500210135%_))))
                                      (_%$%g209496210132%_
                                       _%$%g209500210135%_))
                                  (_%$%g209496210132%_ _%$%g209500210135%_))
                              (_%$%g209496210132%_ _%$%g209500210135%_))))
                      (_%$%g209496210132%_ _%$%g209500210135%_))))
              (_%$%g209496210132%_ _%$%g209500210135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209496210132%_
                                                   _%$%g209500210135%_))))
                                          (_%$%g209496210132%_
                                           _%$%g209500210135%_))))
                                  (_%$%g209496210132%_ _%$%g209500210135%_))))
                          (_%$%g209496210132%_ _%$%g209500210135%_))))
                  (_%$%g209496210132%_ _%$%g209500210135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209496210132%_
                                                   _%$%g209500210135%_))
                                              (_%$%g209496210132%_
                                               _%$%g209500210135%_))
                                          (_%$%g209496210132%_
                                           _%$%g209500210135%_))))
                                  (_%$%g209496210132%_ _%$%g209500210135%_))))
                           (_%$%g209494210339%_
                            (lambda (_%$%g209500210284%_)
                              (if (gx#stx-pair? _%$%g209500210284%_)
                                  (let ((_%$%e209504210286%_
                                         (gx#stx-e _%$%g209500210284%_)))
                                    (let ((_%$%hd209505210289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209504210286%_)))
                                          (_%$%tl209506210291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209504210286%_))))
                                      (if (gx#identifier? _%$%hd209505210289%_)
                                          (if (gx#stx-eq?
                                               '%#if
                                               _%$%hd209505210289%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209506210291%_)
                                                  (let ((_%$%e209507210294%_
                                                         (gx#stx-e
                                                          _%$%tl209506210291%_)))
                                                    (let ((_%$%hd209508210297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209507210294%_)))
                                                          (_%$%tl209509210299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209507210294%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl209509210299%_)
                                                          (let ((_%$%e209510210302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl209509210299%_)))
                    (let ((_%$%hd209511210305%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209510210302%_)))
                          (_%$%tl209512210307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209510210302%_))))
                      (if (gx#stx-pair? _%$%tl209512210307%_)
                          (let ((_%$%e209513210310%_
                                 (gx#stx-e _%$%tl209512210307%_)))
                            (let ((_%$%hd209514210313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209513210310%_)))
                                  (_%$%tl209515210315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209513210310%_))))
                              (if (gx#stx-null? _%$%tl209515210315%_)
                                  ((lambda (_%$%g209501210318%_
                                            _%$%g209502210319%_
                                            _%$%g209503210320%_)
                                     (let ((_%K210337%_
                                            (_%xform-e209108%_
                                             _%$%g209502210319%_
                                             _%kont-id209491%_
                                             _%kont-box209492%_
                                             _%negation-id209493%_)))
                                       (cons '%#if
                                             (cons _%$%g209503210320%_
                                                   (cons _%K210337%_
                                                         (cons _%$%g209501210318%_
                                                               '()))))))
                                   _%$%hd209514210313%_
                                   _%$%hd209511210305%_
                                   _%$%hd209508210297%_)
                                  (_%$%g209495210281%_ _%$%g209500210284%_))))
                          (_%$%g209495210281%_ _%$%g209500210284%_))))
                  (_%$%g209495210281%_ _%$%g209500210284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209495210281%_
                                                   _%$%g209500210284%_))
                                              (_%$%g209495210281%_
                                               _%$%g209500210284%_))
                                          (_%$%g209495210281%_
                                           _%$%g209500210284%_))))
                                  (_%$%g209495210281%_ _%$%g209500210284%_)))))
                      (_%$%g209494210339%_ _%expr209490%_))))
                 (_%xform-loop-e209109%_
                  (lambda (_%expr209318%_
                           _%kont-id209319%_
                           _%kont-box209320%_
                           _%negation-id209321%_)
                    (let* ((_%$%g209323209363%_
                            (lambda (_%$%g209324209360%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g209324209360%_)))
                           (_%$%g209322209487%_
                            (lambda (_%$%g209324209366%_)
                              (if (gx#stx-pair? _%$%g209324209366%_)
                                  (let ((_%$%e209329209368%_
                                         (gx#stx-e _%$%g209324209366%_)))
                                    (let ((_%$%hd209330209371%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209329209368%_)))
                                          (_%$%tl209331209373%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209329209368%_))))
                                      (if (gx#identifier? _%$%hd209330209371%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd209330209371%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl209331209373%_)
                                                  (let ((_%$%e209332209376%_
                                                         (gx#stx-e
                                                          _%$%tl209331209373%_)))
                                                    (let ((_%$%hd209333209379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209332209376%_)))
                                                          (_%$%tl209334209381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209332209376%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%hd209333209379%_)
                                                          (let ((_g219161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%hd209333209379%_ '0)))
                    (begin
                      (let ((_g219162_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g219161_)
                                   (##values-length _g219161_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g219162_ 2)))
                            (error "Context expects 2 values" _g219162_)))
                      (let ((_%$%target209335209384%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219161_ 0)))
                            (_%$%tl209337209386%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219161_ 1))))
                        (if (gx#stx-null? _%$%tl209337209386%_)
                            (letrec ((_%$%loop209338209389%_
                                      (lambda (_%$%hd209336209392%_
                                               _%$%id209342209394%_)
                                        (if (gx#stx-pair? _%$%hd209336209392%_)
                                            (let ((_%$%e209339209396%_
                                                   (gx#stx-e
                                                    _%$%hd209336209392%_)))
                                              (let ((_%$%lp-hd209340209399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209339209396%_)))
                                                    (_%$%lp-tl209341209401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209339209396%_))))
                                                (_%$%loop209338209389%_
                                                 _%$%lp-tl209341209401%_
                                                 (cons _%$%lp-hd209340209399%_
                                                       _%$%id209342209394%_))))
                                            (let ((_%$%id209343209404%_
                                                   (reverse _%$%id209342209394%_)))
                                              (if (gx#stx-pair?
                                                   _%$%tl209334209381%_)
                                                  (let ((_%$%e209344209406%_
                                                         (gx#stx-e
                                                          _%$%tl209334209381%_)))
                                                    (let ((_%$%hd209345209409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209344209406%_)))
                                                          (_%$%tl209346209411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209344209406%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd209345209409%_)
                                                          (let ((_%$%e209347209414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd209345209409%_)))
                    (let ((_%$%hd209348209417%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209347209414%_)))
                          (_%$%tl209349209419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209347209414%_))))
                      (if (gx#identifier? _%$%hd209348209417%_)
                          (if (gx#stx-eq? '%#if _%$%hd209348209417%_)
                              (if (gx#stx-pair? _%$%tl209349209419%_)
                                  (let ((_%$%e209350209422%_
                                         (gx#stx-e _%$%tl209349209419%_)))
                                    (let ((_%$%hd209351209425%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209350209422%_)))
                                          (_%$%tl209352209427%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209350209422%_))))
                                      (if (gx#stx-pair? _%$%tl209352209427%_)
                                          (let ((_%$%e209353209430%_
                                                 (gx#stx-e
                                                  _%$%tl209352209427%_)))
                                            (let ((_%$%hd209354209433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e209353209430%_)))
                                                  (_%$%tl209355209435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e209353209430%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl209355209435%_)
                                                  (let ((_%$%e209356209438%_
                                                         (gx#stx-e
                                                          _%$%tl209355209435%_)))
                                                    (let ((_%$%hd209357209441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209356209438%_)))
                                                          (_%$%tl209358209443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209356209438%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl209358209443%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl209346209411%_)
                                                              ((lambda (_%$%g209325209446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g209326209447%_
                                _%$%g209327209448%_
                                _%$%g209328209449%_)
                         (let ((_%E209478%_
                                (_%xform-e209108%_
                                 _%$%g209325209446%_
                                 _%kont-id209319%_
                                 _%kont-box209320%_
                                 _%negation-id209321%_)))
                           (cons '%#lambda
                                 (cons (foldr (lambda (_%$%g209479209482%_
                                                       _%$%g209480209484%_)
                                                (cons _%$%g209479209482%_
                                                      _%$%g209480209484%_))
                                              '()
                                              _%$%g209328209449%_)
                                       (cons (cons '%#if
                                                   (cons _%$%g209327209448%_
                                                         (cons _%$%g209326209447%_
                                                               (cons _%E209478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _%$%hd209357209441%_
                       _%$%hd209354209433%_
                       _%$%hd209351209425%_
                       _%$%id209343209404%_)
                      (_%$%g209323209363%_ _%$%g209324209366%_))
                  (_%$%g209323209363%_ _%$%g209324209366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209323209363%_
                                                   _%$%g209324209366%_))))
                                          (_%$%g209323209363%_
                                           _%$%g209324209366%_))))
                                  (_%$%g209323209363%_ _%$%g209324209366%_))
                              (_%$%g209323209363%_ _%$%g209324209366%_))
                          (_%$%g209323209363%_ _%$%g209324209366%_))))
                  (_%$%g209323209363%_ _%$%g209324209366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209323209363%_
                                                   _%$%g209324209366%_)))))))
                              (_%$%loop209338209389%_
                               _%$%target209335209384%_
                               '()))
                            (_%$%g209323209363%_ _%$%g209324209366%_)))))
                  (_%$%g209323209363%_ _%$%g209324209366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g209323209363%_
                                                   _%$%g209324209366%_))
                                              (_%$%g209323209363%_
                                               _%$%g209324209366%_))
                                          (_%$%g209323209363%_
                                           _%$%g209324209366%_))))
                                  (_%$%g209323209363%_ _%$%g209324209366%_)))))
                      (_%$%g209322209487%_ _%expr209318%_))))
                 (_%clause-e209110%_
                  (lambda (_%clause-lambda209188%_
                           _%kont-id209189%_
                           _%rest209190%_)
                    (letrec* ((_%kont-box209192%_ (box '#f)))
                      (let* ((_%negation-id209232%_
                              (let* ((_%$%rest209193209203%_ _%rest209190%_)
                                     (_%$%E209196209207%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%rest209193209203%_
                                               '([[clause-id . clause] . _])
                                               'else)
                                        (void)))
                                     (_%$%else209195209211%_
                                      (lambda () _%negation-id209106%_))
                                     (_%$%K209197209217%_
                                      (lambda (_%clause209214%_
                                               _%clause-id209215%_)
                                        _%clause-id209215%_)))
                                (if (pair? _%$%rest209193209203%_)
                                    (let ((_%$%hd209198209220%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest209193209203%_))))
                                      (if (pair? _%$%hd209198209220%_)
                                          (let ((_%$%hd209200209223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd209198209220%_)))
                                                (_%$%tl209201209225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd209198209220%_))))
                                            (let* ((_%clause-id209228%_
                                                    _%$%hd209200209223%_)
                                                   (_%clause209230%_
                                                    _%$%tl209201209225%_))
                                              (_%$%K209197209217%_
                                               _%clause209230%_
                                               _%clause-id209228%_)))
                                          (_%$%else209195209211%_)))
                                    (_%$%else209195209211%_))))
                             (_%$%g209234209254%_
                              (lambda (_%$%g209235209251%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g209235209251%_)))
                             (_%$%g209233209315%_
                              (lambda (_%$%g209235209257%_)
                                (if (gx#stx-pair? _%$%g209235209257%_)
                                    (let ((_%$%e209238209259%_
                                           (gx#stx-e _%$%g209235209257%_)))
                                      (let ((_%$%hd209239209262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e209238209259%_)))
                                            (_%$%tl209240209264%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e209238209259%_))))
                                        (if (gx#identifier?
                                             _%$%hd209239209262%_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _%$%hd209239209262%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl209240209264%_)
                                                    (let ((_%$%e209241209267%_
                                                           (gx#stx-e
                                                            _%$%tl209240209264%_)))
                                                      (let ((_%$%hd209242209270%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e209241209267%_)))
                    (_%$%tl209243209272%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e209241209267%_))))
                (if (gx#stx-pair? _%$%hd209242209270%_)
                    (let ((_%$%e209244209275%_
                           (gx#stx-e _%$%hd209242209270%_)))
                      (let ((_%$%hd209245209278%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209244209275%_)))
                            (_%$%tl209246209280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209244209275%_))))
                        (if (gx#stx-null? _%$%tl209246209280%_)
                            (if (gx#stx-pair? _%$%tl209243209272%_)
                                (let ((_%$%e209247209283%_
                                       (gx#stx-e _%$%tl209243209272%_)))
                                  (let ((_%$%hd209248209286%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209247209283%_)))
                                        (_%$%tl209249209288%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209247209283%_))))
                                    (if (gx#stx-null? _%$%tl209249209288%_)
                                        ((lambda (_%$%g209236209291%_
                                                  _%$%g209237209292%_)
                                           (let ((_%body209313%_
                                                  (_%xform-e209108%_
                                                   _%$%g209236209291%_
                                                   _%kont-id209189%_
                                                   _%kont-box209192%_
                                                   _%negation-id209232%_)))
                                             (values (cons '%#lambda
                                                           (cons (cons _%$%g209237209292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%body209313%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox _%kont-box209192%_))))
                                         _%$%hd209248209286%_
                                         _%$%hd209245209278%_)
                                        (_%$%g209234209254%_
                                         _%$%g209235209257%_))))
                                (_%$%g209234209254%_ _%$%g209235209257%_))
                            (_%$%g209234209254%_ _%$%g209235209257%_))))
                    (_%$%g209234209254%_ _%$%g209235209257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g209234209254%_
                                                     _%$%g209235209257%_))
                                                (_%$%g209234209254%_
                                                 _%$%g209235209257%_))
                                            (_%$%g209234209254%_
                                             _%$%g209235209257%_))))
                                    (_%$%g209234209254%_
                                     _%$%g209235209257%_)))))
                        (_%$%g209233209315%_ _%clause-lambda209188%_))))))
          (let _%lp209112%_ ((_%rest209114%_ _%clauses209105%_)
                             (_%clauses209115%_ '())
                             (_%konts209116%_ '()))
            (let* ((_%$%rest209117209125%_ _%rest209114%_)
                   (_%$%E209120209129%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest209117209125%_
                             '([clause . rest])
                             'else)
                      (void)))
                   (_%$%else209119209133%_
                    (lambda ()
                      (values (reverse _%clauses209115%_)
                              (reverse _%konts209116%_))))
                   (_%$%K209121209176%_
                    (lambda (_%rest209136%_ _%clause209137%_)
                      (let* ((_%$%clause209138209145%_ _%clause209137%_)
                             (_%$%E209140209148%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%clause209138209145%_
                                       '([clause-id . clause-lambda]))
                                (void)))
                             (_%$%K209141209164%_
                              (lambda (_%clause-lambda209151%_
                                       _%clause-id209152%_)
                                (let* ((_%id209154%_
                                        (make-symbol (gensym '__kont)))
                                       (_%id209156%_
                                        (gx#core-quote-syntax _%id209154%_))
                                       (_%_209158%_
                                        (gx#core-bind-runtime! _%id209156%_))
                                       (_g219163_
                                        (_%clause-e209110%_
                                         _%clause-lambda209151%_
                                         _%id209156%_
                                         _%rest209136%_)))
                                  (begin
                                    (let ((_g219164_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g219163_)
                                                 (##values-length _g219163_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g219164_ 2)))
                                          (error "Context expects 2 values"
                                                 _g219164_)))
                                    (let ((_%clause-lambda209160%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g219163_ 0)))
                                          (_%kont209161%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g219163_ 1))))
                                      (_%lp209112%_
                                       _%rest209136%_
                                       (cons (cons _%clause-id209152%_
                                                   _%clause-lambda209160%_)
                                             _%clauses209115%_)
                                       (cons (cons _%id209156%_ _%kont209161%_)
                                             _%konts209116%_))))))))
                        (if (pair? _%$%clause209138209145%_)
                            (let ((_%$%hd209142209167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%clause209138209145%_)))
                                  (_%$%tl209143209169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%clause209138209145%_))))
                              (let* ((_%clause-id209172%_ _%$%hd209142209167%_)
                                     (_%clause-lambda209174%_
                                      _%$%tl209143209169%_))
                                (_%$%K209141209164%_
                                 _%clause-lambda209174%_
                                 _%clause-id209172%_)))
                            (_%$%E209140209148%_))))))
              (if (pair? _%$%rest209117209125%_)
                  (let ((_%$%hd209122209179%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest209117209125%_)))
                        (_%$%tl209123209181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest209117209125%_))))
                    (let* ((_%clause209184%_ _%$%hd209122209179%_)
                           (_%rest209186%_ _%$%tl209123209181%_))
                      (_%$%K209121209176%_ _%rest209186%_ _%clause209184%_)))
                  (_%$%else209119209133%_)))))))
    (define gxc#optimize-syntax-case-closure
      (lambda (_%clause208454%_ _%negation208455%_ _%target208456%_)
        (letrec ((_%closure-e208458%_
                  (lambda (_%expr208574%_)
                    (let* ((_%$%g208581208696%_
                            (lambda (_%$%g208582208693%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g208582208693%_)))
                           (_%$%g208580208777%_
                            (lambda (_%$%g208582208699%_)
                              (if (gx#stx-pair? _%$%g208582208699%_)
                                  (let ((_%$%e208671208701%_
                                         (gx#stx-e _%$%g208582208699%_)))
                                    (let ((_%$%hd208672208704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208671208701%_)))
                                          (_%$%tl208673208706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208671208701%_))))
                                      (if (gx#identifier? _%$%hd208672208704%_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _%$%hd208672208704%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208673208706%_)
                                                  (let ((_%$%e208674208709%_
                                                         (gx#stx-e
                                                          _%$%tl208673208706%_)))
                                                    (let ((_%$%hd208675208712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208674208709%_)))
                                                          (_%$%tl208676208714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208674208709%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd208675208712%_)
                                                          (let ((_%$%e208677208717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd208675208712%_)))
                    (let ((_%$%hd208678208720%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208677208717%_)))
                          (_%$%tl208679208722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208677208717%_))))
                      (if (gx#identifier? _%$%hd208678208720%_)
                          (if (gx#stx-eq? '%#ref _%$%hd208678208720%_)
                              (if (gx#stx-pair? _%$%tl208679208722%_)
                                  (let ((_%$%e208680208725%_
                                         (gx#stx-e _%$%tl208679208722%_)))
                                    (let ((_%$%hd208681208728%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208680208725%_)))
                                          (_%$%tl208682208730%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208680208725%_))))
                                      (if (gx#stx-null? _%$%tl208682208730%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl208676208714%_)
                                              (let ((_g219165_
                                                     (gx#syntax-split-splice
                                                      _%$%tl208676208714%_
                                                      '0)))
                                                (begin
                                                  (let ((_g219166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g219165_)
                                                               (##values-length
                                                                _g219165_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g219166_ 2)))
                (error "Context expects 2 values" _g219166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target208683208733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219165_
                                                            0)))
                                                        (_%$%tl208685208735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g219165_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl208685208735%_)
                                                        (letrec ((_%$%loop208686208738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd208684208741%_ _%$%arg208690208743%_)
                            (if (gx#stx-pair? _%$%hd208684208741%_)
                                (let ((_%$%e208687208745%_
                                       (gx#stx-e _%$%hd208684208741%_)))
                                  (let ((_%$%lp-hd208688208748%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208687208745%_)))
                                        (_%$%lp-tl208689208750%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208687208745%_))))
                                    (_%$%loop208686208738%_
                                     _%$%lp-tl208689208750%_
                                     (cons _%$%lp-hd208688208748%_
                                           _%$%arg208690208743%_))))
                                (let ((_%$%arg208691208753%_
                                       (reverse _%$%arg208690208743%_)))
                                  ((lambda (_%$%g208669208755%_
                                            _%$%g208670208756%_)
                                     _%expr208574%_)
                                   _%$%arg208691208753%_
                                   _%$%hd208681208728%_))))))
                  (_%$%loop208686208738%_ _%$%target208683208733%_ '()))
                (_%$%g208581208696%_ _%$%g208582208699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208581208696%_
                                               _%$%g208582208699%_))
                                          (_%$%g208581208696%_
                                           _%$%g208582208699%_))))
                                  (_%$%g208581208696%_ _%$%g208582208699%_))
                              (_%$%g208581208696%_ _%$%g208582208699%_))
                          (_%$%g208581208696%_ _%$%g208582208699%_))))
                  (_%$%g208581208696%_ _%$%g208582208699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208581208696%_
                                                   _%$%g208582208699%_))
                                              (_%$%g208581208696%_
                                               _%$%g208582208699%_))
                                          (_%$%g208581208696%_
                                           _%$%g208582208699%_))))
                                  (_%$%g208581208696%_ _%$%g208582208699%_))))
                           (_%$%g208579208839%_
                            (lambda (_%$%g208582208780%_)
                              (if (gx#stx-pair? _%$%g208582208780%_)
                                  (let ((_%$%e208654208782%_
                                         (gx#stx-e _%$%g208582208780%_)))
                                    (let ((_%$%hd208655208785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208654208782%_)))
                                          (_%$%tl208656208787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208654208782%_))))
                                      (if (gx#identifier? _%$%hd208655208785%_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _%$%hd208655208785%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208656208787%_)
                                                  (let ((_%$%e208657208790%_
                                                         (gx#stx-e
                                                          _%$%tl208656208787%_)))
                                                    (let ((_%$%hd208658208793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208657208790%_)))
                                                          (_%$%tl208659208795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208657208790%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd208658208793%_)
                                                          (let ((_%$%e208660208798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd208658208793%_)))
                    (let ((_%$%hd208661208801%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208660208798%_)))
                          (_%$%tl208662208803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208660208798%_))))
                      (if (gx#identifier? _%$%hd208661208801%_)
                          (if (gx#stx-eq? '%#ref _%$%hd208661208801%_)
                              (if (gx#stx-pair? _%$%tl208662208803%_)
                                  (let ((_%$%e208663208806%_
                                         (gx#stx-e _%$%tl208662208803%_)))
                                    (let ((_%$%hd208664208809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208663208806%_)))
                                          (_%$%tl208665208811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208663208806%_))))
                                      (if (gx#stx-null? _%$%tl208665208811%_)
                                          (if (gx#stx-pair?
                                               _%$%tl208659208795%_)
                                              (let ((_%$%e208666208814%_
                                                     (gx#stx-e
                                                      _%$%tl208659208795%_)))
                                                (let ((_%$%hd208667208817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208666208814%_)))
                                                      (_%$%tl208668208819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208666208814%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl208668208819%_)
                                                      ((lambda (_%$%g208653208822%_)
                                                         (if (gx#free-identifier=?
                                                              _%$%g208653208822%_
                                                              _%negation208455%_)
                                                             (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '%#ref)
                                       (cons _%$%g208653208822%_ '()))
                                 '()))
                     (_%$%g208580208777%_ _%$%g208582208780%_)))
               _%$%hd208664208809%_)
              (_%$%g208580208777%_ _%$%g208582208780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208580208777%_
                                               _%$%g208582208780%_))
                                          (_%$%g208580208777%_
                                           _%$%g208582208780%_))))
                                  (_%$%g208580208777%_ _%$%g208582208780%_))
                              (_%$%g208580208777%_ _%$%g208582208780%_))
                          (_%$%g208580208777%_ _%$%g208582208780%_))))
                  (_%$%g208580208777%_ _%$%g208582208780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208580208777%_
                                                   _%$%g208582208780%_))
                                              (_%$%g208580208777%_
                                               _%$%g208582208780%_))
                                          (_%$%g208580208777%_
                                           _%$%g208582208780%_))))
                                  (_%$%g208580208777%_ _%$%g208582208780%_))))
                           (_%$%g208578208916%_
                            (lambda (_%$%g208582208842%_)
                              (if (gx#stx-pair? _%$%g208582208842%_)
                                  (let ((_%$%e208635208844%_
                                         (gx#stx-e _%$%g208582208842%_)))
                                    (let ((_%$%hd208636208847%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208635208844%_)))
                                          (_%$%tl208637208849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208635208844%_))))
                                      (if (gx#identifier? _%$%hd208636208847%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd208636208847%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208637208849%_)
                                                  (let ((_%$%e208638208852%_
                                                         (gx#stx-e
                                                          _%$%tl208637208849%_)))
                                                    (let ((_%$%hd208639208855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208638208852%_)))
                                                          (_%$%tl208640208857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208638208852%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%hd208639208855%_)
                                                          (let ((_g219167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%hd208639208855%_ '0)))
                    (begin
                      (let ((_g219168_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g219167_)
                                   (##values-length _g219167_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g219168_ 2)))
                            (error "Context expects 2 values" _g219168_)))
                      (let ((_%$%target208641208860%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219167_ 0)))
                            (_%$%tl208643208862%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g219167_ 1))))
                        (if (gx#stx-null? _%$%tl208643208862%_)
                            (letrec ((_%$%loop208644208865%_
                                      (lambda (_%$%hd208642208868%_
                                               _%$%id208648208870%_)
                                        (if (gx#stx-pair? _%$%hd208642208868%_)
                                            (let ((_%$%e208645208872%_
                                                   (gx#stx-e
                                                    _%$%hd208642208868%_)))
                                              (let ((_%$%lp-hd208646208875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208645208872%_)))
                                                    (_%$%lp-tl208647208877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208645208872%_))))
                                                (_%$%loop208644208865%_
                                                 _%$%lp-tl208647208877%_
                                                 (cons _%$%lp-hd208646208875%_
                                                       _%$%id208648208870%_))))
                                            (let ((_%$%id208649208880%_
                                                   (reverse _%$%id208648208870%_)))
                                              (if (gx#stx-pair?
                                                   _%$%tl208640208857%_)
                                                  (let ((_%$%e208650208882%_
                                                         (gx#stx-e
                                                          _%$%tl208640208857%_)))
                                                    (let ((_%$%hd208651208885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208650208882%_)))
                                                          (_%$%tl208652208887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208650208882%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl208652208887%_)
                                                          ((lambda (_%$%g208633208890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g208634208891%_)
                     (cons '%#lambda
                           (cons (foldr (lambda (_%$%g208908208911%_
                                                 _%$%g208909208913%_)
                                          (cons _%$%g208908208911%_
                                                _%$%g208909208913%_))
                                        '()
                                        _%$%g208634208891%_)
                                 (cons (_%closure-e208458%_
                                        _%$%g208633208890%_)
                                       '()))))
                   _%$%hd208651208885%_
                   _%$%id208649208880%_)
                  (_%$%g208579208839%_ _%$%g208582208842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208579208839%_
                                                   _%$%g208582208842%_)))))))
                              (_%$%loop208644208865%_
                               _%$%target208641208860%_
                               '()))
                            (_%$%g208579208839%_ _%$%g208582208842%_)))))
                  (_%$%g208579208839%_ _%$%g208582208842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208579208839%_
                                                   _%$%g208582208842%_))
                                              (_%$%g208579208839%_
                                               _%$%g208582208842%_))
                                          (_%$%g208579208839%_
                                           _%$%g208582208842%_))))
                                  (_%$%g208579208839%_ _%$%g208582208842%_))))
                           (_%$%g208577209002%_
                            (lambda (_%$%g208582208919%_)
                              (if (gx#stx-pair? _%$%g208582208919%_)
                                  (let ((_%$%e208612208921%_
                                         (gx#stx-e _%$%g208582208919%_)))
                                    (let ((_%$%hd208613208924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208612208921%_)))
                                          (_%$%tl208614208926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208612208921%_))))
                                      (if (gx#identifier? _%$%hd208613208924%_)
                                          (if (gx#stx-eq?
                                               '%#letrec-values
                                               _%$%hd208613208924%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208614208926%_)
                                                  (let ((_%$%e208615208929%_
                                                         (gx#stx-e
                                                          _%$%tl208614208926%_)))
                                                    (let ((_%$%hd208616208932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208615208929%_)))
                                                          (_%$%tl208617208934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208615208929%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd208616208932%_)
                                                          (let ((_%$%e208618208937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd208616208932%_)))
                    (let ((_%$%hd208619208940%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208618208937%_)))
                          (_%$%tl208620208942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208618208937%_))))
                      (if (gx#stx-pair? _%$%hd208619208940%_)
                          (let ((_%$%e208621208945%_
                                 (gx#stx-e _%$%hd208619208940%_)))
                            (let ((_%$%hd208622208948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208621208945%_)))
                                  (_%$%tl208623208950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208621208945%_))))
                              (if (gx#stx-pair? _%$%hd208622208948%_)
                                  (let ((_%$%e208624208953%_
                                         (gx#stx-e _%$%hd208622208948%_)))
                                    (let ((_%$%hd208625208956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208624208953%_)))
                                          (_%$%tl208626208958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208624208953%_))))
                                      (if (gx#stx-null? _%$%tl208626208958%_)
                                          (if (gx#stx-pair?
                                               _%$%tl208623208950%_)
                                              (let ((_%$%e208627208961%_
                                                     (gx#stx-e
                                                      _%$%tl208623208950%_)))
                                                (let ((_%$%hd208628208964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208627208961%_)))
                                                      (_%$%tl208629208966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208627208961%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl208629208966%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl208620208942%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl208617208934%_)
                                                              (let ((_%$%e208630208969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl208617208934%_)))
                        (let ((_%$%hd208631208972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208630208969%_)))
                              (_%$%tl208632208974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208630208969%_))))
                          (if (gx#stx-null? _%$%tl208632208974%_)
                              ((lambda (_%$%g208609208977%_
                                        _%$%g208610208978%_
                                        _%$%g208611208979%_)
                                 (cons '%#letrec-values
                                       (cons (cons (cons (cons _%$%g208611208979%_
                                                               '())
                                                         (cons (_%closure-e208458%_
                                                                _%$%g208610208978%_)
                                                               '()))
                                                   '())
                                             (cons _%$%g208609208977%_ '()))))
                               _%$%hd208631208972%_
                               _%$%hd208628208964%_
                               _%$%hd208625208956%_)
                              (_%$%g208578208916%_ _%$%g208582208919%_))))
                      (_%$%g208578208916%_ _%$%g208582208919%_))
                  (_%$%g208578208916%_ _%$%g208582208919%_))
              (_%$%g208578208916%_ _%$%g208582208919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208578208916%_
                                               _%$%g208582208919%_))
                                          (_%$%g208578208916%_
                                           _%$%g208582208919%_))))
                                  (_%$%g208578208916%_ _%$%g208582208919%_))))
                          (_%$%g208578208916%_ _%$%g208582208919%_))))
                  (_%$%g208578208916%_ _%$%g208582208919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208578208916%_
                                                   _%$%g208582208919%_))
                                              (_%$%g208578208916%_
                                               _%$%g208582208919%_))
                                          (_%$%g208578208916%_
                                           _%$%g208582208919%_))))
                                  (_%$%g208578208916%_ _%$%g208582208919%_))))
                           (_%$%g208576209046%_
                            (lambda (_%$%g208582209005%_)
                              (if (gx#stx-pair? _%$%g208582209005%_)
                                  (let ((_%$%e208600209007%_
                                         (gx#stx-e _%$%g208582209005%_)))
                                    (let ((_%$%hd208601209010%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208600209007%_)))
                                          (_%$%tl208602209012%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208600209007%_))))
                                      (if (gx#identifier? _%$%hd208601209010%_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _%$%hd208601209010%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208602209012%_)
                                                  (let ((_%$%e208603209015%_
                                                         (gx#stx-e
                                                          _%$%tl208602209012%_)))
                                                    (let ((_%$%hd208604209018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208603209015%_)))
                                                          (_%$%tl208605209020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208603209015%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl208605209020%_)
                                                          (let ((_%$%e208606209023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl208605209020%_)))
                    (let ((_%$%hd208607209026%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208606209023%_)))
                          (_%$%tl208608209028%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208606209023%_))))
                      (if (gx#stx-null? _%$%tl208608209028%_)
                          ((lambda (_%$%g208598209031%_ _%$%g208599209032%_)
                             (cons '%#let-values
                                   (cons _%$%g208599209032%_
                                         (cons (_%closure-e208458%_
                                                _%$%g208598209031%_)
                                               '()))))
                           _%$%hd208607209026%_
                           _%$%hd208604209018%_)
                          (_%$%g208577209002%_ _%$%g208582209005%_))))
                  (_%$%g208577209002%_ _%$%g208582209005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208577209002%_
                                                   _%$%g208582209005%_))
                                              (_%$%g208577209002%_
                                               _%$%g208582209005%_))
                                          (_%$%g208577209002%_
                                           _%$%g208582209005%_))))
                                  (_%$%g208577209002%_ _%$%g208582209005%_))))
                           (_%$%g208575209102%_
                            (lambda (_%$%g208582209049%_)
                              (if (gx#stx-pair? _%$%g208582209049%_)
                                  (let ((_%$%e208586209051%_
                                         (gx#stx-e _%$%g208582209049%_)))
                                    (let ((_%$%hd208587209054%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208586209051%_)))
                                          (_%$%tl208588209056%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208586209051%_))))
                                      (if (gx#identifier? _%$%hd208587209054%_)
                                          (if (gx#stx-eq?
                                               '%#if
                                               _%$%hd208587209054%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208588209056%_)
                                                  (let ((_%$%e208589209059%_
                                                         (gx#stx-e
                                                          _%$%tl208588209056%_)))
                                                    (let ((_%$%hd208590209062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208589209059%_)))
                                                          (_%$%tl208591209064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208589209059%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl208591209064%_)
                                                          (let ((_%$%e208592209067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl208591209064%_)))
                    (let ((_%$%hd208593209070%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208592209067%_)))
                          (_%$%tl208594209072%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208592209067%_))))
                      (if (gx#stx-pair? _%$%tl208594209072%_)
                          (let ((_%$%e208595209075%_
                                 (gx#stx-e _%$%tl208594209072%_)))
                            (let ((_%$%hd208596209078%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208595209075%_)))
                                  (_%$%tl208597209080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208595209075%_))))
                              (if (gx#stx-null? _%$%tl208597209080%_)
                                  ((lambda (_%$%g208583209083%_
                                            _%$%g208584209084%_
                                            _%$%g208585209085%_)
                                     (cons '%#if
                                           (cons _%$%g208585209085%_
                                                 (cons (_%closure-e208458%_
                                                        _%$%g208584209084%_)
                                                       (cons (_%closure-e208458%_
                                                              _%$%g208583209083%_)
                                                             '())))))
                                   _%$%hd208596209078%_
                                   _%$%hd208593209070%_
                                   _%$%hd208590209062%_)
                                  (_%$%g208576209046%_ _%$%g208582209049%_))))
                          (_%$%g208576209046%_ _%$%g208582209049%_))))
                  (_%$%g208576209046%_ _%$%g208582209049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208576209046%_
                                                   _%$%g208582209049%_))
                                              (_%$%g208576209046%_
                                               _%$%g208582209049%_))
                                          (_%$%g208576209046%_
                                           _%$%g208582209049%_))))
                                  (_%$%g208576209046%_ _%$%g208582209049%_)))))
                      (_%$%g208575209102%_ _%expr208574%_)))))
          (let* ((_%$%clause208459208466%_ _%clause208454%_)
                 (_%$%E208461208469%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%clause208459208466%_
                           '([id . kont]))
                    (void)))
                 (_%$%K208462208562%_
                  (lambda (_%kont208472%_ _%id208473%_)
                    (let* ((_%$%g208475208495%_
                            (lambda (_%$%g208476208492%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g208476208492%_)))
                           (_%$%g208474208559%_
                            (lambda (_%$%g208476208498%_)
                              (if (gx#stx-pair? _%$%g208476208498%_)
                                  (let ((_%$%e208479208500%_
                                         (gx#stx-e _%$%g208476208498%_)))
                                    (let ((_%$%hd208480208503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208479208500%_)))
                                          (_%$%tl208481208505%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208479208500%_))))
                                      (if (gx#identifier? _%$%hd208480208503%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd208480208503%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl208481208505%_)
                                                  (let ((_%$%e208482208508%_
                                                         (gx#stx-e
                                                          _%$%tl208481208505%_)))
                                                    (let ((_%$%hd208483208511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208482208508%_)))
                                                          (_%$%tl208484208513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208482208508%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd208483208511%_)
                                                          (let ((_%$%e208485208516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd208483208511%_)))
                    (let ((_%$%hd208486208519%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208485208516%_)))
                          (_%$%tl208487208521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208485208516%_))))
                      (if (gx#stx-null? _%$%tl208487208521%_)
                          (if (gx#stx-pair? _%$%tl208484208513%_)
                              (let ((_%$%e208488208524%_
                                     (gx#stx-e _%$%tl208484208513%_)))
                                (let ((_%$%hd208489208527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208488208524%_)))
                                      (_%$%tl208490208529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208488208524%_))))
                                  (if (gx#stx-null? _%$%tl208490208529%_)
                                      ((lambda (_%$%g208477208532%_
                                                _%$%g208478208533%_)
                                         (let* ((_%body208554%_
                                                 (gxc#apply-expression-subst
                                                  _%$%g208477208532%_
                                                  'id:
                                                  _%$%g208478208533%_
                                                  'new-id:
                                                  _%target208456%_))
                                                (_%body208556%_
                                                 (if _%negation208455%_
                                                     (_%closure-e208458%_
                                                      _%body208554%_)
                                                     _%body208554%_)))
                                           (gxc#optimizer-declare-type!
                                            (gxc#identifier-symbol
                                             _%id208473%_)
                                            (gxc#make-!lambda '0 '#f)
                                            '#t)
                                           (cons _%id208473%_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _%body208556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd208489208527%_
                                       _%$%hd208486208519%_)
                                      (_%$%g208475208495%_
                                       _%$%g208476208498%_))))
                              (_%$%g208475208495%_ _%$%g208476208498%_))
                          (_%$%g208475208495%_ _%$%g208476208498%_))))
                  (_%$%g208475208495%_ _%$%g208476208498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208475208495%_
                                                   _%$%g208476208498%_))
                                              (_%$%g208475208495%_
                                               _%$%g208476208498%_))
                                          (_%$%g208475208495%_
                                           _%$%g208476208498%_))))
                                  (_%$%g208475208495%_ _%$%g208476208498%_)))))
                      (_%$%g208474208559%_ _%kont208472%_)))))
            (if (pair? _%$%clause208459208466%_)
                (let ((_%$%hd208463208565%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%clause208459208466%_)))
                      (_%$%tl208464208567%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%clause208459208466%_))))
                  (let* ((_%id208570%_ _%$%hd208463208565%_)
                         (_%kont208572%_ _%$%tl208464208567%_))
                    (_%$%K208462208562%_ _%kont208572%_ _%id208570%_)))
                (_%$%E208461208469%_))))))
    (define gxc#push-match-vars-let-values%
      (lambda (_%self208238%_ _%stx208239%_)
        (let* ((_%$%g208241208258%_
                (lambda (_%$%g208242208255%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g208242208255%_)))
               (_%$%g208240208451%_
                (lambda (_%$%g208242208261%_)
                  (if (gx#stx-pair? _%$%g208242208261%_)
                      (let ((_%$%e208245208263%_
                             (gx#stx-e _%$%g208242208261%_)))
                        (let ((_%$%hd208246208266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208245208263%_)))
                              (_%$%tl208247208268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208245208263%_))))
                          (if (gx#stx-pair? _%$%tl208247208268%_)
                              (let ((_%$%e208248208271%_
                                     (gx#stx-e _%$%tl208247208268%_)))
                                (let ((_%$%hd208249208274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208248208271%_)))
                                      (_%$%tl208250208276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208248208271%_))))
                                  (if (gx#stx-pair? _%$%tl208250208276%_)
                                      (let ((_%$%e208251208279%_
                                             (gx#stx-e _%$%tl208250208276%_)))
                                        (let ((_%$%hd208252208282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208251208279%_)))
                                              (_%$%tl208253208284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208251208279%_))))
                                          (if (gx#stx-null?
                                               _%$%tl208253208284%_)
                                              ((lambda (_%$%g208243208287%_
                                                        _%$%g208244208288%_)
                                                 (let _%lp208303%_ ((_%rest208305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g208244208288%_)
                            (_%rebind208306%_ '())
                            (_%vars208307%_ (slot-ref _%self208238%_ 'vars)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest208308208316%_
                                                           _%rest208305%_)
                                                          (_%$%E208311208320%_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%rest208308208316%_
                            '([bind . rest])
                            'else)
                     (void)))
                  (_%$%else208310208327%_
                   (lambda ()
                     (let ((_%sibling208324%_ (struct-copy _%self208238%_)))
                       (slot-set! _%sibling208324%_ 'vars _%vars208307%_)
                       (call-with-parameters
                        (lambda ()
                          (if (null? _%rebind208306%_)
                              (gxc#compile-e
                               _%sibling208324%_
                               _%$%g208243208287%_)
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons (reverse _%rebind208306%_)
                                           (cons (gxc#compile-e
                                                  _%sibling208324%_
                                                  _%$%g208243208287%_)
                                                 '())))
                               _%stx208239%_)))
                        gxc#current-compile-method
                        _%sibling208324%_))))
                  (_%$%K208312208439%_
                   (lambda (_%rest208330%_ _%bind208331%_)
                     (let* ((_%$%g208334208357%_
                             (lambda (_%$%g208335208354%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g208335208354%_)))
                            (_%$%g208333208364%_
                             (lambda (_%$%g208335208360%_)
                               ((lambda ()
                                  (_%lp208303%_
                                   _%rest208330%_
                                   (cons _%bind208331%_ _%rebind208306%_)
                                   _%vars208307%_)))))
                            (_%$%g208332208436%_
                             (lambda (_%$%g208335208367%_)
                               (if (gx#stx-pair? _%$%g208335208367%_)
                                   (let ((_%$%e208338208369%_
                                          (gx#stx-e _%$%g208335208367%_)))
                                     (let ((_%$%hd208339208372%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e208338208369%_)))
                                           (_%$%tl208340208374%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e208338208369%_))))
                                       (if (gx#stx-pair? _%$%hd208339208372%_)
                                           (let ((_%$%e208341208377%_
                                                  (gx#stx-e
                                                   _%$%hd208339208372%_)))
                                             (let ((_%$%hd208342208380%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e208341208377%_)))
                                                   (_%$%tl208343208382%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e208341208377%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl208343208382%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl208340208374%_)
                                                       (let ((_%$%e208344208385%_
                                                              (gx#stx-e
                                                               _%$%tl208340208374%_)))
                                                         (let ((_%$%hd208345208388%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e208344208385%_)))
                       (_%$%tl208346208390%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e208344208385%_))))
                   (if (gx#stx-pair? _%$%hd208345208388%_)
                       (let ((_%$%e208347208393%_
                              (gx#stx-e _%$%hd208345208388%_)))
                         (let ((_%$%hd208348208396%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e208347208393%_)))
                               (_%$%tl208349208398%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e208347208393%_))))
                           (if (gx#identifier? _%$%hd208348208396%_)
                               (if (gx#stx-eq? '%#ref _%$%hd208348208396%_)
                                   (if (gx#stx-pair? _%$%tl208349208398%_)
                                       (let ((_%$%e208350208401%_
                                              (gx#stx-e _%$%tl208349208398%_)))
                                         (let ((_%$%hd208351208404%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e208350208401%_)))
                                               (_%$%tl208352208406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e208350208401%_))))
                                           (if (gx#stx-null?
                                                _%$%tl208352208406%_)
                                               (if (gx#stx-null?
                                                    _%$%tl208346208390%_)
                                                   ((lambda (_%$%g208336208409%_
                                                             _%$%g208337208410%_)
                                                      (_%lp208303%_
                                                       _%rest208330%_
                                                       _%rebind208306%_
                                                       (cons _%bind208331%_
                                                             _%vars208307%_)))
                                                    _%$%hd208351208404%_
                                                    _%$%hd208342208380%_)
                                                   (_%$%g208333208364%_
                                                    _%$%g208335208367%_))
                                               (_%$%g208333208364%_
                                                _%$%g208335208367%_))))
                                       (_%$%g208333208364%_
                                        _%$%g208335208367%_))
                                   (_%$%g208333208364%_ _%$%g208335208367%_))
                               (_%$%g208333208364%_ _%$%g208335208367%_))))
                       (_%$%g208333208364%_ _%$%g208335208367%_))))
               (_%$%g208333208364%_ _%$%g208335208367%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g208333208364%_
                                                    _%$%g208335208367%_))))
                                           (_%$%g208333208364%_
                                            _%$%g208335208367%_))))
                                   (_%$%g208333208364%_
                                    _%$%g208335208367%_)))))
                       (_%$%g208332208436%_ _%bind208331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest208308208316%_)
                                                         (let ((_%$%hd208313208442%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest208308208316%_)))
                       (_%$%tl208314208444%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest208308208316%_))))
                   (let* ((_%bind208447%_ _%$%hd208313208442%_)
                          (_%rest208449%_ _%$%tl208314208444%_))
                     (_%$%K208312208439%_ _%rest208449%_ _%bind208447%_)))
                 (_%$%else208310208327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd208252208282%_
                                               _%$%hd208249208274%_)
                                              (_%$%g208241208258%_
                                               _%$%g208242208261%_))))
                                      (_%$%g208241208258%_
                                       _%$%g208242208261%_))))
                              (_%$%g208241208258%_ _%$%g208242208261%_))))
                      (_%$%g208241208258%_ _%$%g208242208261%_)))))
          (_%$%g208240208451%_ _%stx208239%_))))
    (define gxc#push-match-vars-if%
      (lambda (_%self208154%_ _%stx208155%_)
        (let* ((_%$%g208157208178%_
                (lambda (_%$%g208158208175%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g208158208175%_)))
               (_%$%g208156208235%_
                (lambda (_%$%g208158208181%_)
                  (if (gx#stx-pair? _%$%g208158208181%_)
                      (let ((_%$%e208162208183%_
                             (gx#stx-e _%$%g208158208181%_)))
                        (let ((_%$%hd208163208186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208162208183%_)))
                              (_%$%tl208164208188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208162208183%_))))
                          (if (gx#stx-pair? _%$%tl208164208188%_)
                              (let ((_%$%e208165208191%_
                                     (gx#stx-e _%$%tl208164208188%_)))
                                (let ((_%$%hd208166208194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208165208191%_)))
                                      (_%$%tl208167208196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208165208191%_))))
                                  (if (gx#stx-pair? _%$%tl208167208196%_)
                                      (let ((_%$%e208168208199%_
                                             (gx#stx-e _%$%tl208167208196%_)))
                                        (let ((_%$%hd208169208202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208168208199%_)))
                                              (_%$%tl208170208204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208168208199%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl208170208204%_)
                                              (let ((_%$%e208171208207%_
                                                     (gx#stx-e
                                                      _%$%tl208170208204%_)))
                                                (let ((_%$%hd208172208210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208171208207%_)))
                                                      (_%$%tl208173208212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208171208207%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl208173208212%_)
                                                      ((lambda (_%$%g208159208215%_
                                                                _%$%g208160208216%_
                                                                _%$%g208161208217%_)
                                                         (if (gxc#apply-find-var-refs
                                                              _%$%g208161208217%_
                                                              'ids:
                                                              (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (slot-ref _%self208154%_ 'vars)))
                     (gxc#push-match-vars-stop _%self208154%_ _%stx208155%_)
                     (gxc#xform-wrap-source
                      (cons '%#if
                            (cons _%$%g208161208217%_
                                  (cons (gxc#compile-e
                                         _%self208154%_
                                         _%$%g208160208216%_)
                                        (cons (gxc#compile-e
                                               _%self208154%_
                                               _%$%g208159208215%_)
                                              '()))))
                      _%stx208155%_)))
               _%$%hd208172208210%_
               _%$%hd208169208202%_
               _%$%hd208166208194%_)
              (_%$%g208157208178%_ _%$%g208158208181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208157208178%_
                                               _%$%g208158208181%_))))
                                      (_%$%g208157208178%_
                                       _%$%g208158208181%_))))
                              (_%$%g208157208178%_ _%$%g208158208181%_))))
                      (_%$%g208157208178%_ _%$%g208158208181%_)))))
          (_%$%g208156208235%_ _%stx208155%_))))
    (define gxc#push-match-vars-call%
      (lambda (_%self208076%_ _%stx208077%_)
        (let* ((_%$%g208079208098%_
                (lambda (_%$%g208080208095%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g208080208095%_)))
               (_%$%g208078208151%_
                (lambda (_%$%g208080208101%_)
                  (if (gx#stx-pair? _%$%g208080208101%_)
                      (let ((_%$%e208082208103%_
                             (gx#stx-e _%$%g208080208101%_)))
                        (let ((_%$%hd208083208106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208082208103%_)))
                              (_%$%tl208084208108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208082208103%_))))
                          (if (gx#stx-pair? _%$%tl208084208108%_)
                              (let ((_%$%e208085208111%_
                                     (gx#stx-e _%$%tl208084208108%_)))
                                (let ((_%$%hd208086208114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208085208111%_)))
                                      (_%$%tl208087208116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208085208111%_))))
                                  (if (gx#stx-pair? _%$%hd208086208114%_)
                                      (let ((_%$%e208088208119%_
                                             (gx#stx-e _%$%hd208086208114%_)))
                                        (let ((_%$%hd208089208122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208088208119%_)))
                                              (_%$%tl208090208124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208088208119%_))))
                                          (if (gx#identifier?
                                               _%$%hd208089208122%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd208089208122%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl208090208124%_)
                                                      (let ((_%$%e208091208127%_
                                                             (gx#stx-e
                                                              _%$%tl208090208124%_)))
                                                        (let ((_%$%hd208092208130%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e208091208127%_)))
                      (_%$%tl208093208132%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208091208127%_))))
                  (if (gx#stx-null? _%$%tl208093208132%_)
                      ((lambda (_%$%g208081208135%_)
                         (if (and (gx#free-identifier=?
                                   _%$%g208081208135%_
                                   (slot-ref _%self208076%_ 'K))
                                  (pair? (slot-ref _%self208076%_ 'vars)))
                             (gxc#xform-wrap-source
                              (cons '%#let-values
                                    (cons (reverse (slot-ref
                                                    _%self208076%_
                                                    'vars))
                                          (cons _%stx208077%_ '())))
                              _%stx208077%_)
                             _%stx208077%_))
                       _%$%hd208092208130%_)
                      (_%$%g208079208098%_ _%$%g208080208101%_))))
              (_%$%g208079208098%_ _%$%g208080208101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208079208098%_
                                                   _%$%g208080208101%_))
                                              (_%$%g208079208098%_
                                               _%$%g208080208101%_))))
                                      (_%$%g208079208098%_
                                       _%$%g208080208101%_))))
                              (_%$%g208079208098%_ _%$%g208080208101%_))))
                      (_%$%g208079208098%_ _%$%g208080208101%_)))))
          (_%$%g208078208151%_ _%stx208077%_))))
    (define gxc#push-match-vars-stop
      (lambda (_%self208073%_ _%stx208074%_)
        (if (null? (slot-ref _%self208073%_ 'vars))
            _%stx208074%_
            (gxc#xform-wrap-source
             (cons '%#let-values
                   (cons (reverse (slot-ref _%self208073%_ 'vars))
                         (cons _%stx208074%_ '())))
             _%stx208074%_))))))

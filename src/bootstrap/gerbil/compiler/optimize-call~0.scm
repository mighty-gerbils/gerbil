(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771101416)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp254916 (list gxc#::basic-xform::t))
            (__tmp254915 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp254916
         '()
         __tmp254915
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args254193%_
        (apply make-instance gxc#::optimize-call::t _%$args254193%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp254917
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp254917)))
    (define gxc#apply-optimize-call
      (lambda (_%stx254185%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self254188%_
                (let ((__obj254907
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj254907))
               (__tmp254918
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254188%_ _%stx254185%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254918
           gxc#current-compile-method
           _%self254188%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp254920 (list gxc#::void::t))
            (__tmp254919 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp254920
         '()
         __tmp254919
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args254182%_
        (apply make-instance gxc#::check-return-type::t _%$args254182%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp254921
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp254921)))
    (define gxc#apply-check-return-type
      (lambda (_%stx254174%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self254177%_
                (let ((__obj254909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj254909))
               (__tmp254922
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254177%_ _%stx254174%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254922
           gxc#current-compile-method
           _%self254177%_))))
    (define gxc#optimize-call%
      (lambda (_%self253781%_ _%stx253782%_)
        (let* ((_%__stx254262254263%_ _%stx253782%_)
               (_%g253785253831%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254262254263%_)))))
          (let ((_%__kont254264254265%_
                 (lambda (_%g253787253970%_ _%g253788253971%_)
                   (let* ((_%rator-id253991%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g253788253971%_)))
                          (_%rator-type253993%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id253991%_))))
                     (if (or (not _%rator-type253993%_)
                             (eq? (##structure-ref
                                   _%rator-type253993%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self253781%_ _%stx253782%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type253993%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp254923
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type253993%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id253991%_
                                  '" => "
                                  _%rator-type253993%_
                                  '" "
                                  __tmp254923))
                               (let* ((_%optimized254008%_
                                       (let ((__method254910
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type253993%_
                                                 'optimize-call))))
                                         (if __method254910
                                             (let ((__tmp254924
                                                    (let ((__tmp254925
                                                           (lambda (_%g254000254003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g254001254005%_)
                     (cons _%g254000254003%_ _%g254001254005%_))))
              (declare (not safe))
              (foldr__0 __tmp254925 '() _%g253787253970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method254910
                                                _%rator-type253993%_
                                                _%self253781%_
                                                _%stx253782%_
                                                __tmp254924))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type253993%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx254210254211%_
                                       _%optimized254008%_)
                                      (_%g254011254040%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx254210254211%_)))))
                                 (let ((_%__kont254212254213%_
                                        (lambda (_%g254013254106%_
                                                 _%g254014254107%_)
                                          (let* ((_%optimized-rator-id254134%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g254014254107%_)))
                                                 (_%rator-type254139%_
                                                  (let ((_%$e254136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id254134%_))))
                                                    (if _%$e254136%_
                                                        _%$e254136%_
                                                        _%rator-type253993%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type254139%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id254134%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type254139%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type254139%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized254008%_
                                                (let ((__tmp254926
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g254014254107%_ '()))
                           (let ((__tmp254927
                                  (lambda (_%g254147254150%_ _%g254148254152%_)
                                    (cons _%g254147254150%_
                                          _%g254148254152%_))))
                             (declare (not safe))
                             (foldr__0 __tmp254927 '() _%g254013254106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp254926
                                                   _%stx253782%_))))))
                                       (_%__kont254216254217%_
                                        (lambda () _%optimized254008%_)))
                                   (let ((_%__match254259254260%_
                                          (lambda (_%e254015254052%_
                                                   _%hd254016254055%_
                                                   _%tl254017254057%_
                                                   _%e254018254060%_
                                                   _%hd254019254063%_
                                                   _%tl254020254065%_
                                                   _%e254021254068%_
                                                   _%hd254022254071%_
                                                   _%tl254023254073%_
                                                   _%e254024254076%_
                                                   _%hd254025254079%_
                                                   _%tl254026254081%_
                                                   _%__splice254214254215%_
                                                   _%target254027254084%_
                                                   _%tl254029254086%_)
                                            (letrec ((_%loop254030254089%_
                                                      (lambda (_%hd254028254092%_
                                                               _%arg254034254094%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd254028254092%_))
                                                            (let ((_%e254031254096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd254028254092%_))))
                      (let ((_%lp-tl254033254101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254031254096%_)))
                            (_%lp-hd254032254099%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254031254096%_))))
                        (_%loop254030254089%_
                         _%lp-tl254033254101%_
                         (cons _%lp-hd254032254099%_ _%arg254034254094%_))))
                    (let ((_%arg254035254104%_ (reverse _%arg254034254094%_)))
                      (_%__kont254212254213%_
                       _%arg254035254104%_
                       _%hd254025254079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop254030254089%_
                                               _%target254027254084%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx254210254211%_))
                                         (let ((_%e254015254052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx254210254211%_))))
                                           (let ((_%tl254017254057%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254015254052%_)))
                                                 (_%hd254016254055%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254015254052%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd254016254055%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd254016254055%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl254017254057%_))
                                                         (let ((_%e254018254060%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl254017254057%_))))
                   (let ((_%tl254020254065%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254018254060%_)))
                         (_%hd254019254063%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254018254060%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd254019254063%_))
                         (let ((_%e254021254068%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd254019254063%_))))
                           (let ((_%tl254023254073%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254021254068%_)))
                                 (_%hd254022254071%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254021254068%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd254022254071%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd254022254071%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl254023254073%_))
                                         (let ((_%e254024254076%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl254023254073%_))))
                                           (let ((_%tl254026254081%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254024254076%_)))
                                                 (_%hd254025254079%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254024254076%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl254026254081%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl254020254065%_))
                                                     (let ((_%__splice254214254215%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl254020254065%_
                                                               '0))))
                                                       (let ((_%tl254029254086%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice254214254215%_ '1)))
                     (_%target254027254084%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice254214254215%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl254029254086%_))
                     (_%__match254259254260%_
                      _%e254015254052%_
                      _%hd254016254055%_
                      _%tl254017254057%_
                      _%e254018254060%_
                      _%hd254019254063%_
                      _%tl254020254065%_
                      _%e254021254068%_
                      _%hd254022254071%_
                      _%tl254023254073%_
                      _%e254024254076%_
                      _%hd254025254079%_
                      _%tl254026254081%_
                      _%__splice254214254215%_
                      _%target254027254084%_
                      _%tl254029254086%_)
                     (_%__kont254216254217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254216254217%_))
                                                 (_%__kont254216254217%_))))
                                         (_%__kont254216254217%_))
                                     (_%__kont254216254217%_))
                                 (_%__kont254216254217%_))))
                         (_%__kont254216254217%_))))
                 (_%__kont254216254217%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254216254217%_))
                                                 (_%__kont254216254217%_))))
                                         (_%__kont254216254217%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type253993%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type253993%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp254928
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g253788253971%_
                                                                '()))
                                                    (map (lambda (_%g254158254160%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self253781%_
                                                              _%g254158254160%_)))
                                                         (let ((__tmp254929
                                                                (lambda (_%g254162254165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g254163254167%_)
                          (cons _%g254162254165%_ _%g254163254167%_))))
                   (declare (not safe))
                   (foldr__0 __tmp254929 '() _%g253787253970%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp254928
                                    _%stx253782%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx253782%_
                                    _%rator-type253993%_))))))))
                (_%__kont254268254269%_
                 (lambda (_%g253810253874%_ _%g253811253875%_)
                   (let ((_%rator-type253892%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g253811253875%_))))
                     (if (and _%rator-type253892%_
                              (eq? (##structure-ref
                                    _%rator-type253892%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type253892%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type253892%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type253892%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp254930
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self253781%_
                                               _%g253811253875%_))
                                            (map (lambda (_%g253894253896%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self253781%_
                                                      _%g253894253896%_)))
                                                 (let ((__tmp254931
                                                        (lambda (_%g253898253901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g253899253903%_)
                  (cons _%g253898253901%_ _%g253899253903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp254931
                                                    '()
                                                    _%g253810253874%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254930 _%stx253782%_))
                         (if (or (not _%rator-type253892%_)
                                 (let ((__tmp254932
                                        (##structure-ref
                                         _%rator-type253892%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp254932 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self253781%_ _%stx253782%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx253782%_
                                _%rator-type253892%_))))))))
            (let* ((_%__match254329254330%_
                    (lambda (_%e253812253836%_
                             _%hd253813253839%_
                             _%tl253814253841%_
                             _%e253815253844%_
                             _%hd253816253847%_
                             _%tl253817253849%_
                             _%__splice254270254271%_
                             _%target253818253852%_
                             _%tl253820253854%_)
                      (letrec ((_%loop253821253857%_
                                (lambda (_%hd253819253860%_
                                         _%rand253825253862%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253819253860%_))
                                      (let ((_%e253822253864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253819253860%_))))
                                        (let ((_%lp-tl253824253869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253822253864%_)))
                                              (_%lp-hd253823253867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253822253864%_))))
                                          (_%loop253821253857%_
                                           _%lp-tl253824253869%_
                                           (cons _%lp-hd253823253867%_
                                                 _%rand253825253862%_))))
                                      (let ((_%rand253826253872%_
                                             (reverse _%rand253825253862%_)))
                                        (_%__kont254268254269%_
                                         _%rand253826253872%_
                                         _%hd253816253847%_))))))
                        (_%loop253821253857%_ _%target253818253852%_ '()))))
                   (_%__match254309254310%_
                    (lambda (_%e253789253916%_
                             _%hd253790253919%_
                             _%tl253791253921%_
                             _%e253792253924%_
                             _%hd253793253927%_
                             _%tl253794253929%_
                             _%e253795253932%_
                             _%hd253796253935%_
                             _%tl253797253937%_
                             _%e253798253940%_
                             _%hd253799253943%_
                             _%tl253800253945%_
                             _%__splice254266254267%_
                             _%target253801253948%_
                             _%tl253803253950%_)
                      (letrec ((_%loop253804253953%_
                                (lambda (_%hd253802253956%_
                                         _%rand253808253958%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253802253956%_))
                                      (let ((_%e253805253960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253802253956%_))))
                                        (let ((_%lp-tl253807253965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253805253960%_)))
                                              (_%lp-hd253806253963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253805253960%_))))
                                          (_%loop253804253953%_
                                           _%lp-tl253807253965%_
                                           (cons _%lp-hd253806253963%_
                                                 _%rand253808253958%_))))
                                      (let ((_%rand253809253968%_
                                             (reverse _%rand253808253958%_)))
                                        (_%__kont254264254265%_
                                         _%rand253809253968%_
                                         _%hd253799253943%_))))))
                        (_%loop253804253953%_ _%target253801253948%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254262254263%_))
                  (let ((_%e253789253916%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254262254263%_))))
                    (let ((_%tl253791253921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253789253916%_)))
                          (_%hd253790253919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253789253916%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253791253921%_))
                          (let ((_%e253792253924%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253791253921%_))))
                            (let ((_%tl253794253929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253792253924%_)))
                                  (_%hd253793253927%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253792253924%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253793253927%_))
                                  (let ((_%e253795253932%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253793253927%_))))
                                    (let ((_%tl253797253937%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253795253932%_)))
                                          (_%hd253796253935%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253795253932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253796253935%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253796253935%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253797253937%_))
                                                  (let ((_%e253798253940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253797253937%_))))
                                                    (let ((_%tl253800253945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253798253940%_)))
                                                          (_%hd253799253943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253798253940%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253800253945%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl253794253929%_))
                      (let ((_%__splice254266254267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253794253929%_
                                '0))))
                        (let ((_%tl253803253950%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254266254267%_ '1)))
                              (_%target253801253948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254266254267%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253803253950%_))
                              (_%__match254309254310%_
                               _%e253789253916%_
                               _%hd253790253919%_
                               _%tl253791253921%_
                               _%e253792253924%_
                               _%hd253793253927%_
                               _%tl253794253929%_
                               _%e253795253932%_
                               _%hd253796253935%_
                               _%tl253797253937%_
                               _%e253798253940%_
                               _%hd253799253943%_
                               _%tl253800253945%_
                               _%__splice254266254267%_
                               _%target253801253948%_
                               _%tl253803253950%_)
                              (let ()
                                (declare (not safe))
                                (_%g253785253831%_)))))
                      (let () (declare (not safe)) (_%g253785253831%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl253794253929%_))
                      (let ((_%__splice254270254271%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253794253929%_
                                '0))))
                        (let ((_%tl253820253854%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254270254271%_ '1)))
                              (_%target253818253852%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254270254271%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253820253854%_))
                              (_%__match254329254330%_
                               _%e253789253916%_
                               _%hd253790253919%_
                               _%tl253791253921%_
                               _%e253792253924%_
                               _%hd253793253927%_
                               _%tl253794253929%_
                               _%__splice254270254271%_
                               _%target253818253852%_
                               _%tl253820253854%_)
                              (let ()
                                (declare (not safe))
                                (_%g253785253831%_)))))
                      (let () (declare (not safe)) (_%g253785253831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl253794253929%_))
                                                      (let ((_%__splice254270254271%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl253794253929%_
                        '0))))
                (let ((_%tl253820253854%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254270254271%_ '1)))
                      (_%target253818253852%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254270254271%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253820253854%_))
                      (_%__match254329254330%_
                       _%e253789253916%_
                       _%hd253790253919%_
                       _%tl253791253921%_
                       _%e253792253924%_
                       _%hd253793253927%_
                       _%tl253794253929%_
                       _%__splice254270254271%_
                       _%target253818253852%_
                       _%tl253820253854%_)
                      (let () (declare (not safe)) (_%g253785253831%_)))))
              (let () (declare (not safe)) (_%g253785253831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253794253929%_))
                                                  (let ((_%__splice254270254271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253794253929%_
                                                            '0))))
                                                    (let ((_%tl253820253854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254270254271%_
                                                              '1)))
                                                          (_%target253818253852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254270254271%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253820253854%_))
                                                          (_%__match254329254330%_
                                                           _%e253789253916%_
                                                           _%hd253790253919%_
                                                           _%tl253791253921%_
                                                           _%e253792253924%_
                                                           _%hd253793253927%_
                                                           _%tl253794253929%_
                                                           _%__splice254270254271%_
                                                           _%target253818253852%_
                                                           _%tl253820253854%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253785253831%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253785253831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl253794253929%_))
                                              (let ((_%__splice254270254271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl253794253929%_
                                                        '0))))
                                                (let ((_%tl253820253854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254270254271%_
                                                          '1)))
                                                      (_%target253818253852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254270254271%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253820253854%_))
                                                      (_%__match254329254330%_
                                                       _%e253789253916%_
                                                       _%hd253790253919%_
                                                       _%tl253791253921%_
                                                       _%e253792253924%_
                                                       _%hd253793253927%_
                                                       _%tl253794253929%_
                                                       _%__splice254270254271%_
                                                       _%target253818253852%_
                                                       _%tl253820253854%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253785253831%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253785253831%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253794253929%_))
                                      (let ((_%__splice254270254271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253794253929%_
                                                '0))))
                                        (let ((_%tl253820253854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254270254271%_
                                                  '1)))
                                              (_%target253818253852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254270254271%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253820253854%_))
                                              (_%__match254329254330%_
                                               _%e253789253916%_
                                               _%hd253790253919%_
                                               _%tl253791253921%_
                                               _%e253792253924%_
                                               _%hd253793253927%_
                                               _%tl253794253929%_
                                               _%__splice254270254271%_
                                               _%target253818253852%_
                                               _%tl253820253854%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253785253831%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253785253831%_))))))
                          (let () (declare (not safe)) (_%g253785253831%_)))))
                  (let () (declare (not safe)) (_%g253785253831%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self253743%_ _%ctx253744%_ _%stx253745%_ _%args253746%_)
        (let ((_%self253749%_ _%self253743%_))
          (if (let ((__method254911
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self253749%_ 'check-arguments))))
                (if __method254911
                    (let ()
                      (declare (not safe))
                      (__method254911
                       _%self253749%_
                       _%ctx253744%_
                       _%stx253745%_
                       _%args253746%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self253749%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature253759%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253749%_ '2 '#f '#f)))
                     (_%signature253761%_ _%signature253759%_)
                     (_%$e253771%_
                      (if _%signature253761%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253761%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e253771%_
                    ((lambda (_%unchecked253774%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked253774%_))
                           (let ((__tmp254933
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked253774%_
                                                          '()))
                                              (map (lambda (_%g253775253777%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253744%_
                                                        _%g253775253777%_)))
                                                   _%args253746%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp254933
                              _%stx253745%_
                              _%ctx253744%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx253744%_ _%stx253745%_))))
                     _%$e253771%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx253744%_ _%stx253745%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx253744%_ _%stx253745%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass254195 __method-table254196)
        (let ((__check-arguments254197
               (let ((__tmp254934
                      (lambda ()
                        (let ((__method254198
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254196
                                  'check-arguments
                                  '#f))))
                          (if __method254198
                              __method254198
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254934))))
          (lambda (_%self253743%_ _%ctx253744%_ _%stx253745%_ _%args253746%_)
            (let ((_%self253749%_ _%self253743%_))
              (if ((force __check-arguments254197)
                   _%self253749%_
                   _%ctx253744%_
                   _%stx253745%_
                   _%args253746%_)
                  (let* ((_%signature253759%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253749%_
                             '2
                             '#f
                             '#f)))
                         (_%signature253761%_ _%signature253759%_)
                         (_%$e253771%_
                          (if _%signature253761%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature253761%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e253771%_
                        ((lambda (_%unchecked253774%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked253774%_))
                               (let ((__tmp254935
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked253774%_
                                                              '()))
                                                  (map (lambda (_%g253775253777%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx253744%_
                                                            _%g253775253777%_)))
                                                       _%args253746%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp254935
                                  _%stx253745%_
                                  _%ctx253744%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx253744%_
                                  _%stx253745%_))))
                         _%$e253771%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx253744%_ _%stx253745%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx253744%_ _%stx253745%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self253496%_ _%ctx253497%_ _%stx253498%_ _%args253499%_)
        (let* ((_%self253502%_ _%self253496%_)
               (_%signature253511253513%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253502%_ '2 '#f '#f))))
          (if _%signature253511253513%_
              (let* ((_%signature253515%_ _%signature253511253513%_)
                     (_%argument-types253516253518%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature253515%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types253516253518%_
                    (let* ((_%argument-types253520%_
                            _%argument-types253516253518%_)
                           (_%argument-types253525%_
                            (let ((__tmp254936
                                   (lambda (_%t253523%_)
                                     (if _%t253523%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253498%_
                                            _%t253523%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp254936
                               _%argument-types253520%_))))
                      (let _%loop253527%_ ((_%rest-args253529%_ _%args253499%_)
                                           (_%rest-types253530%_
                                            _%argument-types253525%_)
                                           (_%result253531%_ '#t))
                        (let* ((_%rest-args253532253540%_ _%rest-args253529%_)
                               (_%else253534253548%_
                                (lambda () _%result253531%_))
                               (_%K253536253609%_
                                (lambda (_%rest-args253551%_ _%arg253552%_)
                                  (let* ((_%rest-types253553253564%_
                                          _%rest-types253530%_)
                                         (_%E253557253568%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types253553253564%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K253560253597%_
                                           (lambda (_%rest-types253594%_
                                                    _%type253595%_)
                                             (_%loop253527%_
                                              _%rest-args253551%_
                                              _%rest-types253594%_
                                              (if (gxc#check-expression-type!
                                                   _%stx253498%_
                                                   _%arg253552%_
                                                   _%type253595%_)
                                                  _%result253531%_
                                                  '#f))))
                                          (_%K253559253588%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx253498%_
                                                _%argument-types253525%_))))
                                          (_%K253558253578%_
                                           (lambda (_%tail-type253572%_)
                                             (if (let ((__tmp254937
                                                        (lambda (_%g253573253575%_)
                                                          (gxc#check-expression-type!
                                                           _%stx253498%_
                                                           _%g253573253575%_
                                                           _%tail-type253572%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp254937
                                                    _%rest-args253551%_))
                                                 _%result253531%_
                                                 '#f))))
                                      (let ((_%try-match253555253591%_
                                             (lambda ()
                                               (if (null? _%rest-types253553253564%_)
                                                   (_%K253559253588%_)
                                                   (let ((_%tail-type253581%_
                                                          _%rest-types253553253564%_))
                                                     (_%K253558253578%_
                                                      _%tail-type253581%_))))))
                                        (if (pair? _%rest-types253553253564%_)
                                            (let ((_%tl253562253602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types253553253564%_)))
                                                  (_%hd253561253600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types253553253564%_))))
                                              (let ((_%type253605%_
                                                     _%hd253561253600%_)
                                                    (_%rest-types253607%_
                                                     _%tl253562253602%_))
                                                (_%K253560253597%_
                                                 _%rest-types253607%_
                                                 _%type253605%_)))
                                            (_%try-match253555253591%_))))))))
                          (if (pair? _%rest-args253532253540%_)
                              (let ((_%hd253537253612%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args253532253540%_)))
                                    (_%tl253538253614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args253532253540%_))))
                                (let* ((_%arg253617%_ _%hd253537253612%_)
                                       (_%rest-args253619%_
                                        _%tl253538253614%_))
                                  (_%K253536253609%_
                                   _%rest-args253619%_
                                   _%arg253617%_)))
                              (_%else253534253548%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self253307%_ _%ctx253308%_ _%stx253309%_ _%args253310%_)
        (let* ((_%self253313%_ _%self253307%_)
               (_%g253323253333%_
                (lambda (_%g253324253330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253324253330%_))))
               (_%g253322253371%_
                (lambda (_%g253324253336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253324253336%_))
                      (let ((_%e253326253338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253324253336%_))))
                        (let ((_%hd253327253341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253326253338%_)))
                              (_%tl253328253343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253326253338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253328253343%_))
                              ((lambda (_%g253325253346%_)
                                 (let* ((_%klass253358%_
                                         (let ((__tmp254938
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253313%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253309%_
                                            __tmp254938)))
                                        (_%object253360%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253308%_
                                            _%g253325253346%_)))
                                        (_%instance?253365%_
                                         (let ((_%$e253362%_
                                                (gxc#expression-type?
                                                 _%object253360%_
                                                 _%klass253358%_)))
                                           (if _%$e253362%_
                                               _%$e253362%_
                                               (gxc#expression-type?
                                                _%g253325253346%_
                                                _%klass253358%_)))))
                                   (if _%instance?253365%_
                                       (let ((__tmp254939
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253360%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253325253346%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253360%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254939
                                          _%stx253309%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx253308%_
                                          _%stx253309%_)))))
                               _%hd253327253341%_)
                              (_%g253323253333%_ _%g253324253336%_))))
                      (_%g253323253333%_ _%g253324253336%_)))))
          (_%g253322253371%_ _%args253310%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self253103%_ _%ctx253104%_ _%stx253105%_ _%args253106%_)
        (let* ((_%self253109%_ _%self253103%_)
               (_%g253119253129%_
                (lambda (_%g253120253126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253120253126%_))))
               (_%g253118253182%_
                (lambda (_%g253120253132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253120253132%_))
                      (let ((_%e253122253134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253120253132%_))))
                        (let ((_%hd253123253137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253122253134%_)))
                              (_%tl253124253139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253122253134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253124253139%_))
                              ((lambda (_%g253121253142%_)
                                 (let* ((_%klass253154%_
                                         (let ((__tmp254940
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253109%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253105%_
                                            __tmp254940)))
                                        (_%object253156%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253104%_
                                            _%g253121253142%_)))
                                        (_%instance?253161%_
                                         (let ((_%$e253158%_
                                                (gxc#expression-type?
                                                 _%object253156%_
                                                 _%klass253154%_)))
                                           (if _%$e253158%_
                                               _%$e253158%_
                                               (gxc#expression-type?
                                                _%g253121253142%_
                                                _%klass253154%_))))
                                        (_%klass253164%_ _%klass253154%_))
                                   (if _%instance?253161%_
                                       (let ((__tmp254941
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253156%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253121253142%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253156%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254941
                                          _%stx253105%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253164%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254942
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass253164%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object253156%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254942
                                              _%stx253105%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253164%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254943
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass253164%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object253156%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254943
                                                  _%stx253105%_))
                                               (let ((__tmp254944
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253109%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object253156%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254944
                                                  _%stx253105%_)))))))
                               _%hd253123253137%_)
                              (_%g253119253129%_ _%g253120253132%_))))
                      (_%g253119253129%_ _%g253120253132%_)))))
          (_%g253118253182%_ _%args253106%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx252771%_)
        (let* ((_%__stx254339254340%_ _%stx252771%_)
               (_%g252776252817%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254339254340%_)))))
          (let ((_%__kont254341254342%_ (lambda () '#t))
                (_%__kont254343254344%_ (lambda () '#t))
                (_%__kont254345254346%_
                 (lambda (_%g252790252883%_ _%g252791252884%_)
                   (let ((_%rator-type252905252907%_
                          (let ((__tmp254945
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g252791252884%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp254945))))
                     (if _%rator-type252905252907%_
                         (let* ((_%rator-type252909%_
                                 _%rator-type252905252907%_)
                                (_%rator-signature252910252912%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type252909%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type252909%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature252910252912%_
                               (let* ((_%rator-signature252914%_
                                       _%rator-signature252910252912%_)
                                      (_%rator-effect252915252917%_
                                       (if _%rator-signature252914%_
                                           (##direct-structure-ref
                                            _%rator-signature252914%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect252915252917%_
                                     (let ((_%rator-effect252919%_
                                            _%rator-effect252915252917%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect252919%_)
                                               (equal? '(alloc)
                                                       _%rator-effect252919%_))
                                           (let ((__tmp254946
                                                  (let ((__tmp254947
                                                         (lambda (_%g252924252927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g252925252929%_)
                   (cons _%g252924252927%_ _%g252925252929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp254947
                                                     '()
                                                     _%g252790252883%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp254946))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont254349254350%_ (lambda () '#f)))
            (let ((_%__match254428254429%_
                   (lambda (_%e252792252829%_
                            _%hd252793252832%_
                            _%tl252794252834%_
                            _%e252795252837%_
                            _%hd252796252840%_
                            _%tl252797252842%_
                            _%e252798252845%_
                            _%hd252799252848%_
                            _%tl252800252850%_
                            _%e252801252853%_
                            _%hd252802252856%_
                            _%tl252803252858%_
                            _%__splice254347254348%_
                            _%target252804252861%_
                            _%tl252806252863%_)
                     (letrec ((_%loop252807252866%_
                               (lambda (_%hd252805252869%_
                                        _%rand252811252871%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252805252869%_))
                                     (let ((_%e252808252873%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252805252869%_))))
                                       (let ((_%lp-tl252810252878%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252808252873%_)))
                                             (_%lp-hd252809252876%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252808252873%_))))
                                         (_%loop252807252866%_
                                          _%lp-tl252810252878%_
                                          (cons _%lp-hd252809252876%_
                                                _%rand252811252871%_))))
                                     (let ((_%rand252812252881%_
                                            (reverse _%rand252811252871%_)))
                                       (_%__kont254345254346%_
                                        _%rand252812252881%_
                                        _%hd252802252856%_))))))
                       (_%loop252807252866%_ _%target252804252861%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254339254340%_))
                  (let ((_%e252778252960%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254339254340%_))))
                    (let ((_%tl252780252965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252778252960%_)))
                          (_%hd252779252963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252778252960%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252779252963%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd252779252963%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252780252965%_))
                                  (let ((_%e252781252968%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252780252965%_))))
                                    (let ((_%tl252783252973%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252781252968%_)))
                                          (_%hd252782252971%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252781252968%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252783252973%_))
                                          (_%__kont254341254342%_)
                                          (_%__kont254349254350%_))))
                                  (_%__kont254349254350%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd252779252963%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252780252965%_))
                                      (let ((_%e252787252945%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252780252965%_))))
                                        (let ((_%tl252789252950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252787252945%_)))
                                              (_%hd252788252948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252787252945%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252789252950%_))
                                              (_%__kont254343254344%_)
                                              (_%__kont254349254350%_))))
                                      (_%__kont254349254350%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd252779252963%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl252780252965%_))
                                          (let ((_%e252795252837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl252780252965%_))))
                                            (let ((_%tl252797252842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252795252837%_)))
                                                  (_%hd252796252840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252795252837%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd252796252840%_))
                                                  (let ((_%e252798252845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd252796252840%_))))
                                                    (let ((_%tl252800252850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252798252845%_)))
                                                          (_%hd252799252848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252798252845%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd252799252848%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd252799252848%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252800252850%_))
                          (let ((_%e252801252853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252800252850%_))))
                            (let ((_%tl252803252858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252801252853%_)))
                                  (_%hd252802252856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252801252853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252803252858%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252797252842%_))
                                      (let ((_%__splice254347254348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252797252842%_
                                                '0))))
                                        (let ((_%tl252806252863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254347254348%_
                                                  '1)))
                                              (_%target252804252861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254347254348%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252806252863%_))
                                              (_%__match254428254429%_
                                               _%e252778252960%_
                                               _%hd252779252963%_
                                               _%tl252780252965%_
                                               _%e252795252837%_
                                               _%hd252796252840%_
                                               _%tl252797252842%_
                                               _%e252798252845%_
                                               _%hd252799252848%_
                                               _%tl252800252850%_
                                               _%e252801252853%_
                                               _%hd252802252856%_
                                               _%tl252803252858%_
                                               _%__splice254347254348%_
                                               _%target252804252861%_
                                               _%tl252806252863%_)
                                              (_%__kont254349254350%_))))
                                      (_%__kont254349254350%_))
                                  (_%__kont254349254350%_))))
                          (_%__kont254349254350%_))
                      (_%__kont254349254350%_))
                  (_%__kont254349254350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254349254350%_))))
                                          (_%__kont254349254350%_))
                                      (_%__kont254349254350%_))))
                          (_%__kont254349254350%_))))
                  (_%__kont254349254350%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx252766%_ _%klass252767%_)
        (let ((_%expr-type252769%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx252766%_))))
          (if _%expr-type252769%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type252769%_ _%klass252767%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx252744%_ _%expr252745%_ _%type252746%_)
        (if (not _%type252746%_)
            '#f
            (let ((_%$e252749%_
                   (eq? (##structure-ref _%type252746%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e252749%_
                  _%$e252749%_
                  (let ((_%expr-type252753%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr252745%_))))
                    (if (not _%expr-type252753%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type252753%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e252757%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type252753%_
                                      'gxc#!abort::t))))
                              (if _%$e252757%_
                                  _%$e252757%_
                                  (let ((_%$e252760%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type252753%_
                                            _%type252746%_))))
                                    (if _%$e252760%_
                                        _%$e252760%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type252746%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type252746%_
                                                   _%expr-type252753%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx252744%_
                                                   _%expr252745%_
                                                   _%expr-type252753%_
                                                   _%type252746%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self252558%_ _%ctx252559%_ _%stx252560%_ _%args252561%_)
        (let* ((_%self252564%_ _%self252558%_)
               (_%klass252574%_
                (let ((__tmp254948
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252564%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx252560%_ __tmp254948)))
               (_%fields252576%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252574%_
                           '5
                           '#f
                           '#f))))
               (_%args252582%_
                (map (lambda (_%g252577252579%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx252559%_ _%g252577252579%_)))
                     _%args252561%_))
               (_%inline-make-object252584%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self252564%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252564%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields252576%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass252587%_ _%klass252574%_)
               (_%$e252601%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass252587%_ '6 '#f '#f))))
          (if _%$e252601%_
              ((lambda (_%ctor252604%_)
                 (let ((_%$obj252606%_
                        (let ((__tmp254949
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp254949)))
                       (_%ctor-impl252607%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass252587%_
                           _%ctor252604%_))))
                   (let ((__tmp254950
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252606%_ '())
                                                  (cons _%inline-make-object252584%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl252607%_
                                                            (let ((__tmp254951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl252607%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj252606%_ '()))
                                             _%args252582%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp254951
                       _%stx252560%_
                       _%ctx252559%_))
                    (let ((_%$ctor252609%_
                           (let ((__tmp254952
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254952))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor252609%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252564%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj252606%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor252604%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor252609%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor252609%_ '()))
                              (cons (cons '%#ref (cons _%$obj252606%_ '()))
                                    _%args252582%_)))
                  (cons (cons '%#call
                              (cons (cons '%#ref (cons 'error '()))
                                    (cons (cons '%#quote
                                                (cons '"missing constructor method implementation"
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons 'class: '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252564%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor252604%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj252606%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp254950 _%stx252560%_))))
               _%$e252601%_)
              (let ((_%$e252611%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass252587%_
                        '10
                        '#f
                        '#f))))
                (if _%$e252611%_
                    ((lambda (_%metaclass252614%_)
                       (let* ((_%$obj252616%_
                               (let ((__tmp254953
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254953)))
                              (_%metakons252618%_
                               (let ((__tmp254954
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx252560%_
                                         _%metaclass252614%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp254954
                                  'instance-init!)))
                              (__tmp254955
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj252616%_
                                                             '())
                                                       (cons _%inline-make-object252584%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons252618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp254956
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons252618%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252564%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args252582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp254956
                            _%stx252560%_
                            _%ctx252559%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252564%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj252616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args252582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj252616%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp254955 _%stx252560%_)))
                     _%$e252611%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252587%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp254957
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args252582%_))))
                              (declare (not safe))
                              (##fx= __tmp254957 _%fields252576%_))
                            (let ((__tmp254958
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self252564%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252564%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args252582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp254958
                               _%stx252560%_))
                            (let ((__tmp254960
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self252564%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp254959
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass252587%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx252560%_
                               __tmp254960
                               __tmp254959)))
                        (let ((_%$obj252623%_
                               (let ((__tmp254961
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254961))))
                          (let _%lp252625%_ ((_%rest252627%_ _%args252582%_)
                                             (_%initializers252628%_ '()))
                            (let* ((_%__stx254431254432%_ _%rest252627%_)
                                   (_%g252632252653%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx254431254432%_)))))
                              (let ((_%__kont254433254434%_
                                     (lambda (_%g252634252707%_
                                              _%g252635252708%_
                                              _%g252636252709%_)
                                       (let* ((_%slot252736%_
                                               (let ((__tmp254962
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g252636252709%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp254962)))
                                              (_%off252738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass252587%_
                                                  _%slot252736%_))))
                                         (if _%off252738%_
                                             (_%lp252625%_
                                              _%g252634252707%_
                                              (cons (cons _%off252738%_
                                                          _%g252635252708%_)
                                                    _%initializers252628%_))
                                             (let ((__tmp254963
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252564%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx252560%_
                                                __tmp254963
                                                _%slot252736%_))))))
                                    (_%__kont254435254436%_
                                     (lambda ()
                                       (let ((__tmp254964
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252584%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp254967
                                     (cons (cons '%#ref
                                                 (cons _%$obj252623%_ '()))
                                           '()))
                                    (__tmp254965
                                     (let ((__tmp254966
                                            (lambda (_%i252667%_ _%r252668%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252564%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i252667%_) '()))
                              (cons (cons '%#ref (cons _%$obj252623%_ '()))
                                    (cons (cdr _%i252667%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r252668%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp254966
                                        '()
                                        _%initializers252628%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp254967 __tmp254965)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254964
                                          _%stx252560%_))))
                                    (_%__kont254437254438%_
                                     (lambda ()
                                       (let ((__tmp254968
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252584%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args252582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj252623%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254968
                                          _%stx252560%_)))))
                                (let* ((_%g252630252670%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx254431254432%_))
                                              (_%__kont254435254436%_)
                                              (_%__kont254437254438%_))))
                                       (_%__match254468254469%_
                                        (lambda (_%e252637252675%_
                                                 _%hd252638252678%_
                                                 _%tl252639252680%_
                                                 _%e252640252683%_
                                                 _%hd252641252686%_
                                                 _%tl252642252688%_
                                                 _%e252643252691%_
                                                 _%hd252644252694%_
                                                 _%tl252645252696%_
                                                 _%e252646252699%_
                                                 _%hd252647252702%_
                                                 _%tl252648252704%_)
                                          (let ((_%g252634252707%_
                                                 _%tl252648252704%_)
                                                (_%g252635252708%_
                                                 _%hd252647252702%_)
                                                (_%g252636252709%_
                                                 _%hd252644252694%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g252636252709%_))
                                                (_%__kont254433254434%_
                                                 _%g252634252707%_
                                                 _%g252635252708%_
                                                 _%g252636252709%_)
                                                (_%__kont254437254438%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx254431254432%_))
                                      (let ((_%e252637252675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx254431254432%_))))
                                        (let ((_%tl252639252680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252637252675%_)))
                                              (_%hd252638252678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252637252675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd252638252678%_))
                                              (let ((_%e252640252683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252638252678%_))))
                                                (let ((_%tl252642252688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252640252683%_)))
                                                      (_%hd252641252686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252640252683%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd252641252686%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd252641252686%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252642252688%_))
                      (let ((_%e252643252691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252642252688%_))))
                        (let ((_%tl252645252696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252643252691%_)))
                              (_%hd252644252694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252643252691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252645252696%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252639252680%_))
                                  (let ((_%e252646252699%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252639252680%_))))
                                    (let ((_%tl252648252704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252646252699%_)))
                                          (_%hd252647252702%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252646252699%_))))
                                      (_%__match254468254469%_
                                       _%e252637252675%_
                                       _%hd252638252678%_
                                       _%tl252639252680%_
                                       _%e252640252683%_
                                       _%hd252641252686%_
                                       _%tl252642252688%_
                                       _%e252643252691%_
                                       _%hd252644252694%_
                                       _%tl252645252696%_
                                       _%e252646252699%_
                                       _%hd252647252702%_
                                       _%tl252648252704%_)))
                                  (_%__kont254437254438%_))
                              (_%__kont254437254438%_))))
                      (_%__kont254437254438%_))
                  (_%__kont254437254438%_))
              (_%__kont254437254438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254437254438%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252630252670%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self252341%_ _%ctx252342%_ _%stx252343%_ _%args252344%_)
        (let* ((_%self252347%_ _%self252341%_)
               (_%arguments-ok?252357%_
                (let ((__method254912
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252347%_ 'check-arguments))))
                  (if __method254912
                      (let ()
                        (declare (not safe))
                        (__method254912
                         _%self252347%_
                         _%ctx252342%_
                         _%stx252343%_
                         _%args252344%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252347%_
                                 'check-arguments))
                        '#!void))))
               (_%g252359252369%_
                (lambda (_%g252360252366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252360252366%_))))
               (_%g252358252433%_
                (lambda (_%g252360252372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252360252372%_))
                      (let ((_%e252362252374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252360252372%_))))
                        (let ((_%hd252363252377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252362252374%_)))
                              (_%tl252364252379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252362252374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252364252379%_))
                              ((lambda (_%g252361252382%_)
                                 (let* ((_%klass252395%_
                                         (let ((__tmp254969
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252347%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252343%_
                                            __tmp254969)))
                                        (_%field252397%_
                                         (let ((__tmp254970
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252347%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass252395%_
                                            __tmp254970)))
                                        (_%object252399%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252342%_
                                            _%g252361252382%_)))
                                        (_%klass252402%_ _%klass252395%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass252402%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp254971
                                              (cons (if (or _%arguments-ok?252357%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252347%_
                            '4
                            '#f
                            '#f))))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252347%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field252397%_ '()))
                        (cons _%object252399%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254971
                                          _%stx252343%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252402%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp254972
                                                  (cons (if (or _%arguments-ok?252357%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252347%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252347%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252397%_ '()))
                            (cons _%object252399%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254972
                                              _%stx252343%_))
                                           (let ((_%$e252421%_
                                                  (let ((__tmp254973
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252347%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass252402%_
                                                     __tmp254973))))
                                             (if _%$e252421%_
                                                 ((lambda (_%klass252424%_)
                                                    (let ((__tmp254974
                                                           (cons (if (or _%arguments-ok?252357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252347%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252347%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field252397%_ '()))
                                     (cons _%object252399%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp254974 _%stx252343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e252421%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self252347%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp254975
                                                            (let ((_%$obj252430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp254976
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254976))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj252430%_ '())
                                              (cons _%object252399%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass252402%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj252430%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252347%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252397%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252430%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?252357%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252430%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252347%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'class-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self252347%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj252430%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252347%_
                                 '3
                                 '#f
                                 '#f))
                              '()))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp254975 _%stx252343%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp254977
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object252399%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252347%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp254977 _%stx252343%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd252363252377%_)
                              (_%g252359252369%_ _%g252360252372%_))))
                      (_%g252359252369%_ _%g252360252372%_)))))
          (_%g252358252433%_ _%args252344%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass254199 __method-table254200)
        (let ((__check-arguments254201
               (let ((__tmp254978
                      (lambda ()
                        (let ((__method254202
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254200
                                  'check-arguments
                                  '#f))))
                          (if __method254202
                              __method254202
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254978)))
              (__slot254203
               (let ((__slot254204
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass254199 'slot))))
                 (if __slot254204
                     __slot254204
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self252341%_ _%ctx252342%_ _%stx252343%_ _%args252344%_)
            (let* ((_%self252347%_ _%self252341%_)
                   (_%arguments-ok?252357%_
                    ((force __check-arguments254201)
                     _%self252347%_
                     _%ctx252342%_
                     _%stx252343%_
                     _%args252344%_))
                   (_%g252359252369%_
                    (lambda (_%g252360252366%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252360252366%_))))
                   (_%g252358252433%_
                    (lambda (_%g252360252372%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252360252372%_))
                          (let ((_%e252362252374%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252360252372%_))))
                            (let ((_%hd252363252377%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252362252374%_)))
                                  (_%tl252364252379%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252362252374%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252364252379%_))
                                  ((lambda (_%g252361252382%_)
                                     (let* ((_%klass252395%_
                                             (let ((__tmp254979
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252347%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx252343%_
                                                __tmp254979)))
                                            (_%field252397%_
                                             (let ((__tmp254980
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252347%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass252395%_
                                                __tmp254980)))
                                            (_%object252399%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx252342%_
                                                _%g252361252382%_)))
                                            (_%klass252402%_ _%klass252395%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252402%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254981
                                                  (cons (if (or _%arguments-ok?252357%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252347%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252347%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252397%_ '()))
                            (cons _%object252399%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254981
                                              _%stx252343%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252402%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254982
                                                      (cons (if (or _%arguments-ok?252357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252347%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252347%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252397%_ '()))
                                (cons _%object252399%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254982
                                                  _%stx252343%_))
                                               (let ((_%$e252421%_
                                                      (let ((__tmp254983
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self252347%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass252402%_ __tmp254983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e252421%_
                                                     ((lambda (_%klass252424%_)
                                                        (let ((__tmp254984
                                                               (cons (if (or _%arguments-ok?252357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252347%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self252347%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field252397%_ '()))
                                         (cons _%object252399%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp254984 _%stx252343%_)))
              _%$e252421%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252347%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp254985
                                                                (let ((_%$obj252430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp254986
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254986))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252430%_ '())
                                                  (cons _%object252399%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass252402%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj252430%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252347%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252397%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252430%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?252357%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252430%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252347%_
                               __slot254203
                               '#f
                               '#f))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-slot-ref '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252347%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252347%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp254985 _%stx252343%_))
                 (let ((__tmp254987
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object252399%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252347%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp254987 _%stx252343%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd252363252377%_)
                                  (_%g252359252369%_ _%g252360252372%_))))
                          (_%g252359252369%_ _%g252360252372%_)))))
              (_%g252358252433%_ _%args252344%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self252105%_ _%ctx252106%_ _%stx252107%_ _%args252108%_)
        (let* ((_%self252111%_ _%self252105%_)
               (_%arguments-ok?252121%_
                (let ((__method254913
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252111%_ 'check-arguments))))
                  (if __method254913
                      (let ()
                        (declare (not safe))
                        (__method254913
                         _%self252111%_
                         _%ctx252106%_
                         _%stx252107%_
                         _%args252108%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252111%_
                                 'check-arguments))
                        '#!void))))
               (_%g252123252137%_
                (lambda (_%g252124252134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252124252134%_))))
               (_%g252122252216%_
                (lambda (_%g252124252140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252124252140%_))
                      (let ((_%e252127252142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252124252140%_))))
                        (let ((_%hd252128252145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252127252142%_)))
                              (_%tl252129252147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252127252142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252129252147%_))
                              (let ((_%e252130252150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252129252147%_))))
                                (let ((_%hd252131252153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252130252150%_)))
                                      (_%tl252132252155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252130252150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252132252155%_))
                                      ((lambda (_%g252125252158%_
                                                _%g252126252159%_)
                                         (let* ((_%klass252175%_
                                                 (let ((__tmp254988
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252111%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx252107%_
                                                    __tmp254988)))
                                                (_%field252177%_
                                                 (let ((__tmp254989
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252111%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass252175%_
                                                    __tmp254989)))
                                                (_%object252179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252106%_
                                                    _%g252126252159%_)))
                                                (_%value252181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252106%_
                                                    _%g252125252158%_)))
                                                (_%klass252184%_
                                                 _%klass252175%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252184%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254990
                                                      (cons (if (or _%arguments-ok?252121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252111%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252111%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252177%_ '()))
                                (cons _%object252179%_
                                      (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254990
                                                  _%stx252107%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252184%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp254991
                                                          (cons (if (or _%arguments-ok?252121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252111%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252111%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252177%_ '()))
                                    (cons _%object252179%_
                                          (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp254991
                                                      _%stx252107%_))
                                                   (let ((_%$e252204%_
                                                          (let ((__tmp254992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252111%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass252184%_
                     __tmp254992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e252204%_
                                                         ((lambda (_%klass252207%_)
                                                            (let ((__tmp254993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?252121%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252111%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self252111%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field252177%_ '()))
                                             (cons _%object252179%_
                                                   (cons _%value252181%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254993 _%stx252107%_)))
                  _%$e252204%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self252111%_ '4 '#f '#f))
                     (let ((__tmp254994
                            (let ((_%$obj252213%_
                                   (let ((__tmp254995
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp254995))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj252213%_ '())
                                                      (cons _%object252179%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass252184%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj252213%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252111%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field252177%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252213%_
                                                              '()))
                                                  (cons _%value252181%_
                                                        '())))))
                          (cons (if _%arguments-ok?252121%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self252111%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value252181%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252111%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj252213%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252111%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp254994 _%stx252107%_))
                     (let ((__tmp254996
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object252179%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252111%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value252181%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp254996
                        _%stx252107%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd252131252153%_
                                       _%hd252128252145%_)
                                      (_%g252123252137%_ _%g252124252140%_))))
                              (_%g252123252137%_ _%g252124252140%_))))
                      (_%g252123252137%_ _%g252124252140%_)))))
          (_%g252122252216%_ _%args252108%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass254205 __method-table254206)
        (let ((__check-arguments254207
               (let ((__tmp254997
                      (lambda ()
                        (let ((__method254208
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254206
                                  'check-arguments
                                  '#f))))
                          (if __method254208
                              __method254208
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254997))))
          (lambda (_%self252105%_ _%ctx252106%_ _%stx252107%_ _%args252108%_)
            (let* ((_%self252111%_ _%self252105%_)
                   (_%arguments-ok?252121%_
                    ((force __check-arguments254207)
                     _%self252111%_
                     _%ctx252106%_
                     _%stx252107%_
                     _%args252108%_))
                   (_%g252123252137%_
                    (lambda (_%g252124252134%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252124252134%_))))
                   (_%g252122252216%_
                    (lambda (_%g252124252140%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252124252140%_))
                          (let ((_%e252127252142%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252124252140%_))))
                            (let ((_%hd252128252145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252127252142%_)))
                                  (_%tl252129252147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252127252142%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252129252147%_))
                                  (let ((_%e252130252150%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252129252147%_))))
                                    (let ((_%hd252131252153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252130252150%_)))
                                          (_%tl252132252155%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252130252150%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252132252155%_))
                                          ((lambda (_%g252125252158%_
                                                    _%g252126252159%_)
                                             (let* ((_%klass252175%_
                                                     (let ((__tmp254998
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252111%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx252107%_
                                                        __tmp254998)))
                                                    (_%field252177%_
                                                     (let ((__tmp254999
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252111%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass252175%_
                                                        __tmp254999)))
                                                    (_%object252179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252106%_
                                                        _%g252126252159%_)))
                                                    (_%value252181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252106%_
                                                        _%g252125252158%_)))
                                                    (_%klass252184%_
                                                     _%klass252175%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252184%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255000
                                                          (cons (if (or _%arguments-ok?252121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252111%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252111%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252177%_ '()))
                                    (cons _%object252179%_
                                          (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255000
                                                      _%stx252107%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass252184%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp255001
                                                              (cons (if (or _%arguments-ok?252121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self252111%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252111%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252177%_ '()))
                                        (cons _%object252179%_
                                              (cons _%value252181%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp255001 _%stx252107%_))
               (let ((_%$e252204%_
                      (let ((__tmp255002
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252111%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass252184%_
                         __tmp255002))))
                 (if _%$e252204%_
                     ((lambda (_%klass252207%_)
                        (let ((__tmp255003
                               (cons (if (or _%arguments-ok?252121%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252111%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252111%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field252177%_
                                                             '()))
                                                 (cons _%object252179%_
                                                       (cons _%value252181%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp255003 _%stx252107%_)))
                      _%$e252204%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252111%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp255004
                                (let ((_%$obj252213%_
                                       (let ((__tmp255005
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp255005))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj252213%_
                                                                '())
                                                          (cons _%object252179%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass252184%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252213%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self252111%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field252177%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value252181%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?252121%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj252213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252111%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value252181%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252111%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj252213%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252111%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255004 _%stx252107%_))
                         (let ((__tmp255006
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object252179%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252111%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value252181%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp255006
                            _%stx252107%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd252131252153%_
                                           _%hd252128252145%_)
                                          (_%g252123252137%_
                                           _%g252124252140%_))))
                                  (_%g252123252137%_ _%g252124252140%_))))
                          (_%g252123252137%_ _%g252124252140%_)))))
              (_%g252122252216%_ _%args252108%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self251921%_ _%ctx251922%_ _%stx251923%_ _%args251924%_)
        (let* ((_%self251927%_ _%self251921%_)
               (_%self251936251946%_ _%self251927%_)
               (_%E251938251949%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251936251946%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K251939251959%_
                (lambda (_%inline251952%_ _%dispatch251953%_ _%arity251954%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self251927%_
                         _%args251924%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx251923%_
                         _%arity251954%_)))
                  (if _%inline251952%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp255007 (_%inline251952%_ _%stx251923%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp255007
                           _%stx251923%_
                           _%ctx251922%_)))
                      (if (and _%dispatch251953%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch251953%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch251953%_))
                            (let ((__tmp255008
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch251953%_
                                                           '()))
                                               _%args251924%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp255008
                               _%stx251923%_
                               _%ctx251922%_)))
                          (gxc#!procedure::optimize-call
                           _%self251927%_
                           _%ctx251922%_
                           _%stx251923%_
                           _%args251924%_)))))
               (_%e251940251962%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251936251946%_ '1 '#f '#f)))
               (_%e251941251965%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251936251946%_ '2 '#f '#f)))
               (_%e251942251968%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251936251946%_ '3 '#f '#f)))
               (_%arity251971%_ _%e251942251968%_)
               (_%e251943251973%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251936251946%_ '4 '#f '#f)))
               (_%dispatch251976%_ _%e251943251973%_)
               (_%e251944251978%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251936251946%_ '5 '#f '#f)))
               (_%inline251981%_ _%e251944251978%_))
          (_%K251939251959%_
           _%inline251981%_
           _%dispatch251976%_
           _%arity251971%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self251773%_ _%ctx251774%_ _%stx251775%_ _%args251776%_)
        (let* ((_%self251779%_ _%self251773%_)
               (_%$e251793%_
                (let ((__tmp255010
                       (lambda (_%g251788251790%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g251788251790%_
                            _%args251776%_))))
                      (__tmp255009
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251779%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp255010 __tmp255009))))
          (if _%$e251793%_
              ((lambda (_%clause251796%_)
                 (let ((__method254914
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause251796%_ 'optimize-call))))
                   (if __method254914
                       (let ()
                         (declare (not safe))
                         (__method254914
                          _%clause251796%_
                          _%ctx251774%_
                          _%stx251775%_
                          _%args251776%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause251796%_
                                  'optimize-call))
                         '#!void))))
               _%$e251793%_)
              (let ((__tmp255011
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251779%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx251775%_
                 __tmp255011))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self251514%_ _%ctx251515%_ _%stx251516%_ _%args251517%_)
        (let* ((_%self251520%_ _%self251514%_)
               (_%self251529251538%_ _%self251520%_)
               (_%E251531251541%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251529251538%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K251532251632%_
                (lambda (_%dispatch251544%_ _%table251545%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch251544%_))
                      (let* ((_%g251546251556%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch251544%_)))
                             (_%else251548251564%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch251544%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx251515%_
                                   _%stx251516%_))))
                             (_%K251550251613%_
                              (lambda (_%main251567%_ _%keys251568%_)
                                (let ((_g255012_
                                       (gxc#!kw-lambda-split-args
                                        _%stx251516%_
                                        _%args251517%_)))
                                  (begin
                                    (let ((_g255013_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g255012_)
                                                 (##values-length _g255012_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g255013_ 2)))
                                          (error "Context expects 2 values"
                                                 _g255013_)))
                                    (let ((_%pargs251570%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255012_ 0)))
                                          (_%kwargs251571%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255012_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main251567%_))
                                        (if _%table251545%_
                                            (let ((_%xargs251579%_
                                                   (map (lambda (_%key251573%_)
                                                          (let ((_%$e251575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key251573%_ _%kwargs251571%_))))
                    (if _%$e251575%_ _%$e251575%_ '(%#ref absent-value))))
                _%keys251568%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw251581%_)
                                                 (if (memq (car _%kw251581%_)
                                                           _%keys251568%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx251516%_
                                                        _%keys251568%_
                                                        _%kw251581%_))))
                                               _%kwargs251571%_)
                                              (let ((__tmp255014
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main251567%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs251570%_
                                  _%xargs251579%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp255014
                                                 _%stx251516%_
                                                 _%ctx251515%_)))
                                            (let* ((_%kwt251583%_
                                                    (let ((__tmp255015
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255015)))
                                                   (_%kwvars251587%_
                                                    (map (lambda (_%_251585%_)
                                                           (let ((__tmp255016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp255016)))
                 _%kwargs251571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind251592%_
                                                    (map (lambda (_%kw251589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251590%_)
                   (cons (cons _%kwvar251590%_ '())
                         (cons (cdr _%kw251589%_) '())))
                 _%kwargs251571%_
                 _%kwvars251587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset251597%_
                                                    (map (lambda (_%kw251594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251595%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt251583%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw251594%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar251595%_
                                                             '()))
                                                 '()))))))
                 _%kwargs251571%_
                 _%kwvars251587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs251602%_
                                                    (map (lambda (_%kw251599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251600%_)
                   (cons (car _%kw251599%_)
                         (cons '%#ref (cons _%kwvar251600%_ '()))))
                 _%kwargs251571%_
                 _%kwvars251587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs251610%_
                                                    (map (lambda (_%key251604%_)
                                                           (let ((_%$e251606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key251604%_ _%xkwargs251602%_))))
                     (if _%$e251606%_ _%$e251606%_ '(%#ref absent-value))))
                 _%keys251568%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255017
                                                    (cons '%#let-values
                                                          (cons _%kwbind251592%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt251583%_ '())
                                                      (cons (let ((__tmp255018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs251571%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255018 _%stx251516%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp255019
                                                             (cons (let ((__tmp255020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main251567%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt251583%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs251570%_
                                                       _%xargs251610%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp255020 _%stx251516%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp255019 _%kwset251597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp255017
                                               _%stx251516%_
                                               _%ctx251515%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g251546251556%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e251551251616%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251546251556%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e251552251619%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251546251556%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e251553251622%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251546251556%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys251625%_ _%e251553251622%_)
                                   (_%e251554251627%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251546251556%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main251630%_ _%e251554251627%_))
                              (_%K251550251613%_
                               _%main251630%_
                               _%keys251625%_))
                            (_%else251548251564%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx251515%_ _%stx251516%_)))))
               (_%e251533251635%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251529251538%_ '1 '#f '#f)))
               (_%e251534251638%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251529251538%_ '2 '#f '#f)))
               (_%e251535251641%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251529251538%_ '3 '#f '#f)))
               (_%table251644%_ _%e251535251641%_)
               (_%e251536251646%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251529251538%_ '4 '#f '#f)))
               (_%dispatch251649%_ _%e251536251646%_))
          (_%K251532251632%_ _%dispatch251649%_ _%table251644%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx251127%_ _%args251128%_)
        (let _%lp251130%_ ((_%rest251132%_ _%args251128%_)
                           (_%pargs251133%_ '())
                           (_%kwargs251134%_ '()))
          (let* ((_%__stx254473254474%_ _%rest251132%_)
                 (_%g251140251192%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254473254474%_)))))
            (let ((_%__kont254475254476%_
                   (lambda (_%g251142251371%_ _%g251143251372%_)
                     (_%lp251130%_
                      _%g251142251371%_
                      (cons _%g251143251372%_ _%pargs251133%_)
                      _%kwargs251134%_)))
                  (_%__kont254477254478%_
                   (lambda (_%g251157251317%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g251157251317%_
                                _%pargs251133%_))
                             (reverse _%kwargs251134%_))))
                  (_%__kont254479254480%_
                   (lambda (_%g251168251264%_
                            _%g251169251265%_
                            _%g251170251266%_)
                     (let ((_%kw251283%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g251170251266%_))))
                       (if (assq _%kw251283%_ _%kwargs251134%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx251127%_
                              _%kw251283%_))
                           (_%lp251130%_
                            _%g251168251264%_
                            _%pargs251133%_
                            (cons (cons _%kw251283%_ _%g251169251265%_)
                                  _%kwargs251134%_))))))
                  (_%__kont254481254482%_
                   (lambda (_%g251183251212%_ _%g251184251213%_)
                     (_%lp251130%_
                      _%g251183251212%_
                      (cons _%g251184251213%_ _%pargs251133%_)
                      _%kwargs251134%_)))
                  (_%__kont254483254484%_
                   (lambda ()
                     (values (reverse _%pargs251133%_)
                             (reverse _%kwargs251134%_)))))
              (let ((_%__match254580254581%_
                     (lambda (_%e251171251232%_
                              _%hd251172251235%_
                              _%tl251173251237%_
                              _%e251174251240%_
                              _%hd251175251243%_
                              _%tl251176251245%_
                              _%e251177251248%_
                              _%hd251178251251%_
                              _%tl251179251253%_
                              _%e251180251256%_
                              _%hd251181251259%_
                              _%tl251182251261%_)
                       (let ((_%g251168251264%_ _%tl251182251261%_)
                             (_%g251169251265%_ _%hd251181251259%_)
                             (_%g251170251266%_ _%hd251178251251%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g251170251266%_))
                             (_%__kont254479254480%_
                              _%g251168251264%_
                              _%g251169251265%_
                              _%g251170251266%_)
                             (_%__kont254481254482%_
                              _%tl251173251237%_
                              _%hd251172251235%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254473254474%_))
                    (let ((_%e251144251336%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254473254474%_))))
                      (let ((_%tl251146251341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251144251336%_)))
                            (_%hd251145251339%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251144251336%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd251145251339%_))
                            (let ((_%e251147251344%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd251145251339%_))))
                              (let ((_%tl251149251349%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251147251344%_)))
                                    (_%hd251148251347%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251147251344%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd251148251347%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd251148251347%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251149251349%_))
                                            (let ((_%e251150251352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251149251349%_))))
                                              (let ((_%tl251152251357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251150251352%_)))
                                                    (_%hd251151251355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251150251352%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd251151251355%_))
                                                    (let ((_%e251153251360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd251151251355%_))))
                                                      (if (equal? _%e251153251360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251152251357%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251146251341%_))
                          (let ((_%e251154251363%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251146251341%_))))
                            (let ((_%tl251156251368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251154251363%_)))
                                  (_%hd251155251366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251154251363%_))))
                              (_%__kont254475254476%_
                               _%tl251156251368%_
                               _%hd251155251366%_)))
                          (_%__kont254481254482%_
                           _%tl251146251341%_
                           _%hd251145251339%_))
                      (_%__kont254481254482%_
                       _%tl251146251341%_
                       _%hd251145251339%_))
                  (if (equal? _%e251153251360%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251152251357%_))
                          (_%__kont254477254478%_ _%tl251146251341%_)
                          (_%__kont254481254482%_
                           _%tl251146251341%_
                           _%hd251145251339%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251152251357%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251146251341%_))
                              (let ((_%e251180251256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251146251341%_))))
                                (let ((_%tl251182251261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251180251256%_)))
                                      (_%hd251181251259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251180251256%_))))
                                  (_%__match254580254581%_
                                   _%e251144251336%_
                                   _%hd251145251339%_
                                   _%tl251146251341%_
                                   _%e251147251344%_
                                   _%hd251148251347%_
                                   _%tl251149251349%_
                                   _%e251150251352%_
                                   _%hd251151251355%_
                                   _%tl251152251357%_
                                   _%e251180251256%_
                                   _%hd251181251259%_
                                   _%tl251182251261%_)))
                              (_%__kont254481254482%_
                               _%tl251146251341%_
                               _%hd251145251339%_))
                          (_%__kont254481254482%_
                           _%tl251146251341%_
                           _%hd251145251339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251152251357%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl251146251341%_))
                                                            (let ((_%e251180251256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl251146251341%_))))
                      (let ((_%tl251182251261%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251180251256%_)))
                            (_%hd251181251259%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251180251256%_))))
                        (_%__match254580254581%_
                         _%e251144251336%_
                         _%hd251145251339%_
                         _%tl251146251341%_
                         _%e251147251344%_
                         _%hd251148251347%_
                         _%tl251149251349%_
                         _%e251150251352%_
                         _%hd251151251355%_
                         _%tl251152251357%_
                         _%e251180251256%_
                         _%hd251181251259%_
                         _%tl251182251261%_)))
                    (_%__kont254481254482%_
                     _%tl251146251341%_
                     _%hd251145251339%_))
                (_%__kont254481254482%_
                 _%tl251146251341%_
                 _%hd251145251339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont254481254482%_
                                             _%tl251146251341%_
                                             _%hd251145251339%_))
                                        (_%__kont254481254482%_
                                         _%tl251146251341%_
                                         _%hd251145251339%_))
                                    (_%__kont254481254482%_
                                     _%tl251146251341%_
                                     _%hd251145251339%_))))
                            (_%__kont254481254482%_
                             _%tl251146251341%_
                             _%hd251145251339%_))))
                    (_%__kont254483254484%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self251111%_ _%ctx251112%_ _%stx251113%_ _%args251114%_)
        (let ((_%self251117%_ _%self251111%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx251112%_ _%stx251113%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self250801%_ _%stx250802%_)
        (let* ((_%__stx254589254590%_ _%stx250802%_)
               (_%g250805250845%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254589254590%_)))))
          (let ((_%__kont254591254592%_
                 (lambda (_%g250807250949%_ _%g250808250950%_)
                   (let ((_%$e250977%_
                          (member 'return:
                                  (let ((__tmp255021
                                         (lambda (_%g250969250972%_
                                                  _%g250970250974%_)
                                           (cons _%g250969250972%_
                                                 _%g250970250974%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp255021
                                     '()
                                     _%g250808250950%_))
                                  gx#stx-eq?)))
                     (if _%$e250977%_
                         ((lambda (_%tail250980%_)
                            (let ((_%type250982%_
                                   (let ((__tmp255022
                                          (let ((__tmp255023
                                                 (cadr _%tail250980%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp255023))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx250802%_
                                      __tmp255022))))
                              (gxc#check-return-type!
                               _%stx250802%_
                               _%g250807250949%_
                               _%type250982%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self250801%_
                                 _%g250807250949%_))))
                          _%$e250977%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self250801%_
                            _%g250807250949%_))))))
                (_%__kont254595254596%_
                 (lambda (_%g250830250874%_ _%g250831250875%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self250801%_ _%g250830250874%_)))))
            (let ((_%__match254626254627%_
                   (lambda (_%e250809250895%_
                            _%hd250810250898%_
                            _%tl250811250900%_
                            _%e250812250903%_
                            _%hd250813250906%_
                            _%tl250814250908%_
                            _%e250815250911%_
                            _%hd250816250914%_
                            _%tl250817250916%_
                            _%__splice254593254594%_
                            _%target250818250919%_
                            _%tl250820250921%_)
                     (letrec ((_%loop250821250924%_
                               (lambda (_%hd250819250927%_
                                        _%signature250825250929%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250819250927%_))
                                     (let ((_%e250822250931%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250819250927%_))))
                                       (let ((_%lp-tl250824250936%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250822250931%_)))
                                             (_%lp-hd250823250934%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250822250931%_))))
                                         (_%loop250821250924%_
                                          _%lp-tl250824250936%_
                                          (cons _%lp-hd250823250934%_
                                                _%signature250825250929%_))))
                                     (let ((_%signature250826250939%_
                                            (reverse _%signature250825250929%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl250814250908%_))
                                           (let ((_%e250827250941%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl250814250908%_))))
                                             (let ((_%tl250829250946%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e250827250941%_)))
                                                   (_%hd250828250944%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e250827250941%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl250829250946%_))
                                                   (_%__kont254591254592%_
                                                    _%hd250828250944%_
                                                    _%signature250826250939%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g250805250845%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g250805250845%_))))))))
                       (_%loop250821250924%_ _%target250818250919%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254589254590%_))
                  (let ((_%e250809250895%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254589254590%_))))
                    (let ((_%tl250811250900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250809250895%_)))
                          (_%hd250810250898%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250809250895%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250811250900%_))
                          (let ((_%e250812250903%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250811250900%_))))
                            (let ((_%tl250814250908%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250812250903%_)))
                                  (_%hd250813250906%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250812250903%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250813250906%_))
                                  (let ((_%e250815250911%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250813250906%_))))
                                    (let ((_%tl250817250916%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250815250911%_)))
                                          (_%hd250816250914%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250815250911%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250816250914%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd250816250914%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250817250916%_))
                                                  (let ((_%__splice254593254594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250817250916%_
                                                            '0))))
                                                    (let ((_%tl250820250921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254593254594%_
                                                              '1)))
                                                          (_%target250818250919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254593254594%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250820250921%_))
                                                          (_%__match254626254627%_
                                                           _%e250809250895%_
                                                           _%hd250810250898%_
                                                           _%tl250811250900%_
                                                           _%e250812250903%_
                                                           _%hd250813250906%_
                                                           _%tl250814250908%_
                                                           _%e250815250911%_
                                                           _%hd250816250914%_
                                                           _%tl250817250916%_
                                                           _%__splice254593254594%_
                                                           _%target250818250919%_
                                                           _%tl250820250921%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250814250908%_))
                      (let ((_%e250838250866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250814250908%_))))
                        (let ((_%tl250840250871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250838250866%_)))
                              (_%hd250839250869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250838250866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250840250871%_))
                              (_%__kont254595254596%_
                               _%hd250839250869%_
                               _%hd250813250906%_)
                              (let ()
                                (declare (not safe))
                                (_%g250805250845%_)))))
                      (let () (declare (not safe)) (_%g250805250845%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250814250908%_))
                                                      (let ((_%e250838250866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250814250908%_))))
                (let ((_%tl250840250871%_
                       (let () (declare (not safe)) (##cdr _%e250838250866%_)))
                      (_%hd250839250869%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250838250866%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250840250871%_))
                      (_%__kont254595254596%_
                       _%hd250839250869%_
                       _%hd250813250906%_)
                      (let () (declare (not safe)) (_%g250805250845%_)))))
              (let () (declare (not safe)) (_%g250805250845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250814250908%_))
                                                  (let ((_%e250838250866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250814250908%_))))
                                                    (let ((_%tl250840250871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250838250866%_)))
                                                          (_%hd250839250869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250838250866%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250840250871%_))
                                                          (_%__kont254595254596%_
                                                           _%hd250839250869%_
                                                           _%hd250813250906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250805250845%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250805250845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250814250908%_))
                                              (let ((_%e250838250866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250814250908%_))))
                                                (let ((_%tl250840250871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250838250866%_)))
                                                      (_%hd250839250869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250838250866%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250840250871%_))
                                                      (_%__kont254595254596%_
                                                       _%hd250839250869%_
                                                       _%hd250813250906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250805250845%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250805250845%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250814250908%_))
                                      (let ((_%e250838250866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250814250908%_))))
                                        (let ((_%tl250840250871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250838250866%_)))
                                              (_%hd250839250869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250838250866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250840250871%_))
                                              (_%__kont254595254596%_
                                               _%hd250839250869%_
                                               _%hd250813250906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250805250845%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250805250845%_))))))
                          (let () (declare (not safe)) (_%g250805250845%_)))))
                  (let () (declare (not safe)) (_%g250805250845%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx250776%_ _%expr250777%_ _%type250778%_)
        (let ((_%$e250780%_ (not _%type250778%_)))
          (if _%$e250780%_
              _%$e250780%_
              (let ((_%$e250783%_
                     (eq? (##structure-ref _%type250778%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e250783%_
                    _%$e250783%_
                    (let ((_%$e250786%_
                           (eq? (##structure-ref
                                 _%type250778%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e250786%_
                          _%$e250786%_
                          (let ((_%expr-type250790%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr250777%_))))
                            (if (not _%expr-type250790%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx250776%_
                                   _%type250778%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type250790%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx250776%_
                                       _%type250778%_
                                       _%expr-type250790%_))
                                    (let ((_%$e250794%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type250790%_
                                              'gxc#!abort::t))))
                                      (if _%$e250794%_
                                          _%$e250794%_
                                          (let ((_%$e250797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type250790%_
                                                    _%type250778%_))))
                                            (if _%$e250797%_
                                                _%$e250797%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx250776%_
                                                   _%type250778%_
                                                   _%expr-type250790%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self250202%_ _%stx250203%_)
        (let* ((_%__stx254671254672%_ _%stx250203%_)
               (_%g250208250318%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254671254672%_)))))
          (let ((_%__kont254673254674%_
                 (lambda (_%g250210250750%_
                          _%g250211250751%_
                          _%g250212250752%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g250212250752%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self250202%_ _%g250211250751%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self250202%_
                          _%g250210250750%_)))))
                (_%__kont254675254676%_
                 (lambda (_%g250231250576%_
                          _%g250232250577%_
                          _%g250233250578%_
                          _%g250234250579%_)
                   (let ((_%$e250611%_
                          (let ((__tmp255024
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250234250579%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp255024))))
                     (if _%$e250611%_
                         ((lambda (_%pred-type250614%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250614%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250614%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test250619%_
                                        (let ((__tmp255025
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g250234250579%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g250233250578%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp255025
                                           _%stx250203%_
                                           _%self250202%_)))
                                       (_%K250623%_
                                        (let ((__tmp255026
                                               (lambda ()
                                                 (let ((__tmp255029
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self250202%_
                                                             _%g250232250577%_))))
                                                       (__tmp255027
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g250233250578%_))
                            (let ((__tmp255028
                                   (##structure-ref
                                    _%pred-type250614%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx250203%_
                               __tmp255028)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp255029
                                                    gxc#current-compile-path-type
                                                    __tmp255027)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255026)))
                                       (_%E250626%_
                                        (let ((__tmp255030
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self250202%_
                                                    _%g250231250576%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255030)))
                                       (_%__stx254649254650%_ _%test250619%_)
                                       (_%g250630250644%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx254649254650%_)))))
                                  (let ((_%__kont254651254652%_
                                         (lambda (_%g250632250672%_
                                                  _%g250633250673%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g250632250672%_))
                                               (force _%K250623%_)
                                               (force _%E250626%_))))
                                        (_%__kont254653254654%_
                                         (lambda ()
                                           (let ((__tmp255031
                                                  (cons '%#if
                                                        (cons _%test250619%_
                                                              (cons (force _%K250623%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E250626%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255031
                                              _%stx250203%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx254649254650%_))
                                        (let ((_%e250634250656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx254649254650%_))))
                                          (let ((_%tl250636250661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250634250656%_)))
                                                (_%hd250635250659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250634250656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl250636250661%_))
                                                (let ((_%e250637250664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl250636250661%_))))
                                                  (let ((_%tl250639250669%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e250637250664%_)))
                                                        (_%hd250638250667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e250637250664%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250639250669%_))
                                                        (_%__kont254651254652%_
                                                         _%hd250638250667%_
                                                         _%hd250635250659%_)
                                                        (_%__kont254653254654%_))))
                                                (_%__kont254653254654%_))))
                                        (_%__kont254653254654%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self250202%_
                                   _%stx250203%_))))
                          _%$e250611%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self250202%_
                            _%stx250203%_))))))
                (_%__kont254677254678%_
                 (lambda (_%g250268250452%_
                          _%g250269250453%_
                          _%g250270250454%_
                          _%g250271250455%_)
                   (gxc#optimize-if%
                    _%self250202%_
                    (let ((__tmp255032
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g250270250454%_
                                       (cons _%g250268250452%_
                                             (cons _%g250269250453%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255032 _%stx250203%_)))))
                (_%__kont254679254680%_
                 (lambda (_%g250299250355%_
                          _%g250300250356%_
                          _%g250301250357%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self250202%_ _%stx250203%_)))))
            (let ((_%__match254878254879%_
                   (lambda (_%e250272250380%_
                            _%hd250273250383%_
                            _%tl250274250385%_
                            _%e250275250388%_
                            _%hd250276250391%_
                            _%tl250277250393%_
                            _%e250278250396%_
                            _%hd250279250399%_
                            _%tl250280250401%_
                            _%e250281250404%_
                            _%hd250282250407%_
                            _%tl250283250409%_
                            _%e250284250412%_
                            _%hd250285250415%_
                            _%tl250286250417%_
                            _%e250287250420%_
                            _%hd250288250423%_
                            _%tl250289250425%_
                            _%e250290250428%_
                            _%hd250291250431%_
                            _%tl250292250433%_
                            _%e250293250436%_
                            _%hd250294250439%_
                            _%tl250295250441%_
                            _%e250296250444%_
                            _%hd250297250447%_
                            _%tl250298250449%_)
                     (let ((_%g250268250452%_ _%hd250297250447%_)
                           (_%g250269250453%_ _%hd250294250439%_)
                           (_%g250270250454%_ _%hd250291250431%_)
                           (_%g250271250455%_ _%hd250288250423%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g250271250455%_ 'not))
                           (_%__kont254677254678%_
                            _%g250268250452%_
                            _%g250269250453%_
                            _%g250270250454%_
                            _%g250271250455%_)
                           (_%__kont254679254680%_
                            _%hd250297250447%_
                            _%hd250294250439%_
                            _%hd250276250391%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254671254672%_))
                  (let ((_%e250213250702%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254671254672%_))))
                    (let ((_%tl250215250707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250213250702%_)))
                          (_%hd250214250705%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250213250702%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250215250707%_))
                          (let ((_%e250216250710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250215250707%_))))
                            (let ((_%tl250218250715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250216250710%_)))
                                  (_%hd250217250713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250216250710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250217250713%_))
                                  (let ((_%e250219250718%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250217250713%_))))
                                    (let ((_%tl250221250723%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250219250718%_)))
                                          (_%hd250220250721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250219250718%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250220250721%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd250220250721%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250221250723%_))
                                                  (let ((_%e250222250726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250221250723%_))))
                                                    (let ((_%tl250224250731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250222250726%_)))
                                                          (_%hd250223250729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250222250726%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250224250731%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250218250715%_))
                      (let ((_%e250225250734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250218250715%_))))
                        (let ((_%tl250227250739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250225250734%_)))
                              (_%hd250226250737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250225250734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250227250739%_))
                              (let ((_%e250228250742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250227250739%_))))
                                (let ((_%tl250230250747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250228250742%_)))
                                      (_%hd250229250745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250228250742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250230250747%_))
                                      (_%__kont254673254674%_
                                       _%hd250229250745%_
                                       _%hd250226250737%_
                                       _%hd250223250729%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250208250318%_)))))
                      (let () (declare (not safe)) (_%g250208250318%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250218250715%_))
                      (let ((_%e250308250339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250218250715%_))))
                        (let ((_%tl250310250344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250308250339%_)))
                              (_%hd250309250342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250308250339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250310250344%_))
                              (let ((_%e250311250347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250310250344%_))))
                                (let ((_%tl250313250352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250311250347%_)))
                                      (_%hd250312250350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250311250347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250313250352%_))
                                      (_%__kont254679254680%_
                                       _%hd250312250350%_
                                       _%hd250309250342%_
                                       _%hd250217250713%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250208250318%_)))))
                      (let () (declare (not safe)) (_%g250208250318%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250218250715%_))
                                                      (let ((_%e250308250339%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250218250715%_))))
                (let ((_%tl250310250344%_
                       (let () (declare (not safe)) (##cdr _%e250308250339%_)))
                      (_%hd250309250342%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250308250339%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250310250344%_))
                      (let ((_%e250311250347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250310250344%_))))
                        (let ((_%tl250313250352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250311250347%_)))
                              (_%hd250312250350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250311250347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250313250352%_))
                              (_%__kont254679254680%_
                               _%hd250312250350%_
                               _%hd250309250342%_
                               _%hd250217250713%_)
                              (let ()
                                (declare (not safe))
                                (_%g250208250318%_)))))
                      (let () (declare (not safe)) (_%g250208250318%_)))))
              (let () (declare (not safe)) (_%g250208250318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd250220250721%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250221250723%_))
                                                      (let ((_%e250244250512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250221250723%_))))
                (let ((_%tl250246250517%_
                       (let () (declare (not safe)) (##cdr _%e250244250512%_)))
                      (_%hd250245250515%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250244250512%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd250245250515%_))
                      (let ((_%e250247250520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250245250515%_))))
                        (let ((_%tl250249250525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250247250520%_)))
                              (_%hd250248250523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250247250520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd250248250523%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250248250523%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250249250525%_))
                                      (let ((_%e250250250528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250249250525%_))))
                                        (let ((_%tl250252250533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250250250528%_)))
                                              (_%hd250251250531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250250250528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250252250533%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250246250517%_))
                                                  (let ((_%e250253250536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250246250517%_))))
                                                    (let ((_%tl250255250541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250253250536%_)))
                                                          (_%hd250254250539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250253250536%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd250254250539%_))
                                                          (let ((_%e250256250544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd250254250539%_))))
                    (let ((_%tl250258250549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250256250544%_)))
                          (_%hd250257250547%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250256250544%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250257250547%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd250257250547%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250258250549%_))
                                  (let ((_%e250259250552%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250258250549%_))))
                                    (let ((_%tl250261250557%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250259250552%_)))
                                          (_%hd250260250555%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250259250552%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250261250557%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250255250541%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250218250715%_))
                                                  (let ((_%e250262250560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250218250715%_))))
                                                    (let ((_%tl250264250565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250262250560%_)))
                                                          (_%hd250263250563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250262250560%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250264250565%_))
                                                          (let ((_%e250265250568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250264250565%_))))
                    (let ((_%tl250267250573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250265250568%_)))
                          (_%hd250266250571%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250265250568%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250267250573%_))
                          (_%__kont254675254676%_
                           _%hd250266250571%_
                           _%hd250263250563%_
                           _%hd250260250555%_
                           _%hd250251250531%_)
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250218250715%_))
                                                  (let ((_%e250308250339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250218250715%_))))
                                                    (let ((_%tl250310250344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250308250339%_)))
                                                          (_%hd250309250342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250308250339%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250310250344%_))
                                                          (let ((_%e250311250347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250310250344%_))))
                    (let ((_%tl250313250352%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250311250347%_)))
                          (_%hd250312250350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250311250347%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250313250352%_))
                          (_%__kont254679254680%_
                           _%hd250312250350%_
                           _%hd250309250342%_
                           _%hd250217250713%_)
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250255250541%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250218250715%_))
                                                  (let ((_%e250293250436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250218250715%_))))
                                                    (let ((_%tl250295250441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250293250436%_)))
                                                          (_%hd250294250439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250293250436%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250295250441%_))
                                                          (let ((_%e250296250444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250295250441%_))))
                    (let ((_%tl250298250449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250296250444%_)))
                          (_%hd250297250447%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250296250444%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250298250449%_))
                          (_%__match254878254879%_
                           _%e250213250702%_
                           _%hd250214250705%_
                           _%tl250215250707%_
                           _%e250216250710%_
                           _%hd250217250713%_
                           _%tl250218250715%_
                           _%e250219250718%_
                           _%hd250220250721%_
                           _%tl250221250723%_
                           _%e250244250512%_
                           _%hd250245250515%_
                           _%tl250246250517%_
                           _%e250247250520%_
                           _%hd250248250523%_
                           _%tl250249250525%_
                           _%e250250250528%_
                           _%hd250251250531%_
                           _%tl250252250533%_
                           _%e250253250536%_
                           _%hd250254250539%_
                           _%tl250255250541%_
                           _%e250293250436%_
                           _%hd250294250439%_
                           _%tl250295250441%_
                           _%e250296250444%_
                           _%hd250297250447%_
                           _%tl250298250449%_)
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250218250715%_))
                                                  (let ((_%e250308250339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250218250715%_))))
                                                    (let ((_%tl250310250344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250308250339%_)))
                                                          (_%hd250309250342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250308250339%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250310250344%_))
                                                          (let ((_%e250311250347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250310250344%_))))
                    (let ((_%tl250313250352%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250311250347%_)))
                          (_%hd250312250350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250311250347%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250313250352%_))
                          (_%__kont254679254680%_
                           _%hd250312250350%_
                           _%hd250309250342%_
                           _%hd250217250713%_)
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250255250541%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250218250715%_))
                                          (let ((_%e250293250436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250218250715%_))))
                                            (let ((_%tl250295250441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250293250436%_)))
                                                  (_%hd250294250439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250293250436%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250295250441%_))
                                                  (let ((_%e250296250444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250295250441%_))))
                                                    (let ((_%tl250298250449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250296250444%_)))
                                                          (_%hd250297250447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250296250444%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250298250449%_))
                                                          (_%__match254878254879%_
                                                           _%e250213250702%_
                                                           _%hd250214250705%_
                                                           _%tl250215250707%_
                                                           _%e250216250710%_
                                                           _%hd250217250713%_
                                                           _%tl250218250715%_
                                                           _%e250219250718%_
                                                           _%hd250220250721%_
                                                           _%tl250221250723%_
                                                           _%e250244250512%_
                                                           _%hd250245250515%_
                                                           _%tl250246250517%_
                                                           _%e250247250520%_
                                                           _%hd250248250523%_
                                                           _%tl250249250525%_
                                                           _%e250250250528%_
                                                           _%hd250251250531%_
                                                           _%tl250252250533%_
                                                           _%e250253250536%_
                                                           _%hd250254250539%_
                                                           _%tl250255250541%_
                                                           _%e250293250436%_
                                                           _%hd250294250439%_
                                                           _%tl250295250441%_
                                                           _%e250296250444%_
                                                           _%hd250297250447%_
                                                           _%tl250298250449%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250208250318%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250218250715%_))
                                          (let ((_%e250308250339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250218250715%_))))
                                            (let ((_%tl250310250344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250308250339%_)))
                                                  (_%hd250309250342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250308250339%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250310250344%_))
                                                  (let ((_%e250311250347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250310250344%_))))
                                                    (let ((_%tl250313250352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250311250347%_)))
                                                          (_%hd250312250350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250311250347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250313250352%_))
                                                          (_%__kont254679254680%_
                                                           _%hd250312250350%_
                                                           _%hd250309250342%_
                                                           _%hd250217250713%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250208250318%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250255250541%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250218250715%_))
                                      (let ((_%e250293250436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250218250715%_))))
                                        (let ((_%tl250295250441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250293250436%_)))
                                              (_%hd250294250439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250293250436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250295250441%_))
                                              (let ((_%e250296250444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250295250441%_))))
                                                (let ((_%tl250298250449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250296250444%_)))
                                                      (_%hd250297250447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250296250444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250298250449%_))
                                                      (_%__match254878254879%_
                                                       _%e250213250702%_
                                                       _%hd250214250705%_
                                                       _%tl250215250707%_
                                                       _%e250216250710%_
                                                       _%hd250217250713%_
                                                       _%tl250218250715%_
                                                       _%e250219250718%_
                                                       _%hd250220250721%_
                                                       _%tl250221250723%_
                                                       _%e250244250512%_
                                                       _%hd250245250515%_
                                                       _%tl250246250517%_
                                                       _%e250247250520%_
                                                       _%hd250248250523%_
                                                       _%tl250249250525%_
                                                       _%e250250250528%_
                                                       _%hd250251250531%_
                                                       _%tl250252250533%_
                                                       _%e250253250536%_
                                                       _%hd250254250539%_
                                                       _%tl250255250541%_
                                                       _%e250293250436%_
                                                       _%hd250294250439%_
                                                       _%tl250295250441%_
                                                       _%e250296250444%_
                                                       _%hd250297250447%_
                                                       _%tl250298250449%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250208250318%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250208250318%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250218250715%_))
                                      (let ((_%e250308250339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250218250715%_))))
                                        (let ((_%tl250310250344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250308250339%_)))
                                              (_%hd250309250342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250308250339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250310250344%_))
                                              (let ((_%e250311250347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250310250344%_))))
                                                (let ((_%tl250313250352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250311250347%_)))
                                                      (_%hd250312250350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250311250347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250313250352%_))
                                                      (_%__kont254679254680%_
                                                       _%hd250312250350%_
                                                       _%hd250309250342%_
                                                       _%hd250217250713%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250208250318%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250208250318%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250255250541%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250218250715%_))
                                  (let ((_%e250293250436%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250218250715%_))))
                                    (let ((_%tl250295250441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250293250436%_)))
                                          (_%hd250294250439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250293250436%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250295250441%_))
                                          (let ((_%e250296250444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250295250441%_))))
                                            (let ((_%tl250298250449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250296250444%_)))
                                                  (_%hd250297250447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250296250444%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250298250449%_))
                                                  (_%__match254878254879%_
                                                   _%e250213250702%_
                                                   _%hd250214250705%_
                                                   _%tl250215250707%_
                                                   _%e250216250710%_
                                                   _%hd250217250713%_
                                                   _%tl250218250715%_
                                                   _%e250219250718%_
                                                   _%hd250220250721%_
                                                   _%tl250221250723%_
                                                   _%e250244250512%_
                                                   _%hd250245250515%_
                                                   _%tl250246250517%_
                                                   _%e250247250520%_
                                                   _%hd250248250523%_
                                                   _%tl250249250525%_
                                                   _%e250250250528%_
                                                   _%hd250251250531%_
                                                   _%tl250252250533%_
                                                   _%e250253250536%_
                                                   _%hd250254250539%_
                                                   _%tl250255250541%_
                                                   _%e250293250436%_
                                                   _%hd250294250439%_
                                                   _%tl250295250441%_
                                                   _%e250296250444%_
                                                   _%hd250297250447%_
                                                   _%tl250298250449%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250218250715%_))
                                  (let ((_%e250308250339%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250218250715%_))))
                                    (let ((_%tl250310250344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250308250339%_)))
                                          (_%hd250309250342%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250308250339%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250310250344%_))
                                          (let ((_%e250311250347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250310250344%_))))
                                            (let ((_%tl250313250352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250311250347%_)))
                                                  (_%hd250312250350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250311250347%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250313250352%_))
                                                  (_%__kont254679254680%_
                                                   _%hd250312250350%_
                                                   _%hd250309250342%_
                                                   _%hd250217250713%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250255250541%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250218250715%_))
                          (let ((_%e250293250436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250218250715%_))))
                            (let ((_%tl250295250441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250293250436%_)))
                                  (_%hd250294250439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250293250436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250295250441%_))
                                  (let ((_%e250296250444%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250295250441%_))))
                                    (let ((_%tl250298250449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250296250444%_)))
                                          (_%hd250297250447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250296250444%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250298250449%_))
                                          (_%__match254878254879%_
                                           _%e250213250702%_
                                           _%hd250214250705%_
                                           _%tl250215250707%_
                                           _%e250216250710%_
                                           _%hd250217250713%_
                                           _%tl250218250715%_
                                           _%e250219250718%_
                                           _%hd250220250721%_
                                           _%tl250221250723%_
                                           _%e250244250512%_
                                           _%hd250245250515%_
                                           _%tl250246250517%_
                                           _%e250247250520%_
                                           _%hd250248250523%_
                                           _%tl250249250525%_
                                           _%e250250250528%_
                                           _%hd250251250531%_
                                           _%tl250252250533%_
                                           _%e250253250536%_
                                           _%hd250254250539%_
                                           _%tl250255250541%_
                                           _%e250293250436%_
                                           _%hd250294250439%_
                                           _%tl250295250441%_
                                           _%e250296250444%_
                                           _%hd250297250447%_
                                           _%tl250298250449%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))))
                          (let () (declare (not safe)) (_%g250208250318%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250218250715%_))
                          (let ((_%e250308250339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250218250715%_))))
                            (let ((_%tl250310250344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250308250339%_)))
                                  (_%hd250309250342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250308250339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250310250344%_))
                                  (let ((_%e250311250347%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250310250344%_))))
                                    (let ((_%tl250313250352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250311250347%_)))
                                          (_%hd250312250350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250311250347%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250313250352%_))
                                          (_%__kont254679254680%_
                                           _%hd250312250350%_
                                           _%hd250309250342%_
                                           _%hd250217250713%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g250208250318%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250218250715%_))
                                                      (let ((_%e250308250339%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250218250715%_))))
                (let ((_%tl250310250344%_
                       (let () (declare (not safe)) (##cdr _%e250308250339%_)))
                      (_%hd250309250342%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250308250339%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250310250344%_))
                      (let ((_%e250311250347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250310250344%_))))
                        (let ((_%tl250313250352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250311250347%_)))
                              (_%hd250312250350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250311250347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250313250352%_))
                              (_%__kont254679254680%_
                               _%hd250312250350%_
                               _%hd250309250342%_
                               _%hd250217250713%_)
                              (let ()
                                (declare (not safe))
                                (_%g250208250318%_)))))
                      (let () (declare (not safe)) (_%g250208250318%_)))))
              (let () (declare (not safe)) (_%g250208250318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250218250715%_))
                                                  (let ((_%e250308250339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250218250715%_))))
                                                    (let ((_%tl250310250344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250308250339%_)))
                                                          (_%hd250309250342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250308250339%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250310250344%_))
                                                          (let ((_%e250311250347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250310250344%_))))
                    (let ((_%tl250313250352%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250311250347%_)))
                          (_%hd250312250350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250311250347%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250313250352%_))
                          (_%__kont254679254680%_
                           _%hd250312250350%_
                           _%hd250309250342%_
                           _%hd250217250713%_)
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250218250715%_))
                                          (let ((_%e250308250339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250218250715%_))))
                                            (let ((_%tl250310250344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250308250339%_)))
                                                  (_%hd250309250342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250308250339%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250310250344%_))
                                                  (let ((_%e250311250347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250310250344%_))))
                                                    (let ((_%tl250313250352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250311250347%_)))
                                                          (_%hd250312250350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250311250347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250313250352%_))
                                                          (_%__kont254679254680%_
                                                           _%hd250312250350%_
                                                           _%hd250309250342%_
                                                           _%hd250217250713%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250208250318%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250218250715%_))
                                      (let ((_%e250308250339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250218250715%_))))
                                        (let ((_%tl250310250344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250308250339%_)))
                                              (_%hd250309250342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250308250339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250310250344%_))
                                              (let ((_%e250311250347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250310250344%_))))
                                                (let ((_%tl250313250352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250311250347%_)))
                                                      (_%hd250312250350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250311250347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250313250352%_))
                                                      (_%__kont254679254680%_
                                                       _%hd250312250350%_
                                                       _%hd250309250342%_
                                                       _%hd250217250713%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250208250318%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250208250318%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250218250715%_))
                                  (let ((_%e250308250339%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250218250715%_))))
                                    (let ((_%tl250310250344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250308250339%_)))
                                          (_%hd250309250342%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250308250339%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250310250344%_))
                                          (let ((_%e250311250347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250310250344%_))))
                                            (let ((_%tl250313250352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250311250347%_)))
                                                  (_%hd250312250350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250311250347%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250313250352%_))
                                                  (_%__kont254679254680%_
                                                   _%hd250312250350%_
                                                   _%hd250309250342%_
                                                   _%hd250217250713%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250208250318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250218250715%_))
                          (let ((_%e250308250339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250218250715%_))))
                            (let ((_%tl250310250344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250308250339%_)))
                                  (_%hd250309250342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250308250339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250310250344%_))
                                  (let ((_%e250311250347%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250310250344%_))))
                                    (let ((_%tl250313250352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250311250347%_)))
                                          (_%hd250312250350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250311250347%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250313250352%_))
                                          (_%__kont254679254680%_
                                           _%hd250312250350%_
                                           _%hd250309250342%_
                                           _%hd250217250713%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250208250318%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))))
                          (let () (declare (not safe)) (_%g250208250318%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl250218250715%_))
                  (let ((_%e250308250339%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250218250715%_))))
                    (let ((_%tl250310250344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250308250339%_)))
                          (_%hd250309250342%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250308250339%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250310250344%_))
                          (let ((_%e250311250347%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250310250344%_))))
                            (let ((_%tl250313250352%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250311250347%_)))
                                  (_%hd250312250350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250311250347%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250313250352%_))
                                  (_%__kont254679254680%_
                                   _%hd250312250350%_
                                   _%hd250309250342%_
                                   _%hd250217250713%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g250208250318%_)))))
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250218250715%_))
                                                      (let ((_%e250308250339%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250218250715%_))))
                (let ((_%tl250310250344%_
                       (let () (declare (not safe)) (##cdr _%e250308250339%_)))
                      (_%hd250309250342%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250308250339%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250310250344%_))
                      (let ((_%e250311250347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250310250344%_))))
                        (let ((_%tl250313250352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250311250347%_)))
                              (_%hd250312250350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250311250347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250313250352%_))
                              (_%__kont254679254680%_
                               _%hd250312250350%_
                               _%hd250309250342%_
                               _%hd250217250713%_)
                              (let ()
                                (declare (not safe))
                                (_%g250208250318%_)))))
                      (let () (declare (not safe)) (_%g250208250318%_)))))
              (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250218250715%_))
                                              (let ((_%e250308250339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250218250715%_))))
                                                (let ((_%tl250310250344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250308250339%_)))
                                                      (_%hd250309250342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250308250339%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250310250344%_))
                                                      (let ((_%e250311250347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250310250344%_))))
                (let ((_%tl250313250352%_
                       (let () (declare (not safe)) (##cdr _%e250311250347%_)))
                      (_%hd250312250350%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250311250347%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250313250352%_))
                      (_%__kont254679254680%_
                       _%hd250312250350%_
                       _%hd250309250342%_
                       _%hd250217250713%_)
                      (let () (declare (not safe)) (_%g250208250318%_)))))
              (let () (declare (not safe)) (_%g250208250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g250208250318%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250218250715%_))
                                      (let ((_%e250308250339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250218250715%_))))
                                        (let ((_%tl250310250344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250308250339%_)))
                                              (_%hd250309250342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250308250339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250310250344%_))
                                              (let ((_%e250311250347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250310250344%_))))
                                                (let ((_%tl250313250352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250311250347%_)))
                                                      (_%hd250312250350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250311250347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250313250352%_))
                                                      (_%__kont254679254680%_
                                                       _%hd250312250350%_
                                                       _%hd250309250342%_
                                                       _%hd250217250713%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250208250318%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250208250318%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250208250318%_))))))
                          (let () (declare (not safe)) (_%g250208250318%_)))))
                  (let () (declare (not safe)) (_%g250208250318%_))))))))))

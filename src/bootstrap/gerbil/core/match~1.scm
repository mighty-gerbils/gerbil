(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39945_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39946_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39947_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39948_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39949_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39950_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39951_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39952_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39953_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39954_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39955_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39956_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39957_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39958_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39959_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39972_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39980_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39981_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39982_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39987_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39988_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39989_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39990_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39991_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args35244%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35244%_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_%stx35241%_)
        (if (gx#identifier? _%stx35241%_)
            (let ((__tmp39944 (gx#syntax-local-value _%stx35241%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39944))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33541%_ _%match-stx33543%_)
        (letrec ((_%parse133545%_
                  (lambda (_%hd33904%_)
                    (let* ((_%__stx3773237733%_ _%hd33904%_)
                           (_%g3393034072%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3773237733%_))))
                      (let ((_%__kont3773537736%_
                             (lambda (_%L35004%_ _%L35006%_)
                               (let* ((_%__stx3765237653%_ _%L35004%_)
                                      (_%g3502335056%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3765237653%_))))
                                 (let ((_%__kont3765537656%_
                                        (lambda ()
                                          (cons '?: (cons _%L35006%_ '()))))
                                       (_%__kont3765737658%_
                                        (lambda (_%L35197%_)
                                          (cons '?:
                                                (cons _%L35006%_
                                                      (cons (_%parse133545%_
                                                             _%L35197%_)
                                                            '())))))
                                       (_%__kont3765937660%_
                                        (lambda (_%L35167%_)
                                          (cons '?:
                                                (cons _%L35006%_
                                                      (cons '=>:
                                                            (cons (_%parse133545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35167%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3766137662%_
                                        (lambda (_%L35118%_ _%L35120%_)
                                          (cons '?:
                                                (cons _%L35006%_
                                                      (cons '::
                                                            (cons _%L35120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133545%_ _%L35118%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3766337664%_
                                        (lambda ()
                                          (_%parse-error33552%_ _%hd33904%_))))
                                   (let ((_%g3501935208%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3765237653%_)
                                                (let ((_%e3502635187%_
                                                       (gx#syntax-e
                                                        _%__stx3765237653%_)))
                                                  (let ((_%tl3502835194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3502635187%_)))
                                                        (_%hd3502735191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3502635187%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3502835194%_)
                                                        (_%__kont3765737658%_
                                                         _%hd3502735191%_)
                                                        (if (gx#identifier?
                                                             _%hd3502735191%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39945_|
                         _%hd3502735191%_)
                        (if (gx#stx-pair? _%tl3502835194%_)
                            (let ((_%e3503335157%_
                                   (gx#syntax-e _%tl3502835194%_)))
                              (let ((_%tl3503535164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3503335157%_)))
                                    (_%hd3503435161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3503335157%_))))
                                (if (gx#stx-null? _%tl3503535164%_)
                                    (_%__kont3765937660%_ _%hd3503435161%_)
                                    (_%__kont3766337664%_))))
                            (_%__kont3766337664%_))
                        (_%__kont3766337664%_))
                    (if (gx#stx-datum? _%hd3502735191%_)
                        (let ((_%e3504135084%_ (gx#stx-e _%hd3502735191%_)))
                          (if (equal? _%e3504135084%_ '::)
                              (if (gx#stx-pair? _%tl3502835194%_)
                                  (let ((_%e3504235088%_
                                         (gx#syntax-e _%tl3502835194%_)))
                                    (let ((_%tl3504435095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3504235088%_)))
                                          (_%hd3504335092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3504235088%_))))
                                      (if (gx#stx-pair? _%tl3504435095%_)
                                          (let ((_%e3504535098%_
                                                 (gx#syntax-e
                                                  _%tl3504435095%_)))
                                            (let ((_%tl3504735105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3504535098%_)))
                                                  (_%hd3504635102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3504535098%_))))
                                              (if (gx#identifier?
                                                   _%hd3504635102%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39946_|
                                                       _%hd3504635102%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3504735105%_)
                                                          (let ((_%e3504835108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3504735105%_)))
                    (let ((_%tl3505035115%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3504835108%_)))
                          (_%hd3504935112%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3504835108%_))))
                      (if (gx#stx-null? _%tl3505035115%_)
                          (_%__kont3766137662%_
                           _%hd3504935112%_
                           _%hd3504335092%_)
                          (_%__kont3766337664%_))))
                  (_%__kont3766337664%_))
              (_%__kont3766337664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3766337664%_))))
                                          (_%__kont3766337664%_))))
                                  (_%__kont3766337664%_))
                              (_%__kont3766337664%_)))
                        (_%__kont3766337664%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3766337664%_)))))
                                     (if (gx#stx-null? _%__stx3765237653%_)
                                         (_%__kont3765537656%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3501935208%_))))))))
                            (_%__kont3773737738%_
                             (lambda (_%L34909%_)
                               (let* ((_%__stx3763437635%_ _%L34909%_)
                                      (_%g3492134932%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3763437635%_))))
                                 (let ((_%__kont3763737638%_
                                        (lambda (_%L34960%_)
                                          (_%parse133545%_ _%L34960%_)))
                                       (_%__kont3763937640%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133545%_
                                                 _%L34909%_)))))
                                   (if (gx#stx-pair? _%__stx3763437635%_)
                                       (let ((_%e3492434950%_
                                              (gx#syntax-e
                                               _%__stx3763437635%_)))
                                         (let ((_%tl3492634957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3492434950%_)))
                                               (_%hd3492534954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3492434950%_))))
                                           (if (gx#stx-null? _%tl3492634957%_)
                                               (_%__kont3763737638%_
                                                _%hd3492534954%_)
                                               (_%__kont3763937640%_))))
                                       (_%__kont3763937640%_))))))
                            (_%__kont3773937740%_
                             (lambda (_%L34824%_)
                               (let* ((_%__stx3761637617%_ _%L34824%_)
                                      (_%g3483634847%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3761637617%_))))
                                 (let ((_%__kont3761937620%_
                                        (lambda (_%L34875%_)
                                          (_%parse133545%_ _%L34875%_)))
                                       (_%__kont3762137622%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133545%_
                                                 _%L34824%_)))))
                                   (if (gx#stx-pair? _%__stx3761637617%_)
                                       (let ((_%e3483934865%_
                                              (gx#syntax-e
                                               _%__stx3761637617%_)))
                                         (let ((_%tl3484134872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3483934865%_)))
                                               (_%hd3484034869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3483934865%_))))
                                           (if (gx#stx-null? _%tl3484134872%_)
                                               (_%__kont3761937620%_
                                                _%hd3484034869%_)
                                               (_%__kont3762137622%_))))
                                       (_%__kont3762137622%_))))))
                            (_%__kont3774137742%_
                             (lambda (_%L34794%_)
                               (cons 'not:
                                     (cons (_%parse133545%_ _%L34794%_) '()))))
                            (_%__kont3774337744%_
                             (lambda (_%L34750%_ _%L34752%_)
                               (cons 'cons:
                                     (cons (_%parse133545%_ _%L34752%_)
                                           (cons (_%parse133545%_ _%L34750%_)
                                                 '())))))
                            (_%__kont3774537746%_
                             (lambda (_%L34694%_ _%L34696%_ _%L34697%_)
                               (if (gx#stx-null? _%L34694%_)
                                   (cons 'cons:
                                         (cons (_%parse133545%_ _%L34697%_)
                                               (cons (_%parse133545%_
                                                      _%L34696%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133545%_ _%L34697%_)
                                               (cons (_%parse133545%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3774737748%_
                             (lambda (_%L34646%_)
                               (_%parse-list33547%_ _%L34646%_)))
                            (_%__kont3774937750%_
                             (lambda (_%L34616%_)
                               (cons 'box:
                                     (cons (_%parse133545%_ _%L34616%_) '()))))
                            (_%__kont3775137752%_
                             (lambda (_%L34579%_)
                               (cons 'box:
                                     (cons (_%parse133545%_ _%L34579%_) '()))))
                            (_%__kont3775337754%_
                             (lambda (_%L34555%_)
                               (_%parse133545%_ _%L34555%_)))
                            (_%__kont3775537756%_
                             (lambda (_%L34517%_)
                               (cons 'values:
                                     (cons (_%parse-vector33548%_ _%L34517%_)
                                           '()))))
                            (_%__kont3775737758%_
                             (lambda (_%L34489%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33548%_ _%L34489%_)
                                           '()))))
                            (_%__kont3775937760%_
                             (lambda (_%L34450%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33548%_
                                            (foldr (lambda (_%g3446334466%_
                                                            _%g3446434469%_)
                                                     (cons _%g3446334466%_
                                                           _%g3446434469%_))
                                                   '()
                                                   _%L34450%_))
                                           '()))))
                            (_%__kont3776337764%_
                             (lambda (_%L34396%_ _%L34398%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34398%_)
                                           (cons (_%parse-vector33548%_
                                                  _%L34396%_)
                                                 '())))))
                            (_%__kont3776537766%_
                             (lambda (_%L34366%_ _%L34368%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34368%_)
                                           (cons (_%parse-class-body33550%_
                                                  _%L34366%_)
                                                 '())))))
                            (_%__kont3776737768%_
                             (lambda (_%L34326%_ _%L34328%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34328%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3776937770%_
                             (lambda (_%L34286%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34286%_) '()))))
                            (_%__kont3777137772%_
                             (lambda (_%L34246%_)
                               (_%parse-qq33551%_ _%L34246%_)))
                            (_%__kont3777337774%_
                             (lambda (_%L34202%_ _%L34204%_)
                               (cons 'apply:
                                     (cons _%L34204%_
                                           (cons (_%parse133545%_ _%L34202%_)
                                                 '())))))
                            (_%__kont3777537776%_
                             (lambda (_%L34150%_)
                               (_%parse133545%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34150%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33904%_)
                                  (let ((_%$e34161%_
                                         (gx#stx-source _%hd33904%_)))
                                    (if _%$e34161%_
                                        _%$e34161%_
                                        (gx#stx-source _%stx33541%_))))))))
                            (_%__kont3777737778%_
                             (lambda (_%L34124%_) (cons 'any: '())))
                            (_%__kont3777937780%_
                             (lambda (_%L34108%_)
                               (cons 'var: (cons _%L34108%_ '()))))
                            (_%__kont3778137782%_
                             (lambda (_%L34090%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34090%_) '()))))
                            (_%__kont3778337784%_
                             (lambda () (_%parse-error33552%_ _%hd33904%_))))
                        (let* ((_%g3392834101%_
                                (lambda ()
                                  (let ((_%L34090%_ _%__stx3773237733%_))
                                    (if (gx#stx-datum? _%L34090%_)
                                        (_%__kont3778137782%_ _%L34090%_)
                                        (_%__kont3778337784%_)))))
                               (_%g3392734117%_
                                (lambda ()
                                  (let ((_%L34108%_ _%__stx3773237733%_))
                                    (if (and (gx#identifier? _%L34108%_)
                                             (not (gx#ellipsis? _%L34108%_)))
                                        (_%__kont3777937780%_ _%L34108%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3392834101%_))))))
                               (_%g3392634133%_
                                (lambda ()
                                  (let ((_%L34124%_ _%__stx3773237733%_))
                                    (if (gx#underscore? _%L34124%_)
                                        (_%__kont3777737778%_ _%L34124%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3392734117%_))))))
                               (_%__match3805938060%_
                                (lambda (_%e3406134140%_
                                         _%hd3406234144%_
                                         _%tl3406334147%_)
                                  (let ((_%L34150%_ _%hd3406234144%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34150%_)
                                        (_%__kont3777537776%_ _%L34150%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3392634133%_))))))
                               (_%__match3799337994%_
                                (lambda (_%e3402934306%_
                                         _%hd3403034310%_
                                         _%tl3403134313%_
                                         _%e3403234316%_
                                         _%hd3403334320%_
                                         _%tl3403434323%_)
                                  (let ((_%L34326%_ _%hd3403334320%_)
                                        (_%L34328%_ _%hd3403034310%_))
                                    (if (and (gx#identifier? _%L34328%_)
                                             (or (gx#free-identifier=?
                                                  _%L34328%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34328%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34328%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3776737768%_
                                         _%L34326%_
                                         _%L34328%_)
                                        (if (gx#identifier? _%hd3403034310%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39947_|
                                                 _%hd3403034310%_)
                                                (_%__kont3776937770%_
                                                 _%hd3403334320%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39948_|
                                                     _%hd3403034310%_)
                                                    (_%__kont3777137772%_
                                                     _%hd3403334320%_)
                                                    (_%__match3805938060%_
                                                     _%e3402934306%_
                                                     _%hd3403034310%_
                                                     _%tl3403134313%_)))
                                            (_%__match3805938060%_
                                             _%e3402934306%_
                                             _%hd3403034310%_
                                             _%tl3403134313%_))))))
                               (_%__match3797937980%_
                                (lambda (_%e3402434356%_
                                         _%hd3402534360%_
                                         _%tl3402634363%_)
                                  (let ((_%L34366%_ _%tl3402634363%_)
                                        (_%L34368%_ _%hd3402534360%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34368%_))
                                        (_%__kont3776537766%_
                                         _%L34366%_
                                         _%L34368%_)
                                        (if (gx#stx-pair? _%tl3402634363%_)
                                            (let ((_%e3403234316%_
                                                   (gx#syntax-e
                                                    _%tl3402634363%_)))
                                              (let ((_%tl3403434323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3403234316%_)))
                                                    (_%hd3403334320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3403234316%_))))
                                                (if (gx#stx-null?
                                                     _%tl3403434323%_)
                                                    (_%__match3799337994%_
                                                     _%e3402434356%_
                                                     _%hd3402534360%_
                                                     _%tl3402634363%_
                                                     _%e3403234316%_
                                                     _%hd3403334320%_
                                                     _%tl3403434323%_)
                                                    (if (gx#identifier?
                                                         _%hd3402534360%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39947_|
                                                             _%hd3402534360%_)
                                                            (_%__match3805938060%_
                                                             _%e3402434356%_
                                                             _%hd3402534360%_
                                                             _%tl3402634363%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39948_|
                         _%hd3402534360%_)
                        (_%__match3805938060%_
                         _%e3402434356%_
                         _%hd3402534360%_
                         _%tl3402634363%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39949_|
                             _%hd3402534360%_)
                            (if (gx#stx-pair? _%tl3403434323%_)
                                (let ((_%e3405734192%_
                                       (gx#syntax-e _%tl3403434323%_)))
                                  (let ((_%tl3405934199%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3405734192%_)))
                                        (_%hd3405834196%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3405734192%_))))
                                    (if (gx#stx-null? _%tl3405934199%_)
                                        (_%__kont3777337774%_
                                         _%hd3405834196%_
                                         _%hd3403334320%_)
                                        (_%__match3805938060%_
                                         _%e3402434356%_
                                         _%hd3402534360%_
                                         _%tl3402634363%_))))
                                (_%__match3805938060%_
                                 _%e3402434356%_
                                 _%hd3402534360%_
                                 _%tl3402634363%_))
                            (_%__match3805938060%_
                             _%e3402434356%_
                             _%hd3402534360%_
                             _%tl3402634363%_))))
                (_%__match3805938060%_
                 _%e3402434356%_
                 _%hd3402534360%_
                 _%tl3402634363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3805938060%_
                                             _%e3402434356%_
                                             _%hd3402534360%_
                                             _%tl3402634363%_))))))
                               (_%__match3797337974%_
                                (lambda (_%e3401934386%_
                                         _%hd3402034390%_
                                         _%tl3402134393%_)
                                  (let ((_%L34396%_ _%tl3402134393%_)
                                        (_%L34398%_ _%hd3402034390%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34398%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3776337764%_
                                         _%L34396%_
                                         _%L34398%_)
                                        (_%__match3797937980%_
                                         _%e3401934386%_
                                         _%hd3402034390%_
                                         _%tl3402134393%_)))))
                               (_%__match3796737968%_
                                (lambda (_%e3400734416%_
                                         _%__splice3776137762%_
                                         _%target3400834420%_
                                         _%tl3401034423%_)
                                  (letrec ((_%loop3401134426%_
                                            (lambda (_%hd3400934430%_
                                                     _%body3401534433%_)
                                              (if (gx#stx-pair?
                                                   _%hd3400934430%_)
                                                  (let ((_%e3401234436%_
                                                         (gx#syntax-e
                                                          _%hd3400934430%_)))
                                                    (let ((_%lp-tl3401434443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3401234436%_)))
                                                          (_%lp-hd3401334440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3401234436%_))))
                                                      (_%loop3401134426%_
                                                       _%lp-tl3401434443%_
                                                       (cons _%lp-hd3401334440%_
                                                             _%body3401534433%_))))
                                                  (let ((_%body3401634446%_
                                                         (reverse _%body3401534433%_)))
                                                    (_%__kont3775937760%_
                                                     _%body3401634446%_))))))
                                    (_%loop3401134426%_
                                     _%target3400834420%_
                                     '()))))
                               (_%g3391834472%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3773237733%_)
                                      (let ((_%e3400734416%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3773237733%_))))
                                        (if (gx#stx-pair/null? _%e3400734416%_)
                                            (let ((_%__splice3776137762%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3400734416%_
                                                    '0)))
                                              (let ((_%tl3401034423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3776137762%_
                                                        '1)))
                                                    (_%target3400834420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3776137762%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3401034423%_)
                                                    (_%__match3796737968%_
                                                     _%e3400734416%_
                                                     _%__splice3776137762%_
                                                     _%target3400834420%_
                                                     _%tl3401034423%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3392634133%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3392634133%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3392634133%_)))))
                               (_%g3391434589%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3773237733%_)
                                      (let ((_%e3399034575%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3773237733%_))))
                                        (_%__kont3775137752%_ _%e3399034575%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3391834472%_)))))
                               (_%__match3782137822%_
                                (lambda (_%e3394534814%_
                                         _%hd3394634818%_
                                         _%tl3394734821%_)
                                  (let ((_%L34824%_ _%tl3394734821%_))
                                    (if (gx#stx-list? _%L34824%_)
                                        (_%__kont3773937740%_ _%L34824%_)
                                        (_%__match3797337974%_
                                         _%e3394534814%_
                                         _%hd3394634818%_
                                         _%tl3394734821%_)))))
                               (_%__match3781137812%_
                                (lambda (_%e3394134899%_
                                         _%hd3394234903%_
                                         _%tl3394334906%_)
                                  (let ((_%L34909%_ _%tl3394334906%_))
                                    (if (gx#stx-list? _%L34909%_)
                                        (_%__kont3773737738%_ _%L34909%_)
                                        (_%__match3797337974%_
                                         _%e3394134899%_
                                         _%hd3394234903%_
                                         _%tl3394334906%_))))))
                          (if (gx#stx-pair? _%__stx3773237733%_)
                              (let ((_%e3393434984%_
                                     (gx#syntax-e _%__stx3773237733%_)))
                                (let ((_%tl3393634991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3393434984%_)))
                                      (_%hd3393534988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3393434984%_))))
                                  (if (gx#identifier? _%hd3393534988%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39950_|
                                           _%hd3393534988%_)
                                          (if (gx#stx-pair? _%tl3393634991%_)
                                              (let ((_%e3393734994%_
                                                     (gx#syntax-e
                                                      _%tl3393634991%_)))
                                                (let ((_%tl3393935001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3393734994%_)))
                                                      (_%hd3393834998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3393734994%_))))
                                                  (_%__kont3773537736%_
                                                   _%tl3393935001%_
                                                   _%hd3393834998%_)))
                                              (_%__match3797337974%_
                                               _%e3393434984%_
                                               _%hd3393534988%_
                                               _%tl3393634991%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39951_|
                                               _%hd3393534988%_)
                                              (_%__match3781137812%_
                                               _%e3393434984%_
                                               _%hd3393534988%_
                                               _%tl3393634991%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39952_|
                                                   _%hd3393534988%_)
                                                  (_%__match3782137822%_
                                                   _%e3393434984%_
                                                   _%hd3393534988%_
                                                   _%tl3393634991%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39953_|
                                                       _%hd3393534988%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3393634991%_)
                                                          (let ((_%e3395234784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3393634991%_)))
                    (let ((_%tl3395434791%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3395234784%_)))
                          (_%hd3395334788%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3395234784%_))))
                      (if (gx#stx-null? _%tl3395434791%_)
                          (_%__kont3774137742%_ _%hd3395334788%_)
                          (_%__match3797337974%_
                           _%e3393434984%_
                           _%hd3393534988%_
                           _%tl3393634991%_))))
                  (_%__match3797337974%_
                   _%e3393434984%_
                   _%hd3393534988%_
                   _%tl3393634991%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39954_|
                   _%hd3393534988%_)
                  (if (gx#stx-pair? _%tl3393634991%_)
                      (let ((_%e3396034730%_ (gx#syntax-e _%tl3393634991%_)))
                        (let ((_%tl3396234737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3396034730%_)))
                              (_%hd3396134734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3396034730%_))))
                          (if (gx#stx-pair? _%tl3396234737%_)
                              (let ((_%e3396334740%_
                                     (gx#syntax-e _%tl3396234737%_)))
                                (let ((_%tl3396534747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3396334740%_)))
                                      (_%hd3396434744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3396334740%_))))
                                  (if (gx#stx-null? _%tl3396534747%_)
                                      (_%__kont3774337744%_
                                       _%hd3396434744%_
                                       _%hd3396134734%_)
                                      (_%__match3797337974%_
                                       _%e3393434984%_
                                       _%hd3393534988%_
                                       _%tl3393634991%_))))
                              (_%__match3797337974%_
                               _%e3393434984%_
                               _%hd3393534988%_
                               _%tl3393634991%_))))
                      (_%__match3797337974%_
                       _%e3393434984%_
                       _%hd3393534988%_
                       _%tl3393634991%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39955_|
                       _%hd3393534988%_)
                      (if (gx#stx-pair? _%tl3393634991%_)
                          (let ((_%e3397234674%_
                                 (gx#syntax-e _%tl3393634991%_)))
                            (let ((_%tl3397434681%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3397234674%_)))
                                  (_%hd3397334678%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3397234674%_))))
                              (if (gx#stx-pair? _%tl3397434681%_)
                                  (let ((_%e3397534684%_
                                         (gx#syntax-e _%tl3397434681%_)))
                                    (let ((_%tl3397734691%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3397534684%_)))
                                          (_%hd3397634688%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3397534684%_))))
                                      (_%__kont3774537746%_
                                       _%tl3397734691%_
                                       _%hd3397634688%_
                                       _%hd3397334678%_)))
                                  (_%__match3797337974%_
                                   _%e3393434984%_
                                   _%hd3393534988%_
                                   _%tl3393634991%_))))
                          (_%__match3797337974%_
                           _%e3393434984%_
                           _%hd3393534988%_
                           _%tl3393634991%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39956_|
                           _%hd3393534988%_)
                          (_%__kont3774737748%_ _%tl3393634991%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39957_|
                               _%hd3393534988%_)
                              (if (gx#stx-pair? _%tl3393634991%_)
                                  (let ((_%e3398634606%_
                                         (gx#syntax-e _%tl3393634991%_)))
                                    (let ((_%tl3398834613%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3398634606%_)))
                                          (_%hd3398734610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3398634606%_))))
                                      (if (gx#stx-null? _%tl3398834613%_)
                                          (_%__kont3774937750%_
                                           _%hd3398734610%_)
                                          (_%__match3797337974%_
                                           _%e3393434984%_
                                           _%hd3393534988%_
                                           _%tl3393634991%_))))
                                  (_%__match3797337974%_
                                   _%e3393434984%_
                                   _%hd3393534988%_
                                   _%tl3393634991%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39958_|
                                   _%hd3393534988%_)
                                  (if (gx#stx-pair? _%tl3393634991%_)
                                      (let ((_%e3399534545%_
                                             (gx#syntax-e _%tl3393634991%_)))
                                        (let ((_%tl3399734552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3399534545%_)))
                                              (_%hd3399634549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3399534545%_))))
                                          (if (gx#stx-null? _%tl3399734552%_)
                                              (_%__kont3775337754%_
                                               _%hd3399634549%_)
                                              (_%__kont3775537756%_
                                               _%tl3393634991%_))))
                                      (_%__kont3775537756%_ _%tl3393634991%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39959_|
                                       _%hd3393534988%_)
                                      (_%__kont3775737758%_ _%tl3393634991%_)
                                      (_%__match3797337974%_
                                       _%e3393434984%_
                                       _%hd3393534988%_
                                       _%tl3393634991%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3797337974%_
                                       _%e3393434984%_
                                       _%hd3393534988%_
                                       _%tl3393634991%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3391434589%_))))))))
                 (_%parse-list33547%_
                  (lambda (_%body33727%_)
                    (let* ((_%__stx3806238063%_ _%body33727%_)
                           (_%g3373333762%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3806238063%_))))
                      (let ((_%__kont3806538066%_
                             (lambda (_%L33886%_)
                               (_%parse133545%_ _%L33886%_)))
                            (_%__kont3806738068%_
                             (lambda (_%L33838%_ _%L33840%_ _%L33841%_)
                               (cons 'splice:
                                     (cons (_%parse133545%_ _%L33841%_)
                                           (cons (_%parse-list33547%_
                                                  _%L33838%_)
                                                 '())))))
                            (_%__kont3806938070%_
                             (lambda (_%L33796%_ _%L33798%_)
                               (cons 'cons:
                                     (cons (_%parse133545%_ _%L33798%_)
                                           (cons (_%parse-list33547%_
                                                  _%L33796%_)
                                                 '())))))
                            (_%__kont3807138072%_
                             (lambda ()
                               (if (gx#stx-null? _%body33727%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33727%_)
                                       (_%parse-error33552%_ _%body33727%_)
                                       (_%parse133545%_ _%body33727%_))))))
                        (let* ((_%__match3811138112%_
                                (lambda (_%e3375433786%_
                                         _%hd3375533790%_
                                         _%tl3375633793%_)
                                  (let ((_%L33796%_ _%tl3375633793%_)
                                        (_%L33798%_ _%hd3375533790%_))
                                    (if (gx#ellipsis? _%L33798%_)
                                        (_%__kont3807138072%_)
                                        (_%__kont3806938070%_
                                         _%L33796%_
                                         _%L33798%_)))))
                               (_%__match3810538106%_
                                (lambda (_%e3374633818%_
                                         _%hd3374733822%_
                                         _%tl3374833825%_
                                         _%e3374933828%_
                                         _%hd3375033832%_
                                         _%tl3375133835%_)
                                  (let ((_%L33838%_ _%tl3375133835%_)
                                        (_%L33840%_ _%hd3375033832%_)
                                        (_%L33841%_ _%hd3374733822%_))
                                    (if (gx#ellipsis? _%L33840%_)
                                        (_%__kont3806738068%_
                                         _%L33838%_
                                         _%L33840%_
                                         _%L33841%_)
                                        (_%__match3811138112%_
                                         _%e3374633818%_
                                         _%hd3374733822%_
                                         _%tl3374833825%_))))))
                          (if (gx#stx-pair? _%__stx3806238063%_)
                              (let ((_%e3373633862%_
                                     (gx#syntax-e _%__stx3806238063%_)))
                                (let ((_%tl3373833869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3373633862%_)))
                                      (_%hd3373733866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3373633862%_))))
                                  (if (gx#stx-datum? _%hd3373733866%_)
                                      (let ((_%e3373933872%_
                                             (gx#stx-e _%hd3373733866%_)))
                                        (if (equal? _%e3373933872%_ '::)
                                            (if (gx#stx-pair? _%tl3373833869%_)
                                                (let ((_%e3374033876%_
                                                       (gx#syntax-e
                                                        _%tl3373833869%_)))
                                                  (let ((_%tl3374233883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3374033876%_)))
                                                        (_%hd3374133880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3374033876%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3374233883%_)
                                                        (_%__kont3806538066%_
                                                         _%hd3374133880%_)
                                                        (_%__match3810538106%_
                                                         _%e3373633862%_
                                                         _%hd3373733866%_
                                                         _%tl3373833869%_
                                                         _%e3374033876%_
                                                         _%hd3374133880%_
                                                         _%tl3374233883%_))))
                                                (_%__match3811138112%_
                                                 _%e3373633862%_
                                                 _%hd3373733866%_
                                                 _%tl3373833869%_))
                                            (if (gx#stx-pair? _%tl3373833869%_)
                                                (let ((_%e3374933828%_
                                                       (gx#syntax-e
                                                        _%tl3373833869%_)))
                                                  (let ((_%tl3375133835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3374933828%_)))
                                                        (_%hd3375033832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3374933828%_))))
                                                    (_%__match3810538106%_
                                                     _%e3373633862%_
                                                     _%hd3373733866%_
                                                     _%tl3373833869%_
                                                     _%e3374933828%_
                                                     _%hd3375033832%_
                                                     _%tl3375133835%_)))
                                                (_%__match3811138112%_
                                                 _%e3373633862%_
                                                 _%hd3373733866%_
                                                 _%tl3373833869%_))))
                                      (if (gx#stx-pair? _%tl3373833869%_)
                                          (let ((_%e3374933828%_
                                                 (gx#syntax-e
                                                  _%tl3373833869%_)))
                                            (let ((_%tl3375133835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3374933828%_)))
                                                  (_%hd3375033832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3374933828%_))))
                                              (_%__match3810538106%_
                                               _%e3373633862%_
                                               _%hd3373733866%_
                                               _%tl3373833869%_
                                               _%e3374933828%_
                                               _%hd3375033832%_
                                               _%tl3375133835%_)))
                                          (_%__match3811138112%_
                                           _%e3373633862%_
                                           _%hd3373733866%_
                                           _%tl3373833869%_)))))
                              (_%__kont3807138072%_)))))))
                 (_%parse-vector33548%_
                  (lambda (_%body33724%_)
                    (if (_%simple-vector?33549%_ _%body33724%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133545%_ _%body33724%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33547%_ _%body33724%_)
                                    '())))))
                 (_%simple-vector?33549%_
                  (lambda (_%body33661%_)
                    (let* ((_%__stx3811438115%_ _%body33661%_)
                           (_%g3366533677%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3811438115%_))))
                      (let ((_%__kont3811738118%_
                             (lambda (_%L33705%_ _%L33707%_)
                               (if (gx#ellipsis? _%L33707%_)
                                   '#f
                                   (_%simple-vector?33549%_ _%L33705%_))))
                            (_%__kont3811938120%_
                             (lambda () (gx#stx-null? _%body33661%_))))
                        (if (gx#stx-pair? _%__stx3811438115%_)
                            (let ((_%e3366933695%_
                                   (gx#syntax-e _%__stx3811438115%_)))
                              (let ((_%tl3367133702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3366933695%_)))
                                    (_%hd3367033699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3366933695%_))))
                                (_%__kont3811738118%_
                                 _%tl3367133702%_
                                 _%hd3367033699%_)))
                            (_%__kont3811938120%_))))))
                 (_%parse-class-body33550%_
                  (lambda (_%body33570%_)
                    (let _%recur33573%_ ((_%rest33576%_ _%body33570%_))
                      (let* ((_%__stx3813038131%_ _%rest33576%_)
                             (_%g3358033596%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3813038131%_))))
                        (let ((_%__kont3813338134%_
                               (lambda (_%L33634%_ _%L33636%_ _%L33637%_)
                                 (cons _%L33637%_
                                       (cons (_%parse133545%_ _%L33636%_)
                                             (_%recur33573%_ _%L33634%_)))))
                              (_%__kont3813538136%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33576%_)
                                     '()
                                     (_%parse-error33552%_ _%rest33576%_)))))
                          (let ((_%__match3814938150%_
                                 (lambda (_%e3358533614%_
                                          _%hd3358633618%_
                                          _%tl3358733621%_
                                          _%e3358833624%_
                                          _%hd3358933628%_
                                          _%tl3359033631%_)
                                   (let ((_%L33634%_ _%tl3359033631%_)
                                         (_%L33636%_ _%hd3358933628%_)
                                         (_%L33637%_ _%hd3358633618%_))
                                     (if (gx#stx-keyword? _%L33637%_)
                                         (_%__kont3813338134%_
                                          _%L33634%_
                                          _%L33636%_
                                          _%L33637%_)
                                         (_%__kont3813538136%_))))))
                            (if (gx#stx-pair? _%__stx3813038131%_)
                                (let ((_%e3358533614%_
                                       (gx#syntax-e _%__stx3813038131%_)))
                                  (let ((_%tl3358733621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3358533614%_)))
                                        (_%hd3358633618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3358533614%_))))
                                    (if (gx#stx-pair? _%tl3358733621%_)
                                        (let ((_%e3358833624%_
                                               (gx#syntax-e _%tl3358733621%_)))
                                          (let ((_%tl3359033631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3358833624%_)))
                                                (_%hd3358933628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3358833624%_))))
                                            (_%__match3814938150%_
                                             _%e3358533614%_
                                             _%hd3358633618%_
                                             _%tl3358733621%_
                                             _%e3358833624%_
                                             _%hd3358933628%_
                                             _%tl3359033631%_)))
                                        (_%__kont3813538136%_))))
                                (_%__kont3813538136%_))))))))
                 (_%parse-qq33551%_
                  (lambda (_%hd33557%_)
                    (let ((_%g3355933566%_
                           (lambda (_%g3356033562%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3356033562%_))))
                      (_%g3355933566%_ _%hd33557%_))))
                 (_%parse-error33552%_
                  (lambda (_%hd33554%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33543%_
                               (cons _%match-stx33543%_
                                     (cons _%stx33541%_
                                           (cons _%hd33554%_ '())))
                               (cons _%stx33541%_ (cons _%hd33554%_ '())))))))
          (_%parse133545%_ _%stx33541%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35231%_)
        (let ((_%match-stx35234%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35231%_
           _%match-stx35234%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39960_
        (let ((_g39961_ (let () (declare (not safe)) (##length _g39960_))))
          (cond ((let () (declare (not safe)) (##fx= _g39961_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39960_))
                ((let () (declare (not safe)) (##fx= _g39961_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39960_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33526%_)
        (let ((__tmp39962
               (lambda (_%E33529%_)
                 (with-exception-handler
                  (let ((_%E!33532%_ (current-exception-handler)))
                    (lambda (_%e33535%_)
                      (if (syntax-error? _%e33535%_)
                          (_%E33529%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33532%_ _%e33535%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33526%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39962))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32261%_)
        (letrec ((_%loop32264%_
                  (lambda (_%ptree32551%_ _%vars32553%_ _%K32554%_)
                    (let* ((_%__stx3824838249%_ _%ptree32551%_)
                           (_%g3256732677%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3824838249%_))))
                      (let ((_%__kont3825138252%_
                             (lambda (_%L33307%_)
                               (let* ((_%__stx3816838169%_ _%L33307%_)
                                      (_%g3332433358%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3816838169%_))))
                                 (let ((_%__kont3817138172%_
                                        (lambda (_%L33507%_)
                                          (_%loop32264%_
                                           _%L33507%_
                                           _%vars32553%_
                                           _%K32554%_)))
                                       (_%__kont3817338174%_
                                        (lambda (_%L33476%_)
                                          (_%loop32264%_
                                           _%L33476%_
                                           _%vars32553%_
                                           _%K32554%_)))
                                       (_%__kont3817538176%_
                                        (lambda (_%L33424%_)
                                          (_%loop32264%_
                                           _%L33424%_
                                           _%vars32553%_
                                           _%K32554%_)))
                                       (_%__kont3817738178%_
                                        (lambda ()
                                          (_%K32554%_ _%vars32553%_))))
                                   (if (gx#stx-pair? _%__stx3816838169%_)
                                       (let ((_%e3332733497%_
                                              (gx#syntax-e
                                               _%__stx3816838169%_)))
                                         (let ((_%tl3332933504%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3332733497%_)))
                                               (_%hd3332833501%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3332733497%_))))
                                           (if (gx#stx-null? _%tl3332933504%_)
                                               (_%__kont3817138172%_
                                                _%hd3332833501%_)
                                               (if (gx#stx-datum?
                                                    _%hd3332833501%_)
                                                   (let ((_%e3333433462%_
                                                          (gx#stx-e
                                                           _%hd3332833501%_)))
                                                     (if (equal? _%e3333433462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3332933504%_)
                     (let ((_%e3333533466%_ (gx#syntax-e _%tl3332933504%_)))
                       (let ((_%tl3333733473%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3333533466%_)))
                             (_%hd3333633470%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3333533466%_))))
                         (if (gx#stx-null? _%tl3333733473%_)
                             (_%__kont3817338174%_ _%hd3333633470%_)
                             (_%__kont3817738178%_))))
                     (_%__kont3817738178%_))
                 (if (equal? _%e3333433462%_ '::)
                     (if (gx#stx-pair? _%tl3332933504%_)
                         (let ((_%e3334333390%_
                                (gx#syntax-e _%tl3332933504%_)))
                           (let ((_%tl3334533397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3334333390%_)))
                                 (_%hd3334433394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3334333390%_))))
                             (if (gx#stx-pair? _%tl3334533397%_)
                                 (let ((_%e3334633400%_
                                        (gx#syntax-e _%tl3334533397%_)))
                                   (let ((_%tl3334833407%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3334633400%_)))
                                         (_%hd3334733404%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3334633400%_))))
                                     (if (gx#stx-datum? _%hd3334733404%_)
                                         (let ((_%e3334933410%_
                                                (gx#stx-e _%hd3334733404%_)))
                                           (if (equal? _%e3334933410%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3334833407%_)
                                                   (let ((_%e3335033414%_
                                                          (gx#syntax-e
                                                           _%tl3334833407%_)))
                                                     (let ((_%tl3335233421%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3335033414%_)))
                                                           (_%hd3335133418%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3335033414%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3335233421%_)
                                                           (_%__kont3817538176%_
                                                            _%hd3335133418%_)
                                                           (_%__kont3817738178%_))))
                                                   (_%__kont3817738178%_))
                                               (_%__kont3817738178%_)))
                                         (_%__kont3817738178%_))))
                                 (_%__kont3817738178%_))))
                         (_%__kont3817738178%_))
                     (_%__kont3817738178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3817738178%_)))))
                                       (_%__kont3817738178%_))))))
                            (_%__kont3825338254%_
                             (lambda (_%L33194%_ _%L33196%_)
                               (let* ((_%__stx3815238153%_ _%L33194%_)
                                      (_%g3321233224%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3815238153%_))))
                                 (let ((_%__kont3815538156%_
                                        (lambda (_%L33252%_ _%L33254%_)
                                          (_%loop32264%_
                                           _%L33254%_
                                           _%vars32553%_
                                           (lambda (_%g3326633268%_)
                                             (_%loop32264%_
                                              (cons _%L33196%_ _%L33252%_)
                                              _%g3326633268%_
                                              _%K32554%_)))))
                                       (_%__kont3815738158%_
                                        (lambda ()
                                          (_%K32554%_ _%vars32553%_))))
                                   (if (gx#stx-pair? _%__stx3815238153%_)
                                       (let ((_%e3321633242%_
                                              (gx#syntax-e
                                               _%__stx3815238153%_)))
                                         (let ((_%tl3321833249%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3321633242%_)))
                                               (_%hd3321733246%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3321633242%_))))
                                           (_%__kont3815538156%_
                                            _%tl3321833249%_
                                            _%hd3321733246%_)))
                                       (_%__kont3815738158%_))))))
                            (_%__kont3825538256%_
                             (lambda (_%L33163%_)
                               (_%loop32264%_
                                _%L33163%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3825738258%_
                             (lambda (_%L33109%_ _%L33111%_)
                               (_%loop32264%_
                                _%L33111%_
                                _%vars32553%_
                                (lambda (_%g3312633128%_)
                                  (_%loop32264%_
                                   _%L33109%_
                                   _%g3312633128%_
                                   _%K32554%_)))))
                            (_%__kont3825938260%_
                             (lambda (_%L33045%_ _%L33047%_)
                               (_%loop32264%_
                                _%L33047%_
                                _%vars32553%_
                                (lambda (_%g3306233064%_)
                                  (_%loop32264%_
                                   _%L33045%_
                                   _%g3306233064%_
                                   _%K32554%_)))))
                            (_%__kont3826138262%_
                             (lambda (_%L32990%_)
                               (_%loop32264%_
                                _%L32990%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3826338264%_
                             (lambda (_%L32940%_ _%L32942%_)
                               (_%loop-vector32266%_
                                _%L32940%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3826538266%_
                             (lambda (_%L32897%_)
                               (_%loop-vector32266%_
                                _%L32897%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3826738268%_
                             (lambda (_%L32840%_)
                               (_%loop-class-list32268%_
                                _%L32840%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3826938270%_
                             (lambda (_%L32781%_ _%L32783%_)
                               (_%loop32264%_
                                _%L32781%_
                                _%vars32553%_
                                _%K32554%_)))
                            (_%__kont3827138272%_
                             (lambda (_%L32719%_)
                               (if (find (lambda (_%g3273432736%_)
                                           (gx#bound-identifier=?
                                            _%g3273432736%_
                                            _%L32719%_))
                                         _%vars32553%_)
                                   (_%K32554%_ _%vars32553%_)
                                   (_%K32554%_
                                    (cons _%L32719%_ _%vars32553%_)))))
                            (_%__kont3827338274%_
                             (lambda () (_%K32554%_ _%vars32553%_))))
                        (let* ((_%__match3840538406%_
                                (lambda (_%e3262432920%_
                                         _%hd3262532924%_
                                         _%tl3262632927%_
                                         _%e3262732930%_
                                         _%hd3262832934%_
                                         _%tl3262932937%_)
                                  (let ((_%L32940%_ _%hd3262832934%_)
                                        (_%L32942%_ _%hd3262532924%_))
                                    (if (or (gx#stx-eq? 'values: _%L32942%_)
                                            (gx#stx-eq? 'vector: _%L32942%_))
                                        (_%__kont3826338264%_
                                         _%L32940%_
                                         _%L32942%_)
                                        (if (gx#stx-datum? _%hd3262532924%_)
                                            (let ((_%e3263432873%_
                                                   (gx#stx-e
                                                    _%hd3262532924%_)))
                                              (if (equal? _%e3263432873%_
                                                          'struct:)
                                                  (_%__kont3827338274%_)
                                                  (if (equal? _%e3263432873%_
                                                              'class:)
                                                      (_%__kont3827338274%_)
                                                      (if (equal? _%e3263432873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3827338274%_)
                  (if (equal? _%e3263432873%_ 'var:)
                      (_%__kont3827138272%_ _%hd3262832934%_)
                      (_%__kont3827338274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3827338274%_))))))
                               (_%__match3829938300%_
                                (lambda (_%e3257933184%_
                                         _%hd3258033188%_
                                         _%tl3258133191%_)
                                  (let ((_%L33194%_ _%tl3258133191%_)
                                        (_%L33196%_ _%hd3258033188%_))
                                    (if (or (gx#stx-eq? 'and: _%L33196%_)
                                            (gx#stx-eq? 'or: _%L33196%_))
                                        (_%__kont3825338254%_
                                         _%L33194%_
                                         _%L33196%_)
                                        (if (gx#stx-datum? _%hd3258033188%_)
                                            (let ((_%e3258633149%_
                                                   (gx#stx-e
                                                    _%hd3258033188%_)))
                                              (if (equal? _%e3258633149%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3258133191%_)
                                                      (let ((_%e3258733153%_
                                                             (gx#syntax-e
                                                              _%tl3258133191%_)))
                                                        (let ((_%tl3258933160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3258733153%_)))
                      (_%hd3258833157%_
                       (let () (declare (not safe)) (##car _%e3258733153%_))))
                  (if (gx#stx-null? _%tl3258933160%_)
                      (_%__kont3825538256%_ _%hd3258833157%_)
                      (_%__kont3827338274%_))))
              (_%__kont3827338274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3258633149%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3258133191%_)
                                                          (let ((_%e3259633089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3258133191%_)))
                    (let ((_%tl3259833096%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3259633089%_)))
                          (_%hd3259733093%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3259633089%_))))
                      (if (gx#stx-pair? _%tl3259833096%_)
                          (let ((_%e3259933099%_
                                 (gx#syntax-e _%tl3259833096%_)))
                            (let ((_%tl3260133106%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3259933099%_)))
                                  (_%hd3260033103%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3259933099%_))))
                              (if (gx#stx-null? _%tl3260133106%_)
                                  (_%__kont3825738258%_
                                   _%hd3260033103%_
                                   _%hd3259733093%_)
                                  (_%__kont3827338274%_))))
                          (if (gx#stx-null? _%tl3259833096%_)
                              (_%__match3840538406%_
                               _%e3257933184%_
                               _%hd3258033188%_
                               _%tl3258133191%_
                               _%e3259633089%_
                               _%hd3259733093%_
                               _%tl3259833096%_)
                              (_%__kont3827338274%_)))))
                  (_%__kont3827338274%_))
              (if (equal? _%e3258633149%_ 'splice:)
                  (if (gx#stx-pair? _%tl3258133191%_)
                      (let ((_%e3260833025%_ (gx#syntax-e _%tl3258133191%_)))
                        (let ((_%tl3261033032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3260833025%_)))
                              (_%hd3260933029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3260833025%_))))
                          (if (gx#stx-pair? _%tl3261033032%_)
                              (let ((_%e3261133035%_
                                     (gx#syntax-e _%tl3261033032%_)))
                                (let ((_%tl3261333042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3261133035%_)))
                                      (_%hd3261233039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3261133035%_))))
                                  (if (gx#stx-null? _%tl3261333042%_)
                                      (_%__kont3825938260%_
                                       _%hd3261233039%_
                                       _%hd3260933029%_)
                                      (_%__kont3827338274%_))))
                              (if (gx#stx-null? _%tl3261033032%_)
                                  (_%__match3840538406%_
                                   _%e3257933184%_
                                   _%hd3258033188%_
                                   _%tl3258133191%_
                                   _%e3260833025%_
                                   _%hd3260933029%_
                                   _%tl3261033032%_)
                                  (_%__kont3827338274%_)))))
                      (_%__kont3827338274%_))
                  (if (equal? _%e3258633149%_ 'box:)
                      (if (gx#stx-pair? _%tl3258133191%_)
                          (let ((_%e3261932980%_
                                 (gx#syntax-e _%tl3258133191%_)))
                            (let ((_%tl3262132987%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3261932980%_)))
                                  (_%hd3262032984%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3261932980%_))))
                              (if (gx#stx-null? _%tl3262132987%_)
                                  (_%__kont3826138262%_ _%hd3262032984%_)
                                  (_%__kont3827338274%_))))
                          (_%__kont3827338274%_))
                      (if (gx#stx-pair? _%tl3258133191%_)
                          (let ((_%e3262732930%_
                                 (gx#syntax-e _%tl3258133191%_)))
                            (let ((_%tl3262932937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3262732930%_)))
                                  (_%hd3262832934%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3262732930%_))))
                              (if (gx#stx-null? _%tl3262932937%_)
                                  (_%__match3840538406%_
                                   _%e3257933184%_
                                   _%hd3258033188%_
                                   _%tl3258133191%_
                                   _%e3262732930%_
                                   _%hd3262832934%_
                                   _%tl3262932937%_)
                                  (if (equal? _%e3258633149%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3262932937%_)
                                          (let ((_%e3263832887%_
                                                 (gx#syntax-e
                                                  _%tl3262932937%_)))
                                            (let ((_%tl3264032894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3263832887%_)))
                                                  (_%hd3263932891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3263832887%_))))
                                              (if (gx#stx-null?
                                                   _%tl3264032894%_)
                                                  (_%__kont3826538266%_
                                                   _%hd3263932891%_)
                                                  (_%__kont3827338274%_))))
                                          (_%__kont3827338274%_))
                                      (if (equal? _%e3258633149%_ 'class:)
                                          (if (gx#stx-pair? _%tl3262932937%_)
                                              (let ((_%e3264932830%_
                                                     (gx#syntax-e
                                                      _%tl3262932937%_)))
                                                (let ((_%tl3265132837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3264932830%_)))
                                                      (_%hd3265032834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3264932830%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3265132837%_)
                                                      (_%__kont3826738268%_
                                                       _%hd3265032834%_)
                                                      (_%__kont3827338274%_))))
                                              (_%__kont3827338274%_))
                                          (if (equal? _%e3258633149%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3262932937%_)
                                                  (let ((_%e3266132771%_
                                                         (gx#syntax-e
                                                          _%tl3262932937%_)))
                                                    (let ((_%tl3266332778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3266132771%_)))
                                                          (_%hd3266232775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3266132771%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3266332778%_)
                                                          (_%__kont3826938270%_
                                                           _%hd3266232775%_
                                                           _%hd3262832934%_)
                                                          (_%__kont3827338274%_))))
                                                  (_%__kont3827338274%_))
                                              (_%__kont3827338274%_)))))))
                          (_%__kont3827338274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3258133191%_)
                                                (let ((_%e3262732930%_
                                                       (gx#syntax-e
                                                        _%tl3258133191%_)))
                                                  (let ((_%tl3262932937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3262732930%_)))
                                                        (_%hd3262832934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3262732930%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3262932937%_)
                                                        (_%__match3840538406%_
                                                         _%e3257933184%_
                                                         _%hd3258033188%_
                                                         _%tl3258133191%_
                                                         _%e3262732930%_
                                                         _%hd3262832934%_
                                                         _%tl3262932937%_)
                                                        (_%__kont3827338274%_))))
                                                (_%__kont3827338274%_))))))))
                          (if (gx#stx-pair? _%__stx3824838249%_)
                              (let ((_%e3257033283%_
                                     (gx#syntax-e _%__stx3824838249%_)))
                                (let ((_%tl3257233290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3257033283%_)))
                                      (_%hd3257133287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3257033283%_))))
                                  (if (gx#stx-datum? _%hd3257133287%_)
                                      (let ((_%e3257333293%_
                                             (gx#stx-e _%hd3257133287%_)))
                                        (if (equal? _%e3257333293%_ '?:)
                                            (if (gx#stx-pair? _%tl3257233290%_)
                                                (let ((_%e3257433297%_
                                                       (gx#syntax-e
                                                        _%tl3257233290%_)))
                                                  (let ((_%tl3257633304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3257433297%_)))
                                                        (_%hd3257533301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3257433297%_))))
                                                    (_%__kont3825138252%_
                                                     _%tl3257633304%_)))
                                                (_%__match3829938300%_
                                                 _%e3257033283%_
                                                 _%hd3257133287%_
                                                 _%tl3257233290%_))
                                            (_%__match3829938300%_
                                             _%e3257033283%_
                                             _%hd3257133287%_
                                             _%tl3257233290%_)))
                                      (_%__match3829938300%_
                                       _%e3257033283%_
                                       _%hd3257133287%_
                                       _%tl3257233290%_))))
                              (_%__kont3827338274%_)))))))
                 (_%loop-vector32266%_
                  (lambda (_%body32427%_ _%vars32429%_ _%K32430%_)
                    (let* ((_%__stx3850638507%_ _%body32427%_)
                           (_%g3243332456%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3850638507%_))))
                      (let ((_%__kont3850938510%_
                             (lambda (_%L32533%_)
                               (_%loop-list32267%_
                                _%L32533%_
                                _%vars32429%_
                                _%K32430%_)))
                            (_%__kont3851138512%_
                             (lambda (_%L32487%_)
                               (_%loop32264%_
                                _%L32487%_
                                _%vars32429%_
                                _%K32430%_))))
                        (if (gx#stx-pair? _%__stx3850638507%_)
                            (let ((_%e3243632509%_
                                   (gx#syntax-e _%__stx3850638507%_)))
                              (let ((_%tl3243832516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3243632509%_)))
                                    (_%hd3243732513%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3243632509%_))))
                                (if (gx#stx-datum? _%hd3243732513%_)
                                    (let ((_%e3243932519%_
                                           (gx#stx-e _%hd3243732513%_)))
                                      (if (equal? _%e3243932519%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3243832516%_)
                                              (let ((_%e3244032523%_
                                                     (gx#syntax-e
                                                      _%tl3243832516%_)))
                                                (let ((_%tl3244232530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3244032523%_)))
                                                      (_%hd3244132527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3244032523%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3244232530%_)
                                                      (_%__kont3850938510%_
                                                       _%hd3244132527%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3243332456%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3243332456%_)))
                                          (if (equal? _%e3243932519%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3243832516%_)
                                                  (let ((_%e3244832477%_
                                                         (gx#syntax-e
                                                          _%tl3243832516%_)))
                                                    (let ((_%tl3245032484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3244832477%_)))
                                                          (_%hd3244932481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3244832477%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3245032484%_)
                                                          (_%__kont3851138512%_
                                                           _%hd3244932481%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3243332456%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3243332456%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3243332456%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3243332456%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3243332456%_)))))))
                 (_%loop-list32267%_
                  (lambda (_%rest32357%_ _%vars32359%_ _%K32360%_)
                    (let* ((_%__stx3855638557%_ _%rest32357%_)
                           (_%g3236332375%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3855638557%_))))
                      (let ((_%__kont3855938560%_
                             (lambda (_%L32403%_ _%L32405%_)
                               (_%loop32264%_
                                _%L32405%_
                                _%vars32359%_
                                (lambda (_%g3241732419%_)
                                  (_%loop-list32267%_
                                   _%L32403%_
                                   _%g3241732419%_
                                   _%K32360%_)))))
                            (_%__kont3856138562%_
                             (lambda () (_%K32360%_ _%vars32359%_))))
                        (if (gx#stx-pair? _%__stx3855638557%_)
                            (let ((_%e3236732393%_
                                   (gx#syntax-e _%__stx3855638557%_)))
                              (let ((_%tl3236932400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3236732393%_)))
                                    (_%hd3236832397%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3236732393%_))))
                                (_%__kont3855938560%_
                                 _%tl3236932400%_
                                 _%hd3236832397%_)))
                            (_%__kont3856138562%_))))))
                 (_%loop-class-list32268%_
                  (lambda (_%rest32270%_ _%vars32272%_ _%K32273%_)
                    (let* ((_%__stx3857238573%_ _%rest32270%_)
                           (_%g3227632291%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3857238573%_))))
                      (let ((_%__kont3857538576%_
                             (lambda (_%L32329%_ _%L32331%_)
                               (_%loop32264%_
                                _%L32331%_
                                _%vars32272%_
                                (lambda (_%g3234732349%_)
                                  (_%loop-class-list32268%_
                                   _%L32329%_
                                   _%g3234732349%_
                                   _%K32273%_)))))
                            (_%__kont3857738578%_
                             (lambda () (_%K32273%_ _%vars32272%_))))
                        (if (gx#stx-pair? _%__stx3857238573%_)
                            (let ((_%e3228032309%_
                                   (gx#syntax-e _%__stx3857238573%_)))
                              (let ((_%tl3228232316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3228032309%_)))
                                    (_%hd3228132313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3228032309%_))))
                                (if (gx#stx-pair? _%tl3228232316%_)
                                    (let ((_%e3228332319%_
                                           (gx#syntax-e _%tl3228232316%_)))
                                      (let ((_%tl3228532326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3228332319%_)))
                                            (_%hd3228432323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3228332319%_))))
                                        (_%__kont3857538576%_
                                         _%tl3228532326%_
                                         _%hd3228432323%_)))
                                    (_%__kont3857738578%_))))
                            (_%__kont3857738578%_)))))))
          (_%loop32264%_ _%ptree32261%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29187%_ _%tgt29189%_ _%ptree29190%_ _%K29191%_ _%E29192%_)
        (letrec ((_%generate129194%_
                  (lambda (_%tgt30460%_ _%ptree30462%_ _%K30463%_ _%E30464%_)
                    (let* ((_%g3046630474%_
                            (lambda (_%g3046730470%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3046730470%_)))
                           (_%g3046532257%_
                            (lambda (_%g3046730478%_)
                              ((lambda (_%L30481%_)
                                 (let* ((_%__stx3880838809%_ _%ptree30462%_)
                                        (_%g3050830650%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3880838809%_))))
                                   (let ((_%__kont3881138812%_
                                          (lambda (_%L31972%_ _%L31974%_)
                                            (let* ((_%__stx3872638727%_
                                                    _%L31972%_)
                                                   (_%g3199132026%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872638727%_))))
                                              (let ((_%__kont3872938730%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31974%_ (cons _%L30481%_ '())))
                           (cons _%K30463%_ (cons _%E30464%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873138732%_
                                                     (lambda (_%L32227%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31974%_ (cons _%L30481%_ '())))
                           (cons (_%generate129194%_
                                  _%tgt30460%_
                                  _%L32227%_
                                  _%K30463%_
                                  _%E30464%_)
                                 (cons _%E30464%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873338734%_
                                                     (lambda (_%L32165%_)
                                                       (let* ((_%g3217932187%_
                                                               (lambda (_%g3218032183%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3218032183%_)))
                      (_%g3217832206%_
                       (lambda (_%g3218032191%_)
                         ((lambda (_%L32194%_)
                            (cons 'let
                                  (cons (cons (cons _%L32194%_
                                                    (cons (cons _%L31974%_
                                                                (cons _%L30481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32194%_
                                                          (cons (_%generate129194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32194%_
                         _%L32165%_
                         _%K30463%_
                         _%E30464%_)
                        (cons _%E30464%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3218032191%_))))
                 (_%g3217832206%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873538736%_
                                                     (lambda (_%L32081%_
                                                              _%L32083%_)
                                                       (let* ((_%g3210332111%_
                                                               (lambda (_%g3210432107%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3210432107%_)))
                      (_%g3210232130%_
                       (lambda (_%g3210432115%_)
                         ((lambda (_%L32118%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31974%_
                                                    (cons _%L30481%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32083%_ (cons _%L30481%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129194%_
                         _%L32118%_
                         _%L32081%_
                         _%K30463%_
                         _%E30464%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30464%_ '())))))
                          _%g3210432115%_))))
                 (_%g3210232130%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3198832238%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3872638727%_)
                                                             (let ((_%e3199432217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3872638727%_)))
                       (let ((_%tl3199632224%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3199432217%_)))
                             (_%hd3199532221%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3199432217%_))))
                         (if (gx#stx-null? _%tl3199632224%_)
                             (_%__kont3873138732%_ _%hd3199532221%_)
                             (if (gx#stx-datum? _%hd3199532221%_)
                                 (let ((_%e3200132151%_
                                        (gx#stx-e _%hd3199532221%_)))
                                   (if (equal? _%e3200132151%_ '=>:)
                                       (if (gx#stx-pair? _%tl3199632224%_)
                                           (let ((_%e3200232155%_
                                                  (gx#syntax-e
                                                   _%tl3199632224%_)))
                                             (let ((_%tl3200432162%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3200232155%_)))
                                                   (_%hd3200332159%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3200232155%_))))
                                               (if (gx#stx-null?
                                                    _%tl3200432162%_)
                                                   (_%__kont3873338734%_
                                                    _%hd3200332159%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3199132026%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3199132026%_)))
                                       (if (equal? _%e3200132151%_ '::)
                                           (if (gx#stx-pair? _%tl3199632224%_)
                                               (let ((_%e3201132047%_
                                                      (gx#syntax-e
                                                       _%tl3199632224%_)))
                                                 (let ((_%tl3201332054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3201132047%_)))
                                                       (_%hd3201232051%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3201132047%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3201332054%_)
                                                       (let ((_%e3201432057%_
                                                              (gx#syntax-e
                                                               _%tl3201332054%_)))
                                                         (let ((_%tl3201632064%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3201432057%_)))
                       (_%hd3201532061%_
                        (let () (declare (not safe)) (##car _%e3201432057%_))))
                   (if (gx#stx-datum? _%hd3201532061%_)
                       (let ((_%e3201732067%_ (gx#stx-e _%hd3201532061%_)))
                         (if (equal? _%e3201732067%_ '=>:)
                             (if (gx#stx-pair? _%tl3201632064%_)
                                 (let ((_%e3201832071%_
                                        (gx#syntax-e _%tl3201632064%_)))
                                   (let ((_%tl3202032078%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3201832071%_)))
                                         (_%hd3201932075%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3201832071%_))))
                                     (if (gx#stx-null? _%tl3202032078%_)
                                         (_%__kont3873538736%_
                                          _%hd3201932075%_
                                          _%hd3201232051%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3199132026%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3199132026%_)))
                             (let () (declare (not safe)) (_%g3199132026%_))))
                       (let () (declare (not safe)) (_%g3199132026%_)))))
               (let () (declare (not safe)) (_%g3199132026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3199132026%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3199132026%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3199132026%_))))))
                     (let () (declare (not safe)) (_%g3199132026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3872638727%_)
                                                      (_%__kont3872938730%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3198832238%_))))))))
                                         (_%__kont3881338814%_
                                          (lambda (_%L31869%_)
                                            (let* ((_%__stx3871038711%_
                                                    _%L31869%_)
                                                   (_%g3188231894%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3871038711%_))))
                                              (let ((_%__kont3871338714%_
                                                     (lambda (_%L31922%_
                                                              _%L31924%_)
                                                       (_%generate129194%_
                                                        _%tgt30460%_
                                                        _%L31924%_
                                                        (_%generate129194%_
                                                         _%tgt30460%_
                                                         (cons 'and:
                                                               _%L31922%_)
                                                         _%K30463%_
                                                         _%E30464%_)
                                                        _%E30464%_)))
                                                    (_%__kont3871538716%_
                                                     (lambda () _%K30463%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3871038711%_)
                                                    (let ((_%e3188631912%_
                                                           (gx#syntax-e
                                                            _%__stx3871038711%_)))
                                                      (let ((_%tl3188831919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3188631912%_)))
                    (_%hd3188731916%_
                     (let () (declare (not safe)) (##car _%e3188631912%_))))
                (_%__kont3871338714%_ _%tl3188831919%_ _%hd3188731916%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871538716%_))))))
                                         (_%__kont3881538816%_
                                          (lambda (_%L31776%_)
                                            (let* ((_%__stx3869438695%_
                                                    _%L31776%_)
                                                   (_%g3178931801%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3869438695%_))))
                                              (let ((_%__kont3869738698%_
                                                     (lambda (_%L31829%_
                                                              _%L31831%_)
                                                       (_%generate129194%_
                                                        _%tgt30460%_
                                                        _%L31831%_
                                                        _%K30463%_
                                                        (_%generate129194%_
                                                         _%tgt30460%_
                                                         (cons 'or: _%L31829%_)
                                                         _%K30463%_
                                                         _%E30464%_))))
                                                    (_%__kont3869938700%_
                                                     (lambda () _%E30464%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3869438695%_)
                                                    (let ((_%e3179331819%_
                                                           (gx#syntax-e
                                                            _%__stx3869438695%_)))
                                                      (let ((_%tl3179531826%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3179331819%_)))
                    (_%hd3179431823%_
                     (let () (declare (not safe)) (##car _%e3179331819%_))))
                (_%__kont3869738698%_ _%tl3179531826%_ _%hd3179431823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3869938700%_))))))
                                         (_%__kont3881738818%_
                                          (lambda (_%L31741%_)
                                            (_%generate129194%_
                                             _%tgt30460%_
                                             _%L31741%_
                                             _%E30464%_
                                             _%K30463%_)))
                                         (_%__kont3881938820%_
                                          (lambda (_%L31615%_ _%L31617%_)
                                            (let* ((_%g3163431649%_
                                                    (lambda (_%g3163531645%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3163531645%_)))
                                                   (_%g3163331706%_
                                                    (lambda (_%g3163531653%_)
                                                      (if (gx#stx-pair?
                                                           _%g3163531653%_)
                                                          (let ((_%e3163831656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3163531653%_)))
                    (let ((_%hd3163931660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3163831656%_)))
                          (_%tl3164031663%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3163831656%_))))
                      (if (gx#stx-pair? _%tl3164031663%_)
                          (let ((_%e3164131666%_
                                 (gx#syntax-e _%tl3164031663%_)))
                            (let ((_%hd3164231670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3164131666%_)))
                                  (_%tl3164331673%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3164131666%_))))
                              (if (gx#stx-null? _%tl3164331673%_)
                                  ((lambda (_%L31676%_ _%L31678%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30481%_ '()))
                                                 (cons (let ((_%hd-pat31694%_
                                                              (gx#stx-e
                                                               _%L31617%_))
                                                             (_%tl-pat31696%_
                                                              (gx#stx-e
                                                               _%L31615%_)))
                                                         (if (and (equal? _%hd-pat31694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31696%_ '(any:)))
                     _%K30463%_
                     (if (equal? _%tl-pat31696%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31678%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129194%_
                                            _%L31678%_
                                            _%L31617%_
                                            _%K30463%_
                                            _%E30464%_)
                                           '())))
                         (if (equal? _%hd-pat31694%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31676%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30481%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129194%_
                                                _%L31676%_
                                                _%L31615%_
                                                _%K30463%_
                                                _%E30464%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31678%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30481%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31676%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30481%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129194%_
                                                _%L31678%_
                                                _%L31617%_
                                                (_%generate129194%_
                                                 _%L31676%_
                                                 _%L31615%_
                                                 _%K30463%_
                                                 _%E30464%_)
                                                _%E30464%_)
                                               '())))))))
               (cons _%E30464%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3164231670%_
                                   _%hd3163931660%_)
                                  (_%g3163431649%_ _%g3163531653%_))))
                          (_%g3163431649%_ _%g3163531653%_))))
                  (_%g3163431649%_ _%g3163531653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3163331706%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3882138822%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30463%_ (cons _%E30464%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3882338824%_
                                          (lambda (_%L31531%_ _%L31533%_)
                                            (_%generate-splice29196%_
                                             _%tgt30460%_
                                             _%L31533%_
                                             _%L31531%_
                                             _%K30463%_
                                             _%E30464%_)))
                                         (_%__kont3882538826%_
                                          (lambda (_%L31445%_)
                                            (let* ((_%g3145931467%_
                                                    (lambda (_%g3146031463%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3146031463%_)))
                                                   (_%g3145831486%_
                                                    (lambda (_%g3146031471%_)
                                                      ((lambda (_%L31474%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30481%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31474%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30481%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129194%_
                                                      _%L31474%_
                                                      _%L31445%_
                                                      _%K30463%_
                                                      _%E30464%_)
                                                     '())))
                                   (cons _%E30464%_ '())))))
               _%g3146031471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3145831486%_
                                               (gx#genident 'e)))))
                                         (_%__kont3882738828%_
                                          (lambda (_%L31250%_)
                                            (let* ((_%__stx3864438645%_
                                                    _%L31250%_)
                                                   (_%g3126531288%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3864438645%_))))
                                              (let ((_%__kont3864738648%_
                                                     (lambda (_%L31365%_)
                                                       (let* ((_%g3137931387%_
                                                               (lambda (_%g3138031383%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3138031383%_)))
                      (_%g3137831406%_
                       (lambda (_%g3138031391%_)
                         ((lambda (_%L31394%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30481%_
                                                                '()))
                                                    (cons _%L31394%_ '())))
                                        (cons (_%generate-simple-vector29197%_
                                               _%tgt30460%_
                                               _%L31365%_
                                               '0
                                               '##values-ref
                                               _%K30463%_
                                               _%E30464%_)
                                              (cons _%E30464%_ '())))))
                          _%g3138031391%_))))
                 (_%g3137831406%_ (gx#stx-length _%L31365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3864938650%_
                                                     (lambda (_%L31319%_)
                                                       (_%generate-list-vector29198%_
                                                        _%tgt30460%_
                                                        _%L31319%_
                                                        'values->list
                                                        _%K30463%_
                                                        _%E30464%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3864438645%_)
                                                    (let ((_%e3126831341%_
                                                           (gx#syntax-e
                                                            _%__stx3864438645%_)))
                                                      (let ((_%tl3127031348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3126831341%_)))
                    (_%hd3126931345%_
                     (let () (declare (not safe)) (##car _%e3126831341%_))))
                (if (gx#stx-datum? _%hd3126931345%_)
                    (let ((_%e3127131351%_ (gx#stx-e _%hd3126931345%_)))
                      (if (equal? _%e3127131351%_ 'simple:)
                          (if (gx#stx-pair? _%tl3127031348%_)
                              (let ((_%e3127231355%_
                                     (gx#syntax-e _%tl3127031348%_)))
                                (let ((_%tl3127431362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3127231355%_)))
                                      (_%hd3127331359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3127231355%_))))
                                  (if (gx#stx-null? _%tl3127431362%_)
                                      (_%__kont3864738648%_ _%hd3127331359%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3126531288%_)))))
                              (let () (declare (not safe)) (_%g3126531288%_)))
                          (if (equal? _%e3127131351%_ 'list:)
                              (if (gx#stx-pair? _%tl3127031348%_)
                                  (let ((_%e3128031309%_
                                         (gx#syntax-e _%tl3127031348%_)))
                                    (let ((_%tl3128231316%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3128031309%_)))
                                          (_%hd3128131313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3128031309%_))))
                                      (if (gx#stx-null? _%tl3128231316%_)
                                          (_%__kont3864938650%_
                                           _%hd3128131313%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3126531288%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3126531288%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3126531288%_)))))
                    (let () (declare (not safe)) (_%g3126531288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3126531288%_)))))))
                                         (_%__kont3882938830%_
                                          (lambda (_%L31055%_)
                                            (let* ((_%__stx3859438595%_
                                                    _%L31055%_)
                                                   (_%g3107031093%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3859438595%_))))
                                              (let ((_%__kont3859738598%_
                                                     (lambda (_%L31170%_)
                                                       (let* ((_%g3118431192%_
                                                               (lambda (_%g3118531188%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3118531188%_)))
                      (_%g3118331211%_
                       (lambda (_%g3118531196%_)
                         ((lambda (_%L31199%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30481%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30481%_ '()))
                              (cons _%L31199%_ '())))
                  (cons (_%generate-simple-vector29197%_
                         _%tgt30460%_
                         _%L31170%_
                         '0
                         '##vector-ref
                         _%K30463%_
                         _%E30464%_)
                        (cons _%E30464%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30464%_ '())))))
                          _%g3118531196%_))))
                 (_%g3118331211%_ (gx#stx-length _%L31170%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3859938600%_
                                                     (lambda (_%L31124%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30481%_ '()))
                           (cons (_%generate-list-vector29198%_
                                  _%tgt30460%_
                                  _%L31124%_
                                  'vector->list
                                  _%K30463%_
                                  _%E30464%_)
                                 (cons _%E30464%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3859438595%_)
                                                    (let ((_%e3107331146%_
                                                           (gx#syntax-e
                                                            _%__stx3859438595%_)))
                                                      (let ((_%tl3107531153%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3107331146%_)))
                    (_%hd3107431150%_
                     (let () (declare (not safe)) (##car _%e3107331146%_))))
                (if (gx#stx-datum? _%hd3107431150%_)
                    (let ((_%e3107631156%_ (gx#stx-e _%hd3107431150%_)))
                      (if (equal? _%e3107631156%_ 'simple:)
                          (if (gx#stx-pair? _%tl3107531153%_)
                              (let ((_%e3107731160%_
                                     (gx#syntax-e _%tl3107531153%_)))
                                (let ((_%tl3107931167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3107731160%_)))
                                      (_%hd3107831164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3107731160%_))))
                                  (if (gx#stx-null? _%tl3107931167%_)
                                      (_%__kont3859738598%_ _%hd3107831164%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3107031093%_)))))
                              (let () (declare (not safe)) (_%g3107031093%_)))
                          (if (equal? _%e3107631156%_ 'list:)
                              (if (gx#stx-pair? _%tl3107531153%_)
                                  (let ((_%e3108531114%_
                                         (gx#syntax-e _%tl3107531153%_)))
                                    (let ((_%tl3108731121%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3108531114%_)))
                                          (_%hd3108631118%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3108531114%_))))
                                      (if (gx#stx-null? _%tl3108731121%_)
                                          (_%__kont3859938600%_
                                           _%hd3108631118%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3107031093%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3107031093%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3107031093%_)))))
                    (let () (declare (not safe)) (_%g3107031093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3107031093%_)))))))
                                         (_%__kont3883138832%_
                                          (lambda (_%L31006%_ _%L31008%_)
                                            (_%generate-struct29199%_
                                             (gx#stx-e _%L31008%_)
                                             _%tgt30460%_
                                             _%L31006%_
                                             _%K30463%_
                                             _%E30464%_)))
                                         (_%__kont3883338834%_
                                          (lambda (_%L30947%_ _%L30949%_)
                                            (_%generate-class29202%_
                                             (gx#stx-e _%L30949%_)
                                             _%tgt30460%_
                                             _%L30947%_
                                             _%K30463%_
                                             _%E30464%_)))
                                         (_%__kont3883538836%_
                                          (lambda (_%L30844%_)
                                            (let* ((_%g3085830866%_
                                                    (lambda (_%g3085930862%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3085930862%_)))
                                                   (_%g3085730885%_
                                                    (lambda (_%g3085930870%_)
                                                      ((lambda (_%L30873%_)
                                                         (cons 'if
                                                               (cons (cons _%L30873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30481%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30844%_ '()))
                                               '())))
                             (cons _%K30463%_ (cons _%E30464%_ '())))))
               _%g3085930870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3085730885%_
                                               (let ((_%e30889%_
                                                      (gx#stx-e _%L30844%_)))
                                                 (if (or (symbol? _%e30889%_)
                                                         (keyword? _%e30889%_)
                                                         (immediate?
                                                          _%e30889%_))
                                                     '##eq?
                                                     (if (number? _%e30889%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3883738838%_
                                          (lambda (_%L30764%_ _%L30766%_)
                                            (let* ((_%g3078230790%_
                                                    (lambda (_%g3078330786%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3078330786%_)))
                                                   (_%g3078130809%_
                                                    (lambda (_%g3078330794%_)
                                                      ((lambda (_%L30797%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30766%_
                                                     (cons _%L30481%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129194%_
                                    _%L30797%_
                                    _%L30764%_
                                    _%K30463%_
                                    _%E30464%_)
                                   '()))))
               _%g3078330794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3078130809%_
                                               (gx#genident 'e)))))
                                         (_%__kont3883938840%_
                                          (lambda (_%L30706%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30481%_ '()))
                      '())
                (cons _%K30463%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3884138842%_
                                          (lambda () _%K30463%_)))
                                     (if (gx#stx-pair? _%__stx3880838809%_)
                                         (let ((_%e3051231948%_
                                                (gx#syntax-e
                                                 _%__stx3880838809%_)))
                                           (let ((_%tl3051431955%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3051231948%_)))
                                                 (_%hd3051331952%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3051231948%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3051331952%_)
                                                 (let ((_%e3051531958%_
                                                        (gx#stx-e
                                                         _%hd3051331952%_)))
                                                   (if (equal? _%e3051531958%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3051431955%_)
                                                           (let ((_%e3051631962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3051431955%_)))
                     (let ((_%tl3051831969%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3051631962%_)))
                           (_%hd3051731966%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3051631962%_))))
                       (_%__kont3881138812%_
                        _%tl3051831969%_
                        _%hd3051731966%_)))
                   (let () (declare (not safe)) (_%g3050830650%_)))
               (if (equal? _%e3051531958%_ 'and:)
                   (_%__kont3881338814%_ _%tl3051431955%_)
                   (if (equal? _%e3051531958%_ 'or:)
                       (_%__kont3881538816%_ _%tl3051431955%_)
                       (if (equal? _%e3051531958%_ 'not:)
                           (if (gx#stx-pair? _%tl3051431955%_)
                               (let ((_%e3053431731%_
                                      (gx#syntax-e _%tl3051431955%_)))
                                 (let ((_%tl3053631738%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3053431731%_)))
                                       (_%hd3053531735%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3053431731%_))))
                                   (if (gx#stx-null? _%tl3053631738%_)
                                       (_%__kont3881738818%_ _%hd3053531735%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050830650%_)))))
                               (let () (declare (not safe)) (_%g3050830650%_)))
                           (if (equal? _%e3051531958%_ 'cons:)
                               (if (gx#stx-pair? _%tl3051431955%_)
                                   (let ((_%e3054331595%_
                                          (gx#syntax-e _%tl3051431955%_)))
                                     (let ((_%tl3054531602%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3054331595%_)))
                                           (_%hd3054431599%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3054331595%_))))
                                       (if (gx#stx-pair? _%tl3054531602%_)
                                           (let ((_%e3054631605%_
                                                  (gx#syntax-e
                                                   _%tl3054531602%_)))
                                             (let ((_%tl3054831612%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3054631605%_)))
                                                   (_%hd3054731609%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3054631605%_))))
                                               (if (gx#stx-null?
                                                    _%tl3054831612%_)
                                                   (_%__kont3881938820%_
                                                    _%hd3054731609%_
                                                    _%hd3054431599%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050830650%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050830650%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050830650%_)))
                               (if (equal? _%e3051531958%_ 'null:)
                                   (if (gx#stx-null? _%tl3051431955%_)
                                       (_%__kont3882138822%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050830650%_)))
                                   (if (equal? _%e3051531958%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3051431955%_)
                                           (let ((_%e3055931511%_
                                                  (gx#syntax-e
                                                   _%tl3051431955%_)))
                                             (let ((_%tl3056131518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3055931511%_)))
                                                   (_%hd3056031515%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3055931511%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3056131518%_)
                                                   (let ((_%e3056231521%_
                                                          (gx#syntax-e
                                                           _%tl3056131518%_)))
                                                     (let ((_%tl3056431528%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3056231521%_)))
                                                           (_%hd3056331525%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3056231521%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3056431528%_)
                                                           (_%__kont3882338824%_
                                                            _%hd3056331525%_
                                                            _%hd3056031515%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3050830650%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050830650%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050830650%_)))
                                       (if (equal? _%e3051531958%_ 'box:)
                                           (if (gx#stx-pair? _%tl3051431955%_)
                                               (let ((_%e3057031435%_
                                                      (gx#syntax-e
                                                       _%tl3051431955%_)))
                                                 (let ((_%tl3057231442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3057031435%_)))
                                                       (_%hd3057131439%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3057031435%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3057231442%_)
                                                       (_%__kont3882538826%_
                                                        _%hd3057131439%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3050830650%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3050830650%_)))
                                           (if (equal? _%e3051531958%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3051431955%_)
                                                   (let ((_%e3057831240%_
                                                          (gx#syntax-e
                                                           _%tl3051431955%_)))
                                                     (let ((_%tl3058031247%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3057831240%_)))
                                                           (_%hd3057931244%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3057831240%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3058031247%_)
                                                           (_%__kont3882738828%_
                                                            _%hd3057931244%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3050830650%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050830650%_)))
                                               (if (equal? _%e3051531958%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3051431955%_)
                                                       (let ((_%e3058631045%_
                                                              (gx#syntax-e
                                                               _%tl3051431955%_)))
                                                         (let ((_%tl3058831052%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3058631045%_)))
                       (_%hd3058731049%_
                        (let () (declare (not safe)) (##car _%e3058631045%_))))
                   (if (gx#stx-null? _%tl3058831052%_)
                       (_%__kont3882938830%_ _%hd3058731049%_)
                       (let () (declare (not safe)) (_%g3050830650%_)))))
               (let () (declare (not safe)) (_%g3050830650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3051531958%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3051431955%_)
                                                           (let ((_%e3059530986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3051431955%_)))
                     (let ((_%tl3059730993%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3059530986%_)))
                           (_%hd3059630990%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3059530986%_))))
                       (if (gx#stx-pair? _%tl3059730993%_)
                           (let ((_%e3059830996%_
                                  (gx#syntax-e _%tl3059730993%_)))
                             (let ((_%tl3060031003%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3059830996%_)))
                                   (_%hd3059931000%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3059830996%_))))
                               (if (gx#stx-null? _%tl3060031003%_)
                                   (_%__kont3883138832%_
                                    _%hd3059931000%_
                                    _%hd3059630990%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050830650%_)))))
                           (let () (declare (not safe)) (_%g3050830650%_)))))
                   (let () (declare (not safe)) (_%g3050830650%_)))
               (if (equal? _%e3051531958%_ 'class:)
                   (if (gx#stx-pair? _%tl3051431955%_)
                       (let ((_%e3060730927%_ (gx#syntax-e _%tl3051431955%_)))
                         (let ((_%tl3060930934%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3060730927%_)))
                               (_%hd3060830931%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3060730927%_))))
                           (if (gx#stx-pair? _%tl3060930934%_)
                               (let ((_%e3061030937%_
                                      (gx#syntax-e _%tl3060930934%_)))
                                 (let ((_%tl3061230944%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3061030937%_)))
                                       (_%hd3061130941%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3061030937%_))))
                                   (if (gx#stx-null? _%tl3061230944%_)
                                       (_%__kont3883338834%_
                                        _%hd3061130941%_
                                        _%hd3060830931%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050830650%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3050830650%_)))))
                       (let () (declare (not safe)) (_%g3050830650%_)))
                   (if (equal? _%e3051531958%_ 'datum:)
                       (if (gx#stx-pair? _%tl3051431955%_)
                           (let ((_%e3061830834%_
                                  (gx#syntax-e _%tl3051431955%_)))
                             (let ((_%tl3062030841%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3061830834%_)))
                                   (_%hd3061930838%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3061830834%_))))
                               (if (gx#stx-null? _%tl3062030841%_)
                                   (_%__kont3883538836%_ _%hd3061930838%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050830650%_)))))
                           (let () (declare (not safe)) (_%g3050830650%_)))
                       (if (equal? _%e3051531958%_ 'apply:)
                           (if (gx#stx-pair? _%tl3051431955%_)
                               (let ((_%e3062730744%_
                                      (gx#syntax-e _%tl3051431955%_)))
                                 (let ((_%tl3062930751%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3062730744%_)))
                                       (_%hd3062830748%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3062730744%_))))
                                   (if (gx#stx-pair? _%tl3062930751%_)
                                       (let ((_%e3063030754%_
                                              (gx#syntax-e _%tl3062930751%_)))
                                         (let ((_%tl3063230761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3063030754%_)))
                                               (_%hd3063130758%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3063030754%_))))
                                           (if (gx#stx-null? _%tl3063230761%_)
                                               (_%__kont3883738838%_
                                                _%hd3063130758%_
                                                _%hd3062830748%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3050830650%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050830650%_)))))
                               (let () (declare (not safe)) (_%g3050830650%_)))
                           (if (equal? _%e3051531958%_ 'var:)
                               (if (gx#stx-pair? _%tl3051431955%_)
                                   (let ((_%e3063830696%_
                                          (gx#syntax-e _%tl3051431955%_)))
                                     (let ((_%tl3064030703%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3063830696%_)))
                                           (_%hd3063930700%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3063830696%_))))
                                       (if (gx#stx-null? _%tl3064030703%_)
                                           (_%__kont3883938840%_
                                            _%hd3063930700%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050830650%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050830650%_)))
                               (if (equal? _%e3051531958%_ 'any:)
                                   (if (gx#stx-null? _%tl3051431955%_)
                                       (_%__kont3884138842%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050830650%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050830650%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3050830650%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3050830650%_))))))
                               _%g3046730478%_))))
                      (_%g3046532257%_ _%tgt30460%_))))
                 (_%generate-splice29196%_
                  (lambda (_%tgt29832%_
                           _%hd29834%_
                           _%rest29835%_
                           _%K29836%_
                           _%E29837%_)
                    (let* ((_%g2983929856%_
                            (lambda (_%g2984029852%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2984029852%_)))
                           (_%g2983830456%_
                            (lambda (_%g2984029860%_)
                              (if (gx#stx-pair/null? _%g2984029860%_)
                                  (let ((_g39963_
                                         (gx#syntax-split-splice
                                          _%g2984029860%_
                                          '0)))
                                    (begin
                                      (let ((_g39964_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39963_)
                                                   (##values-length _g39963_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39964_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39964_)))
                                      (let ((_%target2984229863%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39963_ 0)))
                                            (_%tl2984429866%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39963_ 1))))
                                        (if (gx#stx-null? _%tl2984429866%_)
                                            (letrec ((_%loop2984529869%_
                                                      (lambda (_%hd2984329873%_
                                                               _%var2984929876%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2984329873%_)
                                                            (let ((_%e2984629879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2984329873%_)))
                      (let ((_%lp-hd2984729883%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2984629879%_)))
                            (_%lp-tl2984829886%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2984629879%_))))
                        (_%loop2984529869%_
                         _%lp-tl2984829886%_
                         (cons _%lp-hd2984729883%_ _%var2984929876%_))))
                    (let ((_%var2985029889%_ (reverse _%var2984929876%_)))
                      ((lambda (_%L29893%_)
                         (let* ((_%g2990929926%_
                                 (lambda (_%g2991029922%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2991029922%_)))
                                (_%g2990830444%_
                                 (lambda (_%g2991029930%_)
                                   (if (gx#stx-pair/null? _%g2991029930%_)
                                       (let ((_g39965_
                                              (gx#syntax-split-splice
                                               _%g2991029930%_
                                               '0)))
                                         (begin
                                           (let ((_g39966_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39965_)
                                                        (##values-length
                                                         _g39965_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39966_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39966_)))
                                           (let ((_%target2991229933%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39965_ 0)))
                                                 (_%tl2991429936%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39965_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2991429936%_)
                                                 (letrec ((_%loop2991529939%_
                                                           (lambda (_%hd2991329943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2991929946%_)
                     (if (gx#stx-pair? _%hd2991329943%_)
                         (let ((_%e2991629949%_
                                (gx#syntax-e _%hd2991329943%_)))
                           (let ((_%lp-hd2991729953%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2991629949%_)))
                                 (_%lp-tl2991829956%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2991629949%_))))
                             (_%loop2991529939%_
                              _%lp-tl2991829956%_
                              (cons _%lp-hd2991729953%_ _%var-r2991929946%_))))
                         (let ((_%var-r2992029959%_
                                (reverse _%var-r2991929946%_)))
                           ((lambda (_%L29963%_)
                              (let* ((_%g2998029997%_
                                      (lambda (_%g2998129993%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2998129993%_)))
                                     (_%g2997930432%_
                                      (lambda (_%g2998130001%_)
                                        (if (gx#stx-pair/null? _%g2998130001%_)
                                            (let ((_g39967_
                                                   (gx#syntax-split-splice
                                                    _%g2998130001%_
                                                    '0)))
                                              (begin
                                                (let ((_g39968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39967_)
                                                             (##values-length
                                                              _g39967_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39968_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2998330004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39967_
                                                          0)))
                                                      (_%tl2998530007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39967_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2998530007%_)
                                                      (letrec ((_%loop2998630010%_
                                                                (lambda (_%hd2998430014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2999030017%_)
                          (if (gx#stx-pair? _%hd2998430014%_)
                              (let ((_%e2998730020%_
                                     (gx#syntax-e _%hd2998430014%_)))
                                (let ((_%lp-hd2998830024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2998730020%_)))
                                      (_%lp-tl2998930027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2998730020%_))))
                                  (_%loop2998630010%_
                                   _%lp-tl2998930027%_
                                   (cons _%lp-hd2998830024%_
                                         _%init2999030017%_))))
                              (let ((_%init2999130030%_
                                     (reverse _%init2999030017%_)))
                                ((lambda (_%L30034%_)
                                   (let* ((_%g3005130059%_
                                           (lambda (_%g3005230055%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3005230055%_)))
                                          (_%g3005030428%_
                                           (lambda (_%g3005230063%_)
                                             ((lambda (_%L30066%_)
                                                (let* ((_%g3007930087%_
                                                        (lambda (_%g3008030083%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3008030083%_)))
                                                       (_%g3007830424%_
                                                        (lambda (_%g3008030091%_)
                                                          ((lambda (_%L30094%_)
                                                             (let* ((_%g3010730115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3010830111%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3010830111%_)))
                            (_%g3010630420%_
                             (lambda (_%g3010830119%_)
                               ((lambda (_%L30122%_)
                                  (let* ((_%g3013530143%_
                                          (lambda (_%g3013630139%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3013630139%_)))
                                         (_%g3013430416%_
                                          (lambda (_%g3013630147%_)
                                            ((lambda (_%L30150%_)
                                               (let* ((_%g3016330171%_
                                                       (lambda (_%g3016430167%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3016430167%_)))
                                                      (_%g3016230412%_
                                                       (lambda (_%g3016430175%_)
                                                         ((lambda (_%L30178%_)
                                                            (let* ((_%g3019130199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3019230195%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3019230195%_)))
                           (_%g3019030408%_
                            (lambda (_%g3019230203%_)
                              ((lambda (_%L30206%_)
                                 (let* ((_%g3021930227%_
                                         (lambda (_%g3022030223%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3022030223%_)))
                                        (_%g3021830404%_
                                         (lambda (_%g3022030231%_)
                                           ((lambda (_%L30234%_)
                                              (let* ((_%g3024730255%_
                                                      (lambda (_%g3024830251%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3024830251%_)))
                                                     (_%g3024630389%_
                                                      (lambda (_%g3024830259%_)
                                                        ((lambda (_%L30262%_)
                                                           (let* ((_%g3027530283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3027630279%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3027630279%_)))
                          (_%g3027430377%_
                           (lambda (_%g3027630287%_)
                             ((lambda (_%L30290%_)
                                (let* ((_%g3030330311%_
                                        (lambda (_%g3030430307%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3030430307%_)))
                                       (_%g3030230373%_
                                        (lambda (_%g3030430315%_)
                                          ((lambda (_%L30318%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30206%_
                                                     (foldr (lambda (_%g3033230343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3033330346%_)
                      (cons _%g3033230343%_ _%g3033330346%_))
                    '()
                    _%L29893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30234%_ '())))
                                   '()))
                       (cons (cons _%L30150%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30178%_
                                                           (cons _%L30206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3033430349%_ _%g3033530352%_)
                                  (cons _%g3033430349%_ _%g3033530352%_))
                                '()
                                _%L29963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30318%_ '())))
                                         '()))
                             (cons (cons _%L30122%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3033630355%_ _%g3033730358%_)
                                  (cons _%g3033630355%_ _%g3033730358%_))
                                '()
                                _%L29963%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30206%_ '()))
                                     (cons (cons _%L30150%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30206%_
                     (foldr (lambda (_%g3033830361%_ _%g3033930364%_)
                              (cons _%g3033830361%_ _%g3033930364%_))
                            '()
                            _%L29963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30290%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30122%_
                             (cons _%L30066%_
                                   (foldr (lambda (_%g3034030367%_
                                                   _%g3034130370%_)
                                            (cons _%g3034030367%_
                                                  _%g3034130370%_))
                                          '()
                                          _%L30034%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3030430315%_))))
                                  (_%g3030230373%_
                                   (_%generate129194%_
                                    _%L30178%_
                                    _%hd29834%_
                                    _%L30262%_
                                    _%L30290%_))))
                              _%g3027630287%_))))
                     (_%g3027430377%_
                      (cons _%L30094%_
                            (cons _%L30206%_
                                  (foldr (lambda (_%g3038030383%_
                                                  _%g3038130386%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3038030383%_
                                                             '()))
                                                 _%g3038130386%_))
                                         '()
                                         _%L29963%_))))))
                 _%g3024830259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3024630389%_
                                                 (cons _%L30122%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30206%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29963%_ _%L29893%_)
                       (foldr (lambda (_%g3039230396%_
                                       _%g3039330399%_
                                       _%g3039430401%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3039330399%_
                                                  (cons _%g3039230396%_ '())))
                                      _%g3039430401%_))
                              '()
                              _%L29963%_
                              _%L29893%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3022030231%_))))
                                   (_%g3021830404%_
                                    (_%generate129194%_
                                     _%L30206%_
                                     _%rest29835%_
                                     _%K29836%_
                                     _%E29837%_))))
                               _%g3019230203%_))))
                      (_%g3019030408%_ (gx#genident 'rest))))
                  _%g3016430175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3016230412%_
                                                  (gx#genident 'hd))))
                                             _%g3013630147%_))))
                                    (_%g3013430416%_
                                     (gx#genident 'splice-try))))
                                _%g3010830119%_))))
                       (_%g3010630420%_ (gx#genident 'splice-loop))))
                   _%g3008030091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3007830424%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3005230063%_))))
                                     (_%g3005030428%_ _%tgt29832%_)))
                                 _%init2999130030%_))))))
                (_%loop2998630010%_ _%target2998330004%_ '()))
              (_%g2998029997%_ _%g2998130001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2998029997%_
                                             _%g2998130001%_)))))
                                (_%g2997930432%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3043530438%_
                                                   _%g3043630441%_)
                                            (cons _%g3043530438%_
                                                  _%g3043630441%_))
                                          '()
                                          _%L29893%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2992029959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2991529939%_
                                                    _%target2991229933%_
                                                    '()))
                                                 (_%g2990929926%_
                                                  _%g2991029930%_)))))
                                       (_%g2990929926%_ _%g2991029930%_)))))
                           (_%g2990830444%_
                            (gx#gentemps
                             (foldr (lambda (_%g3044730450%_ _%g3044830453%_)
                                      (cons _%g3044730450%_ _%g3044830453%_))
                                    '()
                                    _%L29893%_)))))
                       _%var2985029889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2984529869%_
                                               _%target2984229863%_
                                               '()))
                                            (_%g2983929856%_
                                             _%g2984029860%_)))))
                                  (_%g2983929856%_ _%g2984029860%_)))))
                      (_%g2983830456%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29834%_)))))
                 (_%generate-simple-vector29197%_
                  (lambda (_%tgt29655%_
                           _%body29657%_
                           _%start29658%_
                           _%ref29659%_
                           _%K29660%_
                           _%E29661%_)
                    (let _%recur29663%_ ((_%rest29666%_ _%body29657%_)
                                         (_%off29668%_ _%start29658%_))
                      (let* ((_%__stx3916639167%_ _%rest29666%_)
                             (_%g2967129683%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3916639167%_))))
                        (let ((_%__kont3916939170%_
                               (lambda (_%L29711%_ _%L29713%_)
                                 (let* ((_%g2972829751%_
                                         (lambda (_%g2972929747%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2972929747%_)))
                                        (_%g2972729824%_
                                         (lambda (_%g2972929755%_)
                                           (if (gx#stx-pair? _%g2972929755%_)
                                               (let ((_%e2973429758%_
                                                      (gx#syntax-e
                                                       _%g2972929755%_)))
                                                 (let ((_%hd2973529762%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2973429758%_)))
                                                       (_%tl2973629765%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2973429758%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2973629765%_)
                                                       (let ((_%e2973729768%_
                                                              (gx#syntax-e
                                                               _%tl2973629765%_)))
                                                         (let ((_%hd2973829772%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2973729768%_)))
                       (_%tl2973929775%_
                        (let () (declare (not safe)) (##cdr _%e2973729768%_))))
                   (if (gx#stx-pair? _%tl2973929775%_)
                       (let ((_%e2974029778%_ (gx#syntax-e _%tl2973929775%_)))
                         (let ((_%hd2974129782%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2974029778%_)))
                               (_%tl2974229785%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2974029778%_))))
                           (if (gx#stx-pair? _%tl2974229785%_)
                               (let ((_%e2974329788%_
                                      (gx#syntax-e _%tl2974229785%_)))
                                 (let ((_%hd2974429792%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2974329788%_)))
                                       (_%tl2974529795%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2974329788%_))))
                                   (if (gx#stx-null? _%tl2974529795%_)
                                       ((lambda (_%L29798%_
                                                 _%L29800%_
                                                 _%L29801%_
                                                 _%L29802%_)
                                          (cons 'let
                                                (cons (cons (cons _%L29802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%L29798%_
                                      (cons _%L29801%_ (cons _%L29800%_ '())))
                                '()))
                    '())
              (cons (_%generate129194%_
                     _%L29802%_
                     _%L29713%_
                     (_%recur29663%_ _%L29711%_ (fx1+ _%off29668%_))
                     _%E29661%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2974429792%_
                                        _%hd2974129782%_
                                        _%hd2973829772%_
                                        _%hd2973529762%_)
                                       (_%g2972829751%_ _%g2972929755%_))))
                               (_%g2972829751%_ _%g2972929755%_))))
                       (_%g2972829751%_ _%g2972929755%_))))
               (_%g2972829751%_ _%g2972929755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2972829751%_
                                                _%g2972929755%_)))))
                                   (_%g2972729824%_
                                    (list (gx#genident 'e)
                                          _%tgt29655%_
                                          _%off29668%_
                                          _%ref29659%_)))))
                              (_%__kont3917139172%_ (lambda () _%K29660%_)))
                          (if (gx#stx-pair? _%__stx3916639167%_)
                              (let ((_%e2967529701%_
                                     (gx#syntax-e _%__stx3916639167%_)))
                                (let ((_%tl2967729708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2967529701%_)))
                                      (_%hd2967629705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2967529701%_))))
                                  (_%__kont3916939170%_
                                   _%tl2967729708%_
                                   _%hd2967629705%_)))
                              (_%__kont3917139172%_)))))))
                 (_%generate-list-vector29198%_
                  (lambda (_%tgt29547%_
                           _%body29549%_
                           _%->list29550%_
                           _%K29551%_
                           _%E29552%_)
                    (let* ((_%g2955429562%_
                            (lambda (_%g2955529558%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2955529558%_)))
                           (_%g2955329651%_
                            (lambda (_%g2955529566%_)
                              ((lambda (_%L29569%_)
                                 (let* ((_%g2958129589%_
                                         (lambda (_%g2958229585%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2958229585%_)))
                                        (_%g2958029647%_
                                         (lambda (_%g2958229593%_)
                                           ((lambda (_%L29596%_)
                                              (let* ((_%g2960929617%_
                                                      (lambda (_%g2961029613%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2961029613%_)))
                                                     (_%g2960829639%_
                                                      (lambda (_%g2961029621%_)
                                                        ((lambda (_%L29624%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29569%_ (cons _%L29624%_ '()))
                                     '())
                               (cons (_%generate129194%_
                                      _%L29569%_
                                      _%body29549%_
                                      _%K29551%_
                                      _%E29552%_)
                                     '()))))
                 _%g2961029621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2960829639%_
                                                 (let ((_%$e29643%_
                                                        _%->list29550%_))
                                                   (if (eq? 'values->list
                                                            _%$e29643%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29643%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29596%_ '()))
                   (if (eq? 'struct->list _%$e29643%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29596%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29187%_
                        _%->list29550%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2958229593%_))))
                                   (_%g2958029647%_ _%tgt29547%_)))
                               _%g2955529566%_))))
                      (_%g2955329651%_ (gx#genident 'e)))))
                 (_%generate-struct29199%_
                  (lambda (_%info29418%_
                           _%tgt29420%_
                           _%body29421%_
                           _%K29422%_
                           _%E29423%_)
                    (let* ((_%__stx3918239183%_ _%body29421%_)
                           (_%g2942629449%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3918239183%_))))
                      (let ((_%__kont3918539186%_
                             (lambda (_%L29526%_)
                               (let ((_%fields29540%_
                                      (_%struct-field-accessors29201%_
                                       _%info29418%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39936
                                                          _%info29418%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39936
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39936
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39936
                                                          'predicate)))
                                                   (cons _%tgt29420%_ '()))
                                             (cons (_%generate-simple-struct-body29200%_
                                                    _%info29418%_
                                                    _%tgt29420%_
                                                    _%L29526%_
                                                    _%K29422%_
                                                    _%E29423%_)
                                                   (cons _%E29423%_ '())))))))
                            (_%__kont3918739188%_
                             (lambda (_%L29480%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39937
                                                        _%info29418%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39937
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39937
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39937
                                                        'predicate)))
                                                 (cons _%tgt29420%_ '()))
                                           (cons (_%generate-list-vector29198%_
                                                  _%tgt29420%_
                                                  _%L29480%_
                                                  'struct->list
                                                  _%K29422%_
                                                  _%E29423%_)
                                                 (cons _%E29423%_ '())))))))
                        (if (gx#stx-pair? _%__stx3918239183%_)
                            (let ((_%e2942929502%_
                                   (gx#syntax-e _%__stx3918239183%_)))
                              (let ((_%tl2943129509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2942929502%_)))
                                    (_%hd2943029506%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2942929502%_))))
                                (if (gx#stx-datum? _%hd2943029506%_)
                                    (let ((_%e2943229512%_
                                           (gx#stx-e _%hd2943029506%_)))
                                      (if (equal? _%e2943229512%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2943129509%_)
                                              (let ((_%e2943329516%_
                                                     (gx#syntax-e
                                                      _%tl2943129509%_)))
                                                (let ((_%tl2943529523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2943329516%_)))
                                                      (_%hd2943429520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2943329516%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2943529523%_)
                                                      (_%__kont3918539186%_
                                                       _%hd2943429520%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2942629449%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2942629449%_)))
                                          (if (equal? _%e2943229512%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2943129509%_)
                                                  (let ((_%e2944129470%_
                                                         (gx#syntax-e
                                                          _%tl2943129509%_)))
                                                    (let ((_%tl2944329477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2944129470%_)))
                                                          (_%hd2944229474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2944129470%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2944329477%_)
                                                          (_%__kont3918739188%_
                                                           _%hd2944229474%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2942629449%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2942629449%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2942629449%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2942629449%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2942629449%_)))))))
                 (_%generate-simple-struct-body29200%_
                  (lambda (_%info29338%_
                           _%tgt29340%_
                           _%body29341%_
                           _%K29342%_
                           _%E29343%_)
                    (let _%recur29345%_ ((_%rest29348%_ _%body29341%_)
                                         (_%fields29350%_
                                          (_%struct-field-accessors29201%_
                                           _%info29338%_)))
                      (let* ((_%__stx3923239233%_ _%rest29348%_)
                             (_%g2935329365%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3923239233%_))))
                        (let ((_%__kont3923539236%_
                               (lambda (_%L29393%_ _%L29395%_)
                                 (if (null? _%fields29350%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29187%_
                                      _%info29338%_
                                      (let ((__obj39938 _%info29338%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39938
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39938
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39938
                                             'name))))
                                     (let ((_%$tgt29410%_ (gx#genident 'e))
                                           (_%getf29412%_
                                            (car _%fields29350%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29410%_
                                                               (cons (cons _%getf29412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29340%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129194%_
                                                          _%$tgt29410%_
                                                          _%L29395%_
                                                          (_%recur29345%_
                                                           _%L29393%_
                                                           (cdr _%fields29350%_))
                                                          _%E29343%_)
                                                         '())))))))
                              (_%__kont3923739238%_ (lambda () _%K29342%_)))
                          (if (gx#stx-pair? _%__stx3923239233%_)
                              (let ((_%e2935729383%_
                                     (gx#syntax-e _%__stx3923239233%_)))
                                (let ((_%tl2935929390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2935729383%_)))
                                      (_%hd2935829387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2935729383%_))))
                                  (_%__kont3923539236%_
                                   _%tl2935929390%_
                                   _%hd2935829387%_)))
                              (_%__kont3923739238%_)))))))
                 (_%struct-field-accessors29201%_
                  (lambda (_%info29319%_)
                    (let _%recur29322%_ ((_%next29325%_
                                          (cons _%info29319%_ '())))
                      (if (null? _%next29325%_)
                          '()
                          (let ((_%ti29328%_ (car _%next29325%_)))
                            (let ((__tmp39970
                                   (_%recur29322%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39939 _%ti29328%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39939
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39939
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39939
                                                'super))))))
                                  (__tmp39969
                                   (map (lambda (_%slot29331%_)
                                          (let ((_%$e29334%_
                                                 (agetq _%slot29331%_
                                                        (let ((__obj39940
                                                               _%ti29328%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39940
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39940 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39940
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29334%_
                                                _%$e29334%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29187%_
                                                 _%info29319%_
                                                 _%slot29331%_))))
                                        (let ((__obj39941 _%ti29328%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39941
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39941
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39941
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39970 __tmp39969)))))))
                 (_%generate-class29202%_
                  (lambda (_%info29312%_
                           _%tgt29314%_
                           _%body29315%_
                           _%K29316%_
                           _%E29317%_)
                    (cons 'if
                          (cons (cons (let ((__obj39942 _%info29312%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39942
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39942
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39942
                                             'predicate)))
                                      (cons _%tgt29314%_ '()))
                                (cons (_%generate-class-body29203%_
                                       _%info29312%_
                                       _%tgt29314%_
                                       _%body29315%_
                                       _%K29316%_
                                       _%E29317%_)
                                      (cons _%E29317%_ '()))))))
                 (_%generate-class-body29203%_
                  (lambda (_%info29205%_
                           _%tgt29207%_
                           _%body29208%_
                           _%K29209%_
                           _%E29210%_)
                    (let _%recur29212%_ ((_%rest29215%_ _%body29208%_))
                      (let* ((_%__stx3924839249%_ _%rest29215%_)
                             (_%g2921929235%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3924839249%_))))
                        (let ((_%__kont3925139252%_
                               (lambda (_%L29273%_ _%L29275%_ _%L29276%_)
                                 (let ((_%$e29296%_
                                        (agetq (let ((__tmp39971
                                                      (keyword->string
                                                       (gx#stx-e _%L29276%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39971))
                                               (let ((__obj39943
                                                      _%info29205%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39943
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39943
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39943
                                                      'unchecked-accessors))))))
                                   (if _%$e29296%_
                                       ((lambda (_%getf29300%_)
                                          (let ((_%$tgt29303%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29300%_ (cons _%tgt29207%_ '()))
                                  '()))
                      '())
                (cons (_%generate129194%_
                       _%$tgt29303%_
                       _%L29275%_
                       (_%recur29212%_ _%L29273%_)
                       _%E29210%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29296%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29187%_
                                        _%info29205%_
                                        _%L29276%_)))))
                              (_%__kont3925339254%_ (lambda () _%K29209%_)))
                          (if (gx#stx-pair? _%__stx3924839249%_)
                              (let ((_%e2922429253%_
                                     (gx#syntax-e _%__stx3924839249%_)))
                                (let ((_%tl2922629260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2922429253%_)))
                                      (_%hd2922529257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2922429253%_))))
                                  (if (gx#stx-pair? _%tl2922629260%_)
                                      (let ((_%e2922729263%_
                                             (gx#syntax-e _%tl2922629260%_)))
                                        (let ((_%tl2922929270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2922729263%_)))
                                              (_%hd2922829267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2922729263%_))))
                                          (_%__kont3925139252%_
                                           _%tl2922929270%_
                                           _%hd2922829267%_
                                           _%hd2922529257%_)))
                                      (_%__kont3925339254%_))))
                              (_%__kont3925339254%_))))))))
          (_%generate129194%_
           _%tgt29189%_
           _%ptree29190%_
           _%K29191%_
           _%E29192%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28000%_ _%tgt-lst28002%_ _%clauses28003%_)
        (letrec ((_%parse-body28005%_
                  (lambda (_%hd-len29009%_)
                    (let _%lp29012%_ ((_%rest29015%_ _%clauses28003%_)
                                      (_%r29017%_ '()))
                      (let* ((_%__stx3929839299%_ _%rest29015%_)
                             (_%g2902029032%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3929839299%_))))
                        (let ((_%__kont3930139302%_
                               (lambda (_%L29060%_ _%L29062%_)
                                 (let* ((_%__stx3927039271%_ _%L29062%_)
                                        (_%g2907929095%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3927039271%_))))
                                   (let ((_%__kont3927339274%_
                                          (lambda (_%L29164%_)
                                            (if (gx#stx-null? _%L29060%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29164%_)
                                 (let ((_%$e29175%_
                                        (gx#stx-source _%L29062%_)))
                                   (if _%$e29175%_
                                       _%$e29175%_
                                       (gx#stx-source _%stx28000%_))))
                                '())))
              _%r29017%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28000%_
                                                 _%L29062%_))))
                                         (_%__kont3927539276%_
                                          (lambda (_%L29123%_ _%L29125%_)
                                            (_%lp29012%_
                                             _%L29060%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2913729139%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2913729139%_
                           _%stx28000%_))
                        _%L29125%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29123%_)
                              (let ((_%$e29143%_ (gx#stx-source _%L29062%_)))
                                (if _%$e29143%_
                                    _%$e29143%_
                                    (gx#stx-source _%stx28000%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29017%_))))
                                         (_%__kont3927739278%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28000%_
                                             _%L29062%_))))
                                     (let* ((_%__match3929539296%_
                                             (lambda (_%e2908729113%_
                                                      _%hd2908829117%_
                                                      _%tl2908929120%_)
                                               (let ((_%L29123%_
                                                      _%tl2908929120%_)
                                                     (_%L29125%_
                                                      _%hd2908829117%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29125%_)
                                                          (fx= (gx#stx-length
                                                                _%L29125%_)
                                                               _%hd-len29009%_)
                                                          (gx#stx-list?
                                                           _%L29123%_)
                                                          (not (gx#stx-null?
                                                                _%L29123%_)))
                                                     (_%__kont3927539276%_
                                                      _%L29123%_
                                                      _%L29125%_)
                                                     (_%__kont3927739278%_)))))
                                            (_%__match3928939290%_
                                             (lambda (_%e2908229154%_
                                                      _%hd2908329158%_
                                                      _%tl2908429161%_)
                                               (let ((_%L29164%_
                                                      _%tl2908429161%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29164%_)
                                                          (not (gx#stx-null?
                                                                _%L29164%_)))
                                                     (_%__kont3927339274%_
                                                      _%L29164%_)
                                                     (_%__match3929539296%_
                                                      _%e2908229154%_
                                                      _%hd2908329158%_
                                                      _%tl2908429161%_))))))
                                       (if (gx#stx-pair? _%__stx3927039271%_)
                                           (let ((_%e2908229154%_
                                                  (gx#syntax-e
                                                   _%__stx3927039271%_)))
                                             (let ((_%tl2908429161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2908229154%_)))
                                                   (_%hd2908329158%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2908229154%_))))
                                               (if (gx#identifier?
                                                    _%hd2908329158%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39972_|
                                                        _%hd2908329158%_)
                                                       (_%__match3928939290%_
                                                        _%e2908229154%_
                                                        _%hd2908329158%_
                                                        _%tl2908429161%_)
                                                       (_%__match3929539296%_
                                                        _%e2908229154%_
                                                        _%hd2908329158%_
                                                        _%tl2908429161%_))
                                                   (_%__match3929539296%_
                                                    _%e2908229154%_
                                                    _%hd2908329158%_
                                                    _%tl2908429161%_))))
                                           (_%__kont3927739278%_)))))))
                              (_%__kont3930339304%_ (lambda () _%r29017%_)))
                          (if (gx#stx-pair? _%__stx3929839299%_)
                              (let ((_%e2902429050%_
                                     (gx#syntax-e _%__stx3929839299%_)))
                                (let ((_%tl2902629057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2902429050%_)))
                                      (_%hd2902529054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2902429050%_))))
                                  (_%__kont3930139302%_
                                   _%tl2902629057%_
                                   _%hd2902529054%_)))
                              (_%__kont3930339304%_)))))))
                 (_%generate-body28007%_
                  (lambda (_%body28711%_)
                    (let* ((_%g2871428722%_
                            (lambda (_%g2871528718%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2871528718%_)))
                           (_%g2871329005%_
                            (lambda (_%g2871528726%_)
                              ((lambda (_%L28729%_)
                                 (let* ((_%g2874128758%_
                                         (lambda (_%g2874228754%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2874228754%_)))
                                        (_%g2874029001%_
                                         (lambda (_%g2874228762%_)
                                           (if (gx#stx-pair/null?
                                                _%g2874228762%_)
                                               (let ((_g39973_
                                                      (gx#syntax-split-splice
                                                       _%g2874228762%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39974_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39973_)
                        (##values-length _g39973_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39974_ 2)))
                 (error "Context expects 2 values" _g39974_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2874428765%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39973_
                                                             0)))
                                                         (_%tl2874628768%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39973_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2874628768%_)
                                                         (letrec ((_%loop2874728771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2874528775%_ _%target2875128778%_)
                             (if (gx#stx-pair? _%hd2874528775%_)
                                 (let ((_%e2874828781%_
                                        (gx#syntax-e _%hd2874528775%_)))
                                   (let ((_%lp-hd2874928785%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2874828781%_)))
                                         (_%lp-tl2875028788%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2874828781%_))))
                                     (_%loop2874728771%_
                                      _%lp-tl2875028788%_
                                      (cons _%lp-hd2874928785%_
                                            _%target2875128778%_))))
                                 (let ((_%target2875228791%_
                                        (reverse _%target2875128778%_)))
                                   ((lambda (_%L28795%_)
                                      (let* ((_%g2881228829%_
                                              (lambda (_%g2881328825%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2881328825%_)))
                                             (_%g2881128997%_
                                              (lambda (_%g2881328833%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2881328833%_)
                                                    (let ((_g39975_
                                                           (gx#syntax-split-splice
                                                            _%g2881328833%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39976_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39975_)
                             (##values-length _g39975_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39976_ 2)))
                      (error "Context expects 2 values" _g39976_)))
                (let ((_%target2881528836%_
                       (let () (declare (not safe)) (##values-ref _g39975_ 0)))
                      (_%tl2881728839%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39975_ 1))))
                  (if (gx#stx-null? _%tl2881728839%_)
                      (letrec ((_%loop2881828842%_
                                (lambda (_%hd2881628846%_
                                         _%fail-diagnostic2882228849%_)
                                  (if (gx#stx-pair? _%hd2881628846%_)
                                      (let ((_%e2881928852%_
                                             (gx#syntax-e _%hd2881628846%_)))
                                        (let ((_%lp-hd2882028856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2881928852%_)))
                                              (_%lp-tl2882128859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2881928852%_))))
                                          (_%loop2881828842%_
                                           _%lp-tl2882128859%_
                                           (cons _%lp-hd2882028856%_
                                                 _%fail-diagnostic2882228849%_))))
                                      (let ((_%fail-diagnostic2882328862%_
                                             (reverse _%fail-diagnostic2882228849%_)))
                                        ((lambda (_%L28866%_)
                                           (let* ((_%g2888328891%_
                                                   (lambda (_%g2888428887%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2888428887%_)))
                                                  (_%g2888228977%_
                                                   (lambda (_%g2888428895%_)
                                                     ((lambda (_%L28898%_)
                                                        (let* ((_%g2891128919%_
                                                                (lambda (_%g2891228915%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2891228915%_)))
                       (_%g2891028973%_
                        (lambda (_%g2891228923%_)
                          ((lambda (_%L28926%_)
                             (let* ((_%g2893928947%_
                                     (lambda (_%g2894028943%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2894028943%_)))
                                    (_%g2893828969%_
                                     (lambda (_%g2894028951%_)
                                       ((lambda (_%L28954%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28954%_ '()))))
                                        _%g2894028951%_))))
                               (_%g2893828969%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28729%_
                                                         (cons _%L28898%_ '()))
                                                   '())
                                             (cons _%L28926%_ '())))
                                 (gx#stx-source _%stx28000%_)))))
                           _%g2891228923%_))))
                  (_%g2891028973%_
                   (_%generate-clauses28008%_
                    _%body28711%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28729%_ '()) '())))))))
              _%g2888428895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2888228977%_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'error)
                               (cons '"No clause matching"
                                     (foldr (lambda (_%g2898028985%_
                                                     _%g2898128988%_)
                                              (cons _%g2898028985%_
                                                    _%g2898128988%_))
                                            (foldr (lambda (_%g2898228991%_
                                                            _%g2898328994%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2898228991%_ '()))
                   _%g2898328994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28866%_)
                                            _%L28795%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28000%_)))))
                                         _%fail-diagnostic2882328862%_))))))
                        (_%loop2881828842%_ _%target2881528836%_ '()))
                      (_%g2881228829%_ _%g2881328833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2881228829%_
                                                     _%g2881328833%_)))))
                                        (_%g2881128997%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28003%_))))
                                    _%target2875228791%_))))))
                   (_%loop2874728771%_ _%target2874428765%_ '()))
                 (_%g2874128758%_ _%g2874228762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2874128758%_
                                                _%g2874228762%_)))))
                                   (_%g2874029001%_ _%tgt-lst28002%_)))
                               _%g2871528726%_))))
                      (_%g2871329005%_ (gx#genident 'E)))))
                 (_%generate-clauses28008%_
                  (lambda (_%rest28363%_ _%E28365%_)
                    (let* ((_%__stx3931439315%_ _%rest28363%_)
                           (_%g2836928385%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3931439315%_))))
                      (let ((_%__kont3931739318%_
                             (lambda (_%L28619%_)
                               (let* ((_%g2863028648%_
                                       (lambda (_%g2863128644%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2863128644%_)))
                                      (_%g2862928703%_
                                       (lambda (_%g2863128652%_)
                                         (if (gx#stx-pair? _%g2863128652%_)
                                             (let ((_%e2863428655%_
                                                    (gx#syntax-e
                                                     _%g2863128652%_)))
                                               (let ((_%hd2863528659%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2863428655%_)))
                                                     (_%tl2863628662%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2863428655%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2863628662%_)
                                                     (let ((_%e2863728665%_
                                                            (gx#syntax-e
                                                             _%tl2863628662%_)))
                                                       (let ((_%hd2863828669%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2863728665%_)))
                     (_%tl2863928672%_
                      (let () (declare (not safe)) (##cdr _%e2863728665%_))))
                 (if (gx#stx-pair? _%tl2863928672%_)
                     (let ((_%e2864028675%_ (gx#syntax-e _%tl2863928672%_)))
                       (let ((_%hd2864128679%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2864028675%_)))
                             (_%tl2864228682%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2864028675%_))))
                         (if (gx#stx-null? _%tl2864228682%_)
                             ((lambda (_%L28685%_ _%L28687%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28687%_)
                                                      (_%generate128009%_
                                                       _%L28687%_
                                                       _%L28685%_
                                                       _%E28365%_)
                                                      _%L28685%_)
                                                  '()))))
                              _%hd2864128679%_
                              _%hd2863828669%_)
                             (_%g2863028648%_ _%g2863128652%_))))
                     (_%g2863028648%_ _%g2863128652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2863028648%_
                                                      _%g2863128652%_))))
                                             (_%g2863028648%_
                                              _%g2863128652%_)))))
                                 (_%g2862928703%_ _%L28619%_))))
                            (_%__kont3931939320%_
                             (lambda (_%L28413%_ _%L28415%_)
                               (let* ((_%g2842828447%_
                                       (lambda (_%g2842928443%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2842928443%_)))
                                      (_%g2842728598%_
                                       (lambda (_%g2842928451%_)
                                         (if (gx#stx-pair? _%g2842928451%_)
                                             (let ((_%e2843328454%_
                                                    (gx#syntax-e
                                                     _%g2842928451%_)))
                                               (let ((_%hd2843428458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2843328454%_)))
                                                     (_%tl2843528461%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2843328454%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2843528461%_)
                                                     (let ((_%e2843628464%_
                                                            (gx#syntax-e
                                                             _%tl2843528461%_)))
                                                       (let ((_%hd2843728468%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2843628464%_)))
                     (_%tl2843828471%_
                      (let () (declare (not safe)) (##cdr _%e2843628464%_))))
                 (if (gx#stx-pair? _%tl2843828471%_)
                     (let ((_%e2843928474%_ (gx#syntax-e _%tl2843828471%_)))
                       (let ((_%hd2844028478%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2843928474%_)))
                             (_%tl2844128481%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2843928474%_))))
                         (if (gx#stx-null? _%tl2844128481%_)
                             ((lambda (_%L28484%_ _%L28486%_ _%L28487%_)
                                (if (gx#stx-e _%L28486%_)
                                    (let* ((_%g2850428519%_
                                            (lambda (_%g2850528515%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2850528515%_)))
                                           (_%g2850328564%_
                                            (lambda (_%g2850528523%_)
                                              (if (gx#stx-pair?
                                                   _%g2850528523%_)
                                                  (let ((_%e2850828526%_
                                                         (gx#syntax-e
                                                          _%g2850528523%_)))
                                                    (let ((_%hd2850928530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2850828526%_)))
                                                          (_%tl2851028533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2850828526%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2851028533%_)
                                                          (let ((_%e2851128536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2851028533%_)))
                    (let ((_%hd2851228540%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2851128536%_)))
                          (_%tl2851328543%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2851128536%_))))
                      (if (gx#stx-null? _%tl2851328543%_)
                          ((lambda (_%L28546%_ _%L28548%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28487%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28548%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28546%_ '()))))
                           _%hd2851228540%_
                           _%hd2850928530%_)
                          (_%g2850428519%_ _%g2850528523%_))))
                  (_%g2850428519%_ _%g2850528523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2850428519%_
                                                   _%g2850528523%_)))))
                                      (_%g2850328564%_
                                       (list (_%generate128009%_
                                              _%L28486%_
                                              _%L28484%_
                                              _%E28365%_)
                                             (_%generate-clauses28008%_
                                              _%L28413%_
                                              (cons _%L28487%_ '())))))
                                    (let* ((_%g2856828576%_
                                            (lambda (_%g2856928572%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2856928572%_)))
                                           (_%g2856728594%_
                                            (lambda (_%g2856928580%_)
                                              ((lambda (_%L28583%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@match-else)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L28484%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28583%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2856928580%_))))
                                      (_%g2856728594%_
                                       (_%generate-clauses28008%_
                                        _%L28413%_
                                        (cons _%L28487%_ '()))))))
                              _%hd2844028478%_
                              _%hd2843728468%_
                              _%hd2843428458%_)
                             (_%g2842828447%_ _%g2842928451%_))))
                     (_%g2842828447%_ _%g2842928451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2842828447%_
                                                      _%g2842928451%_))))
                                             (_%g2842828447%_
                                              _%g2842928451%_)))))
                                 (_%g2842728598%_ _%L28415%_))))
                            (_%__kont3932139322%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28365%_ '()))))))
                        (if (gx#stx-pair? _%__stx3931439315%_)
                            (let ((_%e2837228609%_
                                   (gx#syntax-e _%__stx3931439315%_)))
                              (let ((_%tl2837428616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2837228609%_)))
                                    (_%hd2837328613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2837228609%_))))
                                (if (gx#stx-null? _%tl2837428616%_)
                                    (_%__kont3931739318%_ _%hd2837328613%_)
                                    (_%__kont3931939320%_
                                     _%tl2837428616%_
                                     _%hd2837328613%_))))
                            (_%__kont3932139322%_))))))
                 (_%generate128009%_
                  (lambda (_%clause28011%_ _%body28013%_ _%E28014%_)
                    (let* ((_%g2801628040%_
                            (lambda (_%g2801728036%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2801728036%_)))
                           (_%g2801528359%_
                            (lambda (_%g2801728044%_)
                              (if (gx#stx-pair? _%g2801728044%_)
                                  (let ((_%e2802028047%_
                                         (gx#syntax-e _%g2801728044%_)))
                                    (let ((_%hd2802128051%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2802028047%_)))
                                          (_%tl2802228054%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2802028047%_))))
                                      (if (gx#stx-pair? _%tl2802228054%_)
                                          (let ((_%e2802328057%_
                                                 (gx#syntax-e
                                                  _%tl2802228054%_)))
                                            (let ((_%hd2802428061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2802328057%_)))
                                                  (_%tl2802528064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2802328057%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2802428061%_)
                                                  (let ((_g39977_
                                                         (gx#syntax-split-splice
                                                          _%hd2802428061%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39977_)
                           (##values-length _g39977_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39978_ 2)))
                    (error "Context expects 2 values" _g39978_)))
              (let ((_%target2802628067%_
                     (let () (declare (not safe)) (##values-ref _g39977_ 0)))
                    (_%tl2802828070%_
                     (let () (declare (not safe)) (##values-ref _g39977_ 1))))
                (if (gx#stx-null? _%tl2802828070%_)
                    (letrec ((_%loop2802928073%_
                              (lambda (_%hd2802728077%_ _%var2803328080%_)
                                (if (gx#stx-pair? _%hd2802728077%_)
                                    (let ((_%e2803028083%_
                                           (gx#syntax-e _%hd2802728077%_)))
                                      (let ((_%lp-hd2803128087%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2803028083%_)))
                                            (_%lp-tl2803228090%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2803028083%_))))
                                        (_%loop2802928073%_
                                         _%lp-tl2803228090%_
                                         (cons _%lp-hd2803128087%_
                                               _%var2803328080%_))))
                                    (let ((_%var2803428093%_
                                           (reverse _%var2803328080%_)))
                                      (if (gx#stx-null? _%tl2802528064%_)
                                          ((lambda (_%L28097%_ _%L28099%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2812028123%_
                                                                _%g2812128126%_)
                                                         (cons _%g2812028123%_
                                                               _%g2812128126%_))
                                                       '()
                                                       _%L28097%_)
                                                _%stx28000%_)
                                               (let* ((_%g2812928137%_
                                                       (lambda (_%g2813028133%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2813028133%_)))
                                                      (_%g2812828231%_
                                                       (lambda (_%g2813028141%_)
                                                         ((lambda (_%L28144%_)
                                                            (let* ((_%g2815728165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2815828161%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2815828161%_)))
                           (_%g2815628227%_
                            (lambda (_%g2815828169%_)
                              ((lambda (_%L28172%_)
                                 (let* ((_%g2818528193%_
                                         (lambda (_%g2818628189%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2818628189%_)))
                                        (_%g2818428215%_
                                         (lambda (_%g2818628197%_)
                                           ((lambda (_%L28200%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28200%_ '()))
                   (cons _%L28144%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28000%_)))
                                            _%g2818628197%_))))
                                   (_%g2818428215%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2821828221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2821928224%_)
                  (cons _%g2821828221%_ _%g2821928224%_))
                '()
                _%L28097%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28172%_ '())))
                                     (gx#stx-source _%stx28000%_)))))
                               _%g2815828169%_))))
                      (_%g2815628227%_ _%body28013%_)))
                  _%g2813028141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2812828231%_
                                                  (let _%recur28235%_ ((_%rest28238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28011%_)
                               (_%rest-targets28240%_ _%tgt-lst28002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3934039341%_
                                                            _%rest28238%_)
                                                           (_%g2824328255%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3934039341%_))))
                                                      (let ((_%__kont3934339344%_
                                                             (lambda (_%L28291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28293%_)
                       (let* ((_%g2830828320%_
                               (lambda (_%g2830928316%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2830928316%_)))
                              (_%g2830728351%_
                               (lambda (_%g2830928324%_)
                                 (if (gx#stx-pair? _%g2830928324%_)
                                     (let ((_%e2831228327%_
                                            (gx#syntax-e _%g2830928324%_)))
                                       (let ((_%hd2831328331%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2831228327%_)))
                                             (_%tl2831428334%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2831228327%_))))
                                         ((lambda (_%L28337%_ _%L28339%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28000%_
                                             _%L28339%_
                                             _%L28293%_
                                             (_%recur28235%_
                                              _%L28291%_
                                              _%L28337%_)
                                             _%E28014%_))
                                          _%tl2831428334%_
                                          _%hd2831328331%_)))
                                     (_%g2830828320%_ _%g2830928324%_)))))
                         (_%g2830728351%_ _%rest-targets28240%_))))
                    (_%__kont3934539346%_
                     (lambda ()
                       (cons _%L28099%_
                             (foldr (lambda (_%g2826528268%_ _%g2826628271%_)
                                      (cons _%g2826528268%_ _%g2826628271%_))
                                    '()
                                    _%L28097%_)))))
                (if (gx#stx-pair? _%__stx3934039341%_)
                    (let ((_%e2824728281%_ (gx#syntax-e _%__stx3934039341%_)))
                      (let ((_%tl2824928288%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2824728281%_)))
                            (_%hd2824828285%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2824728281%_))))
                        (_%__kont3934339344%_
                         _%tl2824928288%_
                         _%hd2824828285%_)))
                    (_%__kont3934539346%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2803428093%_
                                           _%hd2802128051%_)
                                          (_%g2801628040%_
                                           _%g2801728044%_)))))))
                      (_%loop2802928073%_ _%target2802628067%_ '()))
                    (_%g2801628040%_ _%g2801728044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2801628040%_
                                                   _%g2801728044%_))))
                                          (_%g2801628040%_ _%g2801728044%_))))
                                  (_%g2801628040%_ _%g2801728044%_)))))
                      (_%g2801528359%_
                       (list (gx#genident 'K)
                             (let ((__tmp39979
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28011%_)))
                               (declare (not safe))
                               (##apply append __tmp39979))))))))
          (_%generate-body28007%_
           (_%parse-body28005%_ (gx#stx-length _%tgt-lst28002%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27902%_ _%tgt27904%_ _%clauses27905%_)
        (letrec ((_%reclause27907%_
                  (lambda (_%clause27910%_)
                    (let* ((_%__stx3935639357%_ _%clause27910%_)
                           (_%g2791527930%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3935639357%_))))
                      (let ((_%__kont3935939360%_ (lambda () _%clause27910%_))
                            (_%__kont3936139362%_
                             (lambda (_%L27958%_ _%L27960%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27960%_ '()) _%L27958%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3936339364%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27902%_
                                _%clause27910%_))))
                        (if (gx#stx-pair? _%__stx3935639357%_)
                            (let ((_%e2791727982%_
                                   (gx#syntax-e _%__stx3935639357%_)))
                              (let ((_%tl2791927989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2791727982%_)))
                                    (_%hd2791827986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2791727982%_))))
                                (if (gx#identifier? _%hd2791827986%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39980_|
                                         _%hd2791827986%_)
                                        (_%__kont3935939360%_)
                                        (_%__kont3936139362%_
                                         _%tl2791927989%_
                                         _%hd2791827986%_))
                                    (_%__kont3936139362%_
                                     _%tl2791927989%_
                                     _%hd2791827986%_))))
                            (_%__kont3936339364%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27902%_
           (cons _%tgt27904%_ '())
           (gx#stx-map _%reclause27907%_ _%clauses27905%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35257%_)
        (let* ((_%__stx3938439385%_ _%stx35257%_)
               (_%g3526235291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3938439385%_))))
          (let ((_%__kont3938739388%_
                 (lambda (_%L35531%_)
                   (let* ((_%g3554435552%_
                           (lambda (_%g3554535548%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3554535548%_)))
                          (_%g3554335605%_
                           (lambda (_%g3554535556%_)
                             ((lambda (_%L35559%_)
                                (let* ((_%g3557135579%_
                                        (lambda (_%g3557235575%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3557235575%_)))
                                       (_%g3557035601%_
                                        (lambda (_%g3557235583%_)
                                          ((lambda (_%L35586%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35559%_ '())
                                                         (cons _%L35586%_
                                                               '()))))
                                           _%g3557235583%_))))
                                  (_%g3557035601%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35559%_ _%L35531%_))
                                    (gx#stx-source _%stx35257%_)))))
                              _%g3554535556%_))))
                     (_%g3554335605%_ (gx#genident 'e)))))
                (_%__kont3938939390%_
                 (lambda (_%L35426%_)
                   (let* ((_%g3543935447%_
                           (lambda (_%g3544035443%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3544035443%_)))
                          (_%g3543835500%_
                           (lambda (_%g3544035451%_)
                             ((lambda (_%L35454%_)
                                (let* ((_%g3546635474%_
                                        (lambda (_%g3546735470%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3546735470%_)))
                                       (_%g3546535496%_
                                        (lambda (_%g3546735478%_)
                                          ((lambda (_%L35481%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35454%_
                                                         (cons _%L35481%_
                                                               '()))))
                                           _%g3546735478%_))))
                                  (_%g3546535496%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35454%_ _%L35426%_))
                                    (gx#stx-source _%stx35257%_)))))
                              _%g3544035451%_))))
                     (_%g3543835500%_ (gx#genident 'args)))))
                (_%__kont3939139392%_
                 (lambda (_%L35318%_ _%L35320%_)
                   (let* ((_%g3533435342%_
                           (lambda (_%g3533535338%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3533535338%_)))
                          (_%g3533335395%_
                           (lambda (_%g3533535346%_)
                             ((lambda (_%L35349%_)
                                (let* ((_%g3536135369%_
                                        (lambda (_%g3536235365%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3536235365%_)))
                                       (_%g3536035391%_
                                        (lambda (_%g3536235373%_)
                                          ((lambda (_%L35376%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35320%_ '()))
                       '())
                 (cons _%L35376%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3536235373%_))))
                                  (_%g3536035391%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35257%_
                                    _%L35349%_
                                    _%L35318%_))))
                              _%g3533535346%_))))
                     (_%g3533335395%_ (gx#genident _%L35320%_))))))
            (let* ((_%__match3943739438%_
                    (lambda (_%e3528035298%_
                             _%hd3528135302%_
                             _%tl3528235305%_
                             _%e3528335308%_
                             _%hd3528435312%_
                             _%tl3528535315%_)
                      (let ((_%L35318%_ _%tl3528535315%_)
                            (_%L35320%_ _%hd3528435312%_))
                        (if (gx#stx-list? _%L35318%_)
                            (_%__kont3939139392%_ _%L35318%_ _%L35320%_)
                            (let () (declare (not safe)) (_%g3526235291%_))))))
                   (_%__match3942539426%_
                    (lambda (_%e3527235406%_
                             _%hd3527335410%_
                             _%tl3527435413%_
                             _%e3527535416%_
                             _%hd3527635420%_
                             _%tl3527735423%_)
                      (let ((_%L35426%_ _%tl3527735423%_))
                        (if (gx#stx-list? _%L35426%_)
                            (_%__kont3938939390%_ _%L35426%_)
                            (_%__match3943739438%_
                             _%e3527235406%_
                             _%hd3527335410%_
                             _%tl3527435413%_
                             _%e3527535416%_
                             _%hd3527635420%_
                             _%tl3527735423%_)))))
                   (_%__match3940939410%_
                    (lambda (_%e3526535511%_
                             _%hd3526635515%_
                             _%tl3526735518%_
                             _%e3526835521%_
                             _%hd3526935525%_
                             _%tl3527035528%_)
                      (let ((_%L35531%_ _%tl3527035528%_))
                        (if (gx#stx-list? _%L35531%_)
                            (_%__kont3938739388%_ _%L35531%_)
                            (_%__match3943739438%_
                             _%e3526535511%_
                             _%hd3526635515%_
                             _%tl3526735518%_
                             _%e3526835521%_
                             _%hd3526935525%_
                             _%tl3527035528%_))))))
              (if (gx#stx-pair? _%__stx3938439385%_)
                  (let ((_%e3526535511%_ (gx#syntax-e _%__stx3938439385%_)))
                    (let ((_%tl3526735518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3526535511%_)))
                          (_%hd3526635515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3526535511%_))))
                      (if (gx#stx-pair? _%tl3526735518%_)
                          (let ((_%e3526835521%_
                                 (gx#syntax-e _%tl3526735518%_)))
                            (let ((_%tl3527035528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3526835521%_)))
                                  (_%hd3526935525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3526835521%_))))
                              (if (gx#identifier? _%hd3526935525%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39981_|
                                       _%hd3526935525%_)
                                      (_%__match3940939410%_
                                       _%e3526535511%_
                                       _%hd3526635515%_
                                       _%tl3526735518%_
                                       _%e3526835521%_
                                       _%hd3526935525%_
                                       _%tl3527035528%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39982_|
                                           _%hd3526935525%_)
                                          (_%__match3942539426%_
                                           _%e3526535511%_
                                           _%hd3526635515%_
                                           _%tl3526735518%_
                                           _%e3526835521%_
                                           _%hd3526935525%_
                                           _%tl3527035528%_)
                                          (_%__match3943739438%_
                                           _%e3526535511%_
                                           _%hd3526635515%_
                                           _%tl3526735518%_
                                           _%e3526835521%_
                                           _%hd3526935525%_
                                           _%tl3527035528%_)))
                                  (_%__match3943739438%_
                                   _%e3526535511%_
                                   _%hd3526635515%_
                                   _%tl3526735518%_
                                   _%e3526835521%_
                                   _%hd3526935525%_
                                   _%tl3527035528%_))))
                          (let () (declare (not safe)) (_%g3526235291%_)))))
                  (let () (declare (not safe)) (_%g3526235291%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35613%_)
        (let* ((_%g3561635640%_
                (lambda (_%g3561735636%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3561735636%_)))
               (_%g3561535852%_
                (lambda (_%g3561735644%_)
                  (if (gx#stx-pair? _%g3561735644%_)
                      (let ((_%e3562035647%_ (gx#syntax-e _%g3561735644%_)))
                        (let ((_%hd3562135651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3562035647%_)))
                              (_%tl3562235654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3562035647%_))))
                          (if (gx#stx-pair? _%tl3562235654%_)
                              (let ((_%e3562335657%_
                                     (gx#syntax-e _%tl3562235654%_)))
                                (let ((_%hd3562435661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3562335657%_)))
                                      (_%tl3562535664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3562335657%_))))
                                  (if (gx#stx-pair/null? _%hd3562435661%_)
                                      (let ((_g39983_
                                             (gx#syntax-split-splice
                                              _%hd3562435661%_
                                              '0)))
                                        (begin
                                          (let ((_g39984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39983_)
                                                       (##values-length
                                                        _g39983_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39984_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39984_)))
                                          (let ((_%target3562635667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39983_ 0)))
                                                (_%tl3562835670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39983_ 1))))
                                            (if (gx#stx-null? _%tl3562835670%_)
                                                (letrec ((_%loop3562935673%_
                                                          (lambda (_%hd3562735677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3563335680%_)
                    (if (gx#stx-pair? _%hd3562735677%_)
                        (let ((_%e3563035683%_ (gx#syntax-e _%hd3562735677%_)))
                          (let ((_%lp-hd3563135687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3563035683%_)))
                                (_%lp-tl3563235690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3563035683%_))))
                            (_%loop3562935673%_
                             _%lp-tl3563235690%_
                             (cons _%lp-hd3563135687%_ _%e3563335680%_))))
                        (let ((_%e3563435693%_ (reverse _%e3563335680%_)))
                          ((lambda (_%L35697%_ _%L35699%_)
                             (if (gx#stx-list? _%L35697%_)
                                 (let* ((_%g3571735734%_
                                         (lambda (_%g3571835730%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3571835730%_)))
                                        (_%g3571635840%_
                                         (lambda (_%g3571835738%_)
                                           (if (gx#stx-pair/null?
                                                _%g3571835738%_)
                                               (let ((_g39985_
                                                      (gx#syntax-split-splice
                                                       _%g3571835738%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39986_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39985_)
                        (##values-length _g39985_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39986_ 2)))
                 (error "Context expects 2 values" _g39986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3572035741%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39985_
                                                             0)))
                                                         (_%tl3572235744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39985_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3572235744%_)
                                                         (letrec ((_%loop3572335747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3572135751%_ _%$e3572735754%_)
                             (if (gx#stx-pair? _%hd3572135751%_)
                                 (let ((_%e3572435757%_
                                        (gx#syntax-e _%hd3572135751%_)))
                                   (let ((_%lp-hd3572535761%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3572435757%_)))
                                         (_%lp-tl3572635764%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3572435757%_))))
                                     (_%loop3572335747%_
                                      _%lp-tl3572635764%_
                                      (cons _%lp-hd3572535761%_
                                            _%$e3572735754%_))))
                                 (let ((_%$e3572835767%_
                                        (reverse _%$e3572735754%_)))
                                   ((lambda (_%L35771%_)
                                      (let* ((_%g3578735795%_
                                              (lambda (_%g3578835791%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3578835791%_)))
                                             (_%g3578635828%_
                                              (lambda (_%g3578835799%_)
                                                ((lambda (_%L35802%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35699%_ _%L35771%_)
                         (foldr (lambda (_%g3581635820%_
                                         _%g3581735823%_
                                         _%g3581835825%_)
                                  (cons (cons _%g3581735823%_
                                              (cons _%g3581635820%_ '()))
                                        _%g3581835825%_))
                                '()
                                _%L35699%_
                                _%L35771%_))
                       (cons _%L35802%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3578835799%_))))
                                        (_%g3578635828%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35613%_
                                          (foldr (lambda (_%g3583135834%_
                                                          _%g3583235837%_)
                                                   (cons _%g3583135834%_
                                                         _%g3583235837%_))
                                                 '()
                                                 _%L35771%_)
                                          _%L35697%_))))
                                    _%$e3572835767%_))))))
                   (_%loop3572335747%_ _%target3572035741%_ '()))
                 (_%g3571735734%_ _%g3571835738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3571735734%_
                                                _%g3571835738%_)))))
                                   (_%g3571635840%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3584335846%_
                                                     _%g3584435849%_)
                                              (cons _%g3584335846%_
                                                    _%g3584435849%_))
                                            '()
                                            _%L35699%_))))
                                 (_%g3561635640%_ _%g3561735644%_)))
                           _%tl3562535664%_
                           _%e3563435693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3562935673%_
                                                   _%target3562635667%_
                                                   '()))
                                                (_%g3561635640%_
                                                 _%g3561735644%_)))))
                                      (_%g3561635640%_ _%g3561735644%_))))
                              (_%g3561635640%_ _%g3561735644%_))))
                      (_%g3561635640%_ _%g3561735644%_)))))
          (_%g3561535852%_ _%stx35613%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35858%_)
        (let* ((_%__stx3944039441%_ _%$stx35858%_)
               (_%g3586435947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3944039441%_))))
          (let ((_%__kont3944339444%_
                 (lambda (_%L36277%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3629336296%_ _%g3629436299%_)
                                        (cons _%g3629336296%_ _%g3629436299%_))
                                      '()
                                      _%L36277%_)))))
                (_%__kont3944739448%_
                 (lambda (_%L36185%_ _%L36187%_ _%L36188%_ _%L36189%_)
                   (cons _%L36189%_
                         (cons (cons (cons _%L36188%_ (cons _%L36187%_ '()))
                                     '())
                               (foldr (lambda (_%g3621136214%_ _%g3621236217%_)
                                        (cons _%g3621136214%_ _%g3621236217%_))
                                      '()
                                      _%L36185%_)))))
                (_%__kont3945139452%_
                 (lambda (_%L36058%_ _%L36060%_ _%L36061%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3608336090%_ _%g3608436093%_)
                                        (cons _%g3608336090%_ _%g3608436093%_))
                                      '()
                                      _%L36060%_)
                               (cons (cons (foldr (lambda (_%g3608536096%_
                                                           _%g3608636099%_)
                                                    (cons _%g3608536096%_
                                                          _%g3608636099%_))
                                                  '()
                                                  _%L36061%_)
                                           (foldr (lambda (_%g3608736102%_
                                                           _%g3608836105%_)
                                                    (cons _%g3608736102%_
                                                          _%g3608836105%_))
                                                  '()
                                                  _%L36058%_))
                                     '()))))))
            (let* ((_%__match3953339534%_
                    (lambda (_%e3591035954%_
                             _%hd3591135958%_
                             _%tl3591235961%_
                             _%e3591335964%_
                             _%hd3591435968%_
                             _%tl3591535971%_
                             _%__splice3945339454%_
                             _%target3591635974%_
                             _%tl3591835977%_)
                      (letrec ((_%loop3591935980%_
                                (lambda (_%hd3591735984%_
                                         _%expr3592335987%_
                                         _%hd3592435989%_)
                                  (if (gx#stx-pair? _%hd3591735984%_)
                                      (let ((_%e3592035992%_
                                             (gx#syntax-e _%hd3591735984%_)))
                                        (let ((_%lp-tl3592235999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3592035992%_)))
                                              (_%lp-hd3592135996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3592035992%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3592135996%_)
                                              (let ((_%e3592736002%_
                                                     (gx#syntax-e
                                                      _%lp-hd3592135996%_)))
                                                (let ((_%tl3592936009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3592736002%_)))
                                                      (_%hd3592836006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3592736002%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3592936009%_)
                                                      (let ((_%e3593036012%_
                                                             (gx#syntax-e
                                                              _%tl3592936009%_)))
                                                        (let ((_%tl3593236019%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3593036012%_)))
                      (_%hd3593136016%_
                       (let () (declare (not safe)) (##car _%e3593036012%_))))
                  (if (gx#stx-null? _%tl3593236019%_)
                      (_%loop3591935980%_
                       _%lp-tl3592235999%_
                       (cons _%hd3593136016%_ _%expr3592335987%_)
                       (cons _%hd3592836006%_ _%hd3592435989%_))
                      (let () (declare (not safe)) (_%g3586435947%_)))))
              (let () (declare (not safe)) (_%g3586435947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3586435947%_)))))
                                      (let ((_%hd3592636025%_
                                             (reverse _%hd3592435989%_))
                                            (_%expr3592536022%_
                                             (reverse _%expr3592335987%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3591535971%_)
                                            (let ((_%__splice3945539456%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3591535971%_
                                                    '0)))
                                              (let ((_%tl3593536031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3945539456%_
                                                        '1)))
                                                    (_%target3593336028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3945539456%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3593536031%_)
                                                    (letrec ((_%loop3593636034%_
                                                              (lambda (_%hd3593436038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3594036041%_)
                        (if (gx#stx-pair? _%hd3593436038%_)
                            (let ((_%e3593736044%_
                                   (gx#syntax-e _%hd3593436038%_)))
                              (let ((_%lp-tl3593936051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3593736044%_)))
                                    (_%lp-hd3593836048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3593736044%_))))
                                (_%loop3593636034%_
                                 _%lp-tl3593936051%_
                                 (cons _%lp-hd3593836048%_
                                       _%body3594036041%_))))
                            (let ((_%body3594136054%_
                                   (reverse _%body3594036041%_)))
                              (_%__kont3945139452%_
                               _%body3594136054%_
                               _%expr3592536022%_
                               _%hd3592636025%_))))))
              (_%loop3593636034%_ _%target3593336028%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3586435947%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3586435947%_))))))))
                        (_%loop3591935980%_ _%target3591635974%_ '() '()))))
                   (_%__match3952539526%_
                    (lambda (_%e3591035954%_
                             _%hd3591135958%_
                             _%tl3591235961%_
                             _%e3591335964%_
                             _%hd3591435968%_
                             _%tl3591535971%_)
                      (if (gx#stx-pair/null? _%hd3591435968%_)
                          (let ((_%__splice3945339454%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3591435968%_
                                  '0)))
                            (let ((_%tl3591835977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3945339454%_ '1)))
                                  (_%target3591635974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3945339454%_
                                      '0))))
                              (if (gx#stx-null? _%tl3591835977%_)
                                  (_%__match3953339534%_
                                   _%e3591035954%_
                                   _%hd3591135958%_
                                   _%tl3591235961%_
                                   _%e3591335964%_
                                   _%hd3591435968%_
                                   _%tl3591535971%_
                                   _%__splice3945339454%_
                                   _%target3591635974%_
                                   _%tl3591835977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3586435947%_)))))
                          (let () (declare (not safe)) (_%g3586435947%_)))))
                   (_%__match3951339514%_
                    (lambda (_%e3588636115%_
                             _%hd3588736119%_
                             _%tl3588836122%_
                             _%e3588936125%_
                             _%hd3589036129%_
                             _%tl3589136132%_
                             _%e3589236135%_
                             _%hd3589336139%_
                             _%tl3589436142%_
                             _%e3589536145%_
                             _%hd3589636149%_
                             _%tl3589736152%_
                             _%__splice3944939450%_
                             _%target3589836155%_
                             _%tl3590036158%_)
                      (letrec ((_%loop3590136161%_
                                (lambda (_%hd3589936165%_ _%body3590536168%_)
                                  (if (gx#stx-pair? _%hd3589936165%_)
                                      (let ((_%e3590236171%_
                                             (gx#syntax-e _%hd3589936165%_)))
                                        (let ((_%lp-tl3590436178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3590236171%_)))
                                              (_%lp-hd3590336175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3590236171%_))))
                                          (_%loop3590136161%_
                                           _%lp-tl3590436178%_
                                           (cons _%lp-hd3590336175%_
                                                 _%body3590536168%_))))
                                      (let ((_%body3590636181%_
                                             (reverse _%body3590536168%_)))
                                        (let ((_%L36185%_ _%body3590636181%_)
                                              (_%L36187%_ _%hd3589636149%_)
                                              (_%L36188%_ _%hd3589336139%_)
                                              (_%L36189%_ _%hd3588736119%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36188%_)
                                              (_%__kont3944739448%_
                                               _%L36185%_
                                               _%L36187%_
                                               _%L36188%_
                                               _%L36189%_)
                                              (_%__match3952539526%_
                                               _%e3588636115%_
                                               _%hd3588736119%_
                                               _%tl3588836122%_
                                               _%e3588936125%_
                                               _%hd3589036129%_
                                               _%tl3589136132%_))))))))
                        (_%loop3590136161%_ _%target3589836155%_ '()))))
                   (_%__match3947939480%_
                    (lambda (_%e3586736227%_
                             _%hd3586836231%_
                             _%tl3586936234%_
                             _%e3587036237%_
                             _%hd3587136241%_
                             _%tl3587236244%_
                             _%__splice3944539446%_
                             _%target3587336247%_
                             _%tl3587536250%_)
                      (letrec ((_%loop3587636253%_
                                (lambda (_%hd3587436257%_ _%body3588036260%_)
                                  (if (gx#stx-pair? _%hd3587436257%_)
                                      (let ((_%e3587736263%_
                                             (gx#syntax-e _%hd3587436257%_)))
                                        (let ((_%lp-tl3587936270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3587736263%_)))
                                              (_%lp-hd3587836267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3587736263%_))))
                                          (_%loop3587636253%_
                                           _%lp-tl3587936270%_
                                           (cons _%lp-hd3587836267%_
                                                 _%body3588036260%_))))
                                      (let ((_%body3588136273%_
                                             (reverse _%body3588036260%_)))
                                        (_%__kont3944339444%_
                                         _%body3588136273%_))))))
                        (_%loop3587636253%_ _%target3587336247%_ '())))))
              (if (gx#stx-pair? _%__stx3944039441%_)
                  (let ((_%e3586736227%_ (gx#syntax-e _%__stx3944039441%_)))
                    (let ((_%tl3586936234%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3586736227%_)))
                          (_%hd3586836231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3586736227%_))))
                      (if (gx#stx-pair? _%tl3586936234%_)
                          (let ((_%e3587036237%_
                                 (gx#syntax-e _%tl3586936234%_)))
                            (let ((_%tl3587236244%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3587036237%_)))
                                  (_%hd3587136241%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3587036237%_))))
                              (if (gx#stx-null? _%hd3587136241%_)
                                  (if (gx#stx-pair/null? _%tl3587236244%_)
                                      (let ((_%__splice3944539446%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3587236244%_
                                              '0)))
                                        (let ((_%tl3587536250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3944539446%_
                                                  '1)))
                                              (_%target3587336247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3944539446%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3587536250%_)
                                              (_%__match3947939480%_
                                               _%e3586736227%_
                                               _%hd3586836231%_
                                               _%tl3586936234%_
                                               _%e3587036237%_
                                               _%hd3587136241%_
                                               _%tl3587236244%_
                                               _%__splice3944539446%_
                                               _%target3587336247%_
                                               _%tl3587536250%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3587136241%_)
                                                  (let ((_%__splice3945339454%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3587136241%_
                                                          '0)))
                                                    (let ((_%tl3591835977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945339454%_
                                                              '1)))
                                                          (_%target3591635974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945339454%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3591835977%_)
                                                          (_%__match3953339534%_
                                                           _%e3586736227%_
                                                           _%hd3586836231%_
                                                           _%tl3586936234%_
                                                           _%e3587036237%_
                                                           _%hd3587136241%_
                                                           _%tl3587236244%_
                                                           _%__splice3945339454%_
                                                           _%target3591635974%_
                                                           _%tl3591835977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3586435947%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3586435947%_))))))
                                      (if (gx#stx-pair/null? _%hd3587136241%_)
                                          (let ((_%__splice3945339454%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3587136241%_
                                                  '0)))
                                            (let ((_%tl3591835977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945339454%_
                                                      '1)))
                                                  (_%target3591635974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945339454%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3591835977%_)
                                                  (_%__match3953339534%_
                                                   _%e3586736227%_
                                                   _%hd3586836231%_
                                                   _%tl3586936234%_
                                                   _%e3587036237%_
                                                   _%hd3587136241%_
                                                   _%tl3587236244%_
                                                   _%__splice3945339454%_
                                                   _%target3591635974%_
                                                   _%tl3591835977%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3586435947%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3586435947%_))))
                                  (if (gx#stx-pair? _%hd3587136241%_)
                                      (let ((_%e3589236135%_
                                             (gx#syntax-e _%hd3587136241%_)))
                                        (let ((_%tl3589436142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589236135%_)))
                                              (_%hd3589336139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589236135%_))))
                                          (if (gx#stx-pair? _%tl3589436142%_)
                                              (let ((_%e3589536145%_
                                                     (gx#syntax-e
                                                      _%tl3589436142%_)))
                                                (let ((_%tl3589736152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3589536145%_)))
                                                      (_%hd3589636149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3589536145%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3589736152%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3587236244%_)
                                                          (let ((_%__splice3944939450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3587236244%_ '0)))
                    (let ((_%tl3590036158%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944939450%_ '1)))
                          (_%target3589836155%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944939450%_ '0))))
                      (if (gx#stx-null? _%tl3590036158%_)
                          (_%__match3951339514%_
                           _%e3586736227%_
                           _%hd3586836231%_
                           _%tl3586936234%_
                           _%e3587036237%_
                           _%hd3587136241%_
                           _%tl3587236244%_
                           _%e3589236135%_
                           _%hd3589336139%_
                           _%tl3589436142%_
                           _%e3589536145%_
                           _%hd3589636149%_
                           _%tl3589736152%_
                           _%__splice3944939450%_
                           _%target3589836155%_
                           _%tl3590036158%_)
                          (if (gx#stx-pair/null? _%hd3587136241%_)
                              (let ((_%__splice3945339454%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3587136241%_
                                      '0)))
                                (let ((_%tl3591835977%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3945339454%_
                                          '1)))
                                      (_%target3591635974%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3945339454%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3591835977%_)
                                      (_%__match3953339534%_
                                       _%e3586736227%_
                                       _%hd3586836231%_
                                       _%tl3586936234%_
                                       _%e3587036237%_
                                       _%hd3587136241%_
                                       _%tl3587236244%_
                                       _%__splice3945339454%_
                                       _%target3591635974%_
                                       _%tl3591835977%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3586435947%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3586435947%_))))))
                  (if (gx#stx-pair/null? _%hd3587136241%_)
                      (let ((_%__splice3945339454%_
                             (gx#syntax-split-splice->vector
                              _%hd3587136241%_
                              '0)))
                        (let ((_%tl3591835977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3945339454%_ '1)))
                              (_%target3591635974%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3945339454%_ '0))))
                          (if (gx#stx-null? _%tl3591835977%_)
                              (_%__match3953339534%_
                               _%e3586736227%_
                               _%hd3586836231%_
                               _%tl3586936234%_
                               _%e3587036237%_
                               _%hd3587136241%_
                               _%tl3587236244%_
                               _%__splice3945339454%_
                               _%target3591635974%_
                               _%tl3591835977%_)
                              (let ()
                                (declare (not safe))
                                (_%g3586435947%_)))))
                      (let () (declare (not safe)) (_%g3586435947%_))))
              (if (gx#stx-pair/null? _%hd3587136241%_)
                  (let ((_%__splice3945339454%_
                         (gx#syntax-split-splice->vector _%hd3587136241%_ '0)))
                    (let ((_%tl3591835977%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945339454%_ '1)))
                          (_%target3591635974%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945339454%_ '0))))
                      (if (gx#stx-null? _%tl3591835977%_)
                          (_%__match3953339534%_
                           _%e3586736227%_
                           _%hd3586836231%_
                           _%tl3586936234%_
                           _%e3587036237%_
                           _%hd3587136241%_
                           _%tl3587236244%_
                           _%__splice3945339454%_
                           _%target3591635974%_
                           _%tl3591835977%_)
                          (let () (declare (not safe)) (_%g3586435947%_)))))
                  (let () (declare (not safe)) (_%g3586435947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3587136241%_)
                                                  (let ((_%__splice3945339454%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3587136241%_
                                                          '0)))
                                                    (let ((_%tl3591835977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945339454%_
                                                              '1)))
                                                          (_%target3591635974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945339454%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3591835977%_)
                                                          (_%__match3953339534%_
                                                           _%e3586736227%_
                                                           _%hd3586836231%_
                                                           _%tl3586936234%_
                                                           _%e3587036237%_
                                                           _%hd3587136241%_
                                                           _%tl3587236244%_
                                                           _%__splice3945339454%_
                                                           _%target3591635974%_
                                                           _%tl3591835977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3586435947%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3586435947%_))))))
                                      (if (gx#stx-pair/null? _%hd3587136241%_)
                                          (let ((_%__splice3945339454%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3587136241%_
                                                  '0)))
                                            (let ((_%tl3591835977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945339454%_
                                                      '1)))
                                                  (_%target3591635974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945339454%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3591835977%_)
                                                  (_%__match3953339534%_
                                                   _%e3586736227%_
                                                   _%hd3586836231%_
                                                   _%tl3586936234%_
                                                   _%e3587036237%_
                                                   _%hd3587136241%_
                                                   _%tl3587236244%_
                                                   _%__splice3945339454%_
                                                   _%target3591635974%_
                                                   _%tl3591835977%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3586435947%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3586435947%_)))))))
                          (let () (declare (not safe)) (_%g3586435947%_)))))
                  (let () (declare (not safe)) (_%g3586435947%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36310%_)
        (let* ((_%__stx3953639537%_ _%$stx36310%_)
               (_%g3631536367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3953639537%_))))
          (let ((_%__kont3953939540%_
                 (lambda (_%L36537%_
                          _%L36539%_
                          _%L36540%_
                          _%L36541%_
                          _%L36542%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36541%_ (cons _%L36540%_ '()))
                                     '())
                               (cons (cons _%L36542%_
                                           (cons _%L36539%_
                                                 (foldr (lambda (_%g3656736570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3656836573%_)
                  (cons _%g3656736570%_ _%g3656836573%_))
                '()
                _%L36537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3954339544%_
                 (lambda (_%L36424%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3644136444%_ _%g3644236447%_)
                                        (cons _%g3644136444%_ _%g3644236447%_))
                                      '()
                                      _%L36424%_))))))
            (let* ((_%__match3960939610%_
                    (lambda (_%e3634736374%_
                             _%hd3634836378%_
                             _%tl3634936381%_
                             _%e3635036384%_
                             _%hd3635136388%_
                             _%tl3635236391%_
                             _%__splice3954539546%_
                             _%target3635336394%_
                             _%tl3635536397%_)
                      (letrec ((_%loop3635636400%_
                                (lambda (_%hd3635436404%_ _%body3636036407%_)
                                  (if (gx#stx-pair? _%hd3635436404%_)
                                      (let ((_%e3635736410%_
                                             (gx#syntax-e _%hd3635436404%_)))
                                        (let ((_%lp-tl3635936417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3635736410%_)))
                                              (_%lp-hd3635836414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3635736410%_))))
                                          (_%loop3635636400%_
                                           _%lp-tl3635936417%_
                                           (cons _%lp-hd3635836414%_
                                                 _%body3636036407%_))))
                                      (let ((_%body3636136420%_
                                             (reverse _%body3636036407%_)))
                                        (_%__kont3954339544%_
                                         _%body3636136420%_))))))
                        (_%loop3635636400%_ _%target3635336394%_ '()))))
                   (_%__match3958739588%_
                    (lambda (_%e3632236457%_
                             _%hd3632336461%_
                             _%tl3632436464%_
                             _%e3632536467%_
                             _%hd3632636471%_
                             _%tl3632736474%_
                             _%e3632836477%_
                             _%hd3632936481%_
                             _%tl3633036484%_
                             _%e3633136487%_
                             _%hd3633236491%_
                             _%tl3633336494%_
                             _%e3633436497%_
                             _%hd3633536501%_
                             _%tl3633636504%_
                             _%__splice3954139542%_
                             _%target3633736507%_
                             _%tl3633936510%_)
                      (letrec ((_%loop3634036513%_
                                (lambda (_%hd3633836517%_ _%body3634436520%_)
                                  (if (gx#stx-pair? _%hd3633836517%_)
                                      (let ((_%e3634136523%_
                                             (gx#syntax-e _%hd3633836517%_)))
                                        (let ((_%lp-tl3634336530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3634136523%_)))
                                              (_%lp-hd3634236527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3634136523%_))))
                                          (_%loop3634036513%_
                                           _%lp-tl3634336530%_
                                           (cons _%lp-hd3634236527%_
                                                 _%body3634436520%_))))
                                      (let ((_%body3634536533%_
                                             (reverse _%body3634436520%_)))
                                        (_%__kont3953939540%_
                                         _%body3634536533%_
                                         _%tl3633036484%_
                                         _%hd3633536501%_
                                         _%hd3633236491%_
                                         _%hd3632336461%_))))))
                        (_%loop3634036513%_ _%target3633736507%_ '())))))
              (if (gx#stx-pair? _%__stx3953639537%_)
                  (let ((_%e3632236457%_ (gx#syntax-e _%__stx3953639537%_)))
                    (let ((_%tl3632436464%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3632236457%_)))
                          (_%hd3632336461%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3632236457%_))))
                      (if (gx#stx-pair? _%tl3632436464%_)
                          (let ((_%e3632536467%_
                                 (gx#syntax-e _%tl3632436464%_)))
                            (let ((_%tl3632736474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3632536467%_)))
                                  (_%hd3632636471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3632536467%_))))
                              (if (gx#stx-pair? _%hd3632636471%_)
                                  (let ((_%e3632836477%_
                                         (gx#syntax-e _%hd3632636471%_)))
                                    (let ((_%tl3633036484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3632836477%_)))
                                          (_%hd3632936481%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3632836477%_))))
                                      (if (gx#stx-pair? _%hd3632936481%_)
                                          (let ((_%e3633136487%_
                                                 (gx#syntax-e
                                                  _%hd3632936481%_)))
                                            (let ((_%tl3633336494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3633136487%_)))
                                                  (_%hd3633236491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3633136487%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3633336494%_)
                                                  (let ((_%e3633436497%_
                                                         (gx#syntax-e
                                                          _%tl3633336494%_)))
                                                    (let ((_%tl3633636504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3633436497%_)))
                                                          (_%hd3633536501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3633436497%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3633636504%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3632736474%_)
                                                              (let ((_%__splice3954139542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3632736474%_
                              '0)))
                        (let ((_%tl3633936510%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954139542%_ '1)))
                              (_%target3633736507%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954139542%_ '0))))
                          (if (gx#stx-null? _%tl3633936510%_)
                              (_%__match3958739588%_
                               _%e3632236457%_
                               _%hd3632336461%_
                               _%tl3632436464%_
                               _%e3632536467%_
                               _%hd3632636471%_
                               _%tl3632736474%_
                               _%e3632836477%_
                               _%hd3632936481%_
                               _%tl3633036484%_
                               _%e3633136487%_
                               _%hd3633236491%_
                               _%tl3633336494%_
                               _%e3633436497%_
                               _%hd3633536501%_
                               _%tl3633636504%_
                               _%__splice3954139542%_
                               _%target3633736507%_
                               _%tl3633936510%_)
                              (let ()
                                (declare (not safe))
                                (_%g3631536367%_)))))
                      (let () (declare (not safe)) (_%g3631536367%_)))
                  (let () (declare (not safe)) (_%g3631536367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3631536367%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3631536367%_)))))
                                  (if (gx#stx-null? _%hd3632636471%_)
                                      (if (gx#stx-pair/null? _%tl3632736474%_)
                                          (let ((_%__splice3954539546%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3632736474%_
                                                  '0)))
                                            (let ((_%tl3635536397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954539546%_
                                                      '1)))
                                                  (_%target3635336394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954539546%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3635536397%_)
                                                  (_%__match3960939610%_
                                                   _%e3632236457%_
                                                   _%hd3632336461%_
                                                   _%tl3632436464%_
                                                   _%e3632536467%_
                                                   _%hd3632636471%_
                                                   _%tl3632736474%_
                                                   _%__splice3954539546%_
                                                   _%target3635336394%_
                                                   _%tl3635536397%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3631536367%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3631536367%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3631536367%_))))))
                          (let () (declare (not safe)) (_%g3631536367%_)))))
                  (let () (declare (not safe)) (_%g3631536367%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36582%_)
        (let* ((_%__stx3961239613%_ _%$stx36582%_)
               (_%g3659336739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3961239613%_))))
          (let ((_%__kont3961539616%_
                 (lambda (_%L37343%_ _%L37345%_ _%L37346%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3736737370%_ _%g3736837373%_)
                                  (cons (cons _%L37346%_
                                              (cons _%g3736737370%_
                                                    (cons _%L37343%_ '())))
                                        _%g3736837373%_))
                                '()
                                _%L37345%_))))
                (_%__kont3961939620%_
                 (lambda (_%L37233%_ _%L37235%_ _%L37236%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3725737260%_ _%g3725837263%_)
                                  (cons (cons _%L37236%_
                                              (cons _%g3725737260%_
                                                    (cons _%L37233%_ '())))
                                        _%g3725837263%_))
                                '()
                                _%L37235%_))))
                (_%__kont3962339624%_
                 (lambda (_%L37133%_ _%L37135%_ _%L37136%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37136%_
                                     (cons _%L37135%_ (cons _%L37133%_ '())))
                               '()))))
                (_%__kont3962539626%_
                 (lambda (_%L37059%_ _%L37061%_)
                   (cons _%L37061%_ (cons _%L37059%_ '()))))
                (_%__kont3962739628%_
                 (lambda (_%L37007%_ _%L37009%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L37009%_
                                           (cons _%L37007%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3962939630%_
                 (lambda (_%L36959%_ _%L36961%_ _%L36962%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36961%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36959%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3963139632%_
                 (lambda (_%L36890%_ _%L36892%_ _%L36893%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36893%_
                                                       (cons _%L36892%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36890%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3963339634%_
                 (lambda (_%L36810%_ _%L36812%_ _%L36813%_ _%L36814%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36814%_
                                                       (cons _%L36813%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36810%_
                                                             (cons (cons _%L36812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3978539786%_
                    (lambda (_%e3668336919%_
                             _%hd3668436923%_
                             _%tl3668536926%_
                             _%e3668636929%_
                             _%hd3668736933%_
                             _%tl3668836936%_
                             _%e3668936939%_
                             _%hd3669036943%_
                             _%tl3669136946%_)
                      (if (gx#identifier? _%hd3669036943%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39987_|
                               _%hd3669036943%_)
                              (if (gx#stx-pair? _%tl3669136946%_)
                                  (let ((_%e3669236949%_
                                         (gx#syntax-e _%tl3669136946%_)))
                                    (let ((_%tl3669436956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669236949%_)))
                                          (_%hd3669336953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669236949%_))))
                                      (if (gx#stx-null? _%tl3669436956%_)
                                          (_%__kont3962939630%_
                                           _%hd3669336953%_
                                           _%hd3668736933%_
                                           _%hd3668436923%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))
                              (let () (declare (not safe)) (_%g3659336739%_)))
                          (if (gx#stx-datum? _%hd3669036943%_)
                              (let ((_%e3670736876%_
                                     (gx#stx-e _%hd3669036943%_)))
                                (if (equal? _%e3670736876%_ '::)
                                    (if (gx#stx-pair? _%tl3669136946%_)
                                        (let ((_%e3670836880%_
                                               (gx#syntax-e _%tl3669136946%_)))
                                          (let ((_%tl3671036887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670836880%_)))
                                                (_%hd3670936884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670836880%_))))
                                            (if (gx#stx-null? _%tl3671036887%_)
                                                (_%__kont3963139632%_
                                                 _%hd3670936884%_
                                                 _%hd3668736933%_
                                                 _%hd3668436923%_)
                                                (if (gx#stx-pair?
                                                     _%tl3671036887%_)
                                                    (let ((_%e3672836790%_
                                                           (gx#syntax-e
                                                            _%tl3671036887%_)))
                                                      (let ((_%tl3673036797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3672836790%_)))
                    (_%hd3672936794%_
                     (let () (declare (not safe)) (##car _%e3672836790%_))))
                (if (gx#identifier? _%hd3672936794%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39988_|
                         _%hd3672936794%_)
                        (if (gx#stx-pair? _%tl3673036797%_)
                            (let ((_%e3673136800%_
                                   (gx#syntax-e _%tl3673036797%_)))
                              (let ((_%tl3673336807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673136800%_)))
                                    (_%hd3673236804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673136800%_))))
                                (if (gx#stx-null? _%tl3673336807%_)
                                    (_%__kont3963339634%_
                                     _%hd3673236804%_
                                     _%hd3670936884%_
                                     _%hd3668736933%_
                                     _%hd3668436923%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))))
                            (let () (declare (not safe)) (_%g3659336739%_)))
                        (let () (declare (not safe)) (_%g3659336739%_)))
                    (let () (declare (not safe)) (_%g3659336739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3659336739%_))))))
                   (_%__match3976539766%_
                    (lambda (_%e3667436987%_
                             _%hd3667536991%_
                             _%tl3667636994%_
                             _%e3667736997%_
                             _%hd3667837001%_
                             _%tl3667937004%_)
                      (if (gx#stx-null? _%tl3667937004%_)
                          (_%__kont3962739628%_
                           _%hd3667837001%_
                           _%hd3667536991%_)
                          (if (gx#stx-pair? _%tl3667937004%_)
                              (let ((_%e3668936939%_
                                     (gx#syntax-e _%tl3667937004%_)))
                                (let ((_%tl3669136946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3668936939%_)))
                                      (_%hd3669036943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3668936939%_))))
                                  (if (gx#identifier? _%hd3669036943%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39987_|
                                           _%hd3669036943%_)
                                          (if (gx#stx-pair? _%tl3669136946%_)
                                              (let ((_%e3669236949%_
                                                     (gx#syntax-e
                                                      _%tl3669136946%_)))
                                                (let ((_%tl3669436956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3669236949%_)))
                                                      (_%hd3669336953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3669236949%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3669436956%_)
                                                      (_%__kont3962939630%_
                                                       _%hd3669336953%_
                                                       _%hd3667837001%_
                                                       _%hd3667536991%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3659336739%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))
                                      (if (gx#stx-datum? _%hd3669036943%_)
                                          (let ((_%e3670736876%_
                                                 (gx#stx-e _%hd3669036943%_)))
                                            (if (equal? _%e3670736876%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3669136946%_)
                                                    (let ((_%e3670836880%_
                                                           (gx#syntax-e
                                                            _%tl3669136946%_)))
                                                      (let ((_%tl3671036887%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670836880%_)))
                    (_%hd3670936884%_
                     (let () (declare (not safe)) (##car _%e3670836880%_))))
                (if (gx#stx-null? _%tl3671036887%_)
                    (_%__kont3963139632%_
                     _%hd3670936884%_
                     _%hd3667837001%_
                     _%hd3667536991%_)
                    (if (gx#stx-pair? _%tl3671036887%_)
                        (let ((_%e3672836790%_ (gx#syntax-e _%tl3671036887%_)))
                          (let ((_%tl3673036797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3672836790%_)))
                                (_%hd3672936794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3672836790%_))))
                            (if (gx#identifier? _%hd3672936794%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39988_|
                                     _%hd3672936794%_)
                                    (if (gx#stx-pair? _%tl3673036797%_)
                                        (let ((_%e3673136800%_
                                               (gx#syntax-e _%tl3673036797%_)))
                                          (let ((_%tl3673336807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3673136800%_)))
                                                (_%hd3673236804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3673136800%_))))
                                            (if (gx#stx-null? _%tl3673336807%_)
                                                (_%__kont3963339634%_
                                                 _%hd3673236804%_
                                                 _%hd3670936884%_
                                                 _%hd3667837001%_
                                                 _%hd3667536991%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))))
                        (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3659336739%_))))))
                   (_%__match3969539696%_
                    (lambda (_%e3662237163%_
                             _%hd3662337167%_
                             _%tl3662437170%_
                             _%e3662537173%_
                             _%hd3662637177%_
                             _%tl3662737180%_
                             _%e3662837183%_
                             _%hd3662937187%_
                             _%tl3663037190%_
                             _%__splice3962139622%_
                             _%target3663137193%_
                             _%tl3663337196%_)
                      (letrec ((_%loop3663437199%_
                                (lambda (_%hd3663237203%_ _%pred3663837206%_)
                                  (if (gx#stx-pair? _%hd3663237203%_)
                                      (let ((_%e3663537209%_
                                             (gx#syntax-e _%hd3663237203%_)))
                                        (let ((_%lp-tl3663737216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3663537209%_)))
                                              (_%lp-hd3663637213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3663537209%_))))
                                          (_%loop3663437199%_
                                           _%lp-tl3663737216%_
                                           (cons _%lp-hd3663637213%_
                                                 _%pred3663837206%_))))
                                      (let ((_%pred3663937219%_
                                             (reverse _%pred3663837206%_)))
                                        (if (gx#stx-pair? _%tl3662737180%_)
                                            (let ((_%e3664037223%_
                                                   (gx#syntax-e
                                                    _%tl3662737180%_)))
                                              (let ((_%tl3664237230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3664037223%_)))
                                                    (_%hd3664137227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3664037223%_))))
                                                (if (gx#stx-null?
                                                     _%tl3664237230%_)
                                                    (_%__kont3961939620%_
                                                     _%hd3664137227%_
                                                     _%pred3663937219%_
                                                     _%hd3662337167%_)
                                                    (_%__match3978539786%_
                                                     _%e3662237163%_
                                                     _%hd3662337167%_
                                                     _%tl3662437170%_
                                                     _%e3662537173%_
                                                     _%hd3662637177%_
                                                     _%tl3662737180%_
                                                     _%e3664037223%_
                                                     _%hd3664137227%_
                                                     _%tl3664237230%_))))
                                            (_%__match3976539766%_
                                             _%e3662237163%_
                                             _%hd3662337167%_
                                             _%tl3662437170%_
                                             _%e3662537173%_
                                             _%hd3662637177%_
                                             _%tl3662737180%_)))))))
                        (_%loop3663437199%_ _%target3663137193%_ '()))))
                   (_%__match3966539666%_
                    (lambda (_%e3659837273%_
                             _%hd3659937277%_
                             _%tl3660037280%_
                             _%e3660137283%_
                             _%hd3660237287%_
                             _%tl3660337290%_
                             _%e3660437293%_
                             _%hd3660537297%_
                             _%tl3660637300%_
                             _%__splice3961739618%_
                             _%target3660737303%_
                             _%tl3660937306%_)
                      (letrec ((_%loop3661037309%_
                                (lambda (_%hd3660837313%_ _%pred3661437316%_)
                                  (if (gx#stx-pair? _%hd3660837313%_)
                                      (let ((_%e3661137319%_
                                             (gx#syntax-e _%hd3660837313%_)))
                                        (let ((_%lp-tl3661337326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3661137319%_)))
                                              (_%lp-hd3661237323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3661137319%_))))
                                          (_%loop3661037309%_
                                           _%lp-tl3661337326%_
                                           (cons _%lp-hd3661237323%_
                                                 _%pred3661437316%_))))
                                      (let ((_%pred3661537329%_
                                             (reverse _%pred3661437316%_)))
                                        (if (gx#stx-pair? _%tl3660337290%_)
                                            (let ((_%e3661637333%_
                                                   (gx#syntax-e
                                                    _%tl3660337290%_)))
                                              (let ((_%tl3661837340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661637333%_)))
                                                    (_%hd3661737337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661637333%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661837340%_)
                                                    (_%__kont3961539616%_
                                                     _%hd3661737337%_
                                                     _%pred3661537329%_
                                                     _%hd3659937277%_)
                                                    (_%__match3978539786%_
                                                     _%e3659837273%_
                                                     _%hd3659937277%_
                                                     _%tl3660037280%_
                                                     _%e3660137283%_
                                                     _%hd3660237287%_
                                                     _%tl3660337290%_
                                                     _%e3661637333%_
                                                     _%hd3661737337%_
                                                     _%tl3661837340%_))))
                                            (_%__match3976539766%_
                                             _%e3659837273%_
                                             _%hd3659937277%_
                                             _%tl3660037280%_
                                             _%e3660137283%_
                                             _%hd3660237287%_
                                             _%tl3660337290%_)))))))
                        (_%loop3661037309%_ _%target3660737303%_ '())))))
              (if (gx#stx-pair? _%__stx3961239613%_)
                  (let ((_%e3659837273%_ (gx#syntax-e _%__stx3961239613%_)))
                    (let ((_%tl3660037280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3659837273%_)))
                          (_%hd3659937277%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3659837273%_))))
                      (if (gx#stx-pair? _%tl3660037280%_)
                          (let ((_%e3660137283%_
                                 (gx#syntax-e _%tl3660037280%_)))
                            (let ((_%tl3660337290%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3660137283%_)))
                                  (_%hd3660237287%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3660137283%_))))
                              (if (gx#stx-pair? _%hd3660237287%_)
                                  (let ((_%e3660437293%_
                                         (gx#syntax-e _%hd3660237287%_)))
                                    (let ((_%tl3660637300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3660437293%_)))
                                          (_%hd3660537297%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3660437293%_))))
                                      (if (gx#identifier? _%hd3660537297%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39989_|
                                               _%hd3660537297%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3660637300%_)
                                                  (let ((_%__splice3961739618%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3660637300%_
                                                          '0)))
                                                    (let ((_%tl3660937306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3961739618%_
                                                              '1)))
                                                          (_%target3660737303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3961739618%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3660937306%_)
                                                          (_%__match3966539666%_
                                                           _%e3659837273%_
                                                           _%hd3659937277%_
                                                           _%tl3660037280%_
                                                           _%e3660137283%_
                                                           _%hd3660237287%_
                                                           _%tl3660337290%_
                                                           _%e3660437293%_
                                                           _%hd3660537297%_
                                                           _%tl3660637300%_
                                                           _%__splice3961739618%_
                                                           _%target3660737303%_
                                                           _%tl3660937306%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3660337290%_)
                                                              (let ((_%e3666937049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3660337290%_)))
                        (let ((_%tl3667137056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3666937049%_)))
                              (_%hd3667037053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3666937049%_))))
                          (if (gx#stx-null? _%tl3667137056%_)
                              (_%__kont3962539626%_
                               _%hd3667037053%_
                               _%hd3660237287%_)
                              (if (gx#identifier? _%hd3667037053%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39987_|
                                       _%hd3667037053%_)
                                      (if (gx#stx-pair? _%tl3667137056%_)
                                          (let ((_%e3669236949%_
                                                 (gx#syntax-e
                                                  _%tl3667137056%_)))
                                            (let ((_%tl3669436956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3669236949%_)))
                                                  (_%hd3669336953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3669236949%_))))
                                              (if (gx#stx-null?
                                                   _%tl3669436956%_)
                                                  (_%__kont3962939630%_
                                                   _%hd3669336953%_
                                                   _%hd3660237287%_
                                                   _%hd3659937277%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3659336739%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))
                                  (if (gx#stx-datum? _%hd3667037053%_)
                                      (let ((_%e3670736876%_
                                             (gx#stx-e _%hd3667037053%_)))
                                        (if (equal? _%e3670736876%_ '::)
                                            (if (gx#stx-pair? _%tl3667137056%_)
                                                (let ((_%e3670836880%_
                                                       (gx#syntax-e
                                                        _%tl3667137056%_)))
                                                  (let ((_%tl3671036887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3670836880%_)))
                                                        (_%hd3670936884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3670836880%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3671036887%_)
                                                        (_%__kont3963139632%_
                                                         _%hd3670936884%_
                                                         _%hd3660237287%_
                                                         _%hd3659937277%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3671036887%_)
                                                            (let ((_%e3672836790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3671036887%_)))
                      (let ((_%tl3673036797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3672836790%_)))
                            (_%hd3672936794%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3672836790%_))))
                        (if (gx#identifier? _%hd3672936794%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39988_|
                                 _%hd3672936794%_)
                                (if (gx#stx-pair? _%tl3673036797%_)
                                    (let ((_%e3673136800%_
                                           (gx#syntax-e _%tl3673036797%_)))
                                      (let ((_%tl3673336807%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673136800%_)))
                                            (_%hd3673236804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673136800%_))))
                                        (if (gx#stx-null? _%tl3673336807%_)
                                            (_%__kont3963339634%_
                                             _%hd3673236804%_
                                             _%hd3670936884%_
                                             _%hd3660237287%_
                                             _%hd3659937277%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))
                            (let () (declare (not safe)) (_%g3659336739%_)))))
                    (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))))))
                      (if (gx#stx-null? _%tl3660337290%_)
                          (_%__kont3962739628%_
                           _%hd3660237287%_
                           _%hd3659937277%_)
                          (let () (declare (not safe)) (_%g3659336739%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3660337290%_)
                                                      (let ((_%e3666937049%_
                                                             (gx#syntax-e
                                                              _%tl3660337290%_)))
                                                        (let ((_%tl3667137056%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3666937049%_)))
                      (_%hd3667037053%_
                       (let () (declare (not safe)) (##car _%e3666937049%_))))
                  (if (gx#stx-null? _%tl3667137056%_)
                      (_%__kont3962539626%_ _%hd3667037053%_ _%hd3660237287%_)
                      (if (gx#identifier? _%hd3667037053%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39987_|
                               _%hd3667037053%_)
                              (if (gx#stx-pair? _%tl3667137056%_)
                                  (let ((_%e3669236949%_
                                         (gx#syntax-e _%tl3667137056%_)))
                                    (let ((_%tl3669436956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669236949%_)))
                                          (_%hd3669336953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669236949%_))))
                                      (if (gx#stx-null? _%tl3669436956%_)
                                          (_%__kont3962939630%_
                                           _%hd3669336953%_
                                           _%hd3660237287%_
                                           _%hd3659937277%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))
                              (let () (declare (not safe)) (_%g3659336739%_)))
                          (if (gx#stx-datum? _%hd3667037053%_)
                              (let ((_%e3670736876%_
                                     (gx#stx-e _%hd3667037053%_)))
                                (if (equal? _%e3670736876%_ '::)
                                    (if (gx#stx-pair? _%tl3667137056%_)
                                        (let ((_%e3670836880%_
                                               (gx#syntax-e _%tl3667137056%_)))
                                          (let ((_%tl3671036887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670836880%_)))
                                                (_%hd3670936884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670836880%_))))
                                            (if (gx#stx-null? _%tl3671036887%_)
                                                (_%__kont3963139632%_
                                                 _%hd3670936884%_
                                                 _%hd3660237287%_
                                                 _%hd3659937277%_)
                                                (if (gx#stx-pair?
                                                     _%tl3671036887%_)
                                                    (let ((_%e3672836790%_
                                                           (gx#syntax-e
                                                            _%tl3671036887%_)))
                                                      (let ((_%tl3673036797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3672836790%_)))
                    (_%hd3672936794%_
                     (let () (declare (not safe)) (##car _%e3672836790%_))))
                (if (gx#identifier? _%hd3672936794%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39988_|
                         _%hd3672936794%_)
                        (if (gx#stx-pair? _%tl3673036797%_)
                            (let ((_%e3673136800%_
                                   (gx#syntax-e _%tl3673036797%_)))
                              (let ((_%tl3673336807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673136800%_)))
                                    (_%hd3673236804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673136800%_))))
                                (if (gx#stx-null? _%tl3673336807%_)
                                    (_%__kont3963339634%_
                                     _%hd3673236804%_
                                     _%hd3670936884%_
                                     _%hd3660237287%_
                                     _%hd3659937277%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))))
                            (let () (declare (not safe)) (_%g3659336739%_)))
                        (let () (declare (not safe)) (_%g3659336739%_)))
                    (let () (declare (not safe)) (_%g3659336739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3659336739%_)))))))
              (if (gx#stx-null? _%tl3660337290%_)
                  (_%__kont3962739628%_ _%hd3660237287%_ _%hd3659937277%_)
                  (let () (declare (not safe)) (_%g3659336739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39990_|
                                                   _%hd3660537297%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3660637300%_)
                                                      (let ((_%__splice3962139622%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3660637300%_
                                                              '0)))
                                                        (let ((_%tl3663337196%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3962139622%_ '1)))
                      (_%target3663137193%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3962139622%_ '0))))
                  (if (gx#stx-null? _%tl3663337196%_)
                      (_%__match3969539696%_
                       _%e3659837273%_
                       _%hd3659937277%_
                       _%tl3660037280%_
                       _%e3660137283%_
                       _%hd3660237287%_
                       _%tl3660337290%_
                       _%e3660437293%_
                       _%hd3660537297%_
                       _%tl3660637300%_
                       _%__splice3962139622%_
                       _%target3663137193%_
                       _%tl3663337196%_)
                      (if (gx#stx-pair? _%tl3660337290%_)
                          (let ((_%e3666937049%_
                                 (gx#syntax-e _%tl3660337290%_)))
                            (let ((_%tl3667137056%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3666937049%_)))
                                  (_%hd3667037053%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3666937049%_))))
                              (if (gx#stx-null? _%tl3667137056%_)
                                  (_%__kont3962539626%_
                                   _%hd3667037053%_
                                   _%hd3660237287%_)
                                  (if (gx#identifier? _%hd3667037053%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39987_|
                                           _%hd3667037053%_)
                                          (if (gx#stx-pair? _%tl3667137056%_)
                                              (let ((_%e3669236949%_
                                                     (gx#syntax-e
                                                      _%tl3667137056%_)))
                                                (let ((_%tl3669436956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3669236949%_)))
                                                      (_%hd3669336953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3669236949%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3669436956%_)
                                                      (_%__kont3962939630%_
                                                       _%hd3669336953%_
                                                       _%hd3660237287%_
                                                       _%hd3659937277%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3659336739%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))
                                      (if (gx#stx-datum? _%hd3667037053%_)
                                          (let ((_%e3670736876%_
                                                 (gx#stx-e _%hd3667037053%_)))
                                            (if (equal? _%e3670736876%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3667137056%_)
                                                    (let ((_%e3670836880%_
                                                           (gx#syntax-e
                                                            _%tl3667137056%_)))
                                                      (let ((_%tl3671036887%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670836880%_)))
                    (_%hd3670936884%_
                     (let () (declare (not safe)) (##car _%e3670836880%_))))
                (if (gx#stx-null? _%tl3671036887%_)
                    (_%__kont3963139632%_
                     _%hd3670936884%_
                     _%hd3660237287%_
                     _%hd3659937277%_)
                    (if (gx#stx-pair? _%tl3671036887%_)
                        (let ((_%e3672836790%_ (gx#syntax-e _%tl3671036887%_)))
                          (let ((_%tl3673036797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3672836790%_)))
                                (_%hd3672936794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3672836790%_))))
                            (if (gx#identifier? _%hd3672936794%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39988_|
                                     _%hd3672936794%_)
                                    (if (gx#stx-pair? _%tl3673036797%_)
                                        (let ((_%e3673136800%_
                                               (gx#syntax-e _%tl3673036797%_)))
                                          (let ((_%tl3673336807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3673136800%_)))
                                                (_%hd3673236804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3673136800%_))))
                                            (if (gx#stx-null? _%tl3673336807%_)
                                                (_%__kont3963339634%_
                                                 _%hd3673236804%_
                                                 _%hd3670936884%_
                                                 _%hd3660237287%_
                                                 _%hd3659937277%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))))
                        (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))))))
                          (if (gx#stx-null? _%tl3660337290%_)
                              (_%__kont3962739628%_
                               _%hd3660237287%_
                               _%hd3659937277%_)
                              (let ()
                                (declare (not safe))
                                (_%g3659336739%_)))))))
              (if (gx#stx-pair? _%tl3660337290%_)
                  (let ((_%e3666937049%_ (gx#syntax-e _%tl3660337290%_)))
                    (let ((_%tl3667137056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666937049%_)))
                          (_%hd3667037053%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666937049%_))))
                      (if (gx#stx-null? _%tl3667137056%_)
                          (_%__kont3962539626%_
                           _%hd3667037053%_
                           _%hd3660237287%_)
                          (if (gx#identifier? _%hd3667037053%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39987_|
                                   _%hd3667037053%_)
                                  (if (gx#stx-pair? _%tl3667137056%_)
                                      (let ((_%e3669236949%_
                                             (gx#syntax-e _%tl3667137056%_)))
                                        (let ((_%tl3669436956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669236949%_)))
                                              (_%hd3669336953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669236949%_))))
                                          (if (gx#stx-null? _%tl3669436956%_)
                                              (_%__kont3962939630%_
                                               _%hd3669336953%_
                                               _%hd3660237287%_
                                               _%hd3659937277%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))
                              (if (gx#stx-datum? _%hd3667037053%_)
                                  (let ((_%e3670736876%_
                                         (gx#stx-e _%hd3667037053%_)))
                                    (if (equal? _%e3670736876%_ '::)
                                        (if (gx#stx-pair? _%tl3667137056%_)
                                            (let ((_%e3670836880%_
                                                   (gx#syntax-e
                                                    _%tl3667137056%_)))
                                              (let ((_%tl3671036887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670836880%_)))
                                                    (_%hd3670936884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670836880%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671036887%_)
                                                    (_%__kont3963139632%_
                                                     _%hd3670936884%_
                                                     _%hd3660237287%_
                                                     _%hd3659937277%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3671036887%_)
                                                        (let ((_%e3672836790%_
                                                               (gx#syntax-e
                                                                _%tl3671036887%_)))
                                                          (let ((_%tl3673036797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3672836790%_)))
                        (_%hd3672936794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3672836790%_))))
                    (if (gx#identifier? _%hd3672936794%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39988_|
                             _%hd3672936794%_)
                            (if (gx#stx-pair? _%tl3673036797%_)
                                (let ((_%e3673136800%_
                                       (gx#syntax-e _%tl3673036797%_)))
                                  (let ((_%tl3673336807%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3673136800%_)))
                                        (_%hd3673236804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3673136800%_))))
                                    (if (gx#stx-null? _%tl3673336807%_)
                                        (_%__kont3963339634%_
                                         _%hd3673236804%_
                                         _%hd3670936884%_
                                         _%hd3660237287%_
                                         _%hd3659937277%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))
                            (let () (declare (not safe)) (_%g3659336739%_)))
                        (let () (declare (not safe)) (_%g3659336739%_)))))
                (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))))))
                  (if (gx#stx-null? _%tl3660337290%_)
                      (_%__kont3962739628%_ _%hd3660237287%_ _%hd3659937277%_)
                      (let () (declare (not safe)) (_%g3659336739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39991_|
                                                       _%hd3660537297%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3660637300%_)
                                                          (let ((_%e3665537113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3660637300%_)))
                    (let ((_%tl3665737120%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3665537113%_)))
                          (_%hd3665637117%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3665537113%_))))
                      (if (gx#stx-null? _%tl3665737120%_)
                          (if (gx#stx-pair? _%tl3660337290%_)
                              (let ((_%e3665837123%_
                                     (gx#syntax-e _%tl3660337290%_)))
                                (let ((_%tl3666037130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3665837123%_)))
                                      (_%hd3665937127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3665837123%_))))
                                  (if (gx#stx-null? _%tl3666037130%_)
                                      (_%__kont3962339624%_
                                       _%hd3665937127%_
                                       _%hd3665637117%_
                                       _%hd3659937277%_)
                                      (if (gx#identifier? _%hd3665937127%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39987_|
                                               _%hd3665937127%_)
                                              (if (gx#stx-pair?
                                                   _%tl3666037130%_)
                                                  (let ((_%e3669236949%_
                                                         (gx#syntax-e
                                                          _%tl3666037130%_)))
                                                    (let ((_%tl3669436956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3669236949%_)))
                                                          (_%hd3669336953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3669236949%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3669436956%_)
                                                          (_%__kont3962939630%_
                                                           _%hd3669336953%_
                                                           _%hd3660237287%_
                                                           _%hd3659937277%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3659336739%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3659336739%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))
                                          (if (gx#stx-datum? _%hd3665937127%_)
                                              (let ((_%e3670736876%_
                                                     (gx#stx-e
                                                      _%hd3665937127%_)))
                                                (if (equal? _%e3670736876%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3666037130%_)
                                                        (let ((_%e3670836880%_
                                                               (gx#syntax-e
                                                                _%tl3666037130%_)))
                                                          (let ((_%tl3671036887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670836880%_)))
                        (_%hd3670936884%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670836880%_))))
                    (if (gx#stx-null? _%tl3671036887%_)
                        (_%__kont3963139632%_
                         _%hd3670936884%_
                         _%hd3660237287%_
                         _%hd3659937277%_)
                        (if (gx#stx-pair? _%tl3671036887%_)
                            (let ((_%e3672836790%_
                                   (gx#syntax-e _%tl3671036887%_)))
                              (let ((_%tl3673036797%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672836790%_)))
                                    (_%hd3672936794%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672836790%_))))
                                (if (gx#identifier? _%hd3672936794%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39988_|
                                         _%hd3672936794%_)
                                        (if (gx#stx-pair? _%tl3673036797%_)
                                            (let ((_%e3673136800%_
                                                   (gx#syntax-e
                                                    _%tl3673036797%_)))
                                              (let ((_%tl3673336807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673136800%_)))
                                                    (_%hd3673236804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673136800%_))))
                                                (if (gx#stx-null?
                                                     _%tl3673336807%_)
                                                    (_%__kont3963339634%_
                                                     _%hd3673236804%_
                                                     _%hd3670936884%_
                                                     _%hd3660237287%_
                                                     _%hd3659937277%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))))
                            (let () (declare (not safe)) (_%g3659336739%_))))))
                (let () (declare (not safe)) (_%g3659336739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))))))
                              (if (gx#stx-null? _%tl3660337290%_)
                                  (_%__kont3962739628%_
                                   _%hd3660237287%_
                                   _%hd3659937277%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_))))
                          (if (gx#stx-pair? _%tl3660337290%_)
                              (let ((_%e3666937049%_
                                     (gx#syntax-e _%tl3660337290%_)))
                                (let ((_%tl3667137056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666937049%_)))
                                      (_%hd3667037053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666937049%_))))
                                  (if (gx#stx-null? _%tl3667137056%_)
                                      (_%__kont3962539626%_
                                       _%hd3667037053%_
                                       _%hd3660237287%_)
                                      (if (gx#identifier? _%hd3667037053%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39987_|
                                               _%hd3667037053%_)
                                              (if (gx#stx-pair?
                                                   _%tl3667137056%_)
                                                  (let ((_%e3669236949%_
                                                         (gx#syntax-e
                                                          _%tl3667137056%_)))
                                                    (let ((_%tl3669436956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3669236949%_)))
                                                          (_%hd3669336953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3669236949%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3669436956%_)
                                                          (_%__kont3962939630%_
                                                           _%hd3669336953%_
                                                           _%hd3660237287%_
                                                           _%hd3659937277%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3659336739%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3659336739%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))
                                          (if (gx#stx-datum? _%hd3667037053%_)
                                              (let ((_%e3670736876%_
                                                     (gx#stx-e
                                                      _%hd3667037053%_)))
                                                (if (equal? _%e3670736876%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3667137056%_)
                                                        (let ((_%e3670836880%_
                                                               (gx#syntax-e
                                                                _%tl3667137056%_)))
                                                          (let ((_%tl3671036887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670836880%_)))
                        (_%hd3670936884%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670836880%_))))
                    (if (gx#stx-null? _%tl3671036887%_)
                        (_%__kont3963139632%_
                         _%hd3670936884%_
                         _%hd3660237287%_
                         _%hd3659937277%_)
                        (if (gx#stx-pair? _%tl3671036887%_)
                            (let ((_%e3672836790%_
                                   (gx#syntax-e _%tl3671036887%_)))
                              (let ((_%tl3673036797%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672836790%_)))
                                    (_%hd3672936794%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672836790%_))))
                                (if (gx#identifier? _%hd3672936794%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39988_|
                                         _%hd3672936794%_)
                                        (if (gx#stx-pair? _%tl3673036797%_)
                                            (let ((_%e3673136800%_
                                                   (gx#syntax-e
                                                    _%tl3673036797%_)))
                                              (let ((_%tl3673336807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673136800%_)))
                                                    (_%hd3673236804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673136800%_))))
                                                (if (gx#stx-null?
                                                     _%tl3673336807%_)
                                                    (_%__kont3963339634%_
                                                     _%hd3673236804%_
                                                     _%hd3670936884%_
                                                     _%hd3660237287%_
                                                     _%hd3659937277%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))))
                            (let () (declare (not safe)) (_%g3659336739%_))))))
                (let () (declare (not safe)) (_%g3659336739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))))))
                              (if (gx#stx-null? _%tl3660337290%_)
                                  (_%__kont3962739628%_
                                   _%hd3660237287%_
                                   _%hd3659937277%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))))))
                  (if (gx#stx-pair? _%tl3660337290%_)
                      (let ((_%e3666937049%_ (gx#syntax-e _%tl3660337290%_)))
                        (let ((_%tl3667137056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3666937049%_)))
                              (_%hd3667037053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3666937049%_))))
                          (if (gx#stx-null? _%tl3667137056%_)
                              (_%__kont3962539626%_
                               _%hd3667037053%_
                               _%hd3660237287%_)
                              (if (gx#identifier? _%hd3667037053%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39987_|
                                       _%hd3667037053%_)
                                      (if (gx#stx-pair? _%tl3667137056%_)
                                          (let ((_%e3669236949%_
                                                 (gx#syntax-e
                                                  _%tl3667137056%_)))
                                            (let ((_%tl3669436956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3669236949%_)))
                                                  (_%hd3669336953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3669236949%_))))
                                              (if (gx#stx-null?
                                                   _%tl3669436956%_)
                                                  (_%__kont3962939630%_
                                                   _%hd3669336953%_
                                                   _%hd3660237287%_
                                                   _%hd3659937277%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3659336739%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))
                                  (if (gx#stx-datum? _%hd3667037053%_)
                                      (let ((_%e3670736876%_
                                             (gx#stx-e _%hd3667037053%_)))
                                        (if (equal? _%e3670736876%_ '::)
                                            (if (gx#stx-pair? _%tl3667137056%_)
                                                (let ((_%e3670836880%_
                                                       (gx#syntax-e
                                                        _%tl3667137056%_)))
                                                  (let ((_%tl3671036887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3670836880%_)))
                                                        (_%hd3670936884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3670836880%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3671036887%_)
                                                        (_%__kont3963139632%_
                                                         _%hd3670936884%_
                                                         _%hd3660237287%_
                                                         _%hd3659937277%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3671036887%_)
                                                            (let ((_%e3672836790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3671036887%_)))
                      (let ((_%tl3673036797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3672836790%_)))
                            (_%hd3672936794%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3672836790%_))))
                        (if (gx#identifier? _%hd3672936794%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39988_|
                                 _%hd3672936794%_)
                                (if (gx#stx-pair? _%tl3673036797%_)
                                    (let ((_%e3673136800%_
                                           (gx#syntax-e _%tl3673036797%_)))
                                      (let ((_%tl3673336807%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673136800%_)))
                                            (_%hd3673236804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673136800%_))))
                                        (if (gx#stx-null? _%tl3673336807%_)
                                            (_%__kont3963339634%_
                                             _%hd3673236804%_
                                             _%hd3670936884%_
                                             _%hd3660237287%_
                                             _%hd3659937277%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))
                            (let () (declare (not safe)) (_%g3659336739%_)))))
                    (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))))))
                      (if (gx#stx-null? _%tl3660337290%_)
                          (_%__kont3962739628%_
                           _%hd3660237287%_
                           _%hd3659937277%_)
                          (let () (declare (not safe)) (_%g3659336739%_)))))
              (if (gx#stx-pair? _%tl3660337290%_)
                  (let ((_%e3666937049%_ (gx#syntax-e _%tl3660337290%_)))
                    (let ((_%tl3667137056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666937049%_)))
                          (_%hd3667037053%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666937049%_))))
                      (if (gx#stx-null? _%tl3667137056%_)
                          (_%__kont3962539626%_
                           _%hd3667037053%_
                           _%hd3660237287%_)
                          (if (gx#identifier? _%hd3667037053%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39987_|
                                   _%hd3667037053%_)
                                  (if (gx#stx-pair? _%tl3667137056%_)
                                      (let ((_%e3669236949%_
                                             (gx#syntax-e _%tl3667137056%_)))
                                        (let ((_%tl3669436956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669236949%_)))
                                              (_%hd3669336953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669236949%_))))
                                          (if (gx#stx-null? _%tl3669436956%_)
                                              (_%__kont3962939630%_
                                               _%hd3669336953%_
                                               _%hd3660237287%_
                                               _%hd3659937277%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3659336739%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3659336739%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))
                              (if (gx#stx-datum? _%hd3667037053%_)
                                  (let ((_%e3670736876%_
                                         (gx#stx-e _%hd3667037053%_)))
                                    (if (equal? _%e3670736876%_ '::)
                                        (if (gx#stx-pair? _%tl3667137056%_)
                                            (let ((_%e3670836880%_
                                                   (gx#syntax-e
                                                    _%tl3667137056%_)))
                                              (let ((_%tl3671036887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670836880%_)))
                                                    (_%hd3670936884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670836880%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671036887%_)
                                                    (_%__kont3963139632%_
                                                     _%hd3670936884%_
                                                     _%hd3660237287%_
                                                     _%hd3659937277%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3671036887%_)
                                                        (let ((_%e3672836790%_
                                                               (gx#syntax-e
                                                                _%tl3671036887%_)))
                                                          (let ((_%tl3673036797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3672836790%_)))
                        (_%hd3672936794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3672836790%_))))
                    (if (gx#identifier? _%hd3672936794%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39988_|
                             _%hd3672936794%_)
                            (if (gx#stx-pair? _%tl3673036797%_)
                                (let ((_%e3673136800%_
                                       (gx#syntax-e _%tl3673036797%_)))
                                  (let ((_%tl3673336807%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3673136800%_)))
                                        (_%hd3673236804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3673136800%_))))
                                    (if (gx#stx-null? _%tl3673336807%_)
                                        (_%__kont3963339634%_
                                         _%hd3673236804%_
                                         _%hd3670936884%_
                                         _%hd3660237287%_
                                         _%hd3659937277%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))
                            (let () (declare (not safe)) (_%g3659336739%_)))
                        (let () (declare (not safe)) (_%g3659336739%_)))))
                (let () (declare (not safe)) (_%g3659336739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3659336739%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))))))
                  (if (gx#stx-null? _%tl3660337290%_)
                      (_%__kont3962739628%_ _%hd3660237287%_ _%hd3659937277%_)
                      (let () (declare (not safe)) (_%g3659336739%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3660337290%_)
                                              (let ((_%e3666937049%_
                                                     (gx#syntax-e
                                                      _%tl3660337290%_)))
                                                (let ((_%tl3667137056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666937049%_)))
                                                      (_%hd3667037053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666937049%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3667137056%_)
                                                      (_%__kont3962539626%_
                                                       _%hd3667037053%_
                                                       _%hd3660237287%_)
                                                      (if (gx#identifier?
                                                           _%hd3667037053%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39987_|
                                                               _%hd3667037053%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3667137056%_)
                          (let ((_%e3669236949%_
                                 (gx#syntax-e _%tl3667137056%_)))
                            (let ((_%tl3669436956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3669236949%_)))
                                  (_%hd3669336953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3669236949%_))))
                              (if (gx#stx-null? _%tl3669436956%_)
                                  (_%__kont3962939630%_
                                   _%hd3669336953%_
                                   _%hd3660237287%_
                                   _%hd3659937277%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3659336739%_)))))
                          (let () (declare (not safe)) (_%g3659336739%_)))
                      (let () (declare (not safe)) (_%g3659336739%_)))
                  (if (gx#stx-datum? _%hd3667037053%_)
                      (let ((_%e3670736876%_ (gx#stx-e _%hd3667037053%_)))
                        (if (equal? _%e3670736876%_ '::)
                            (if (gx#stx-pair? _%tl3667137056%_)
                                (let ((_%e3670836880%_
                                       (gx#syntax-e _%tl3667137056%_)))
                                  (let ((_%tl3671036887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670836880%_)))
                                        (_%hd3670936884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670836880%_))))
                                    (if (gx#stx-null? _%tl3671036887%_)
                                        (_%__kont3963139632%_
                                         _%hd3670936884%_
                                         _%hd3660237287%_
                                         _%hd3659937277%_)
                                        (if (gx#stx-pair? _%tl3671036887%_)
                                            (let ((_%e3672836790%_
                                                   (gx#syntax-e
                                                    _%tl3671036887%_)))
                                              (let ((_%tl3673036797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672836790%_)))
                                                    (_%hd3672936794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672836790%_))))
                                                (if (gx#identifier?
                                                     _%hd3672936794%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39988_|
                                                         _%hd3672936794%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3673036797%_)
                                                            (let ((_%e3673136800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3673036797%_)))
                      (let ((_%tl3673336807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673136800%_)))
                            (_%hd3673236804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673136800%_))))
                        (if (gx#stx-null? _%tl3673336807%_)
                            (_%__kont3963339634%_
                             _%hd3673236804%_
                             _%hd3670936884%_
                             _%hd3660237287%_
                             _%hd3659937277%_)
                            (let () (declare (not safe)) (_%g3659336739%_)))))
                    (let () (declare (not safe)) (_%g3659336739%_)))
                (let () (declare (not safe)) (_%g3659336739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3659336739%_)))
                            (let () (declare (not safe)) (_%g3659336739%_))))
                      (let () (declare (not safe)) (_%g3659336739%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3660337290%_)
                                                  (_%__kont3962739628%_
                                                   _%hd3660237287%_
                                                   _%hd3659937277%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3659336739%_)))))))
                                  (if (gx#stx-pair? _%tl3660337290%_)
                                      (let ((_%e3666937049%_
                                             (gx#syntax-e _%tl3660337290%_)))
                                        (let ((_%tl3667137056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666937049%_)))
                                              (_%hd3667037053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666937049%_))))
                                          (if (gx#stx-null? _%tl3667137056%_)
                                              (_%__kont3962539626%_
                                               _%hd3667037053%_
                                               _%hd3660237287%_)
                                              (if (gx#identifier?
                                                   _%hd3667037053%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39987_|
                                                       _%hd3667037053%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3667137056%_)
                                                          (let ((_%e3669236949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3667137056%_)))
                    (let ((_%tl3669436956%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3669236949%_)))
                          (_%hd3669336953%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3669236949%_))))
                      (if (gx#stx-null? _%tl3669436956%_)
                          (_%__kont3962939630%_
                           _%hd3669336953%_
                           _%hd3660237287%_
                           _%hd3659937277%_)
                          (let () (declare (not safe)) (_%g3659336739%_)))))
                  (let () (declare (not safe)) (_%g3659336739%_)))
              (let () (declare (not safe)) (_%g3659336739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3667037053%_)
                                                      (let ((_%e3670736876%_
                                                             (gx#stx-e
                                                              _%hd3667037053%_)))
                                                        (if (equal? _%e3670736876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3667137056%_)
                        (let ((_%e3670836880%_ (gx#syntax-e _%tl3667137056%_)))
                          (let ((_%tl3671036887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670836880%_)))
                                (_%hd3670936884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670836880%_))))
                            (if (gx#stx-null? _%tl3671036887%_)
                                (_%__kont3963139632%_
                                 _%hd3670936884%_
                                 _%hd3660237287%_
                                 _%hd3659937277%_)
                                (if (gx#stx-pair? _%tl3671036887%_)
                                    (let ((_%e3672836790%_
                                           (gx#syntax-e _%tl3671036887%_)))
                                      (let ((_%tl3673036797%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3672836790%_)))
                                            (_%hd3672936794%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3672836790%_))))
                                        (if (gx#identifier? _%hd3672936794%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39988_|
                                                 _%hd3672936794%_)
                                                (if (gx#stx-pair?
                                                     _%tl3673036797%_)
                                                    (let ((_%e3673136800%_
                                                           (gx#syntax-e
                                                            _%tl3673036797%_)))
                                                      (let ((_%tl3673336807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673136800%_)))
                    (_%hd3673236804%_
                     (let () (declare (not safe)) (##car _%e3673136800%_))))
                (if (gx#stx-null? _%tl3673336807%_)
                    (_%__kont3963339634%_
                     _%hd3673236804%_
                     _%hd3670936884%_
                     _%hd3660237287%_
                     _%hd3659937277%_)
                    (let () (declare (not safe)) (_%g3659336739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3659336739%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3659336739%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3659336739%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3659336739%_))))))
                        (let () (declare (not safe)) (_%g3659336739%_)))
                    (let () (declare (not safe)) (_%g3659336739%_))))
              (let () (declare (not safe)) (_%g3659336739%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3660337290%_)
                                          (_%__kont3962739628%_
                                           _%hd3660237287%_
                                           _%hd3659937277%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3659336739%_)))))))
                          (let () (declare (not safe)) (_%g3659336739%_)))))
                  (let () (declare (not safe)) (_%g3659336739%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37382%_)
        (let* ((_%__stx3988039881%_ _%$stx37382%_)
               (_%g3738737421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3988039881%_))))
          (let ((_%__kont3988339884%_
                 (lambda (_%L37525%_ _%L37527%_ _%L37528%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37528%_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _%L37527%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37525%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3988539886%_
                 (lambda (_%L37458%_ _%L37460%_ _%L37461%_)
                   (cons _%L37461%_
                         (cons _%L37460%_
                               (cons _%L37458%_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((_%__match3991339914%_
                   (lambda (_%e3739237485%_
                            _%hd3739337489%_
                            _%tl3739437492%_
                            _%e3739537495%_
                            _%hd3739637499%_
                            _%tl3739737502%_
                            _%e3739837505%_
                            _%hd3739937509%_
                            _%tl3740037512%_
                            _%e3740137515%_
                            _%hd3740237519%_
                            _%tl3740337522%_)
                     (let ((_%L37525%_ _%hd3740237519%_)
                           (_%L37527%_ _%hd3739937509%_)
                           (_%L37528%_ _%hd3739637499%_))
                       (if (gx#identifier? _%L37528%_)
                           (_%__kont3988339884%_
                            _%L37525%_
                            _%L37527%_
                            _%L37528%_)
                           (let () (declare (not safe)) (_%g3738737421%_)))))))
              (if (gx#stx-pair? _%__stx3988039881%_)
                  (let ((_%e3739237485%_ (gx#syntax-e _%__stx3988039881%_)))
                    (let ((_%tl3739437492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3739237485%_)))
                          (_%hd3739337489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3739237485%_))))
                      (if (gx#stx-pair? _%tl3739437492%_)
                          (let ((_%e3739537495%_
                                 (gx#syntax-e _%tl3739437492%_)))
                            (let ((_%tl3739737502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3739537495%_)))
                                  (_%hd3739637499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3739537495%_))))
                              (if (gx#stx-pair? _%tl3739737502%_)
                                  (let ((_%e3739837505%_
                                         (gx#syntax-e _%tl3739737502%_)))
                                    (let ((_%tl3740037512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3739837505%_)))
                                          (_%hd3739937509%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3739837505%_))))
                                      (if (gx#stx-pair? _%tl3740037512%_)
                                          (let ((_%e3740137515%_
                                                 (gx#syntax-e
                                                  _%tl3740037512%_)))
                                            (let ((_%tl3740337522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3740137515%_)))
                                                  (_%hd3740237519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3740137515%_))))
                                              (if (gx#stx-null?
                                                   _%tl3740337522%_)
                                                  (_%__match3991339914%_
                                                   _%e3739237485%_
                                                   _%hd3739337489%_
                                                   _%tl3739437492%_
                                                   _%e3739537495%_
                                                   _%hd3739637499%_
                                                   _%tl3739737502%_
                                                   _%e3739837505%_
                                                   _%hd3739937509%_
                                                   _%tl3740037512%_
                                                   _%e3740137515%_
                                                   _%hd3740237519%_
                                                   _%tl3740337522%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3738737421%_)))))
                                          (if (gx#stx-null? _%tl3740037512%_)
                                              (_%__kont3988539886%_
                                               _%hd3739937509%_
                                               _%hd3739637499%_
                                               _%hd3739337489%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3738737421%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3738737421%_)))))
                          (let () (declare (not safe)) (_%g3738737421%_)))))
                  (let () (declare (not safe)) (_%g3738737421%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37550%_)
        (let* ((_%g3755437569%_
                (lambda (_%g3755537565%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3755537565%_)))
               (_%g3755337612%_
                (lambda (_%g3755537573%_)
                  (if (gx#stx-pair? _%g3755537573%_)
                      (let ((_%e3755837576%_ (gx#syntax-e _%g3755537573%_)))
                        (let ((_%hd3755937580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3755837576%_)))
                              (_%tl3756037583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3755837576%_))))
                          (if (gx#stx-pair? _%tl3756037583%_)
                              (let ((_%e3756137586%_
                                     (gx#syntax-e _%tl3756037583%_)))
                                (let ((_%hd3756237590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3756137586%_)))
                                      (_%tl3756337593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3756137586%_))))
                                  ((lambda (_%L37596%_ _%L37598%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37598%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37596%_)
                                                       '()))))
                                   _%tl3756337593%_
                                   _%hd3756237590%_)))
                              (_%g3755437569%_ _%g3755537573%_))))
                      (_%g3755437569%_ _%g3755537573%_)))))
          (_%g3755337612%_ _%$stx37550%_))))))

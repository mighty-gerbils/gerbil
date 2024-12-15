(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135024_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135026_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135028_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135030_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135031_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135033_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135034_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135036_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135037_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135039_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135040_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134107%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134107%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134110%_)
        (let* ((_%g134113134137%_
                (lambda (_%g134114134133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134114134133%_))))
               (_%g134112134440%_
                (lambda (_%g134114134141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134114134141%_))
                      (let ((_%e134117134144%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134114134141%_))))
                        (let ((_%hd134118134148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134117134144%_)))
                              (_%tl134119134151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134117134144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134119134151%_))
                              (let ((_%e134120134154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134119134151%_))))
                                (let ((_%hd134121134158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134120134154%_)))
                                      (_%tl134122134161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134120134154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134122134161%_))
                                      (let ((_g135015_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134122134161%_
                                                '0))))
                                        (begin
                                          (let ((_g135016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135015_)
                                                       (##values-length
                                                        _g135015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135016_)))
                                          (let ((_%target134123134164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135015_ 0)))
                                                (_%tl134125134167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135015_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134125134167%_))
                                                (letrec ((_%loop134126134170%_
                                                          (lambda (_%hd134124134174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134130134177%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134124134174%_))
                        (let ((_%e134127134180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134124134174%_))))
                          (let ((_%lp-hd134128134184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134127134180%_)))
                                (_%lp-tl134129134187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134127134180%_))))
                            (_%loop134126134170%_
                             _%lp-tl134129134187%_
                             (cons _%lp-hd134128134184%_
                                   _%clause134130134177%_))))
                        (let ((_%clause134131134190%_
                               (reverse _%clause134130134177%_)))
                          ((lambda (_%L134194%_ _%L134196%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134196%_))
                                 (let* ((_%g134215134232%_
                                         (lambda (_%g134216134228%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134216134228%_))))
                                        (_%g134214134293%_
                                         (lambda (_%g134216134236%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134216134236%_))
                                               (let ((_g135017_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134216134236%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135018_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135017_)
                        (##values-length _g135017_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135018_ 2)))
                 (error "Context expects 2 values" _g135018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134218134239%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135017_
                                                             0)))
                                                         (_%tl134220134242%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135017_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134220134242%_))
                                                         (letrec ((_%loop134221134245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134219134249%_ _%clause134225134252%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134219134249%_))
                                 (let ((_%e134222134255%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134219134249%_))))
                                   (let ((_%lp-hd134223134259%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134222134255%_)))
                                         (_%lp-tl134224134262%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134222134255%_))))
                                     (_%loop134221134245%_
                                      _%lp-tl134224134262%_
                                      (cons _%lp-hd134223134259%_
                                            _%clause134225134252%_))))
                                 (let ((_%clause134226134265%_
                                        (reverse _%clause134225134252%_)))
                                   ((lambda (_%L134269%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L134196%_
                                  (let ((__tmp135019
                                         (lambda (_%g134284134287%_
                                                  _%g134285134290%_)
                                           (cons _%g134284134287%_
                                                 _%g134285134290%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135019 '() _%L134269%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134226134265%_))))))
                   (_%loop134221134245%_ _%target134218134239%_ '()))
                 (_%g134215134232%_ _%g134216134236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134215134232%_
                                                _%g134216134236%_)))))
                                   (_%g134214134293%_
                                    (let ((__tmp135022
                                           (lambda (_%clause134297%_)
                                             (let* ((_%__stx134935134936%_
                                                     _%clause134297%_)
                                                    (_%g134301134328%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx134935134936%_)))))
                                               (let ((_%__kont134938134939%_
                                                      (lambda (_%L134413%_
                                                               _%L134415%_)
                                                        (cons _%L134415%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134413%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont134940134941%_
                                                      (lambda (_%L134365%_
                                                               _%L134367%_
                                                               _%L134368%_)
                                                        (cons _%L134368%_
                                                              (cons _%L134367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134365%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx134935134936%_))
                                                     (let ((_%e134305134393%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx134935134936%_))))
                                                       (let ((_%tl134307134400%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134305134393%_)))
                     (_%hd134306134397%_
                      (let () (declare (not safe)) (##car _%e134305134393%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134307134400%_))
                     (let ((_%e134308134403%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134307134400%_))))
                       (let ((_%tl134310134410%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134308134403%_)))
                             (_%hd134309134407%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134308134403%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134310134410%_))
                             (_%__kont134938134939%_
                              _%hd134309134407%_
                              _%hd134306134397%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134310134410%_))
                                 (let ((_%e134320134355%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134310134410%_))))
                                   (let ((_%tl134322134362%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134320134355%_)))
                                         (_%hd134321134359%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134320134355%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134322134362%_))
                                         (_%__kont134940134941%_
                                          _%hd134321134359%_
                                          _%hd134309134407%_
                                          _%hd134306134397%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134301134328%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134301134328%_))))))
                     (let () (declare (not safe)) (_%g134301134328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134301134328%_)))))))
                                          (__tmp135020
                                           (let ((__tmp135021
                                                  (lambda (_%g134431134434%_
                                                           _%g134432134437%_)
                                                    (cons _%g134431134434%_
                                                          _%g134432134437%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135021
                                              '()
                                              _%L134194%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135022 __tmp135020))))
                                 (_%g134113134137%_ _%g134114134141%_)))
                           _%clause134131134190%_
                           _%hd134121134158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134126134170%_
                                                   _%target134123134164%_
                                                   '()))
                                                (_%g134113134137%_
                                                 _%g134114134141%_)))))
                                      (_%g134113134137%_ _%g134114134141%_))))
                              (_%g134113134137%_ _%g134114134141%_))))
                      (_%g134113134137%_ _%g134114134141%_)))))
          (_%g134112134440%_ _%stx134110%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj134985
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134985
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134985
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134985
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 ':init! '11 '#f '#f))
        (let ((__tmp135023 |gxc[1]#_g135024_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135023 '12 '#f '#f))
        (let ((__tmp135025 |gxc[1]#_g135026_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135025 '13 '#f '#f))
        (let ((__tmp135027 |gxc[1]#_g135028_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135027 '14 '#f '#f))
        (let ((__tmp135029
               (cons (cons 'gensyms |gxc[1]#_g135030_|)
                     (cons (cons 'bindings |gxc[1]#_g135031_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135029 '15 '#f '#f))
        (let ((__tmp135032
               (cons (cons 'gensyms |gxc[1]#_g135033_|)
                     (cons (cons 'bindings |gxc[1]#_g135034_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135032 '16 '#f '#f))
        (let ((__tmp135035
               (cons (cons 'gensyms |gxc[1]#_g135036_|)
                     (cons (cons 'bindings |gxc[1]#_g135037_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135035 '17 '#f '#f))
        (let ((__tmp135038
               (cons (cons 'gensyms |gxc[1]#_g135039_|)
                     (cons (cons 'bindings |gxc[1]#_g135040_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 __tmp135038 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134985 '() '20 '#f '#f))
        __obj134985))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134447%_)
        (let* ((_%g134451134465%_
                (lambda (_%g134452134461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134452134461%_))))
               (_%g134450134506%_
                (lambda (_%g134452134469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134452134469%_))
                      (let ((_%e134454134472%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134452134469%_))))
                        (let ((_%hd134455134476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134454134472%_)))
                              (_%tl134456134479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134454134472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134456134479%_))
                              (let ((_%e134457134482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134456134479%_))))
                                (let ((_%hd134458134486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134457134482%_)))
                                      (_%tl134459134489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134457134482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134459134489%_))
                                      ((lambda (_%L134492%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L134492%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134458134486%_)
                                      (_%g134451134465%_ _%g134452134469%_))))
                              (_%g134451134465%_ _%g134452134469%_))))
                      (_%g134451134465%_ _%g134452134469%_)))))
          (_%g134450134506%_ _%$stx134447%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134510%_)
        (let* ((_%g134514134528%_
                (lambda (_%g134515134524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134515134524%_))))
               (_%g134513134569%_
                (lambda (_%g134515134532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134515134532%_))
                      (let ((_%e134517134535%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134515134532%_))))
                        (let ((_%hd134518134539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134517134535%_)))
                              (_%tl134519134542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134517134535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134519134542%_))
                              (let ((_%e134520134545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134519134542%_))))
                                (let ((_%hd134521134549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134520134545%_)))
                                      (_%tl134522134552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134520134545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134522134552%_))
                                      ((lambda (_%L134555%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L134555%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134521134549%_)
                                      (_%g134514134528%_ _%g134515134532%_))))
                              (_%g134514134528%_ _%g134515134532%_))))
                      (_%g134514134528%_ _%g134515134532%_)))))
          (_%g134513134569%_ _%$stx134510%_))))))

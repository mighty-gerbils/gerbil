(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g191184_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191186_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191188_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191190_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191191_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191193_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191194_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191196_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191197_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191199_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191200_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx190144%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx190144%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx190147%_)
        (let* ((_%g190150190174%_
                (lambda (_%g190151190170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190151190170%_))))
               (_%g190149190473%_
                (lambda (_%g190151190178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190151190178%_))
                      (let ((_%e190154190181%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190151190178%_))))
                        (let ((_%hd190155190185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190154190181%_)))
                              (_%tl190156190188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190154190181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190156190188%_))
                              (let ((_%e190157190191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190156190188%_))))
                                (let ((_%hd190158190195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190157190191%_)))
                                      (_%tl190159190198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190157190191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190159190198%_))
                                      (let ((_g191175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190159190198%_
                                                '0))))
                                        (begin
                                          (let ((_g191176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191175_)
                                                       (##values-length
                                                        _g191175_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191176_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191176_)))
                                          (let ((_%target190160190201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191175_ 0)))
                                                (_%tl190162190204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191175_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190162190204%_))
                                                (letrec ((_%loop190163190207%_
                                                          (lambda (_%hd190161190211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause190167190214%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190161190211%_))
                        (let ((_%e190164190216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd190161190211%_))))
                          (let ((_%lp-hd190165190220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190164190216%_)))
                                (_%lp-tl190166190223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190164190216%_))))
                            (_%loop190163190207%_
                             _%lp-tl190166190223%_
                             (cons _%lp-hd190165190220%_
                                   _%clause190167190214%_))))
                        (let ((_%clause190168190226%_
                               (reverse _%clause190167190214%_)))
                          ((lambda (_%g190152190229%_ _%g190153190231%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g190153190231%_))
                                 (let* ((_%g190250190267%_
                                         (lambda (_%g190251190263%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g190251190263%_))))
                                        (_%g190249190326%_
                                         (lambda (_%g190251190271%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g190251190271%_))
                                               (let ((_g191177_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g190251190271%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g191178_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g191177_)
                        (##values-length _g191177_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g191178_ 2)))
                 (error "Context expects 2 values" _g191178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target190253190274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191177_
                                                             0)))
                                                         (_%tl190255190277%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191177_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190255190277%_))
                                                         (letrec ((_%loop190256190280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd190254190284%_ _%clause190260190287%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd190254190284%_))
                                 (let ((_%e190257190289%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd190254190284%_))))
                                   (let ((_%lp-hd190258190293%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190257190289%_)))
                                         (_%lp-tl190259190296%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190257190289%_))))
                                     (_%loop190256190280%_
                                      _%lp-tl190259190296%_
                                      (cons _%lp-hd190258190293%_
                                            _%clause190260190287%_))))
                                 (let ((_%clause190261190299%_
                                        (reverse _%clause190260190287%_)))
                                   ((lambda (_%g190252190302%_)
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
                            (cons _%g190153190231%_
                                  (let ((__tmp191179
                                         (lambda (_%g190317190320%_
                                                  _%g190318190323%_)
                                           (cons _%g190317190320%_
                                                 _%g190318190323%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp191179
                                     '()
                                     _%g190252190302%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause190261190299%_))))))
                   (_%loop190256190280%_ _%target190253190274%_ '()))
                 (_%g190250190267%_ _%g190251190271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g190250190267%_
                                                _%g190251190271%_)))))
                                   (_%g190249190326%_
                                    (let ((__tmp191182
                                           (lambda (_%clause190330%_)
                                             (let* ((_%__stx191094191095%_
                                                     _%clause190330%_)
                                                    (_%g190334190361%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx191094191095%_)))))
                                               (let ((_%__kont191097191098%_
                                                      (lambda (_%g190336190446%_
                                                               _%g190337190448%_)
                                                        (cons _%g190337190448%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g190336190446%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191099191100%_
                                                      (lambda (_%g190344190398%_
                                                               _%g190345190400%_
                                                               _%g190346190401%_)
                                                        (cons _%g190346190401%_
                                                              (cons _%g190345190400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g190344190398%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx191094191095%_))
                                                     (let ((_%e190338190426%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx191094191095%_))))
                                                       (let ((_%tl190340190433%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190338190426%_)))
                     (_%hd190339190430%_
                      (let () (declare (not safe)) (##car _%e190338190426%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190340190433%_))
                     (let ((_%e190341190436%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl190340190433%_))))
                       (let ((_%tl190343190443%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190341190436%_)))
                             (_%hd190342190440%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190341190436%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190343190443%_))
                             (_%__kont191097191098%_
                              _%hd190342190440%_
                              _%hd190339190430%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl190343190443%_))
                                 (let ((_%e190353190388%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl190343190443%_))))
                                   (let ((_%tl190355190395%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190353190388%_)))
                                         (_%hd190354190392%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190353190388%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl190355190395%_))
                                         (_%__kont191099191100%_
                                          _%hd190354190392%_
                                          _%hd190342190440%_
                                          _%hd190339190430%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g190334190361%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g190334190361%_))))))
                     (let () (declare (not safe)) (_%g190334190361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190334190361%_)))))))
                                          (__tmp191180
                                           (let ((__tmp191181
                                                  (lambda (_%g190464190467%_
                                                           _%g190465190470%_)
                                                    (cons _%g190464190467%_
                                                          _%g190465190470%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp191181
                                              '()
                                              _%g190152190229%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp191182 __tmp191180))))
                                 (_%g190150190174%_ _%g190151190178%_)))
                           _%clause190168190226%_
                           _%hd190158190195%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190163190207%_
                                                   _%target190160190201%_
                                                   '()))
                                                (_%g190150190174%_
                                                 _%g190151190178%_)))))
                                      (_%g190150190174%_ _%g190151190178%_))))
                              (_%g190150190174%_ _%g190151190178%_))))
                      (_%g190150190174%_ _%g190151190178%_)))))
          (_%g190149190473%_ _%stx190147%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj191144
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191144
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191144
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191144
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 ':init! '12 '#f '#f))
        (let ((__tmp191183 |gxc[1]#_g191184_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191183 '3 '#f '#f))
        (let ((__tmp191185 |gxc[1]#_g191186_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191185 '13 '#f '#f))
        (let ((__tmp191187 |gxc[1]#_g191188_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191187 '14 '#f '#f))
        (let ((__tmp191189
               (cons (cons 'gensyms |gxc[1]#_g191190_|)
                     (cons (cons 'bindings |gxc[1]#_g191191_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191189 '15 '#f '#f))
        (let ((__tmp191192
               (cons (cons 'gensyms |gxc[1]#_g191193_|)
                     (cons (cons 'bindings |gxc[1]#_g191194_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191192 '16 '#f '#f))
        (let ((__tmp191195
               (cons (cons 'gensyms |gxc[1]#_g191196_|)
                     (cons (cons 'bindings |gxc[1]#_g191197_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191195 '17 '#f '#f))
        (let ((__tmp191198
               (cons (cons 'gensyms |gxc[1]#_g191199_|)
                     (cons (cons 'bindings |gxc[1]#_g191200_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 __tmp191198 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191144 '() '20 '#f '#f))
        __obj191144))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx190479%_)
        (let* ((_%g190483190497%_
                (lambda (_%g190484190493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190484190493%_))))
               (_%g190482190538%_
                (lambda (_%g190484190501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190484190501%_))
                      (let ((_%e190486190504%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190484190501%_))))
                        (let ((_%hd190487190508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190486190504%_)))
                              (_%tl190488190511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190486190504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190488190511%_))
                              (let ((_%e190489190514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190488190511%_))))
                                (let ((_%hd190490190518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190489190514%_)))
                                      (_%tl190491190521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190489190514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190491190521%_))
                                      ((lambda (_%g190485190524%_)
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
                         (cons '() (cons _%g190485190524%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd190490190518%_)
                                      (_%g190483190497%_ _%g190484190501%_))))
                              (_%g190483190497%_ _%g190484190501%_))))
                      (_%g190483190497%_ _%g190484190501%_)))))
          (_%g190482190538%_ _%$stx190479%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx190542%_)
        (let* ((_%g190546190560%_
                (lambda (_%g190547190556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190547190556%_))))
               (_%g190545190601%_
                (lambda (_%g190547190564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190547190564%_))
                      (let ((_%e190549190567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190547190564%_))))
                        (let ((_%hd190550190571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190549190567%_)))
                              (_%tl190551190574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190549190567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190551190574%_))
                              (let ((_%e190552190577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190551190574%_))))
                                (let ((_%hd190553190581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190552190577%_)))
                                      (_%tl190554190584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190552190577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190554190584%_))
                                      ((lambda (_%g190548190587%_)
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
                         (cons _%g190548190587%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd190553190581%_)
                                      (_%g190546190560%_ _%g190547190564%_))))
                              (_%g190546190560%_ _%g190547190564%_))))
                      (_%g190546190560%_ _%g190547190564%_)))))
          (_%g190545190601%_ _%$stx190542%_))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g142656_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142658_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142660_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142662_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142663_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142665_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142666_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142668_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142669_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142671_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142672_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx141742%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx141742%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx141745%_)
        (let* ((_%g141748141772%_
                (lambda (_%g141749141768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141749141768%_))))
               (_%g141747142075%_
                (lambda (_%g141749141776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141749141776%_))
                      (let ((_%e141752141779%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141749141776%_))))
                        (let ((_%hd141753141783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141752141779%_)))
                              (_%tl141754141786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141752141779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141754141786%_))
                              (let ((_%e141755141789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141754141786%_))))
                                (let ((_%hd141756141793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141755141789%_)))
                                      (_%tl141757141796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141755141789%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl141757141796%_))
                                      (let ((_g142647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl141757141796%_
                                                '0))))
                                        (begin
                                          (let ((_g142648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142647_)
                                                       (##values-length
                                                        _g142647_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142648_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142648_)))
                                          (let ((_%target141758141799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142647_ 0)))
                                                (_%tl141760141802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142647_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141760141802%_))
                                                (letrec ((_%loop141761141805%_
                                                          (lambda (_%hd141759141809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause141765141812%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141759141809%_))
                        (let ((_%e141762141815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd141759141809%_))))
                          (let ((_%lp-hd141763141819%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141762141815%_)))
                                (_%lp-tl141764141822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141762141815%_))))
                            (_%loop141761141805%_
                             _%lp-tl141764141822%_
                             (cons _%lp-hd141763141819%_
                                   _%clause141765141812%_))))
                        (let ((_%clause141766141825%_
                               (reverse _%clause141765141812%_)))
                          ((lambda (_%L141829%_ _%L141831%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L141831%_))
                                 (let* ((_%g141850141867%_
                                         (lambda (_%g141851141863%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g141851141863%_))))
                                        (_%g141849141928%_
                                         (lambda (_%g141851141871%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g141851141871%_))
                                               (let ((_g142649_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g141851141871%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g142650_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g142649_)
                        (##values-length _g142649_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g142650_ 2)))
                 (error "Context expects 2 values" _g142650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target141853141874%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142649_
                                                             0)))
                                                         (_%tl141855141877%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142649_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141855141877%_))
                                                         (letrec ((_%loop141856141880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd141854141884%_ _%clause141860141887%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd141854141884%_))
                                 (let ((_%e141857141890%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd141854141884%_))))
                                   (let ((_%lp-hd141858141894%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141857141890%_)))
                                         (_%lp-tl141859141897%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141857141890%_))))
                                     (_%loop141856141880%_
                                      _%lp-tl141859141897%_
                                      (cons _%lp-hd141858141894%_
                                            _%clause141860141887%_))))
                                 (let ((_%clause141861141900%_
                                        (reverse _%clause141860141887%_)))
                                   ((lambda (_%L141904%_)
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
                            (cons _%L141831%_
                                  (let ((__tmp142651
                                         (lambda (_%g141919141922%_
                                                  _%g141920141925%_)
                                           (cons _%g141919141922%_
                                                 _%g141920141925%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp142651 '() _%L141904%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause141861141900%_))))))
                   (_%loop141856141880%_ _%target141853141874%_ '()))
                 (_%g141850141867%_ _%g141851141871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g141850141867%_
                                                _%g141851141871%_)))))
                                   (_%g141849141928%_
                                    (let ((__tmp142654
                                           (lambda (_%clause141932%_)
                                             (let* ((_%__stx142567142568%_
                                                     _%clause141932%_)
                                                    (_%g141936141963%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx142567142568%_)))))
                                               (let ((_%__kont142570142571%_
                                                      (lambda (_%L142048%_
                                                               _%L142050%_)
                                                        (cons _%L142050%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L142048%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont142572142573%_
                                                      (lambda (_%L142000%_
                                                               _%L142002%_
                                                               _%L142003%_)
                                                        (cons _%L142003%_
                                                              (cons _%L142002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L142000%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx142567142568%_))
                                                     (let ((_%e141940142028%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx142567142568%_))))
                                                       (let ((_%tl141942142035%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141940142028%_)))
                     (_%hd141941142032%_
                      (let () (declare (not safe)) (##car _%e141940142028%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141942142035%_))
                     (let ((_%e141943142038%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl141942142035%_))))
                       (let ((_%tl141945142045%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141943142038%_)))
                             (_%hd141944142042%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141943142038%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141945142045%_))
                             (_%__kont142570142571%_
                              _%hd141944142042%_
                              _%hd141941142032%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl141945142045%_))
                                 (let ((_%e141955141990%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl141945142045%_))))
                                   (let ((_%tl141957141997%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141955141990%_)))
                                         (_%hd141956141994%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141955141990%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl141957141997%_))
                                         (_%__kont142572142573%_
                                          _%hd141956141994%_
                                          _%hd141944142042%_
                                          _%hd141941142032%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g141936141963%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g141936141963%_))))))
                     (let () (declare (not safe)) (_%g141936141963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141936141963%_)))))))
                                          (__tmp142652
                                           (let ((__tmp142653
                                                  (lambda (_%g142066142069%_
                                                           _%g142067142072%_)
                                                    (cons _%g142066142069%_
                                                          _%g142067142072%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp142653
                                              '()
                                              _%L141829%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp142654 __tmp142652))))
                                 (_%g141748141772%_ _%g141749141776%_)))
                           _%clause141766141825%_
                           _%hd141756141793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop141761141805%_
                                                   _%target141758141799%_
                                                   '()))
                                                (_%g141748141772%_
                                                 _%g141749141776%_)))))
                                      (_%g141748141772%_ _%g141749141776%_))))
                              (_%g141748141772%_ _%g141749141776%_))))
                      (_%g141748141772%_ _%g141749141776%_)))))
          (_%g141747142075%_ _%stx141745%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj142617
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
           __obj142617
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142617
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142617
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 ':init! '11 '#f '#f))
        (let ((__tmp142655 |gxc[1]#_g142656_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142655 '12 '#f '#f))
        (let ((__tmp142657 |gxc[1]#_g142658_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142657 '13 '#f '#f))
        (let ((__tmp142659 |gxc[1]#_g142660_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142659 '14 '#f '#f))
        (let ((__tmp142661
               (cons (cons 'gensyms |gxc[1]#_g142662_|)
                     (cons (cons 'bindings |gxc[1]#_g142663_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142661 '15 '#f '#f))
        (let ((__tmp142664
               (cons (cons 'gensyms |gxc[1]#_g142665_|)
                     (cons (cons 'bindings |gxc[1]#_g142666_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142664 '16 '#f '#f))
        (let ((__tmp142667
               (cons (cons 'gensyms |gxc[1]#_g142668_|)
                     (cons (cons 'bindings |gxc[1]#_g142669_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142667 '17 '#f '#f))
        (let ((__tmp142670
               (cons (cons 'gensyms |gxc[1]#_g142671_|)
                     (cons (cons 'bindings |gxc[1]#_g142672_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 __tmp142670 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142617 '() '20 '#f '#f))
        __obj142617))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx142081%_)
        (let* ((_%g142085142099%_
                (lambda (_%g142086142095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142086142095%_))))
               (_%g142084142140%_
                (lambda (_%g142086142103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142086142103%_))
                      (let ((_%e142088142106%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g142086142103%_))))
                        (let ((_%hd142089142110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142088142106%_)))
                              (_%tl142090142113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142088142106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142090142113%_))
                              (let ((_%e142091142116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl142090142113%_))))
                                (let ((_%hd142092142120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142091142116%_)))
                                      (_%tl142093142123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142091142116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142093142123%_))
                                      ((lambda (_%L142126%_)
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
                         (cons '() (cons _%L142126%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd142092142120%_)
                                      (_%g142085142099%_ _%g142086142103%_))))
                              (_%g142085142099%_ _%g142086142103%_))))
                      (_%g142085142099%_ _%g142086142103%_)))))
          (_%g142084142140%_ _%$stx142081%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx142144%_)
        (let* ((_%g142148142162%_
                (lambda (_%g142149142158%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142149142158%_))))
               (_%g142147142203%_
                (lambda (_%g142149142166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142149142166%_))
                      (let ((_%e142151142169%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g142149142166%_))))
                        (let ((_%hd142152142173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142151142169%_)))
                              (_%tl142153142176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142151142169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142153142176%_))
                              (let ((_%e142154142179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl142153142176%_))))
                                (let ((_%hd142155142183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142154142179%_)))
                                      (_%tl142156142186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142154142179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142156142186%_))
                                      ((lambda (_%L142189%_)
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
                         (cons _%L142189%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd142155142183%_)
                                      (_%g142148142162%_ _%g142149142166%_))))
                              (_%g142148142162%_ _%g142149142166%_))))
                      (_%g142148142162%_ _%g142149142166%_)))))
          (_%g142147142203%_ _%$stx142144%_))))))

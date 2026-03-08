(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g190757_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190759_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190761_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190763_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190765_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190766_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190767_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190769_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190770_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190771_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190773_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190774_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190775_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190777_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190778_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190779_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj190634
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190634
           'gx#syntax-pattern::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 'syntax-pattern '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '(id depth) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '(e id depth) '8 '#f '#f))
        (let ((__tmp190756 (cons |gx[1]#_g190757_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190756 '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '#f '13 '#f '#f))
        (let ((__tmp190758 |gx[1]#_g190759_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190758 '4 '#f '#f))
        (let ((__tmp190760 |gx[1]#_g190761_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190760 '14 '#f '#f))
        (let ((__tmp190762 |gx[1]#_g190763_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190762 '15 '#f '#f))
        (let ((__tmp190764
               (cons (cons 'id |gx[1]#_g190765_|)
                     (cons (cons 'depth |gx[1]#_g190766_|)
                           (cons (cons 'e |gx[1]#_g190767_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190764 '16 '#f '#f))
        (let ((__tmp190768
               (cons (cons 'id |gx[1]#_g190769_|)
                     (cons (cons 'depth |gx[1]#_g190770_|)
                           (cons (cons 'e |gx[1]#_g190771_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190768 '17 '#f '#f))
        (let ((__tmp190772
               (cons (cons 'id |gx[1]#_g190773_|)
                     (cons (cons 'depth |gx[1]#_g190774_|)
                           (cons (cons 'e |gx[1]#_g190775_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190772 '18 '#f '#f))
        (let ((__tmp190776
               (cons (cons 'id |gx[1]#_g190777_|)
                     (cons (cons 'depth |gx[1]#_g190778_|)
                           (cons (cons 'e |gx[1]#_g190779_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 __tmp190776 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190634 '() '21 '#f '#f))
        __obj190634))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx189089%_)
        (let* ((_%g189093189115%_
                (lambda (_%g189094189111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189094189111%_))))
               (_%g189092189185%_
                (lambda (_%g189094189119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189094189119%_))
                      (let ((_%e189098189122%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189094189119%_))))
                        (let ((_%hd189099189126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189098189122%_)))
                              (_%tl189100189129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189098189122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189100189129%_))
                              (let ((_%e189101189132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189100189129%_))))
                                (let ((_%hd189102189136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189101189132%_)))
                                      (_%tl189103189139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189101189132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189103189139%_))
                                      (let ((_%e189104189142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl189103189139%_))))
                                        (let ((_%hd189105189146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189104189142%_)))
                                              (_%tl189106189149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189104189142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189106189149%_))
                                              (let ((_%e189107189152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189106189149%_))))
                                                (let ((_%hd189108189156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189107189152%_)))
                                                      (_%tl189109189159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189107189152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189109189159%_))
                                                      ((lambda (_%g189095189162%_
                                                                _%g189096189164%_
                                                                _%g189097189165%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lp))
                             (cons (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))
                                               (cons _%g189097189165%_ '()))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'r))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '@list))
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'if))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'stx-pair?))
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'rest))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'match))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax-e))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'rest))
                                           '()))
                               (cons (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '@list))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'hd))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'rest))))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'lp))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'rest))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'cons))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'hd))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'r))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'let))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'lp))
                                     (cons (cons (cons _%g189096189164%_
                                                       (cons _%g189096189164%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'l))
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'rest))
                                 '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'cond))
                                                       (cons (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'null?))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'l))
                                       '()))
                           (cons (cons _%g189095189162%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'l))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'r))
                                                   '())))
                                 '()))
                     (cons (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'fxpositive?))
                                       (cons _%g189096189164%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g189096189164%_
                                                               '()))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'cdr))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'cons))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'car))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'l))
                                               '()))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'r))
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'else))
                                       (cons (cons _%g189095189162%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'reverse!))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'r))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _%hd189108189156%_
               _%hd189105189146%_
               _%hd189102189136%_)
              (_%g189093189115%_ _%g189094189119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g189093189115%_
                                               _%g189094189119%_))))
                                      (_%g189093189115%_ _%g189094189119%_))))
                              (_%g189093189115%_ _%g189094189119%_))))
                      (_%g189093189115%_ _%g189094189119%_)))))
          (_%g189092189185%_ _%$stx189089%_))))))

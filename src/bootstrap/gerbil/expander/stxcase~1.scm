(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g187787_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187789_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187791_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187793_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187795_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187796_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187797_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187799_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187800_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187801_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187803_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187804_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187805_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187807_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187808_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g187809_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj187664
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
           __obj187664
           'gx#syntax-pattern::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 'syntax-pattern '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '(id depth) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '(e id depth) '7 '#f '#f))
        (let ((__tmp187786 (cons |gx[1]#_g187787_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187786 '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '#f '12 '#f '#f))
        (let ((__tmp187788 |gx[1]#_g187789_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187788 '3 '#f '#f))
        (let ((__tmp187790 |gx[1]#_g187791_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187790 '13 '#f '#f))
        (let ((__tmp187792 |gx[1]#_g187793_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187792 '14 '#f '#f))
        (let ((__tmp187794
               (cons (cons 'id |gx[1]#_g187795_|)
                     (cons (cons 'depth |gx[1]#_g187796_|)
                           (cons (cons 'e |gx[1]#_g187797_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187794 '15 '#f '#f))
        (let ((__tmp187798
               (cons (cons 'id |gx[1]#_g187799_|)
                     (cons (cons 'depth |gx[1]#_g187800_|)
                           (cons (cons 'e |gx[1]#_g187801_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187798 '16 '#f '#f))
        (let ((__tmp187802
               (cons (cons 'id |gx[1]#_g187803_|)
                     (cons (cons 'depth |gx[1]#_g187804_|)
                           (cons (cons 'e |gx[1]#_g187805_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187802 '17 '#f '#f))
        (let ((__tmp187806
               (cons (cons 'id |gx[1]#_g187807_|)
                     (cons (cons 'depth |gx[1]#_g187808_|)
                           (cons (cons 'e |gx[1]#_g187809_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 __tmp187806 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187664 '() '20 '#f '#f))
        __obj187664))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx186119%_)
        (let* ((_%g186123186145%_
                (lambda (_%g186124186141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186124186141%_))))
               (_%g186122186215%_
                (lambda (_%g186124186149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186124186149%_))
                      (let ((_%e186128186152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g186124186149%_))))
                        (let ((_%hd186129186156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186128186152%_)))
                              (_%tl186130186159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186128186152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186130186159%_))
                              (let ((_%e186131186162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl186130186159%_))))
                                (let ((_%hd186132186166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186131186162%_)))
                                      (_%tl186133186169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186131186162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186133186169%_))
                                      (let ((_%e186134186172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl186133186169%_))))
                                        (let ((_%hd186135186176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186134186172%_)))
                                              (_%tl186136186179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186134186172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186136186179%_))
                                              (let ((_%e186137186182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl186136186179%_))))
                                                (let ((_%hd186138186186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186137186182%_)))
                                                      (_%tl186139186189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186137186182%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186139186189%_))
                                                      ((lambda (_%g186125186192%_
                                                                _%g186126186194%_
                                                                _%g186127186195%_)
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
                                               (cons _%g186127186195%_ '()))
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
                                     (cons (cons (cons _%g186126186194%_
                                                       (cons _%g186126186194%_
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
                           (cons (cons _%g186125186192%_
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
                                       (cons _%g186126186194%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g186126186194%_
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
                                       (cons (cons _%g186125186192%_
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
               _%hd186138186186%_
               _%hd186135186176%_
               _%hd186132186166%_)
              (_%g186123186145%_ _%g186124186149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g186123186145%_
                                               _%g186124186149%_))))
                                      (_%g186123186145%_ _%g186124186149%_))))
                              (_%g186123186145%_ _%g186124186149%_))))
                      (_%g186123186145%_ _%g186124186149%_)))))
          (_%g186122186215%_ _%$stx186119%_))))))
